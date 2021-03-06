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
 * 患者病史管理
 * Class MedicalHistoryController
 * @package app\user\controller
 */
class MedicalHistoryController extends AdminBaseController
{
    var $user = array();

    public function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        $user_id = input('user_id');
        $user = Db::name('user')->find($user_id);
        $this->user = $user;
        $this->admin_id = session('ADMIN_ID');
        $this->assign('user', $user);
    }

    /**
     * 数据列表
     * @return mixed
     */
    public function index()
    {
        $request = input('request.');
        if (!empty($request['user_nickname'])) {
            $where['user_nickname'] = ['like', "%" . $request['user_nickname'] . "%"];
        }
        if (!empty($request['title'])) {
            $where['title'] = $request['title'];
        }
        if (!empty($request['start_time']) && !empty($request['end_time'])) {
            $start_time = strtotime($request['start_time']);
            $end_time = strtotime($request['end_time']) + 86400;
            $where['a.create_time'] = array('between', [$start_time, $end_time]);
        }

        $where['a.user_id'] = input('user_id');

        session('search', $where);

        $keywordComplex = [];
        $usersQuery = Db::name('user_medical_history');
        $list = $usersQuery
            ->alias('a')
            ->join('user_visit v', 'a.visit_id=v.id', 'left')
            ->field("a.*,v.visit_time,v.visit_times")
            ->whereOr($keywordComplex)->where($where)->order("a.create_time DESC")->paginate(15);
        // 获取分页显示
        $list->appends($request);
        $page = $list->render();
        $this->assign('list', $list);
        $this->assign('page', $page);
        // 渲染模板输出
        return $this->fetch();
    }

    public function export()
    {
        $user = $this->user;
        $items_list = array(
            '1' => array('name' => '妄想', 'unit' => ''),
            '2' => array('name' => '幻觉', 'unit' => ''),
            '3' => array('name' => '激越/攻击性', 'unit' => ''),
            '4' => array('name' => '抑郁/恶劣心境 ', 'unit' => ''),
            '5' => array('name' => '焦虑', 'unit' => ''),
            '6' => array('name' => '欣快', 'unit' => ''),
            '7' => array('name' => '情感淡漠', 'unit' => ''),
            '8' => array('name' => '脱抑制', 'unit' => ''),
            '9' => array('name' => '易激惹/情绪不稳', 'unit' => ''),
            '10' => array('name' => '异常运动行为', 'unit' => ''),
            '11' => array('name' => '睡眠/夜间行为', 'unit' => ''),
            '12' => array('name' => '食欲和进食障碍', 'unit' => ''),
        );

        //设置表头
        $one = array(
            '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
        );
        foreach ($items_list as $key => $val) {
            $one[] = $key . '.' . $val['name'];
            $one[] = "频率";
            $one[] = "严重程度";
            $one[] = "频率x严重程度";
            $one[] = "使照料者苦恼程度";
        }
        $one[] = "频率总分";
        $one[] = "严重程度";
        $one[] = "频率×严重程度总分";
        $one[] = "使照料者苦恼程度";
        $cellTitle[] = $one;

        $userList = Db::name('user')->where(array('user_type' => 2))->order('id asc')->column("*");
        $visitList = Db::name('user_visit')->order('id asc')->column("*");

        $model = Db::name('scale_npi');
        $dataList = $model->alias('a')
            ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
        $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

        //拼装数据
        $excel_data = [];
        foreach ($dataList as $val) {
            $two = [];
            $user = $userList[$val['user_id']];
            $visit = $visitList[$val['visit_id']];
            $two[] = $user['user_nickname'];
            $two[] = $user['user_code'];
            $two[] = date("Y-m-d", $user['birthday']);
            $two[] = $sex_text[$user['sex']];
            $two[] = $user['age'];
            $two[] = empty($visit) ? date('Y-m-d', $val['create_time']) : date('Y-m-d', $visit['visit_time']);
            $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
            $items = unserialize($val['items']);
            $items = $items['npi'];
            foreach ($items_list as $key => $val1) {
                $two[] = $items[$key][1] == 1 ? "是" : "否";
                $two[] = $items[$key][2];
                $two[] = $items[$key][3];
                $two[] = $items[$key][4];
                $two[] = $items[$key][5];
            }
            $two[] = $val['score1'];
            $two[] = $val['score2'];
            $two[] = $val['score3'];
            $two[] = $val['score4'];
            $excel_data[] = $two;
        }
        $celldata = array(
            $excel_data,
        );

        //合并单元格设置
        $cellMerge[] = array(
            array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
            array('title' => '神经精神症状问卷', 'start' => "H1", 'end' => 'BQ1'),
        );

        //设置工作区标题
        $sheetName[] = "神经精神症状问卷(NPI)";

        $this->export_do('test', $sheetName, $cellMerge, $cellTitle, $celldata);
    }

    public function export_do($title, $sheetName, $cellMerge, $cellTitle, $celldata)
    {
        vendor("phpexcel.PHPExcel");
        $objPHPExcel = new \PHPExcel();
        //定义配置
        $xlsTitle = iconv('utf-8', 'gb2312', $title);//文件名称
        $fileName = $title . date('_YmdHis');//文件名称
        $cellKey = array(
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
            'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
        );
        $cellKeys = array('A', 'B', 'C', 'D');
        foreach ($cellKeys as $kc) {
            foreach ($cellKey as $kcs) {
                $cellKey[] = $kc . $kcs;
            }
        }
        for ($i = 0; $i < count($celldata); $i++) {
            if ($i !== 0) $objPHPExcel->createSheet();
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
    public function export1()
    {
        $user = $this->user;
        //搜索条件
        $where = session('search');
        $keywordComplex = [];
        $usersQuery = Db::name('user_medical_history');
        $list = $usersQuery->where($where)->order("create_time DESC")->select()->toArray();
        $strTable = '<table width="500" border="1">';

        $strTable .= '<tr>';
        $strTable .= '<td colspan="4">患者信息</td>';
        $strTable .= '<td colspan="31">既往病史</td>';
        $strTable .= '</tr>';
        $strTable .= '<tr>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="100">患者编号</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="100">患者姓名</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">年龄</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">性别</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">高血压</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">开始年龄</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">服药种类</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">服药时长</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">血压控制</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">糖尿病</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">开始年龄</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">服药种类</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">服药时长</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">精神疾病</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">精神疾病种类</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">开始年龄</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">服药种类</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">服药时长</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">脑梗死</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">开始年龄</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">脑出血</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">开始年龄</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">脑外伤</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">开始年龄</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">脑外伤昏迷病史</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">CO中毒</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">开始年龄</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">CO中毒昏迷病史</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">肿瘤</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">开始年龄</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">种类</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">癫痫</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">开始年龄</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">服药种类</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">服药时长</td>';
        $strTable .= '<td style="text-align:center;font-size:12px;" width="*">其他疾病</td>';
        $strTable .= '</tr>';
        if (is_array($list)) {
            foreach ($list as $k => $val) {
                $sex = $user['sex'] == 1 ? '男' : '女';
                $strTable .= '<tr>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $user['user_code'] . ' </td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $user['user_nickname'] . ' </td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $user['age'] . ' </td>';
                $strTable .= '<td style="text-align:left;font-size:12px;">' . $sex . '</td>';

                $info = unserialize($val['content']);
                foreach ($info as $ks => $vv) {
                    if ($ks == 'other') {
                        $s1 = $vv;
                        $strTable .= '<td style="text-align:left;font-size:12px;">' . $s1 . '</td>';
                    } else {
                        $s1 = $vv['radio'] == 1 ? '有' : '无';
                        $strTable .= '<td style="text-align:left;font-size:12px;">' . $s1 . '</td>';
                    }

                    if ($ks == 'disease3') {
                        switch ($vv['type']) {
                            case 1:
                                $s2 = "焦虑";
                                break;
                            case 2:
                                $s2 = "抑郁";
                                break;
                            case 3:
                                $s2 = "精神分裂 ";
                                break;
                        }
                        $strTable .= '<td style="text-align:left;font-size:12px;">' . $s2 . '</td>';
                    } elseif ($ks == 'other') {

                    } else {
                        $s2 = $vv['s_age'] . "岁";
                        $strTable .= '<td style="text-align:left;font-size:12px;">' . $s2 . '</td>';
                    }

                    switch ($ks) {
                        case 'disease1':
                            $s3 = $vv['drug_type'];
                            $s4 = $vv['drug_year'] . '年';
                            $s5_arr = array('1' => '好', '2' => "一般", '3' => '不好');
                            $s5 = $s5_arr[$vv['blood']];
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s3 . '</td>';
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s4 . '</td>';
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s5 . '</td>';
                            break;
                        case 'disease2':
                            $s3 = $vv['drug_type'];
                            $s4 = $vv['drug_year'] . '年';
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s3 . '</td>';
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s4 . '</td>';
                            break;
                        case 'disease3':
                            $s3 = $s2 = $vv['s_age'] . "岁";
                            $s4 = $vv['drug_type'];
                            $s5 = $vv['drug_year'] . '年';
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s3 . '</td>';
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s4 . '</td>';
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s5 . '</td>';
                            break;
                        case 'disease6':
                            $s3 = $vv['type'] == 1 ? '有' : '无';
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s3 . '</td>';
                            break;
                        case 'disease7':
                            $s3 = $vv['type'] == 1 ? '有' : '无';
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s3 . '</td>';
                            break;
                        case 'disease8':
                            $s3 = $vv['type'];
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s3 . '</td>';
                            break;
                        case 'disease9':
                            $s3 = $vv['drug_type'];
                            $s4 = $vv['drug_year'] . '年';
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s3 . '</td>';
                            $strTable .= '<td style="text-align:left;font-size:12px;">' . $s4 . '</td>';
                            break;
                    }
                }

                $strTable .= '</tr>';
            }
        }
        $strTable .= '</table>';
        unset($list);
        downloadExcel($strTable, 'user');
        exit();
    }

    /**
     * 添加数据
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
        $disease_list = array(
            '1' => array(
                'name' => '高血压',
                'radio' => 1,
                's_age' => 1,
                'drug_type' => 1,
                'drug_year' => 1,
                'blood' => 1,
            ),
            '2' => array(
                'name' => '糖尿病',
                'radio' => 1,
                's_age' => 1,
                'drug_type' => 1,
                'drug_year' => 1,
                'blood' => 0,
            ),
            '3' => array(
                'name' => '精神疾病',
                'radio' => 1,
                's_age' => 0,
                'drug_type' => 1,
                'drug_year' => 1,
                'blood' => 0,
            ),
        );
        $this->assign('disease_list', $disease_list);
        return $this->fetch();
    }

    /**
     * 添加/编辑数据提交
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
        $model = Db::name('user_medical_history');
        if ($this->request->isPost()) {
            $data = $this->request->param();
            foreach ($data as &$val) {
                if (is_array($val)) {
                    $val = serialize($val);
                }
            }
            $data['update_time'] = time();
            if (empty($data['id'])) {
                $data['admin_id'] = $this->admin_id;
                $data['create_time'] = time();
                $res = $model->insert($data);
                adminLog("添加病史(ID:$res)");
                $this->success('添加成功!', url('MedicalHistory/index', ['user_id' => $data['user_id']]));
            } else {
                $res = $model->where(array('id' => $data['id']))->update($data);
                adminLog("编辑病史(ID:" . $data['id'] . ")");
                $this->success('编辑成功!', url('MedicalHistory/index', ['user_id' => $data['user_id']]));
            }
        }

    }

    /**
     * @return mixed编辑数据
     */
    public function edit()
    {
        $model = Db::name('user_medical_history');
        $id = $this->request->param('id', 0, 'intval');
        $data = $model->find($id);
        $data['content'] = unserialize($data['content']);
        $this->assign('data', $data);
        return $this->fetch();
    }

    /**
     * 删除数据
     * @throws \think\Exception
     */
    public function delete()
    {
        $model = Db::name('user_medical_history');
        $param = $this->request->param();
        if (isset($param['id'])) {
            $id = $this->request->param('id', 0, 'intval');
            $result = $model->where(['id' => $id])->find();
            $model->where(['id' => $id])->delete();
            adminLog("删除病史(ID:" . $id . ")");
            $this->success("删除成功！", '');
        }
        if (isset($param['ids'])) {
            $ids = $this->request->param('ids/a');
            $result = $model->where(['id' => ['in', $ids]])->delete();
            adminLog("删除病史(ID:" . implode(",", $ids) . ")");
            if ($result) {
                $this->success("删除成功！", '');
            }
        }
    }
}
