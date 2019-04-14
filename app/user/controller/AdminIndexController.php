<?php
// +----------------------------------------------------------------------
// | bronet [ 以客户为中心 以奋斗者为本 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2017 http://www.bronet.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: Powerless < wzxaini9@gmail.com>
// +----------------------------------------------------------------------

namespace app\user\controller;

use cmf\controller\AdminBaseController;
use think\Db;

error_reporting(E_ERROR | E_PARSE);

/**
 * Class AdminIndexController
 * @package app\user\controller
 *
 * @adminMenuRoot(
 *     'name'   =>'用户管理',
 *     'action' =>'default',
 *     'parent' =>'',
 *     'display'=> true,
 *     'order'  => 10,
 *     'icon'   =>'group',
 *     'remark' =>'用户管理'
 * )
 *
 * @adminMenuRoot(
 *     'name'   =>'用户组',
 *     'action' =>'default1',
 *     'parent' =>'user/AdminIndex/default',
 *     'display'=> true,
 *     'order'  => 10000,
 *     'icon'   =>'',
 *     'remark' =>'用户组'
 * )
 */
class AdminIndexController extends AdminBaseController
{

    /**
     * 后台本站用户列表
     * @adminMenu(
     *     'name'   => '本站用户',
     *     'parent' => 'default1',
     *     'display'=> true,
     *     'hasView'=> true,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '本站用户',
     *     'param'  => ''
     * )
     */
    public function index()
    {
        $where = ['user_type' => 2];
        $request = input('request.');

        if (!empty($request['user_nickname'])) {
            $where['user_nickname'] = ['like', "%" . $request['user_nickname'] . "%"];
        }
        if (!empty($request['sex'])) {
            $where['sex'] = $request['sex'];
        }
        if (!empty($request['age'])) {
            $where['age'] = $request['age'];
        }
        if (!empty($request['mobile'])) {
            $where['mobile'] = $request['mobile'];
        }

        if (!empty($request['check_o'])) {
            $where['cd.' . $request['check_o']] = 1;
        }

        if (!empty($request['check_n'])) {
            $where["cd." . $request['check_n']] = 1;
        }


        if (!empty($request['center_name'])) {
            $where['cd.center_name'] = array('like', '%' . $request['center_name'] . '%');
        }


        if (!empty($request['start_time']) && !empty($request['end_time'])) {
            $start_time = strtotime($request['start_time']);
            $end_time = strtotime($request['end_time']) + 86400;
            $where['a.create_time'] = array('between', [$start_time, $end_time]);
        }

        $role_id = session('ADMIN_ROLE_ID');
        if ($role_id == 2) {
            $admin_id = session('ADMIN_ID');
            $where['bind_admin_id'] = $admin_id;
        }

        session('where_user_index', $where);

        $keywordComplex = [];
        $usersQuery = Db::name('user');

        $list = $usersQuery->alias('a')->whereOr($keywordComplex)->where($where)
            ->join('user_visit uv', 'a.id=uv.user_id', 'left')
            ->join('user_center_diagnose cd', 'a.id=cd.user_id', 'left')
            ->group('a.id')
            ->order("a.create_time DESC")
            ->field('a.*')
            ->paginate(20);

        // 获取分页显示
        $list->appends($request);
        $page = $list->render();
        $this->assign('list', $list);
        $this->assign('page', $page);

        $site_info = cmf_get_option('site_info');
        $visit_time = time() + $site_info['visit_hour'] * 60 * 60;
        $where = array(
            'status' => 0,
            'visit_time' => array('lt', $visit_time),
            'u.user_type' => 2,
        );
        if ($role_id == 2) {
            $admin_id = session('ADMIN_ID');
            $where['admin_id'] = $admin_id;
        }
        $visit_num = Db::name('user_visit')->alias('a')
            ->join('user u', 'a.user_id=u.id')
            ->where($where)->count();


        if ($visit_num > 0) {
            $url = "https://openapi.baidu.com/oauth/2.0/token?grant_type=client_credentials&client_id=7hc7IQMDGTAuyuQqRod06BBs&client_secret=UXE4ze6tKbs41zrjflbO39A58IpxPYWf";

            $result = cmf_curl_get($url);
            $token_info = json_decode($result, true);
            $token = $token_info['access_token'];
            $text = "您有" . $visit_num . "个待访问记录";
            $url = "http://tsn.baidu.com/text2audio?tex=$text&lan=zh&cuid=***&ctp=1&spd=4&tok=$token";
            $this->assign('url', $url);
        }
        $this->assign('visit_num', $visit_num);

        //设置cookie
        $visit_tips = $_COOKIE['visit_tips'];
        if (!$visit_tips) {
            setcookie('visit_tips', 100, time() + $site_info['tips_interval'] * 60);
        }
        $this->assign('visit_tips', $visit_tips);
        // 渲染模板输出
        return $this->fetch();
    }

    public function export()
    {
        ini_set('memory_limit','1024M');// 临时设置最大内存占用为3G　
        set_time_limit(300);// 设置脚本最大执行时间 为0 永不过期
        //搜索条件
        $where = session('where_user_index');
        $userList = Db::name('user')->where($where)->order('id asc')->column("*");
        $user_ids = Db::name('user')->where($where)->order('id asc')->column("id");
        $visitList = Db::name('user_visit')->where(array('user_id' => ['in', $user_ids]))->order('id asc')->column("*");

        $tableList = array(
            'npi',
        );
        $sheetName = [];
        $cellMerge = [];
        $cellTitle = [];
        $celldata = [];

        $allDta['user_info'] = get_user_info($userList, $visitList, $user_ids);
        $allDta['medical_history'] = get_medical_history($userList, $visitList, $user_ids);
        $allDta['major_medical'] = get_major_medical($userList, $visitList, $user_ids);
        $allDta['body_check'] = get_body_check($userList, $visitList, $user_ids);
        $allDta['assist_check'] = get_assist_check($userList, $visitList, $user_ids);
        $allDta['assay_check'] = get_assay_check($userList, $visitList, $user_ids);
        $allDta['drug_history'] = get_drug_history($userList, $visitList, $user_ids);
        $allDta['center_diagnose'] = get_center_diagnose($userList, $visitList, $user_ids);
        $allDta['mds_updrs'] = get_scale_mds_updrs($userList, $visitList, $user_ids);
        $allDta['sc_en'] = get_scale_sc_en($userList, $visitList, $user_ids);
        $allDta['nmss'] = get_scale_nmss($userList, $visitList, $user_ids);
        $allDta['mmse'] = get_scale_mmse($userList, $visitList, $user_ids);
        $allDta['moca'] = get_scale_moca($userList, $visitList, $user_ids);
//        $allDta['hamd'] = get_scale_hamd($userList, $visitList, $user_ids);
//        $allDta['hama'] = get_scale_hama($userList, $visitList, $user_ids);
//        $allDta['maes'] = get_scale_maes($userList, $visitList, $user_ids);
//        $allDta['psqi'] = get_scale_psqi($userList, $visitList, $user_ids);
//        $allDta['ess'] = get_scale_ess($userList, $visitList, $user_ids);
//        $allDta['fai'] = get_scale_fai($userList, $visitList, $user_ids);
//        $allDta['npi'] = get_scale_npi($userList, $visitList, $user_ids);
//        $allDta['pdql'] = get_scale_pdql($userList, $visitList, $user_ids);
//        $allDta['adl'] = get_scale_adl($userList, $visitList, $user_ids);
//        $allDta['dlb'] = get_scale_dlb($userList, $visitList, $user_ids);
//        $allDta['frozen'] = get_scale_frozen($userList, $visitList, $user_ids);
//        $allDta['stroop'] = get_scale_stroop($userList, $visitList, $user_ids);
//        $allDta['wais'] = get_scale_wais($userList, $visitList, $user_ids);
        foreach ($allDta as $val) {
            $sheetName[] = $val['sheetName'];
            $cellMerge[] = $val['cellMerge'];
            $cellTitle[] = $val['cellTitle'];
            $celldata[] = $val['celldata'];
        }
//        dump($sheetName);
//        die();

        $this->export_do('帕金森系统', $sheetName, $cellMerge, $cellTitle, $celldata);

    }

    public function export_do($title, $sheetName, $cellMerge, $cellTitle, $celldata)
    {
        vendor("phpexcel.PHPExcel");
        $objPHPExcel = new \PHPExcel();
        //定义配置
        $xlsTitle = iconv('utf-8', 'gb2312', $title);//文件名称
        $fileName = $title . date('_YmdHi');//文件名称
        $cellKey = array(
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
            'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
        );
        $cellKey2 = array(
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
            'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
        );
        $cellKey1 = array('A', 'B', 'C', 'D', 'E');
        foreach ($cellKey1 as $kc) {
            foreach ($cellKey2 as $kcs) {
                echo $kcs;
                $cellKey[] = $kc . $kcs;
            }
        }
        for ($i = 0; $i < count($celldata); $i++) {
            if ($i != 0) {
                $objPHPExcel->createSheet();
            }
            $objPHPExcel->setActiveSheetIndex($i);
            $objPHPExcel->getActiveSheet($i)->setTitle($sheetName[$i]);
            $topNumber = 2;//表头有几行占用
            $objPHPExcel->getActiveSheet($i)->getDefaultColumnDimension()->setWidth(20);//所有单元格（列）默认宽度
            //垂直居中
            $objPHPExcel->getDefaultStyle($i)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $objPHPExcel->getDefaultStyle($i)->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
            $objPHPExcel->setActiveSheetIndex($i);
            //处理表头标题
            //    $objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(false);
            //    $objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(12);

            foreach ($cellMerge[$i] as $val) {
                $objPHPExcel->getActiveSheet($i)->mergeCells($val['start'] . ':' . $val['end']);//合并单元格（如果要拆分单元格是需要先合并再拆分的，否则程序会报错）
                $objPHPExcel->setActiveSheetIndex($i)->setCellValue($val['start'], $val['title']);
                $objPHPExcel->getActiveSheet($i)->getStyle($val['start'])->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
                $objPHPExcel->getActiveSheet($i)->getStyle($val['start'])->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
            }
            //处理表头
            foreach ($cellTitle[$i] as $k => $v) {
                $objPHPExcel->setActiveSheetIndex($i)->setCellValue($cellKey[$k] . $topNumber, $v);//设置表头数据
                echo $k . "-" . $v . "<br>";

            }
            //处理数据
            $start = $topNumber + 1;
            $j = $topNumber + 1;
            foreach ($celldata[$i] as $k => $v) {
                foreach ($v as $k1 => $v1) {
                    $objPHPExcel->getActiveSheet($i)->setCellValue($cellKey[$k1] . $start, $v1);
                }
                $start += 1;
            }
        }
        //导出execl
        ob_end_clean();//防止乱码
        header('pragma:public');
        header('Content-type:application/vnd.ms-excel;charset=utf-8;name="' . $xlsTitle . '.xls"');
        header("Content-Disposition:attachment;filename=$fileName.xls");//attachment新窗口打印inline本窗口打印
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
        $objWriter->save('php://output');
        exit;
    }

    /**
     * 导出订单
     */
    public function export_user()
    {
        //搜索条件
        $where = session('where_user_index');
        $list = Db::name('user')->alias('a')
            ->join('user_info un', 'a.id=un.user_id', 'left')
            ->field('a.*,un.nation,country,address')
            ->where($where)->order("create_time DESC")->select()->toArray();

        $strTable = '<table width="500" border="1">';
        $strTable .= '<tr>';
        $strTable .= '<td style="text-align:center;font-size:12px;width:20px;">ID</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="100">患者编号</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="100">患者姓名</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">性别</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">出生日期</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">年龄</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">手机号码</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">邮箱</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">国家</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">民族</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">家庭住址</td>';

        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">注册时间</td>';
        $strTable .= '</tr>';
        if (is_array($list)) {
            foreach ($list as $k => $val) {
                $sex = $val['sex'] == 1 ? '男' : '女';
                $country = unserialize($val['country']);
                if ($country['radio'] == 1) {
                    $country = "中国";
                } else {
                    $country = $country['other'];
                }
                $strTable .= '<tr>';
                $strTable .= '<td style="text-align:center;font-size:12px;">&nbsp;' . $val['id'] . '</td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $val['user_code'] . ' </td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $val['user_nickname'] . ' </td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $sex . '</td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . date("Y-m-d H:i", $val['brithday']) . '</td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $val['age'] . '</td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $val['mobile'] . '</td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $val['user_email'] . '</td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $country . '</td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $val['nation'] . '</td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $val['address'] . '</td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . date("Y-m-d H:i:s", $val['create_time']) . '</td>';
                $strTable .= '</tr>';
            }
        }
        $strTable .= '</table>';
        unset($list);
        downloadExcel($strTable, 'user');
        exit();
    }


    /**
     * 添加-本站用户列表
     * @adminMenu(
     *     'name'   => '添加文章',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '添加文章',
     *     'param'  => ''
     * )
     */
    public function add()
    {
        $user_code = Db::name('user')->max('user_code');
        $user_code = $user_code >= 10000 ? ($user_code + 1) : 10000;
        $this->assign('user_code', $user_code);

        $poisonList = array(
            'poison0' => '奋乃静',
            'poison1' => '盐酸硫利哒嗪',
            'poison2' => '氯丙嗪',
            'poison3' => '三氟拉嗪',
            'poison4' => '氟哌啶醇',
            'poison5' => '氟哌利多',
            'poison6' => '利血平',
            'poison7' => '甲氧氯普胺',
            'poison8' => 'α-甲基多巴',
            'poison9' => '锂剂',
            'poison10' => '氟桂利嗪',
            'poison11' => '桂利嗪',
        );
        $this->assign('poisonList', $poisonList);

        $other_disease_list = array(
            '1' => '高血压',
            '2' => '糖尿病',
            '3' => '高脂血症',
            '4' => '脑出血',
            '5' => '脑梗死',
            '6' => '血管性痴呆',
            '7' => '骨关节病',
            '8' => '性肺病',
            '9' => '其他',
        );
        $this->assign('other_disease_list', $other_disease_list);

        return $this->fetch();
    }

    /**
     * 添加-本站用户文章提交
     * @adminMenu(
     *     'name'   => '添加文章提交',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '添加文章提交',
     *     'param'  => ''
     * )
     */
    public function addPost()
    {
        if ($this->request->isPost()) {
            $data = $this->request->param();
            $user_info = $data['user_info'];
            unset($data['user_info']);
            $data['bind_admin_id'] = session('ADMIN_ID');
            $data['user_type'] = 2;
            $data['birthday'] = strtotime($data['birthday']);
            if (!$data['id']) {
                $data['create_time'] = time();
                $res = Db::name('user')->insertGetId($data);
                foreach ($user_info as &$val) {
                    if (is_array($val)) {
                        $val = serialize($val);
                    }
                }
                $user_info['user_id'] = $res;
                $res1 = Db::name('user_info')->insert($user_info);
                $msg = "添加成功";
                $this->add_data_list($res, 0);
            } else {
                $res = Db::name('user')->where(array('id' => $data['id']))->update($data);
                foreach ($user_info as &$val) {
                    if (is_array($val)) {
                        $val = serialize($val);
                    }
                }
                $res = Db::name('user_info')->where(array('user_id' => $data['id']))->update($user_info);
                $msg = "编辑成功";
            }
            $this->success($msg, url('AdminIndex/index'));
        }
    }

    public function edit()
    {
        $user_id = $this->request->param('user_id', 0, 'intval');
        $user_model = Db::name('user');
        $user = $user_model->where(array('id' => $user_id))->find();
        $user_info = Db::name('user_info')->where(array('user_id' => $user_id))->find();

        $user_info['country'] = unserialize($user_info['country']);
        $user_info['occupation'] = unserialize($user_info['occupation']);
        $user_info['live_status'] = unserialize($user_info['live_status']);
        $user_info['smoking'] = unserialize($user_info['smoking']);
        $user_info['drink_wine'] = unserialize($user_info['drink_wine']);
        $user_info['drink_coffee'] = unserialize($user_info['drink_coffee']);
        $user_info['drink_tea'] = unserialize($user_info['drink_tea']);
        $user_info['poison'] = unserialize($user_info['poison']);
        $user_info['special_poison'] = unserialize($user_info['special_poison']);
        $user_info['vital_sign'] = unserialize($user_info['vital_sign']);
        $user_info['family'] = unserialize($user_info['family']);
        $poisonList = array(
            'poison0' => '奋乃静',
            'poison1' => '盐酸硫利哒嗪',
            'poison2' => '氯丙嗪',
            'poison3' => '三氟拉嗪',
            'poison4' => '氟哌啶醇',
            'poison5' => '氟哌利多',
            'poison6' => '利血平',
            'poison7' => '甲氧氯普胺',
            'poison8' => 'α-甲基多巴',
            'poison9' => '锂剂',
            'poison10' => '氟桂利嗪',
            'poison11' => '桂利嗪',
        );
        $this->assign('poisonList', $poisonList);

        $other_disease_list = array(
            '1' => '高血压',
            '2' => '糖尿病',
            '3' => '高脂血症',
            '4' => '脑出血',
            '5' => '脑梗死',
            '6' => '血管性痴呆',
            '7' => '骨关节病',
            '8' => '性肺病',
            '9' => '其他',
        );
        $this->assign('other_disease_list', $other_disease_list);
        $this->assign('user', $user);
        $this->assign('user_info', $user_info);
        return $this->fetch();
    }


    /**
     * 本站用户拉黑
     * @adminMenu(
     *     'name'   => '本站用户拉黑',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '本站用户拉黑',
     *     'param'  => ''
     * )
     */
    public function ban()
    {
        $id = input('param.id', 0, 'intval');
        if ($id) {
            $result = Db::name("user")->where(["id" => $id, "user_type" => 2])->setField('user_status', 0);
            if ($result) {
                $this->success("会员拉黑成功！", "adminIndex/index");
            } else {
                $this->error('会员拉黑失败,会员不存在,或者是管理员！');
            }
        } else {
            $this->error('数据传入失败！');
        }
    }

    /**
     * 本站用户启用
     * @adminMenu(
     *     'name'   => '本站用户启用',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '本站用户启用',
     *     'param'  => ''
     * )
     */
    public function cancelBan()
    {
        $id = input('param.id', 0, 'intval');
        if ($id) {
            Db::name("user")->where(["id" => $id, "user_type" => 2])->setField('user_status', 1);
            $this->success("会员启用成功！", '');
        } else {
            $this->error('数据传入失败！');
        }
    }

    /**
     * 删除数据
     * @throws \think\Exception
     */
    public function delete()
    {
        $model = Db::name('user' . $this->inc_type);
        $param = $this->request->param();
        if (isset($param['id'])) {
            $id = $this->request->param('id', 0, 'intval');
            $result = $model->where(['id' => $id])->find();
            $model->where(['id' => $id])->delete();
            adminLog("删除患者(ID:" . $id . ")");
            $this->del_data_list($id, 1);
            $this->success("删除成功！", '');
        }
        if (isset($param['ids'])) {
            $ids = $this->request->param('ids/a');
            $result = $model->where(['id' => ['in', $ids]])->delete();
            adminLog("删除患者(ID:" . implode(",", $ids) . ")");
            if ($result) {
                $this->del_data_list($ids, 2);
                $this->success("删除成功！", '');
            }
        }
    }

    /**
     * 添加绑定数据
     * @param $user_id
     * @param $visit_id
     */
    public function add_data_list($user_id, $visit_id)
    {
        $table_list1 = array(
            'user_assay_check',
            'user_assist_check',
            'user_body_check',
            'user_center_diagnose',
            'user_drug_history',
            'user_image_check',
            'user_major_medical',
            'user_medical_history',
            'user_pd_disease',
        );

        $table_list2 = array(
            'scale_mds_updrs',
            'scale_adl',
            'scale_dlb',
            'scale_ess',
            'scale_fai',
            'scale_frozen',
            'scale_hama',
            'scale_hamd',
            'scale_maes',
            'scale_mmse',
            'scale_moca',
            'scale_nmss',
            'scale_npi',
            'scale_pdql',
            'scale_psqi',
            'scale_sc_en',
            'scale_stroop',
            'scale_wais',
        );


        foreach ($table_list1 as $val) {
            $data = array(
                'user_id' => $user_id,
                'visit_id' => $visit_id,
                'admin_id' => session('ADMIN_ID'),
                'create_time' => time(),
                'update_time' => time(),
            );
            $res = Db::name($val)->insert($data);
        }

        foreach ($table_list2 as $val) {
            $data = array(
                'user_id' => $user_id,
                'visit_id' => $visit_id,
                'admin_id' => session('ADMIN_ID'),
                'create_time' => time(),
                'update_time' => time(),
                'items' => serialize(array()),
            );
            $res = Db::name($val)->insert($data);
        }

    }

    /**
     * 删除绑定数据
     */
    public function del_data_list($user_id, $type)
    {
        $table_list1 = array(
            'user_info',
            'user_visit',
            'user_assay_check',
            'user_assist_check',
            'user_body_check',
            'user_center_diagnose',
            'user_drug_history',
            'user_image_check',
            'user_major_medical',
            'user_medical_history',
            'user_pd_disease',
        );

        $table_list2 = array(
            'scale_mds_updrs',
            'scale_adl',
            'scale_dlb',
            'scale_ess',
            'scale_fai',
            'scale_frozen',
            'scale_hama',
            'scale_hamd',
            'scale_maes',
            'scale_mmse',
            'scale_moca',
            'scale_nmss',
            'scale_npi',
            'scale_pdql',
            'scale_psqi',
            'scale_sc_en',
            'scale_stroop',
            'scale_wais',
        );

        foreach ($table_list1 as $val) {
            if ($type == 1) {
                $where = array(
                    'user_id' => $user_id,
                );
            } else {
                $where = array(
                    'user_id' => array('in', $user_id),
                );
            }
            $res = Db::name($val)->where($where)->delete();
        }

        foreach ($table_list2 as $val) {
            if ($type == 1) {
                $where = array(
                    'user_id' => $user_id,
                );
            } else {
                $where = array(
                    'user_id' => array('in', $user_id),
                );
            }
            $res = Db::name($val)->where($where)->delete();
        }

        $res = Db::name('user_visit')->where($where)->delete();

    }

    public function test()
    {
        $table_list1 = array(
            'user_assay_check',
            'user_assist_check',
            'user_body_check',
            'user_center_diagnose',
            'user_drug_history',
            'user_image_check',
            'user_major_medical',
            'user_medical_history',
            'user_pd_disease',
        );

        $table_list2 = array(
            'scale_adl',
            'scale_dlb',
            'scale_ess',
            'scale_fai',
            'scale_frozen',
            'scale_hama',
            'scale_hamd',
            'scale_maes',
            'scale_mmse',
            'scale_moca',
            'scale_nmss',
            'scale_npi',
            'scale_pdql',
            'scale_psqi',
            'scale_sc_en',
            'scale_stroop',
            'scale_wais',
        );

        foreach ($table_list1 as $val) {
            $table_name = "bro_" . $val;
            $sql = "alter table " . $table_name . " add visit_id int(11) default 0 COMMENT'随访ID'";
            $res = Db::query($sql);
        }
        foreach ($table_list2 as $val) {
            $table_name = "bro_" . $val;
            $sql = "alter table " . $table_name . " add visit_id int(11) default 0 COMMENT'随访ID'";
            $res = Db::query($sql);
        }


        die();


        header("Content-type:text/html;charset=utf-8");
        $url = "https://openapi.baidu.com/oauth/2.0/token?grant_type=client_credentials&client_id=7hc7IQMDGTAuyuQqRod06BBs&client_secret=UXE4ze6tKbs41zrjflbO39A58IpxPYWf";

        $result = cmf_curl_get($url);
        $token_info = json_decode($result, true);
        dump($token_info);

        $token = $token_info['access_token'];

        $text = "陆柳芬大笨蛋";
        $url = "http://tsn.baidu.com/text2audio?tex=$text&lan=zh&cuid=***&ctp=1&tok=$token";
        $this->assign('url', $url);

        $result = cmf_curl_get($url);
        $this->assign('res', $result);
        return $this->fetch();
    }

}
