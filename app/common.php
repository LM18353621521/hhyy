<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/1/22
 * Time: 21:40
 */

use think\Config;
use think\Db;
use think\Url;
use dir\Dir;
use think\Route;
use think\Loader;
use think\Request;
use cmf\lib\Storage;


/**
 * 管理员操作记录
 * @param $log_info string 记录信息
 */
function adminLog($log_info)
{
    $add['log_time'] = time();
    $add['admin_id'] = session('ADMIN_ID');
    $add['log_info'] = $log_info;
    $add['log_ip'] = request()->ip();
    $add['log_url'] = request()->baseUrl();
    Db::name('admin_log')->insert($add);
}

/**
 * 导出excel
 * @param $strTable    表格内容
 * @param $filename 文件名
 */
function downloadExcel($strTable, $filename)
{
    header("Content-type: application/vnd.ms-excel");
    header("Content-Type: application/force-download");
    header("Content-Disposition: attachment; filename=" . $filename . "_" . date('Y-m-d') . ".xls");
    header('Expires:0');
    header('Pragma:public');
    echo '<html><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />' . $strTable . '</html>';
    echo '<html><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />' . $strTable . '</html>';
}


function get_user_info($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        'smoking' => array('name' => '吸烟史', 'unit' => ''),
        'drink_wine' => array('name' => '饮酒史', 'unit' => ''),
        'drink_coffee' => array('name' => '饮咖啡史', 'unit' => ''),
        'drink_tea' => array('name' => '饮茶史 ', 'unit' => ''),
        'poison' => array('name' => '毒物接触史', 'unit' => ''),
    );

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
        'sp_other' => '其他',
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数', '民族',
        '国籍', '文化程度', '受教育年限', '家庭住址', '联系方式', '电子邮箱', '职业', '婚姻状况', '经济状况', '居住状况',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $val['name'];
        switch ($key) {
            case 'smoking':
                $one[] = "烟龄 ";
                $one[] = "戒烟时间 ";
                break;
            case 'drink_wine':
                $one[] = "酒龄 ";
                $one[] = "戒酒时间 ";
                break;
            case 'drink_coffee':
                $one[] = "时间 ";
                break;
            case 'drink_tea':
                $one[] = "时间 ";
                break;
            case 'poison':
                $one[] = "时间 ";
                break;
        }
    }

    $one[] = "特殊药物使用";
    foreach ($poisonList as $key => $val) {
        $one[] = $val;
        $one[] = "种类剂量";
    }

    $one[] = "体重（Kg）";
    $one[] = "身髙（cm）";
    $one[] = "呼吸（次分）";
    $one[] = "体温（℃）";
    $one[] = "血压卧位（mmHg）";
    $one[] = "血压立位（mmHg）";
    $one[] = "脉搏（次分）";
    $one[] = "心率卧位（次/分）";
    $one[] = "心率";
    $one[] = "家族史";
    $one[] = "其他帕金森病患者";
    $one[] = "患者亲属是谁";
    $one[] = "其他疾病";
    $cellTitle = $one;

    $model = Db::name('user_info');
    $dataList = $model->alias('a')
        ->field("a.*")
        ->where(array('a.user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    //拼装数据
    $celldata = [];
    $item_text1 = array('1' => '无', '2' => '小学', '3' => '初中', '4' => '高中及中专 ', '5' => '大学', '6' => '硕士及以上');
    $item_text2 = array('1' => '工人', '2' => '教师', '3' => '农民', '4' => '干部 ', '5' => '学生', '6' => '职员 ', '7' => '退休 ', '8' => '其他 ');
    $item_text3 = array('1' => '未婚', '2' => '已婚', '3' => '分居', '4' => '离异 ', '5' => '丧偶');
    $item_text4 = array('1' => '富裕', '2' => '较好', '3' => '一般', '4' => '较差 ', '5' => '贫困');
    $item_text5 = array('1' => '独居', '2' => '与配偶居住', '3' => '与子女居住', '4' => '其他 ');
    $item_text6 = array('1' => '无', '2' => '曾经吸引', '3' => '现在吸引');
    $item_text7 = array('1' => '无', '2' => '曾经饮酒', '3' => '现在饮酒');
    $item_text8 = array('1' => '无', '2' => '经常饮用');
    $item_text9 = array('1' => '有', '2' => '无');
    $item_text10 = array('1' => '无', '2' => '有', '3' => '不详');
    $item_text11 = array('1' => '齐', '2' => '不齐');

    foreach ($dataList as $val) {
        $user = $userList[$val['user_id']];
        $visit_count = Db::name('user_visit')->where(array('user_id' => $val['user_id']))->count();

        $user_visit_list = $model->alias('a')
            ->join('user_visit v', 'a.user_id=v.user_Id')
            ->field("a.*,v.id as visit_id,v.visit_time,v.visit_times")
            ->where(array('a.user_id' => $val['user_id']))
            ->order('a.user_id asc,a.id desc')->select()->toArray();

        for ($i = 0; $i < 1; $i++) {
            $visit = [];
            $two = [];
            $two[] = $user['user_nickname'];
            $two[] = $user['user_code'];
            $two[] = date("Y-m-d", $user['birthday']);
            $two[] = $sex_text[$user['sex']];
            $two[] = $user['age'];
            $two[] = empty($visit) ? date('Y-m-d H:i:s', $user['create_time']) : date('Y-m-d  H:i:s', $visit['visit_time']);
            $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');

            $user_info['country'] = unserialize($val['country']);
            $user_info['occupation'] = unserialize($val['occupation']);
            $user_info['live_status'] = unserialize($val['live_status']);
            $user_info['smoking'] = unserialize($val['smoking']);
            $user_info['drink_wine'] = unserialize($val['drink_wine']);
            $user_info['drink_coffee'] = unserialize($val['drink_coffee']);
            $user_info['drink_tea'] = unserialize($val['drink_tea']);
            $user_info['poison'] = unserialize($val['poison']);
            $user_info['special_poison'] = unserialize($val['special_poison']);
            $user_info['vital_sign'] = unserialize($val['vital_sign']);
            $user_info['family'] = unserialize($val['family']);

            $two[] = $val['nation'];
            $two[] = $user_info['country']['radio'] == 1 ? "中国" : $user_info['country']['other'];
            $two[] = $item_text1[$val['edu_degree']];
            $two[] = $val['edu_year'];
            $two[] = $val['address'];
            $two[] = $user['mobile'];
            $two[] = $val['email'];

            //职业
            if ($user_info['occupation']['radio'] == 8) {
                $two[] = $user_info['occupation']['other'];
            } else {
                $two[] = $item_text2[$user_info['occupation']['radio']];
            }

            $two[] = $item_text3[$val['marriage']];
            $two[] = $item_text4[$val['econom']];

            //居住
            if ($user_info['live_status']['radio'] == 4) {
                $two[] = $user_info['live_status']['other'];
            } else {
                $two[] = $item_text5[$user_info['live_status']['radio']];
            }

            foreach ($items_list as $key => $val1) {
                switch ($key) {
                    case 'smoking':
                        $two[] = $item_text6[$user_info['smoking']['radio']];
                        $two[] = $user_info['smoking']['year'] . "年" . $user_info['smoking']['month'] . "月，每天" . $user_info['smoking']['day_num'] . "支";
                        $two[] = $user_info['smoking']['quit'];
                        break;
                    case 'drink_wine':
                        $two[] = $item_text7[$user_info['drink_wine']['radio']];
                        $two[] = $user_info['drink_wine']['year'] . "年" . $user_info['drink_wine']['month'] . "月，种类及酒量:" . $user_info['drink_wine']['type_num'];
                        $two[] = $user_info['drink_wine']['quit'];
                        break;
                    case 'drink_coffee':
                        $two[] = $item_text8[$user_info['drink_coffee']['radio']];
                        $two[] = $user_info['drink_coffee']['year'] . "年" . $user_info['drink_coffee']['month'] . "月，种类剂量:" . $user_info['drink_coffee']['type_num'];
                        break;
                    case 'drink_tea':
                        $two[] = $item_text8[$user_info['drink_tea']['radio']];
                        $two[] = $user_info['drink_tea']['year'] . "年" . $user_info['drink_tea']['month'] . "月，种类剂量:" . $user_info['drink_tea']['type_num'];
                        break;
                    case 'poison':
                        $two[] = $item_text9[$user_info['poison']['radio']];
                        $two[] = $user_info['poison']['year'] . "年" . $user_info['poison']['month'] . "月，种类剂量:" . $user_info['poison']['type_num'];
                        break;
                }
            }

            $two[] = $item_text9[$user_info['special_poison']['radio']];
            foreach ($poisonList as $key => $val2) {
                $two[] = $user_info['special_poison']['date'][$key];
                $two[] = $user_info['special_poison']['type_num'][$key];
            }

            //. 生命体征
            $two[] = $user_info['vital_sign']['weight'];
            $two[] = $user_info['vital_sign']['height'];
            $two[] = $user_info['vital_sign']['breath'];
            $two[] = $user_info['vital_sign']['temperature'];
            $two[] = $user_info['vital_sign']['sp1'];
            $two[] = $user_info['vital_sign']['sp2'];
            $two[] = $user_info['vital_sign']['pulse'];
            $two[] = $user_info['vital_sign']['heartrate'];
            $two[] = $item_text11[$user_info['vital_sign']['heartrhythm']];
            //家族史
            $two[] = $item_text10[$user_info['family']['radio']];
            $two[] = $user_info['family']['other_pd'];
            $two[] = $user_info['family']['other_pd_who'];
            $two[] = $user_info['family']['other_disease']['other'];
            $celldata[] = $two;
        }

        foreach ($user_visit_list as $val_vist) {
            $visit = $val_vist;
            $two = [];
            $two[] = $user['user_nickname'];
            $two[] = $user['user_code'];
            $two[] = date("Y-m-d", $user['birthday']);
            $two[] = $sex_text[$user['sex']];
            $two[] = $user['age'];
            $two[] = empty($visit) ? date('Y-m-d  H:i:s', $val['create_time']) : date('Y-m-d  H:i:s', $visit['visit_time']);
            $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
            $user_info['country'] = unserialize($val['country']);
            $user_info['occupation'] = unserialize($val['occupation']);
            $user_info['live_status'] = unserialize($val['live_status']);
            $user_info['smoking'] = unserialize($val['smoking']);
            $user_info['drink_wine'] = unserialize($val['drink_wine']);
            $user_info['drink_coffee'] = unserialize($val['drink_coffee']);
            $user_info['drink_tea'] = unserialize($val['drink_tea']);
            $user_info['poison'] = unserialize($val['poison']);
            $user_info['special_poison'] = unserialize($val['special_poison']);
            $user_info['vital_sign'] = unserialize($val['vital_sign']);
            $user_info['family'] = unserialize($val['family']);

            $two[] = $val['nation'];
            $two[] = $user_info['country']['radio'] == 1 ? "中国" : $user_info['country']['other'];
            $two[] = $item_text1[$val['edu_degree']];
            $two[] = $val['edu_year'];
            $two[] = $val['address'];
            $two[] = $user['mobile'];
            $two[] = $val['email'];

            //职业
            if ($user_info['occupation']['radio'] == 8) {
                $two[] = $user_info['occupation']['other'];
            } else {
                $two[] = $item_text2[$user_info['occupation']['radio']];
            }

            $two[] = $item_text3[$val['marriage']];
            $two[] = $item_text4[$val['econom']];

            //居住
            if ($user_info['live_status']['radio'] == 4) {
                $two[] =  $user_info['live_status']['other'];
            } else {
                $two[] = $item_text5[$user_info['live_status']['radio']];
            }

            foreach ($items_list as $key => $val1) {
                switch ($key) {
                    case 'smoking':
                        $two[] = $item_text6[$user_info['smoking']['radio']];
                        $two[] = $user_info['smoking']['year'] . "年" . $user_info['smoking']['month'] . "月，每天" . $user_info['smoking']['day_num'] . "支";
                        $two[] = $user_info['smoking']['quit'];
                        break;
                    case 'drink_wine':
                        $two[] = $item_text7[$user_info['drink_wine']['radio']];
                        $two[] = $user_info['drink_wine']['year'] . "年" . $user_info['drink_wine']['month'] . "月，种类及酒量:" . $user_info['drink_wine']['type_num'];
                        $two[] = $user_info['drink_wine']['quit'];
                        break;
                    case 'drink_coffee':
                        $two[] = $item_text8[$user_info['drink_coffee']['radio']];
                        $two[] = $user_info['drink_coffee']['year'] . "年" . $user_info['drink_coffee']['month'] . "月，种类剂量:" . $user_info['drink_coffee']['type_num'];
                        break;
                    case 'drink_tea':
                        $two[] = $item_text8[$user_info['drink_tea']['radio']];
                        $two[] = $user_info['drink_tea']['year'] . "年" . $user_info['drink_tea']['month'] . "月，种类剂量:" . $user_info['drink_tea']['type_num'];
                        break;
                    case 'poison':
                        $two[] = $item_text9[$user_info['poison']['radio']];
                        $two[] = $user_info['poison']['year'] . "年" . $user_info['poison']['month'] . "月，种类剂量:" . $user_info['poison']['type_num'];
                        break;
                }
            }

            $two[] = $item_text9[$user_info['special_poison']['radio']];
            foreach ($poisonList as $key => $val2) {
                $two[] = $user_info['special_poison']['date'][$key];
                $two[] = $user_info['special_poison']['type_num'][$key];
            }

            //. 生命体征
            $two[] = $user_info['vital_sign']['weight'];
            $two[] = $user_info['vital_sign']['height'];
            $two[] = $user_info['vital_sign']['breath'];
            $two[] = $user_info['vital_sign']['temperature'];
            $two[] = $user_info['vital_sign']['sp1'];
            $two[] = $user_info['vital_sign']['sp2'];
            $two[] = $user_info['vital_sign']['pulse'];
            $two[] = $user_info['vital_sign']['heartrate'];
            $two[] = $item_text11[$user_info['vital_sign']['heartrhythm']];
            //家族史
            $two[] = $item_text10[$user_info['family']['radio']];
            $two[] = $user_info['family']['other_pd'];
            $two[] = $user_info['family']['other_pd_who'];
            $two[] = $user_info['family']['other_disease']['other'];
            $celldata[] = $two;
        }


    }

    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'BS1'),
    );
    //设置工作区标题
    $sheetName = "基本信息";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_medical_history($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '高血压病', 'unit' => ''),
        '2' => array('name' => '糖尿病', 'unit' => ''),
        '3' => array('name' => '精神疾病', 'unit' => ''),
        '4' => array('name' => '脑梗死 ', 'unit' => ''),
        '5' => array('name' => '脑出血', 'unit' => ''),
        '6' => array('name' => '脑外伤', 'unit' => ''),
        '7' => array('name' => 'CO中毒', 'unit' => ''),
        '8' => array('name' => '肿瘤', 'unit' => ''),
        '9' => array('name' => '癫痫', 'unit' => ''),
        '10' => array('name' => '其他疾病外伤、手术、骨折', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $val['name'];
        if ($key != '3'&&$key != '10') {
            $one[] = "开始年龄(岁)";
        }
        switch ($key) {
            case 1:
                $one[] = "服药种类 ";
                $one[] = "服药时长 ";
                $one[] = "血压控制 ";
                break;
            case 2:
                $one[] = "服药种类 ";
                $one[] = "服药时长 ";
                break;
            case 3:
                $one[] = "种类 ";
                $one[] = "开始年龄(岁)";
                $one[] = "服药种类 ";
                $one[] = "服药时长 ";
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                $one[] = "昏迷 ";
                break;
            case 7:
                $one[] = "昏迷 ";
                break;
            case 8:
                $one[] = "种类 ";
                break;
            case 9:
                $one[] = "服药种类 ";
                $one[] = "服药时长(年) ";
                break;
        }

    }
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('user_medical_history');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text1 = array('1' => "有    ", '2' => "无   ");
    $item_text2 = array('1' => "好    ", '2' => "一般   ", '3' => "不好  ");
    $item_text3 = array('1' => "焦虑    ", '2' => "抑郁   ", '3' => "精神分裂  ");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['content']);
        foreach ($items_list as $key => $vv) {
            if ($key != 3&&$key != 10) {
                $two[] = $item_text1[$items["disease" . $key]['radio']];
                $two[] = $items["disease" . $key]['s_age'];
            }
            switch ($key) {
                case 1:
                    $two[] = $items["disease" . $key]['drug_type'];
                    $two[] = $items["disease" . $key]['drug_year'];
                    $two[] = $item_text2[$items["disease" . $key]['blood']];
                    break;
                case 2:
                    $two[] = $items["disease" . $key]['drug_type'];
                    $two[] = $items["disease" . $key]['drug_year'];
                    break;
                case 3:
                    $two[] = $item_text1[$items["disease" . $key]['radio']];
                    $two[] = $item_text3[$items["disease" . $key]['type']];
                    $two[] = $items["disease" . $key]['s_age'];
                    $two[] = $items["disease" . $key]['drug_type'];
                    $two[] = $items["disease" . $key]['drug_year'];
                    break;
                case 4:
                    break;
                case 5:
                    break;
                case 6:
                    $two[] = $item_text1[$items["disease" . $key]['type']];
                    break;
                case 7:
                    $two[] = $item_text1[$items["disease" . $key]['type']];
                    break;
                case 8:
                    $two[] = $items["disease" . $key]['type'];
                    break;
                case 9:
                    $two[] = $items["disease" . $key]['drug_type'];
                    $two[] = $items["disease" . $key]['drug_year'];
                    break;
                case 10:
                    $two[] = $items['other'];
                    break;
            }
        }
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '既往病史', 'start' => "H1", 'end' => 'AN1'),
    );
    //设置工作区标题
    $sheetName = "既往病史";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_major_medical($userList = array(), $visitList = array(), $user_ids = array())
{
    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    $item_list1 = array(
        '0' => array('name' => '主诉', 'unit' => ''),
        '1' => array('name' => '起病时间', 'unit' => ''),
        '2' => array('name' => '年龄(岁)', 'unit' => ''),
        '3' => array('name' => '诊断时间', 'unit' => ''),
        '4' => array('name' => '年龄(岁)', 'unit' => ''),
        '5' => array('name' => '首发症状', 'unit' => ''),
        '7' => array('name' => '首发部位', 'unit' => ''),
    );
    foreach ($item_list1 as $key => $val) {
        $one[] = $val['name'];
    }

    //运动症状
    $item_list2 = array(
        '1' => array('name' => '优势手', 'unit' => ''),
        '2' => array('name' => '运动迟缓', 'unit' => ''),
        '3' => array('name' => '震颤', 'unit' => ''),
        '4' => array('name' => '僵直', 'unit' => ''),
        '5' => array('name' => '平衡障碍', 'unit' => ''),
        '6' => array('name' => '吞咽障碍', 'unit' => ''),
        '7' => array('name' => '构音障碍', 'unit' => ''),
        '8' => array('name' => '表情减少', 'unit' => ''),
        '9' => array('name' => '流涎', 'unit' => ''),
        '10' => array('name' => '肌张力障碍', 'unit' => ''),
        '11' => array('name' => '痛性痉挛', 'unit' => ''),
        '12' => array('name' => '翻身困难', 'unit' => ''),
    );
    foreach ($item_list2 as $key => $val) {
        $one[] = $val['name'];
        if ($key == '3') {
            $one[] = "静止性震颤";
            $one[] = "部位";
            $one[] = "出现年龄";
            $one[] = "姿势性震颤";
            $one[] = "部位";
            $one[] = "出现年龄";
            $one[] = "运动性震颤";
            $one[] = "部位";
            $one[] = "出现年龄";
        } elseif ($key == 2) {
            $one[] = "出现年龄";
        } elseif ($key == '4') {
            $one[] = "主要部位";
            $one[] = "出现年龄";
        } elseif ($key >= 5) {
            $one[] = "出现年龄";
        }
    }

    //运动并发症
    $item_list3 = array(
        '1' => array('name' => '运动并发症', 'unit' => ''),
        '21' => array('name' => '剂末恶化', 'unit' => ''),
        '22' => array('name' => '开-关现象', 'unit' => ''),
        '31' => array('name' => '剂峰异动症', 'unit' => ''),
        '32' => array('name' => '双向异动症', 'unit' => ''),
        '33' => array('name' => '肌张力障碍', 'unit' => ''),
    );
    foreach ($item_list3 as $key => $val) {
        $one[] = $val['name'];
        if ($key > 1) {
            $one[] = "出现年龄";
        }
    }
    //非运动症状
    $item_list4 = array(
        '1' => array('name' => '排便障碍', 'unit' => ''),
        '2' => array('name' => '排尿障碍', 'unit' => ''),
        '3' => array('name' => '性功能障碍', 'unit' => ''),
    );
    $one[] = "自主神经功能障碍";
    foreach ($item_list4 as $key => $val) {
        $one[] = $val['name'];
        $one[] = "出现年龄";
    }

    //情绪障碍
    $item_list5 = array(
        's1' => array('name' => '抑郁', 'unit' => ''),
        's2' => array('name' => '心境恶劣', 'unit' => ''),
        's3' => array('name' => '焦虑', 'unit' => ''),
        's4' => array('name' => '淡漠', 'unit' => ''),
    );
    $one[] = "情绪障碍";
    foreach ($item_list5 as $key => $val) {
        $one[] = $val['name'];
        $one[] = "出现年龄";
    }

    //认知功能障碍
    $item_list6 = array(
        's1' => array('name' => '痴呆', 'unit' => ''),
        's2' => array('name' => 'MCI', 'unit' => ''),
        's3' => array('name' => '言语障碍', 'unit' => ''),
        's4' => array('name' => '记忆障碍', 'unit' => ''),
    );
    $one[] = "认知功能障碍";
    foreach ($item_list6 as $key => $val) {
        $one[] = $val['name'];
        $one[] = "出现年龄";
    }

    //睡眠障碍
    $item_list7 = array(
        's1' => array('name' => '失眠', 'unit' => ''),
        's2' => array('name' => '白天嗜睡', 'unit' => ''),
        's3' => array('name' => 'RBD ', 'unit' => ''),
        's4' => array('name' => '不安腿综合征（RLS', 'unit' => ''),
    );
    $one[] = "睡眠障碍";
    foreach ($item_list7 as $key => $val) {
        $one[] = $val['name'];
        $one[] = "出现年龄";
    }
    //嗅觉减退
    $item_list8 = array(
        's1' => array('name' => '', 'unit' => ''),
    );
    $one[] = "嗅觉减退";
    foreach ($item_list8 as $key => $val) {
        $one[] = "出现年龄";
    }
    //不能解释的疼痛
    $item_list9 = array(
        's1' => array('name' => '腰痛', 'unit' => ''),
        's2' => array('name' => '肩周痛', 'unit' => ''),
        's3' => array('name' => '足趾痉挛性疼痛', 'unit' => ''),
        'other' => array('name' => '其他', 'unit' => ''),
    );
    $one[] = "不能解释的疼痛";
    foreach ($item_list9 as $key => $val) {
        $one[] = $val['name'];
        if ($key != "other") {
            $one[] = "出现年龄";
        }
    }
    //临床表现
    $items_list10 = array(
        '1' => array('name' => '波动性认知障碍', 'unit' => '*109/L'),
        '2' => array('name' => '视幻觉', 'unit' => 'g/L'),
        '3' => array('name' => '快速动眼期睡眠行为障碍', 'unit' => '*1012/L'),
        '4' => array('name' => '帕金森综合征', 'unit' => 'mmol/L'),
        '5' => array('name' => '对抗精神病类药物过敏', 'unit' => 'mmol/L'),
        '6' => array('name' => '姿势不稳', 'unit' => 'mmol/L'),
        '7' => array('name' => '反复跌倒', 'unit' => 'mmol/L'),
        '8' => array('name' => '晕厥或短暂发作无法解释的意识丧失', 'unit' => 'mmol/L'),
        '9' => array('name' => '严重的自主神经功能障碍（如便秘、体位性低血压、尿失禁）', 'unit' => 'ng/ml'),
        '10' => array('name' => '嗅觉减退', 'unit' => 'pg/ml'),
        '11' => array('name' => '过度嗜睡', 'unit' => ' ng/ml'),
        '12' => array('name' => '其它形式的幻觉', 'unit' => 'mmol/L'),
        '13' => array('name' => '系统性妄想', 'unit' => 'mmol/L'),
        '14' => array('name' => '淡漠、抑郁或焦虑', 'unit' => 'mmol/L'),
    );
    foreach ($items_list10 as $key => $val) {
        $one[] = $key . "、" . $val['name'];
        if ($key <= 9) {
            $one[] = "出现时间";
        }
        if ($key == 2) {
            $one[] = "出现视幻觉的频率";
        }
        if ($key == 3) {
            $one[] = "发作频率";
        }
    }

//    $one[] = "备注";
    $cellTitle = $one;
    $model = Db::name('user_major_medical');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();

    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");
    $item_text2 = array(
        '1' => '静止性震颤',
        '2' => '运动迟缓 ',
        '3' => '平衡障碍',
        '4' => '肢体僵硬   ',
        '5' => '认知下降',
        '6' => '视觉障碍',
        '7' => '幻觉 ',
        '8' => '一过性意识障碍   ',
        '9' => '其他',
    );
    $item_text_bw = array('1' => "左上肢", "2" => "右上肢", '3' => "左下肢", "4" => "右下肢 ");
    $item_text20 = array('1' => "左利手", "2" => "右利手  ");
    $item_text_has = array('1' => "无", "2" => "有  ");
    $item_text_has1 = array('1' => "无主观症状", "2" => "有主观症状 ", '3' => "药物能减轻", "4" => "药物不能减轻 ");
    $item_text41 = array('1' => "便秘", "2" => "便急 ", '3' => "大便失禁");
    $item_text42 = array('1' => "尿失禁", "2" => "尿频 ", '3' => "排尿不畅");
    $item_text43 = array('1' => "勃起功能障碍", "2" => "阳痿 ", '3' => "快感缺失");
    $item_text_is = array('1' => "是", "2" => "否");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);

        $two[] = $items[0][0]['main_suit'];
        $two[] = $items[1][1]['time1'];
        $two[] = $items[1][2]['age'];
        $two[] = $items[1][3]['time2'];
        $two[] = $items[1][4]['age'];
        if ($items[1][5]['radio'] == 9) {
            $two[] = $item_text2[$items[1][5]['radio']] . ":" . $items[1][5]['other'];;
        } else {
            $two[] = $item_text2[$items[1][5]['radio']];
        }
        $two[] = $item_text_bw[$items[1][7]['radio']];

        //运动症状
        foreach ($item_list2 as $key => $val) {
            if ($key == 1) {
                $two[] = $item_text20[$items[2][$key]['radio']];
            } else {
                $two[] = $item_text_has[$items[2][$key]['radio']];
            }
            if ($key == 2) {
                $two[] = $items[2][$key]['age'];
            } elseif ($key == '3') {
                $two[] = $items[2][$key]['s1'] == 1 ? "√" : "";
                $two[] = $item_text_bw[$items[2][$key]['radios1']];
                $two[] = $items[2][$key]['age1'];
                $two[] = $items[2][$key]['s2'] == 1 ? "√" : "";
                $two[] = $item_text_bw[$items[2][$key]['radios2']];
                $two[] = $items[2][$key]['age2'];
                $two[] = $items[2][$key]['s2'] == 1 ? "√" : "";
                $two[] = $item_text_bw[$items[2][$key]['radios3']];
                $two[] = $items[2][$key]['age3'];
            } elseif ($key == '4') {
                $two[] = $item_text_bw[$items[2][$key]['radios1']];
                $two[] = $items[2][$key]['age1'];
            } elseif ($key >= 5) {
                $two[] = $items[2][$key]['age1'];
            }
        }
        //运动并发症
        foreach ($item_list3 as $key => $val) {
            if ($key == 1) {
                $two[] = $item_text_has[$items[3][$key]['radio']];
            } else {
                $two[] = $items[3][$key]['radio'] == 1 ? "√" : "";
                $two[] = $items[3][$key]['age1'];
            }
        }

        //非运动症状

        //-自主神经功能障碍
        $two[] = $item_text_has1[$items[4][1]['radio']];
        foreach ($item_list4 as $key => $val) {
            switch ($key) {
                case 1:
                    $two[] = $item_text41[$items[4][$key]['radio1']];
                    break;
                case 2:
                    $two[] = $item_text42[$items[4][$key]['radio1']];
                    break;
                case 3:
                    $two[] = $item_text43[$items[4][$key]['radio1']];
                    break;
            }
            $two[] = $items[4][$key]['age1'];
        }

        //情绪障碍
        $two[] = $item_text_has1[$items[5][1]['radio']];
        foreach ($item_list5 as $key => $val) {
            $two[] = $items[5][$key]['radio'] == 1 ? "√" : "";
            $two[] = $items[5][$key]['age1'];
        }

        //认知功能障碍
        $two[] = $item_text_has1[$items[6][1]['radio']];
        foreach ($item_list6 as $key => $val) {
            $two[] = $items[6][$key]['radio'] == 1 ? "√" : "";
            $two[] = $items[6][$key]['age1'];
        }

        //睡眠障碍
        $two[] = $item_text_has1[$items[7][1]['radio']];
        foreach ($item_list7 as $key => $val) {
            $two[] = $items[7][$key]['radio'] == 1 ? "√" : "";
            $two[] = $items[7][$key]['age1'];
        }

        //嗅觉减退
        $item_list8 = array(
            's1' => array('name' => '', 'unit' => ''),
        );
        $two[] = $item_text_has1[$items[8][1]['radio']];
        foreach ($item_list8 as $key => $val) {
            $two[] = $items[8][$key]['age1'];
        }

        //不能解释的疼痛
        $two[] = $item_text_has1[$items[9][1]['radio']];
        foreach ($item_list9 as $key => $val) {
            if ($key != "other") {
                $two[] = $items[9][$key]['radio'] == 1 ? "√" : "";
                $two[] = $items[9][$key]['age1'];
            } else {
                $two[] = $items[9]['other'];
            }
        }

        //临床表现
        foreach ($items_list10 as $key => $val) {
            $two[] = $item_text_is[$items[10][$key]['radio']];
            if ($key <= 9) {
                $two[] = $items[10][$key]['time'];
            }
            if ($key == 2) {
                $two[] = $items[10][$key]['rate'];
            }
            if ($key == 3) {
                $two[] = $items[10][$key]['rate'];
            }
        }

//        $two[] = $val['remark'];
        $celldata[] = $two;
//        dump($two);
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '运动症状', 'start' => "H1", 'end' => 'BE1'),
        array('title' => '非运动症状', 'start' => "BF1", 'end' => 'CW1'),
        array('title' => '路易体痴呆专用病史及症状', 'start' => "CX1", 'end' => 'DW1'),
    );
    //设置工作区标题
    $sheetName = "主要病史及症状";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_body_check($userList = array(), $visitList = array(), $user_ids = array())
{
    $sign_list = array(
        'sign1' => array('name' => '面部表情', 'unit' => ''),
        'sign2' => array('name' => '眼部活动', 'unit' => ''),
        'sign3' => array('name' => '眼睑', 'unit' => ''),
        'sign4' => array('name' => '视力', 'unit' => ''),
        'sign5' => array('name' => '流涎', 'unit' => ''),
        'sign6' => array('name' => '颈部', 'unit' => ''),
        'sign7' => array('name' => '肌力', 'unit' => ''),
        'sign8' => array('name' => '肌张力', 'unit' => ''),
        'sign9' => array('name' => '腱反射', 'unit' => ''),
        'sign10' => array('name' => '病理征', 'unit' => ''),
        'sign11' => array('name' => '欢呼征', 'unit' => ''),
        'sign12' => array('name' => '共济失调', 'unit' => ''),
        'sign13' => array('name' => '皮层复合觉', 'unit' => ''),
        'sign14' => array('name' => '肢体失用', 'unit' => ''),
        'sign15' => array('name' => '姿势', 'unit' => ''),
    );
    $motion_list = array(
        'motion1' => array('name' => '静止性震颤', 'unit' => ''),
        'motion2' => array('name' => '肌束痉挛', 'unit' => ''),
        'motion3' => array('name' => '异动症', 'unit' => ''),
        'motion4' => array('name' => '步态异常', 'unit' => ''),
        'motion5' => array('name' => '类型', 'unit' => ''),
    );
    $nerve_list = array(
        'nerve1' => array('name' => '面部油脂增加', 'unit' => ''),
        'nerve2' => array('name' => '出汗', 'unit' => ''),
        'nerve3' => array('name' => '卧位血压(mmHg)', 'unit' => ''),
        'nerve4' => array('name' => '卧位心率(bpm)', 'unit' => ''),
        'nerve5' => array('name' => '立位血压(mmHg)', 'unit' => ''),
        'nerve6' => array('name' => '立位心率(bpm)', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($sign_list as $key => $val) {
        switch ($key) {
            case "sign7":
                $one[] = "左上肢肌力";
                $one[] = "左下肢肌力";
                $one[] = "右上肢肌力";
                $one[] = "右下肢肌力";
                break;
            default:
                $one[] = $val['name'];
                break;
        }
    }
    foreach ($motion_list as $key => $val) {
        $one[] = $val['name'];
    }
    foreach ($nerve_list as $key => $val) {
        $one[] = $val['name'];
    }

    $one[] = "备注";
    $cellTitle = $one;
    $model = Db::name('user_body_check');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text1 = array('1' => "正常", '2' => "轻度减少", '3' => "面具险  ");
    $item_text2 = array('1' => "正常", '2' => "垂直注视受限 ", '3' => "水平扫视缓慢 ", '4' => "眼球固定");
    $item_text3 = array('1' => "正常", '2' => "痉挛", '3' => "失用");
    $item_text4 = array('1' => "正常", '2' => "下降   ");
    $item_text5 = array('1' => "无  ", '2' => "间断", '3' => "持续     ");
    $item_text6 = array('1' => "正常", '2' => "前倾 ", '3' => "后仰", '4' => "左偏", '5' => "右偏 ");
    $item_text7 = array('1' => "正常", '2' => "增高", '3' => "减低");
    $item_text8 = array('1' => "正常", '2' => "活跃 ", '3' => "减低 ", '4' => "消失");
    $item_text9 = array('未引出' => "正常", '2' => "Babinski征：左侧  ", '3' => "Babinski征：右侧   ", '4' => " Chaddock征：左侧", '5' => "Chaddock征：右侧 ");
    $item_text10 = array('1' => "阴性", '2' => "阳性 ");
    $item_text11 = array('1' => "正常", '2' => "减退 ");
    $item_text12 = array('1' => "无", '2' => "左侧", '3' => "右侧");
    $item_text13 = array('1' => "前倾", '2' => "前屈", '3' => "侧弯");
    $item_text14 = array('1' => "头部", '2' => "左上肢  ", '3' => "右上肢", '4' => "左下肢", '5' => "右下肢 ");
    $item_text15 = array('1' => "有", '2' => "无");
    $item_text18 = array('1' => "正常", '2' => "小步态  ", '3' => "慌张步态", '4' => "拖拽步态", '5' => "冻结步态 ", '6' => "共济失调步态 ");
    $item_text19 = array('1' => "增多", '2' => "正常  ", '3' => "减少   ");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items_sign = unserialize($val['sign']);
        $items_motion = unserialize($val['motion']);
        $items_nerve = unserialize($val['nerve']);
        foreach ($sign_list as $key => $val1) {
            switch ($key) {
                case "sign1":
                    $two[] = $item_text1[$items_sign[$key]];
                    break;
                case "sign2":
                    $two[] = $item_text2[$items_sign[$key]];
                    break;
                case "sign3":
                    $two[] = $item_text3[$items_sign[$key]];
                    break;
                case "sign4":
                    $two[] = $item_text4[$items_sign[$key]];
                    break;
                case "sign5":
                    $two[] = $item_text5[$items_sign[$key]];
                    break;
                case "sign6":
                    $two[] = $item_text6[$items_sign[$key]];
                    break;
                case "sign7":
                    $two[] = $items_sign[$key]['l_u'];
                    $two[] = $items_sign[$key]['l_d'];
                    $two[] = $items_sign[$key]['r_u'];
                    $two[] = $items_sign[$key]['r_d'];
                    break;
                case "sign8":
                    $two[] = $item_text7[$items_sign[$key]];
                    break;
                case "sign9":
                    $two[] = $item_text8[$items_sign[$key]];
                    break;
                case "sign10":
                    $two[] = $item_text9[$items_sign[$key]];
                    break;
                case "sign11":
                    $two[] = $item_text10[$items_sign[$key]];
                    break;
                case "sign12":
                    $two[] = $item_text10[$items_sign[$key]];
                    break;
                case "sign13":
                    $two[] = $item_text11[$items_sign[$key]];
                    break;
                case "sign14":
                    $two[] = $item_text12[$items_sign[$key]];
                    break;
                case "sign15":
                    $two[] = $item_text13[$items_sign[$key]];
                    break;
            }
        }
        foreach ($motion_list as $key => $val2) {
            switch ($key) {
                case "motion1":
                    $two[] = $item_text14[$items_motion[$key]];
                    break;
                case "motion2":
                    $two[] = $item_text15[$items_motion[$key]];
                    break;
                case "motion3":
                    $two[] = $item_text15[$items_motion[$key]];
                    break;
                case "motion4":
                    $two[] = $item_text15[$items_motion[$key]];
                    break;
                case "motion5":
                    $two[] = $item_text18[$items_motion[$key]];
                    break;
            }
        }
        foreach ($nerve_list as $key => $val3) {
            switch ($key) {
                case "nerve1":
                    $two[] = $item_text15[$items_nerve[$key]];
                    break;
                case "nerve2":
                    $two[] = $item_text19[$items_nerve[$key]];
                    break;
                case "nerve3":
                    $two[] = $items_nerve[$key];
                    break;
                case "nerve4":
                    $two[] = $items_nerve[$key];
                    break;
                case "nerve5":
                    $two[] = $items_nerve[$key];
                    break;
                case "nerve6":
                    $two[] = $items_nerve[$key];
                    break;
            }
        }
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '体征', 'start' => "H1", 'end' => 'AK1'),
    );
    //设置工作区标题
    $sheetName = "体格检查";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_assist_check($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        'ct' => array('name' => '头部CT', 'unit' => '*109/L'),
        'mri' => array('name' => '头部MRI', 'unit' => 'g/L'),
        'spect' => array('name' => '头部SPECT', 'unit' => '*1012/L'),
        'pet' => array('name' => '头部PET', 'unit' => 'mmol/L'),
        'sleep' => array('name' => '多导睡眠监测', 'unit' => 'mmol/L'),
        'eeg' => array('name' => '脑电图', 'unit' => 'mmol/L'),
        'cardiokymography' => array('name' => '心肌造影', 'unit' => 'mmol/L'),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $items_list[$key]['name'];
        $one[] = "检查日期";
        $one[] = "正常/异常";
        switch ($key) {
            case "ct":
                $one[] = "说明";
                break;
            case "mri":
                $one[] = "说明";
                break;
            case "spect":
                $one[] = "是否显示基底节区多巴胺转运体摄取减少";
                $one[] = "是否提示普遍低摄取，伴枕叶代谢下降";
                $one[] = "其他";
                break;
            case "pet":
                $one[] = "是否显示基底节区多巴胺转运体摄取减少";
                $one[] = "是否提示普遍低摄取，伴枕叶代谢下降";
                $one[] = "其他";
                break;
            case "sleep":
                $one[] = "是否证实快速动眼期肌肉迟缓消失";
                $one[] = "其他";
                break;
            case "eeg":
                $one[] = "是否提示慢波，颞叶出现短暂尖波";
                $one[] = "其他";
                break;
            case "cardiokymography":
                $one[] = "123I-MIBG摄取减少";
                $one[] = "其他";
                break;
        }
    }
    $one[] = "备注";
    $cellTitle = $one;
    $model = Db::name('user_assist_check');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text1 = array('1' => "有", '2' => "无");
    $item_text2 = array('1' => "正常", '2' => "异常");
    $item_text3 = array('1' => "是", '2' => "否");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        foreach ($items_list as $key => $vv) {
            $two[] = $item_text1[$items[$key]['has']];
            $two[] = $items[$key]['date'];
            $two[] = $item_text2[$items[$key]['status']];
            switch ($key) {
                case "ct":
                    $two[] = $items[$key]['desc'];
                    break;
                case "mri":
                    $two[] = $items[$key]['desc'];
                    break;
                case "spect":
                    $two[] = $item_text3[$items[$key]['res1']];
                    $two[] = $item_text3[$items[$key]['res2']];
                    $two[] = $items[$key]['desc'];
                    break;
                case "pet":
                    $two[] = $item_text3[$items[$key]['res1']];
                    $two[] = $item_text3[$items[$key]['res2']];
                    $two[] = $items[$key]['desc'];
                    break;
                case "sleep":
                    $two[] = $item_text3[$items[$key]['res1']];
                    $two[] = $items[$key]['desc'];
                    break;
                case "eeg":
                    $two[]= $item_text3[$items[$key]['res1']];
                    $two[]= $items[$key]['desc'];
                    break;
                case "cardiokymography":
                    $two[] = $item_text3[$items[$key]['res1']];
                    $two[] = $items[$key]['desc'];
                    break;
            }
        }
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '辅助检查', 'start' => "H1", 'end' => 'AP1'),
    );
    //设置工作区标题
    $sheetName = "辅助检查";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_assay_check($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '白细胞', 'unit' => '*109/L'),
        '2' => array('name' => '血红蛋白', 'unit' => 'g/L'),
        '3' => array('name' => '红细胞', 'unit' => '*1012/L'),
        '4' => array('name' => '甘油三酯', 'unit' => 'mmol/L'),
        '5' => array('name' => '总胆固醇', 'unit' => 'mmol/L'),
        '6' => array('name' => '低密度', 'unit' => 'mmol/L'),
        '7' => array('name' => '高密度', 'unit' => 'mmol/L'),
        '8' => array('name' => '同型半胱氨酸', 'unit' => 'mmol/L'),
        '9' => array('name' => '叶酸', 'unit' => 'ng/ml'),
        '10' => array('name' => '维生素B12', 'unit' => 'pg/ml'),
        '11' => array('name' => '铁蛋白', 'unit' => ' ng/ml'),
        '12' => array('name' => '总胆红素', 'unit' => 'mmol/L'),
        '13' => array('name' => '直接胆红素', 'unit' => 'mmol/L'),
        '14' => array('name' => '间接胆红素', 'unit' => 'mmol/L'),
        '15' => array('name' => '谷氨酰转肽酶', 'unit' => 'U/L'),
        '16' => array('name' => '谷丙转氨酶', 'unit' => 'U/L'),
        '17' => array('name' => '谷草转氨酶', 'unit' => 'U/L'),
        '18' => array('name' => '碱性磷酸酶', 'unit' => 'U/L'),
        '19' => array('name' => '尿素氮', 'unit' => 'mmol/L'),
        '20' => array('name' => '肌酐', 'unit' => 'mmol/L'),
        '21' => array('name' => '尿酸', 'unit' => 'mmol/L'),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $items_list[$key]['name'] . $items_list[$key]['unit'];
    }
    $one[] = "备注";
    $cellTitle = $one;
    $model = Db::name('user_assay_check');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        foreach ($items_list as $key => $vv) {
            $two[] = $items[$key];
        }
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '化验检查', 'start' => "H1", 'end' => 'AC1'),
    );
    //设置工作区标题
    $sheetName = "化验检查";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}


function get_drug_history($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '美多芭（250mg）', 'unit' => ''),
        '2' => array('name' => '息宁（250mg）', 'unit' => 'g/L'),
        '3' => array('name' => '森福罗（0.25mg）', 'unit' => '*1012/L'),
        '4' => array('name' => '森福罗（1mg）', 'unit' => 'mmol/L'),
        '5' => array('name' => '泰舒达（50mg）', 'unit' => 'mmol/L'),
        '6' => array('name' => '珂丹（200mg）', 'unit' => 'mmol/L'),
        '7' => array('name' => '金刚烷胺（100mg）', 'unit' => 'mmol/L'),
        '8' => array('name' => '金思平（5mg）', 'unit' => 'mmol/L'),
        '9' => array('name' => '安坦（2mg）', 'unit' => 'ng/ml'),
        '10' => array('name' => '咪多秕（2mg）', 'unit' => 'pg/ml'),
        '11' => array('name' => '罗匹尼罗', 'unit' => ' ng/ml'),
        '12' => array('name' => '雷沙吉兰', 'unit' => 'mmol/L'),
        '13' => array('name' => '多奈哌齐', 'unit' => 'mmol/L'),
        '14' => array('name' => '美金刚', 'unit' => 'mmol/L'),
        '15' => array('name' => '艾斯能', 'unit' => 'U/L'),
        'other' => array('name' => '其他抗PD药物', 'unit' => 'U/L'),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        if ($key = "other") {
        } else {
        }
        $one[] = "第一次服用时间";
        $one[] = "开始剂量mg";
        $one[] = "是否有效";
        $one[] = "不良反应";
        $one[] = "是否继续服用";
        $one[] = "服用剂量";
        $one[] = "停药时间";
        $one[] = "停药原因";
    }
    $cellTitle = $one;
    $model = Db::name('user_drug_history');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text1 = array('1' => ' 是 ', '2' => "否");
    $item_text2 = array('1' => ' 有 ', '2' => "无");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        foreach ($items_list as $key => $vv) {
            if ($key == "other") {

            } else {

            }

            $two[] = $items[$key][1];
            $two[] = $items[$key][2];
            $two[] = $item_text1[$items[$key][3]];
            $two[] = $item_text2[$items[$key][4]];
            $two[] = $item_text1[$items[$key][5]];
            $two[] = $items[$key][6];
            $two[] = $items[$key][7];
            $two[] = $items[$key]['remark'];
        }
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '美多芭（250mg）', 'start' => "H1", 'end' => 'O1'),
        array('title' => '息宁（250mg）', 'start' => "P1", 'end' => 'W1'),
        array('title' => '森福罗（0.25mg）', 'start' => "X1", 'end' => 'AE1'),
        array('title' => '森福罗（1mg）', 'start' => "AF1", 'end' => 'AM1'),
        array('title' => '泰舒达（50mg）', 'start' => "AN1", 'end' => 'AU1'),
        array('title' => '柯丹（200mg）', 'start' => "AV1", 'end' => 'BC1'),
        array('title' => '金刚烷胺（100mg）', 'start' => "BD1", 'end' => 'BK1'),
        array('title' => '金思平（5mg）', 'start' => "BL1", 'end' => 'BS1'),
        array('title' => '安坦（2mg）', 'start' => "BT1", 'end' => 'CA1'),
        array('title' => '咪多吡（2mg）', 'start' => "CB1", 'end' => 'CI1'),
        array('title' => '罗匹尼罗', 'start' => "CJ1", 'end' => 'CQ1'),
        array('title' => '雷沙吉兰', 'start' => "CR1", 'end' => 'CY1'),
        array('title' => '多奈哌齐', 'start' => "CZ1", 'end' => 'DG1'),
        array('title' => '美金刚', 'start' => "DH1", 'end' => 'DO1'),
        array('title' => '艾斯能', 'start' => "DP1", 'end' => 'DW1'),
        array('title' => '其他抗PD药物', 'start' => "DX1", 'end' => 'EE1'),
    );
    //设置工作区标题
    $sheetName = "用药史";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_center_diagnose($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list1 = array(
        '1' => array('name' => '帕金森病（PD）', 'key' => ''),
        '2' => array('name' => 'Hoehn-Yahr', 'key' => ''),
        '3' => array('name' => '继发性帕金森综合征 ', 'key' => ''),
        '4' => array('name' => '感染', 'key' => ''),
        '5' => array('name' => '中毒 ', 'key' => ''),
        '6' => array('name' => '药物', 'key' => ''),
        '7' => array('name' => '动脉硬化', 'key' => ''),
        '8' => array('name' => '脑血管疾病', 'key' => ''),
        '9' => array('name' => '脑外伤', 'key' => ''),
        '10' => array('name' => '其他', 'key' => ''),
        '11' => array('name' => '遗传代谢性相关PD（HPDS）', 'key' => ''),
        '12' => array('name' => 'MSA', 'key' => ''),
        '13' => array('name' => 'PSP', 'key' => ''),
        '14' => array('name' => 'CBD/CBS', 'key' => ''),
        '15' => array('name' => 'DLB', 'key' => ''),
        '16' => array('name' => '不典型帕金森综合征', 'key' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list1 as $key => $val) {
        $one[] = $val['name'];
    }
    foreach ($items_list1 as $key => $val) {
        $one[] = $val['name'];
    }
    $cellTitle = $one;

    $model = Db::name('user_center_diagnose');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text = array('1' => '感染', '2' => "中毒", '3' => "药物 ", '4' => '动脉硬化', '5' => '脑血管疾病', '6' => '脑外伤', '7' => '其他');
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');

        $items1 = unserialize($val['old_diagnose']);
        $items2 = unserialize($val['new_diagnose']);

        //初步诊断
        $two[] = $val['pd_o'] == 1 ? "√" : "";
        $two[] = $items1['o12'];

        if ($val['pds_o'] == 1) {
            $two[] = "√" . $items1['o22'];
        } else {
            $two[] = "";
        }

        foreach ($item_text as $key => $item) {
            if ($items1['o31'] == 7) {
                if ($key == 7) {
                    $two[] = $items1['o32'];
                } else {
                    $two[] = "";
                }
            } else {
                if ($items1['o31'] == $key) {
                    $two[] = "√";
                } else {
                    $two[] = "";
                }
            }
        }

        if ($val['hpds_o'] == 1) {
            $two[] = "√" . $items1['o42'];
        } else {
            $two[] = "";
        }

        $two[] = $val['msa_o'] == 1 ? "√" : "";
        $two[] = $val['psp_o'] == 1 ? "√" : "";
        $two[] = $val['cbd_cbs_o'] == 1 ? "√" : "";
        $two[] = $val['dlb_o'] == 1 ? "√" : "";
        if ($val['n_pd_o'] == 1) {
            $two[] = "√" . $items1['o92'];
        } else {
            $two[] = "";
        }

        //修正诊断
        $two[] = $val['pd_n'] == 1 ? "√" : "";
        $two[] = $items2['n12'];
        if ($val['pds_n'] == 1) {
            $two[] = "√" . $items1['n22'];
        } else {
            $two[] = "";
        }
        foreach ($item_text as $key => $item) {
            if ($items1['n31'] == 7) {
                if ($key == '7') {
                    $two[] = $items1['n32'];
                } else {
                    $two[] = "";
                }
            } else {
                if ($items1['n31'] == $key) {
                    $two[] = "√";
                } else {
                    $two[] = "";
                }
            }
        }

        if ($val['hpds_n'] == 1) {
            $two[] = "√" . $items1['n42'];
        } else {
            $two[] = "";
        }

        $two[] = $val['msa_n'] == 1 ? "√" : "";
        $two[] = $val['psp_n'] == 1 ? "√" : "";
        $two[] = $val['cbd_cbs_n'] == 1 ? "√" : "";
        $two[] = $val['dlb_n'] == 1 ? "√" : "";
        if ($val['n_pd_n'] == 1) {
            $two[] = "√" . $items2['n92'];
        } else {
            $two[] = "";
        }

        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '初步诊断', 'start' => "H1", 'end' => 'W1'),
        array('title' => '修正诊断', 'start' => "X1", 'end' => 'AM1'),
    );
    //设置工作区标题
    $sheetName = "中心名称及诊断";
    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}


function get_scale_mds_updrs($userList = array(), $visitList = array(), $user_ids = array())
{
    $part1_list = array(
        '1' => array('name' => '认知功能受损'),
        '2' => array('name' => '幻觉和精神症状'),
        '3' => array('name' => '抑郁情绪'),
        '4' => array('name' => '焦虑情绪'),
        '5' => array('name' => '淡漠'),
        '6' => array('name' => '多巴胺失调的特征'),
        '7' => array('name' => '睡眠问题'),
        '8' => array('name' => '白天嗜睡'),
        '9' => array('name' => '疼痛和其他感觉'),
        '10' => array('name' => '排尿问题'),
        '11' => array('name' => '坐着阅读书刊'),
        '12' => array('name' => '站立时头晕'),
        '13' => array('name' => '疲劳感'),
    );
    $part2_list = array(
        '1' => array('name' => '言语'),
        '2' => array('name' => '唾液分泌及流口水'),
        '3' => array('name' => '咀嚼与吞咽'),
        '4' => array('name' => '进食能力'),
        '5' => array('name' => '穿衣'),
        '6' => array('name' => '卫生清洁'),
        '7' => array('name' => '写字'),
        '8' => array('name' => '嗜好与其他活动'),
        '9' => array('name' => '翻身'),
        '10' => array('name' => '震颤'),
        '11' => array('name' => '起床'),
        '12' => array('name' => '走路与平衡'),
        '13' => array('name' => '冻结'),
        'a' => array('name' => '是否正接受药物治疗'),
        'b' => array('name' => '临床功能状态'),
        'c' => array('name' => '是否有服左旋多巴'),
        'd' => array('name' => '距离最近一次服药时间'),
    );
    $part3_list = array(
        '1' => array('name' => '言语'),
        '2' => array('name' => '面部表情'),
        '3a' => array('name' => '强直-脖子'),
        '3b' => array('name' => '强直- 右上肢'),
        '3c' => array('name' => '强直-左上肢'),
        '3d' => array('name' => '强直-右下肢'),
        '3e' => array('name' => '强直-左下肢'),
        '4a' => array('name' => '手指拍打-右手'),
        '4b' => array('name' => '手指拍打-左手'),
        '5a' => array('name' => '手掌运动-右手'),
        '5b' => array('name' => '手掌运动-左手'),
        '6a' => array('name' => '前臂回旋运动-右手'),
        '6b' => array('name' => '前臂回旋运动-左手'),
        '7a' => array('name' => '脚趾拍地运动-右脚'),
        '7b' => array('name' => '脚趾拍地运动-左脚'),
        '8a' => array('name' => '两脚灵敏度测试-右腿'),
        '8b' => array('name' => '两脚灵敏度测试-左腿'),
        '9' => array('name' => '起立'),
        '10' => array('name' => '	步态'),
        '11' => array('name' => '步态冻结的评估'),
        '12' => array('name' => '姿势平稳度'),
        '13' => array('name' => '姿势'),
        '14' => array('name' => '全身自发性的动作评估'),
        '15a' => array('name' => '双手姿态性震颤-右手'),
        '15b' => array('name' => '双手姿态性震颤-左手'),
        '16a' => array('name' => '双手动作性震颤-右手'),
        '16b' => array('name' => '双手动作性震颤-左手'),
        '17a' => array('name' => '静止型震颤幅度-右上肢'),
        '17b' => array('name' => '静止型震颤幅度-左上肢'),
        '17c' => array('name' => '静止型震颤幅度-右下肢'),
        '17d' => array('name' => '静止型震颤幅度-左下肢'),
        '17e' => array('name' => '静止型震颤幅度-嘴唇/下巴'),
        '18' => array('name' => '静止型震颤持续性'),
        '19' => array('name' => '异动症是否在检查中出现'),
        '20' => array('name' => '是否干扰动作功能的检查'),
    );
    $part4_list = array(
        '1' => array('name' => '出现异动症的时间'),
        '2' => array('name' => '异动症对生活功能造成的影响'),
        '3' => array('name' => '发生“关”的时间'),
        '4' => array('name' => '药效波动对生活功能造成的影响'),
        '5' => array('name' => '药效波动的复杂性'),
        '6' => array('name' => '疼痛性“关”期肌张力不全症'),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    $one[] = "Part I总分";
    foreach ($part1_list as $key => $val) {
        $one[] = "1." . $key . "、" . $val['name'];
    }
    $one[] = "Part II总分";
    foreach ($part2_list as $key => $val) {
        $one[] = "2." . $key . "、" . $val['name'];
    }
    $one[] = "Part III总分";
    foreach ($part3_list as $key => $val) {
        $one[] = "3." . $key . "、" . $val['name'];
    }
    $one[] = "Part Ⅳ总分";
    foreach ($part4_list as $key => $val) {
        $one[] = "4." . $key . "、" . $val['name'];
    }
    $one[] = "评分";
//    $one[] = "备注";
    $cellTitle = $one;
//    dump($one);

    $model = Db::name('scale_mds_updrs');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text = array('0' => '从不打瞌睡    ', '1' => "轻度打瞌睡    ", '2' => "中度打瞌睡   ", '3' => "严重打瞌睡  ");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');

        $part1 = unserialize($val['part1']);
        $part2 = unserialize($val['part2']);
        $part3 = unserialize($val['part3']);
        $part4 = unserialize($val['part4']);
        $score_item = unserialize($val['score_item']);
        $items_text1 = array('1' => '是', '2' => '否');
        $two[] = $score_item['part1'];
        foreach ($part1_list as $key => $val1) {
            $two[] = $part1[$key]['radio'];
        }
        $two[] = $score_item['part2'];
        foreach ($part2_list as $key => $val2) {
            if ($key == "a" || $key == "b" || $key == "c") {
                $two[] = $items_text1[$part2[$key]['radio']];
            } elseif ($key == 'd') {
                $two[] = $part2[$key]['date'];
            } else {
                $two[] = $part2[$key]['radio'];
            }
        }
        $two[] = $score_item['part3'];
        foreach ($part3_list as $key => $val3) {
            if ($key == "19" || $key == "20") {
                $two[] = $items_text1[$part3[$key]['radio']];
            } else {
                $two[] = $part3[$key]['radio'];
            }
        }
        $two[] = $score_item['part4'];
        foreach ($part4_list as $key => $val4) {
            $two[] = $part4[$key]['radio'];
        }
        $two[] = $val['score'];
//        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => 'PD统一评分量表', 'start' => "H1", 'end' => 'CG1'),
    );
    //设置工作区标题
    $sheetName = "PD统一评分量表";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}


function get_scale_npi($userList = array(), $visitList = array(), $user_ids = array())
{
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
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_npi');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
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
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '神经精神症状问卷', 'start' => "H1", 'end' => 'BQ1'),
    );
    //设置工作区标题
    $sheetName = "神经精神症状问卷(NPI)";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_nmss($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '白天流涎', 'unit' => ''),
        '2' => array('name' => '味觉或嗅觉减退或消失', 'unit' => ''),
        '3' => array('name' => '吞咽困难或饮水呛咳或有过窒息', 'unit' => ''),
        '4' => array('name' => '感到身体不适（眩晕）', 'unit' => ''),
        '5' => array('name' => '便秘（大便1周少于3次），或需要用力排便', 'unit' => ''),
        '6' => array('name' => '大便失禁', 'unit' => ''),
        '7' => array('name' => '如厕后，感到肠道未完全排空', 'unit' => ''),
        '8' => array('name' => '感到小便难以控制，以至于慌忙如厕', 'unit' => ''),
        '9' => array('name' => '夜里常要起来小便', 'unit' => ''),
        '10' => array('name' => '有不明原因的疼痛（并非关节炎等已知的原因引起）', 'unit' => ''),
        '11' => array('name' => '有不明原因的体重改变（并非节食引起）', 'unit' => ''),
        '12' => array('name' => '对近期发生的事情记不住或忘记做事情', 'unit' => ''),
        '13' => array('name' => '对身边发生的事失去兴趣或对做事情无兴趣', 'unit' => ''),
        '14' => array('name' => '看到或听到一些事情，但你知道或是别人告诉你这实际上并不存在（幻视或幻听）', 'unit' => ''),
        '15' => array('name' => '难以集中注意力或专注地做事。', 'unit' => ''),
        '16' => array('name' => '感到悲伤、情绪低落或忧郁', 'unit' => ''),
        '17' => array('name' => '感到焦虑、害怕或恐惧', 'unit' => ''),
        '18' => array('name' => '对性失去兴趣或对性非常有兴趣', 'unit' => ''),
        '19' => array('name' => '发现即使努力，也有性生活障碍', 'unit' => ''),
        '20' => array('name' => '从卧位或坐位站起时，感到头晕眼花、眩晕或无力', 'unit' => ''),
        '21' => array('name' => '跌倒', 'unit' => ''),
        '22' => array('name' => '在活动（如工作、开车或吃饭等）时感到困倦', 'unit' => ''),
        '23' => array('name' => '感到难以入睡或失眠', 'unit' => ''),
        '24' => array('name' => '有非常生动的或可怕的梦境', 'unit' => ''),
        '25' => array('name' => '在睡眠时说话或活动，就像在真实生活中一样', 'unit' => ''),
        '26' => array('name' => '晚上或休息时感到腿部不适，并感到需要活动下肢', 'unit' => ''),
        '27' => array('name' => '下肢浮肿', 'unit' => ''),
        '28' => array('name' => '多汗', 'unit' => ''),
        '29' => array('name' => '复视', 'unit' => ''),
        '30' => array('name' => '相信一些事情发生了，但别人认为这些事情不存在（妄想）。', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . '.' . $val['name'];
    }
    $one[] = "评分";
    $cellTitle = $one;

    $model = Db::name('scale_nmss');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text = array('0' => '否', '1' => "前", '2' => "是");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $items = $items['sc'];
        foreach ($items_list as $key => $val1) {
            $two[] = $item_text[$items[$key]];
        }
        $two[] = $val['score'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => 'PD非运动症状问卷调查', 'start' => "H1", 'end' => 'AL1'),
    );
    //设置工作区标题
    $sheetName = "非运动症状问卷调查";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_mmse($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '今年的年份?  ', 'unit' => ''),
        '2' => array('name' => '现在是什么季节? ', 'unit' => ''),
        '3' => array('name' => '今天是几号? ', 'unit' => ''),
        '4' => array('name' => '今天是星期几? ', 'unit' => ''),
        '5' => array('name' => '现在是几月份？', 'unit' => ''),
        '6' => array('name' => '你能告诉我现在我们在哪里? 例如：现在我们在哪个省，市?', 'unit' => ''),
        '7' => array('name' => '你住在什么区(县)?  ', 'unit' => ''),
        '8' => array('name' => '你住在什么街道?  ', 'unit' => ''),
        '9' => array('name' => '我们现在是第几楼?   ', 'unit' => ''),
        '10' => array('name' => '这儿是什么地方?  ', 'unit' => ''),
        '11' => array('name' => '皮球 ', 'unit' => ''),
        '12' => array('name' => '国旗', 'unit' => ''),
        '13' => array('name' => '树木', 'unit' => ''),
        '14' => array('name' => "现在请你从100减去7，然后从所得的数目再减去7，如此一直计算下去，把每一个答案都告诉我，直到我说“停”为止<br>93", 'unit' => ''),
        '15' => array('name' => '93-7=86', 'unit' => ''),
        '16' => array('name' => '86-6=79', 'unit' => ''),
        '17' => array('name' => '79-7=72', 'unit' => ''),
        '18' => array('name' => '72-7=65', 'unit' => ''),
        '19' => array('name' => '现在请你告诉我，刚才我要你记住的三样东西是什么?<br>第一样：皮球', 'unit' => ''),
        '20' => array('name' => '国旗', 'unit' => ''),
        '21' => array('name' => '树木', 'unit' => ''),
        '22' => array('name' => '请问这是什么?<br>手表', 'unit' => ''),
        '23' => array('name' => '请问这是什么?<br>铅笔', 'unit' => ''),
        '24' => array('name' => '重复：四十四只石狮子” ', 'unit' => ''),
        '25' => array('name' => '请闭上您的眼睛', 'unit' => ''),
        '26' => array('name' => '请用右手拿这张纸 ', 'unit' => ''),
        '27' => array('name' => '把纸对折 ', 'unit' => ''),
        '28' => array('name' => '放在大腿上  ', 'unit' => ''),
        '29' => array('name' => '请你说一句完整的，有意义的句子(句子必须有主语，动词)记下所叙述句子的全文 ', 'unit' => ''),
        '30' => array('name' => '是一张图，请你在同一张纸上照样把它画出来。(对：两个五边形的图案，交叉处形成个小四边形)', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        if ($key == 1) {
            $one[] = "定向力总分";
        }
        if ($key == 11) {
            $one[] = "记忆力总分";
        }
        if ($key == 14) {
            $one[] = "注意力和计算力总分";
        }
        if ($key == 19) {
            $one[] = "回忆能力总分";
        }
        if ($key == 22) {
            $one[] = "语言能力总分";
        }
        $one[] = $key;
    }
    $one[] = "总分";
    $cellTitle = $one;

    $model = Db::name('scale_mmse');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");
    $item_text = array('0' => '错误', '1' => "正确");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $score_item = unserialize($val['score_item']);
        $items = $items['mmse'];
        foreach ($items_list as $key => $val1) {
            if ($key == 1) {
                $two[] = $score_item[1];
            }
            if ($key == 11) {
                $two[] = $score_item[2];
            }
            if ($key == 14) {
                $two[] = $score_item[3];
            }
            if ($key == 19) {
                $two[] = $score_item[4];
            }
            if ($key == 22) {
                $two[] = $score_item[5];
            }
            $two[] = $item_text[$items[$key]];
        }
        $two[] = $val['score'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '定向力', 'start' => "H1", 'end' => 'R1'),
        array('title' => '记忆力', 'start' => "S1", 'end' => 'V1'),
        array('title' => '注意力和计算力', 'start' => "W1", 'end' => 'AB1'),
        array('title' => '回忆能力', 'start' => "AC1", 'end' => 'AF1'),
        array('title' => '语言能力', 'start' => "AG1", 'end' => 'AP1'),
    );
    //设置工作区标题
    $sheetName = "简明智力状态量表";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_moca($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '视空间与执行功能得分 ', 'unit' => ''),
        '2' => array('name' => '命名得分', 'unit' => ''),
        '3' => array('name' => '记忆得分', 'unit' => ''),
        '4' => array('name' => '注意得分 ', 'unit' => ''),
        '5' => array('name' => '注意得分', 'unit' => ''),
        '6' => array('name' => '注意得分', 'unit' => ''),
        '7' => array('name' => '语言得分', 'unit' => ''),
        '8' => array('name' => '语言得分 ', 'unit' => ''),
        '9' => array('name' => '语言得分', 'unit' => ''),
        '10' => array('name' => '抽象得分 ', 'unit' => ''),
        '11' => array('name' => '延迟回忆得分', 'unit' => ''),
        '12' => array('name' => '定向得分', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $val['name'];
    }
    $one[] = "总分";
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_moca');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");
    $item_text = array('0' => '错误', '1' => "正确");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $two[] = $items[1]['t'];
        $two[] = $items[2]['t'];
        $two[] = $items[3]['t1'];
        $two[] = $items[3]['t2'];
        $two[] = $items[3]['t3'];
        $two[] = $items[4]['t'];
        $two[] = $items[5]['t1'];
        $two[] = $items[5]['t2'];
        $two[] = $items[5]['t3'];
        $two[] = $items[6]['t'];
        $two[] = $items[7]['t'];
        $two[] = $items[8]['t'];
        $two[] = $val['score'];
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => 'MOCA量表', 'start' => "H1", 'end' => 'U1'),
    );
    //设置工作区标题
    $sheetName = "蒙特利尔认知评估（MOCA）量表";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_hamd($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '抑郁情绪:  ', 'unit' => '5'),
        '2' => array('name' => '有罪感:', 'unit' => '5'),
        '3' => array('name' => '自杀: ', 'unit' => '5'),
        '4' => array('name' => '入睡困难初段失眠:', 'unit' => '3'),
        '5' => array('name' => '睡眠不深中段失眠:', 'unit' => '3'),
        '6' => array('name' => '早醒末段失眠:', 'unit' => '3'),
        '7' => array('name' => '工作和兴趣-旁人的评价:', 'unit' => '5'),
        '8' => array('name' => '阻滞(指思维和言语缓慢，注意力难以集中，主动性减退):  ', 'unit' => '5'),
        '9' => array('name' => '激越－最好是专业人士观察:', 'unit' => '5'),
        '10' => array('name' => '精神性焦虑:', 'unit' => '5'),
        '11' => array('name' => '躯体性焦虑－最好是专业人士观察指焦虑的生理症状，包括:口干、腹胀、腹泻、打呃、腹绞痛、心悸、头痛、过度换气和叹气，以及尿频和出汗: ', 'unit' => '5'),
        '12' => array('name' => '胃肠道症状:', 'unit' => '3'),
        '13' => array('name' => '全身症状:四肢，背部或颈部沉重感，背痛、头痛、肌肉疼痛，全身乏力或疲倦:', 'unit' => '5'),
        '14' => array('name' => "性症状指性欲减退，月经紊乱等:", 'unit' => '4'),
        '15' => array('name' => '疑病:', 'unit' => '5'),
        '16' => array('name' => '体重减轻:按病史评定:', 'unit' => '3'),
        '17' => array('name' => '自知力:', 'unit' => '3'),
        '18' => array('name' => '日夜变化如果症状在早晨或傍晚加重，先指出是哪一种，然后按其变化程度评分早上变化评早上，晚上变化评晚上:', 'unit' => '5'),
        '19' => array('name' => '人格解体或现实解体指非真实感或虚无妄想:', 'unit' => '5'),
        '20' => array('name' => '偏执症状:', 'unit' => '5'),
        '21' => array('name' => '强迫症状指强迫思维和强迫行为: ', 'unit' => '3'),
        '22' => array('name' => '能力减退感－旁人的评价: ', 'unit' => '5'),
        '23' => array('name' => '绝望感: ', 'unit' => '5'),
        '24' => array('name' => '自卑感: ', 'unit' => '5'),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . "." . $val['name'];
    }
    $one[] = "评分";
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_hamd');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");
    $item_text = array('0' => '错误', '1' => "正确");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $items = $items['mmse'];
        foreach ($items_list as $key => $vv) {
            $two[] = $items[$key];
        }
        $two[] = $val['score'];
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => 'Hamilton抑郁量表（HAMD）', 'start' => "H1", 'end' => 'AG1'),
    );
    //设置工作区标题
    $sheetName = "Hamilton抑郁量表（HAMD）";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_hama($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '焦虑心境', 'unit' => ''),
        '2' => array('name' => '紧张 ', 'unit' => ''),
        '3' => array('name' => '害怕', 'unit' => ''),
        '4' => array('name' => '失眠', 'unit' => ''),
        '5' => array('name' => '认知功能', 'unit' => ''),
        '6' => array('name' => '抑郁心境', 'unit' => ''),
        '7' => array('name' => '躯体性焦虑：肌肉系统', 'unit' => ''),
        '8' => array('name' => '躯体性焦虑：感觉系统', 'unit' => ''),
        '9' => array('name' => '心血管系统症状 ', 'unit' => ''),
        '10' => array('name' => '呼吸系统症状', 'unit' => ''),
        '11' => array('name' => '胃肠道症状 ', 'unit' => ''),
        '12' => array('name' => '生殖泌尿系统症状', 'unit' => ''),
        '13' => array('name' => '植物神经系统症状', 'unit' => ''),
        '14' => array('name' => "会谈时行为表现", 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . "." . $val['name'];
    }
    $one[] = "评分";
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_hama');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text = array('0' => '无症状  ', '1' => "轻微  ", '2' => "中等 ", '3' => "较重", '4' => "严重");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $items = $items['hama'];
        foreach ($items_list as $key => $vv) {
            $two[] = $item_text[$items[$key]];
        }
        $two[] = $val['score'];
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => 'Haminlton焦虑量表', 'start' => "H1", 'end' => 'W1'),
    );
    //设置工作区标题
    $sheetName = "Haminlton焦虑量表（HAMA）";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_maes($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '您对学习新事物有兴趣吗？', 'unit' => ''),
        '2' => array('name' => '您有什么感兴趣的事情吗？ ', 'unit' => ''),
        '3' => array('name' => '您关心自己的身体状况吗？', 'unit' => ''),
        '4' => array('name' => '您付出很大的努力去做事情吗？', 'unit' => ''),
        '5' => array('name' => '您一直期待着做点什么事吗？', 'unit' => ''),
        '6' => array('name' => '您对未来有计划和目标吗？', 'unit' => ''),
        '7' => array('name' => '您做事情有积极性吗？', 'unit' => ''),
        '8' => array('name' => '您对日常生活有动力吗？', 'unit' => ''),
        '9' => array('name' => '您需要别人告诉您每天要干什么吗？ ', 'unit' => ''),
        '10' => array('name' => '您对事情都没有兴趣吗？', 'unit' => ''),
        '11' => array('name' => '您对很多事情都不关心吗？ ', 'unit' => ''),
        '12' => array('name' => '您需要有一个动力去推动您做事情吗？', 'unit' => ''),
        '13' => array('name' => '您是否有既不高兴也不悲伤，无所谓的感觉？', 'unit' => ''),
        '14' => array('name' => "您认为自己有淡漠的表现吗？", 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . "." . $val['name'];
    }
    $one[] = "评分";
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_maes');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text1 = array('3' => '无  ', '2' => "轻微  ", '1' => "一些 ", '0' => "非常");
    $item_text2 = array('0' => '无  ', '1' => "轻微  ", '2' => "一些 ", '3' => "非常");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $items = $items['hama'];
        foreach ($items_list as $key => $vv) {
            if ($key <= 8) {
                $two[] = $item_text1[$items[$key]];
            }
            if ($key >= 9) {
                $two[] = $item_text2[$items[$key]];
            }
        }
        $two[] = $val['score'];
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => 'PD改良淡漠量表', 'start' => "H1", 'end' => 'AL1'),
    );
    //设置工作区标题
    $sheetName = "PD改良淡漠量表（MAES）";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_psqi($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '近1个月，晚上上床睡觉时间通常是()点钟。', 'unit' => ''),
        '2' => array('name' => '近1个月，从上床到入睡通常需要()分钟。', 'unit' => ''),
        '3' => array('name' => '近1个月，通常早上()点起床。', 'unit' => ''),
        '4' => array('name' => '近1个月，每夜通常实际睡眠时间()小时', 'unit' => ''),
        '5' => array('name' => '近一个月，您有没有因下列情况影响睡眠而烦恼', 'unit' => ''),
        '6' => array('name' => ' 近1个月，总的来说，您认为自己的睡眠质量', 'unit' => ''),
        '7' => array('name' => '近1个月，您用催眠药物的情况', 'unit' => ''),
        '8' => array('name' => '近1个月，您感到困倦吗?', 'unit' => ''),
        '9' => array('name' => '近1个月，您感到做事的精力不足吗? ', 'unit' => ''),
    );
    $items_list1 = array(
        'a' => array('name' => '入睡困难（30分钟内不能入睡）', 'unit' => ''),
        'b' => array('name' => '夜间易醒或早醒  ', 'unit' => ''),
        'c' => array('name' => '夜间去厕所 ', 'unit' => ''),
        'd' => array('name' => '呼吸不畅 ', 'unit' => ''),
        'e' => array('name' => '咳嗽或鼾声高 ', 'unit' => ''),
        'f' => array('name' => '感觉冷', 'unit' => ''),
        'g' => array('name' => '感觉热 ', 'unit' => ''),
        'h' => array('name' => '做噩梦', 'unit' => ''),
        'i' => array('name' => '疼痛不适 ', 'unit' => ''),
        'j' => array('name' => '其他影响睡眠的事情', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        if ($key == 5) {
            foreach ($items_list1 as $keys => $vals) {
                $one[] = "5." . $keys . "、" . $vals['name'];
            }
        } else {
            $one[] = $key . "、" . $val['name'];
        }

    }
    $one[] = "评分";
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_psqi');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text1 = array('0' => '≤15min  ', '1' => "16~30min  ", '2' => "31~60min ", '3' => "≥60min");
    $item_text2 = array('0' => '无  ', '1' => "<1次/周   ", '2' => "1~2次/周 ", '3' => "≧3次/周");
    $item_text3 = array('0' => '很好  ', '1' => "好 ", '2' => "较差 ", '3' => "很差");
    $item_text4 = array('0' => '没有', '1' => "偶尔有  ", '2' => "有时有", '3' => "经常有");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $items = $items['psqi'];
        foreach ($items_list as $key => $vv) {
            if ($key == 1 || $key == 3 || $key == 4) {
                $two[] = $items[$key];
            }
            if ($key == 2) {
                $two[] = $item_text1[$items[$key]];
            }
            if ($key == 5) {
                foreach ($items_list1 as $keys => $vals) {
                    if($keys=="j"){
                        if($items[$key][$keys]>0){
                            $two[] = $item_text2[$items[$key][$keys]]."(".$items[$key]['k'].")";
                        }else{
                            $two[] = $item_text2[$items[$key][$keys]];
                        }

                    }else{
                        $two[] = $item_text2[$items[$key][$keys]];
                    }

                }
            }
            if ($key == 6) {
                $two[] = $item_text3[$items[$key]];
            }
            if ($key == 7 || $key == 8) {
                $two[] = $item_text2[$items[$key]];
            }
            if ($key == 9) {
                $two[] = $item_text4[$items[$key]];
            }
        }
        $two[] = $val['score'];
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '匹兹堡睡眠质量指数', 'start' => "H1", 'end' => 'Y1'),
    );
    //设置工作区标题
    $sheetName = "匹兹堡睡眠质量指数（PSQI）量表";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_ess($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '坐着阅读书刊', 'unit' => ''),
        '2' => array('name' => '看电视', 'unit' => ''),
        '3' => array('name' => '在公共场合坐着不动（如剧院或开会） ', 'unit' => ''),
        '4' => array('name' => '乘坐汽车超过1小时，中间不休息 ', 'unit' => ''),
        '5' => array('name' => '环境许可，在下午躺下休息 ', 'unit' => ''),
        '6' => array('name' => '坐下与人谈话', 'unit' => ''),
        '7' => array('name' => '午餐未喝酒，餐后安静地坐着 ', 'unit' => ''),
        '8' => array('name' => '遇堵车时停车数分钟以上', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . "." . $val['name'];
    }
    $one[] = "评分";
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_ess');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text = array('0' => '从不打瞌睡    ', '1' => "轻度打瞌睡    ", '2' => "中度打瞌睡   ", '3' => "严重打瞌睡  ");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $items = $items['ess'];
        foreach ($items_list as $key => $vv) {
            $two[] = $item_text[$items[$key]];
        }
        $two[] = $val['score'];
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '爱泼沃斯思睡量表', 'start' => "H1", 'end' => 'Q1'),
    );
    //设置工作区标题
    $sheetName = "爱泼沃斯思睡量表（ESS）";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_fai($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '你有过被疲劳困扰的经历吗？', 'unit' => ''),
        '2' => array('name' => '你是否需要更多休息。', 'unit' => ''),
        '3' => array('name' => '你感觉到犯困或昏昏欲睡吗？ ', 'unit' => ''),
        '4' => array('name' => '你在着手做事时是否感到费力。 ', 'unit' => ''),
        '5' => array('name' => '你在着手做事时并不感到费力，但当你继续进行时是否感到力不从心？ ', 'unit' => ''),
        '6' => array('name' => '你感到体力不够吗？', 'unit' => ''),
        '7' => array('name' => '你感到你的肌肉力量比以前减小了吗？ ', 'unit' => ''),
        '8' => array('name' => '你感到虚弱吗？', 'unit' => ''),
        '9' => array('name' => '你集中注意力有困难吗？', 'unit' => ''),
        '10' => array('name' => '你在思考问题是头脑像往常一样清晰、敏捷吗？', 'unit' => ''),
        '11' => array('name' => '你在讲话时出现口头不利落吗？', 'unit' => ''),
        '12' => array('name' => '讲话时，你发现找到一个合适的字眼很困难吗？', 'unit' => ''),
        '13' => array('name' => '你现在的记忆力像往常一样吗？', 'unit' => ''),
        '14' => array('name' => '你还喜欢做过去习惯做的事情吗？', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . "." . $val['name'];
    }
    $one[] = "评分";
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_fai');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text1 = array('1' => '是    ', '0' => "否");
    $item_text2 = array('0' => '是    ', '1' => "否");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $items = $items['ess'];
        foreach ($items_list as $key => $vv) {
            if (in_array($key, [10, 13, 14])) {
                $two[] = $item_text2[$items[$key]];
            } else {
                $two[] = $item_text1[$items[$key]];
            }
        }
        $two[] = $val['score'];
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '疲劳评定量表', 'start' => "H1", 'end' => 'W1'),
    );
    //设置工作区标题
    $sheetName = "疲劳评定量表";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_pdql($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '外出需要陪同', 'unit' => ''),
        '2' => array('name' => '普遍感觉不适', 'unit' => ''),
        '3' => array('name' => '你再也不能对爱好产生兴趣', 'unit' => ''),
        '4' => array('name' => '变得紧张', 'unit' => ''),
        '5' => array('name' => '由于自己身体限制，感觉不安全  ', 'unit' => ''),
        '6' => array('name' => '手震颤', 'unit' => ''),
        '7' => array('name' => '感觉累或没有能量 ', 'unit' => ''),
        '8' => array('name' => '做运动或休闲活动的时候觉得困难', 'unit' => ''),
        '9' => array('name' => '笨拙', 'unit' => ''),
        '10' => array('name' => '因为疾病感到尴尬 ', 'unit' => ''),
        '11' => array('name' => '拖步', 'unit' => ''),
        '12' => array('name' => '因为疾病不得不推迟或取消社会活动', 'unit' => ''),
        '13' => array('name' => '极度疲惫', 'unit' => ''),
        '14' => array('name' => '走路时拐弯困难', 'unit' => ''),
        '15' => array('name' => '害怕疾病进展', 'unit' => ''),
        '16' => array('name' => '书写困难', 'unit' => ''),
        '17' => array('name' => '出去度假的时间比得病之前少', 'unit' => ''),
        '18' => array('name' => '在其他人旁边感觉自己不安全', 'unit' => ''),
        '19' => array('name' => '很难找一个能休息好的晚上', 'unit' => ''),
        '20' => array('name' => '“开/关”现象', 'unit' => ''),
        '21' => array('name' => '接受自己的病很困难', 'unit' => ''),
        '22' => array('name' => '沟通困难', 'unit' => ''),
        '23' => array('name' => '在公众之前签名困难', 'unit' => ''),
        '24' => array('name' => '行走困难', 'unit' => ''),
        '25' => array('name' => '流涎', 'unit' => ''),
        '26' => array('name' => '消沉或沮丧', 'unit' => ''),
        '27' => array('name' => '坐立困难（长期间）', 'unit' => ''),
        '28' => array('name' => '尿频和/或排尿时弄湿自己', 'unit' => ''),
        '29' => array('name' => '搬运东西困难', 'unit' => ''),
        '30' => array('name' => '痛性痉挛或抽搐', 'unit' => ''),
        '31' => array('name' => '注意力集中困难', 'unit' => ''),
        '32' => array('name' => '从椅子上坐起来困难 ', 'unit' => ''),
        '33' => array('name' => '便秘', 'unit' => ''),
        '34' => array('name' => '记忆困难', 'unit' => ''),
        '35' => array('name' => '在床上翻身困难', 'unit' => ''),
        '36' => array('name' => '你的病影响你的性生活', 'unit' => ''),
        '37' => array('name' => '不耐受冷或热', 'unit' => ''),
        '38' => array('name' => '夜间噩梦或出现幻觉', 'unit' => ''),
        '39' => array('name' => '系扣子或系鞋带有困难', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . "." . $val['name'];
    }
    $one[] = "评分";
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_pdql');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text = array('1' => '任何时候', '2' => "在大多数情况", '3' => "在某些时候", '4' => "较少时候", '5' => "从不");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $items = $items['npi'];
        foreach ($items_list as $key => $vv) {
            $two[] = $item_text[$items[$key]];
        }
        $two[] = $val['score'];
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => 'PD生活质量问卷（PDQL-39)', 'start' => "H1", 'end' => 'AV1'),
    );
    //设置工作区标题
    $sheetName = "PD生活质量问卷（PDQL-39)";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_adl($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '自己搭公共汽车', 'unit' => ''),
        '2' => array('name' => '到家附近的地方去走走', 'unit' => ''),
        '3' => array('name' => '自己做饭（包括生火）', 'unit' => ''),
        '4' => array('name' => '做家务', 'unit' => ''),
        '5' => array('name' => '吃药 ', 'unit' => ''),
        '6' => array('name' => '吃饭', 'unit' => ''),
        '7' => array('name' => '穿脱衣服 ', 'unit' => ''),
        '8' => array('name' => '梳头、刷牙', 'unit' => ''),
        '9' => array('name' => '洗自己的衣服', 'unit' => ''),
        '10' => array('name' => '在平坦的室内走动 ', 'unit' => ''),
        '11' => array('name' => '上下楼梯', 'unit' => ''),
        '12' => array('name' => '上下床、坐下或站起', 'unit' => ''),
        '13' => array('name' => '提水煮饭或洗澡', 'unit' => ''),
        '14' => array('name' => '洗澡（水已别人放好）', 'unit' => ''),
        '15' => array('name' => '剪脚趾甲', 'unit' => ''),
        '16' => array('name' => '逛街，购物', 'unit' => ''),
        '17' => array('name' => '定时去厕所', 'unit' => ''),
        '18' => array('name' => '打电话', 'unit' => ''),
        '19' => array('name' => '处理自己的钱财', 'unit' => ''),
        '20' => array('name' => '独自在家', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . "." . $val['name'];
    }
    $one[] = "评分";
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_adl');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text = array('1' => '自己完全可以做', '2' => "可以做但有些困难", '3' => "有较大困难需要家人帮助", '4' => "完全需要家人帮助");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $items = $items['adl'];
        foreach ($items_list as $key => $vv) {
            $two[] = $item_text[$items[$key]];
        }
        $two[] = $val['score'];
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '日常生活能力量表', 'start' => "H1", 'end' => 'AA1'),
    );
    //设置工作区标题
    $sheetName = "日常生活能力（ADL）量表";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_dlb($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '波动性认知障碍', 'unit' => ''),
        '2' => array('name' => '视幻觉', 'unit' => ''),
        '3' => array('name' => '快速动眼期睡眠行为障碍', 'unit' => ''),
        '4' => array('name' => '帕金森综合征', 'unit' => ''),
        '5' => array('name' => '对抗精神病类药物过敏 ', 'unit' => ''),
        '6' => array('name' => '姿势不稳', 'unit' => ''),
        '7' => array('name' => '反复跌倒 ', 'unit' => ''),
        '8' => array('name' => '晕厥或短暂发作无法解释的意识丧失', 'unit' => ''),
        '9' => array('name' => '严重的自主神经功能障碍', 'unit' => ''),
        '10' => array('name' => '嗅觉减退 ', 'unit' => ''),
        '11' => array('name' => '过度嗜睡', 'unit' => ''),
        '12' => array('name' => '其他形式的幻觉', 'unit' => ''),
        '13' => array('name' => '系统性妄想', 'unit' => ''),
        '14' => array('name' => '淡漠、抑郁或焦虑', 'unit' => ''),
    );


    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . "." . $val['name'];
        switch ($key) {
            case 1:
                $one[] = "出现的时间";
                break;
            case 2:
                $one[] = "出现的时间";
                $one[] = "出现视幻觉的频率";
                break;
            case 3:
                $one[] = "出现的时间";
                $one[] = "发作频率";
                break;
            case 4:
                $one[] = "出现的时间";
                break;
            case 6:
                $one[] = "出现的时间";
                break;
            case 7:
                $one[] = "出现的时间";
                break;
            case 8:
                $one[] = "出现的时间";
                break;
        }
    }
    $one[] = "评分";
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_dlb');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text = array('1' => '是', '2' => "否");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $items = $items['dlb'];
        foreach ($items_list as $key => $vv) {
            $two[] = $item_text[$items[$key]['radio']];
            switch ($key) {
                case 1:
                    $two[] = $items[$key]['date1'];
                    break;
                case 2:
                    $two[] = $items[$key]['date1'];
                    $two[] = $items[$key]['date2'];
                    break;
                case 3:
                    $two[] = $items[$key]['date1'];
                    $two[] = $items[$key]['date2'];
                    break;
                case 4:
                    $two[] = $items[$key]['date1'];
                    break;
                case 6:
                    $two[] = $items[$key]['date1'];
                    break;
                case 7:
                    $two[] = $items[$key]['date1'];
                    break;
                case 8:
                    $two[] = $items[$key]['date1'];
                    break;
            }
        }
        $two[] = $val['score'];
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '路易体痴呆专用病史及症状', 'start' => "H1", 'end' => 'AH1'),
    );
    //设置工作区标题
    $sheetName = "路易体痴呆专用病史及症状";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_frozen($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '最近一个月您是否经历了“冻结事件”？', 'unit' => '',
            'radio' => array(
                '0' => '在最近一个月内我没有出现过这种冻结事件',
                '1' => '在最近一个月内我出现过这种冻结事件',
            )
        ),
        '2' => array('name' => '您多久会发生一次冻结事件？', 'unit' => '',
            'radio' => array(
                '0' => '一次发作＞7天',
                '1' => '不经常，大约一周一次',
                '2' => '经常，大约一天一次',
                '3' => '非常频繁，一天超过一次',
            )
        ),
        '3' => array('name' => '您在转弯的时候发生冻结情况的频率？', 'unit' => '',
            'radio' => array(
                '0' => '从不',
                '1' => '极少，大约一月一次',
                '2' => '不经常，大约一周一次',
                '3' => '经常，大约一天一次',
                '4' => '非常频繁，一天超过一次',
            )
        ),
        '4' => array('name' => '您在转弯的时候发生冻结情况会持续多长时间？', 'unit' => '',
            'radio' => array(
                '1' => '很短，1秒钟',
                '2' => '短，2-5秒',
                '3' => '长，5-30秒',
                '4' => '非常长，超过30秒钟不能行走',
            )
        ),
        '5' => array('name' => '当您迈开第一步时发生冻结现象的频率？', 'unit' => '',
            'radio' => array(
                '0' => '从不',
                '1' => '极少，大约一月一次',
                '2' => '不经常，大约一周一次',
                '3' => '经常，大约一天一次',
                '4' => '非常频繁，一天超过一次',
            )
        ),
        '6' => array('name' => '当您迈开第一步时发生冻结现象时多久能缓解？', 'unit' => '',
            'radio' => array(
                '1' => '很短，1秒钟',
                '2' => '短，2-5秒',
                '3' => '长，5-30秒',
                '4' => '非常长，超过30秒钟不能行走',
            )
        ),
        '7' => array('name' => '冻结事件对您的日常生活影响有多大？', 'unit' => '',
            'radio' => array(
                '0' => '一点也不',
                '1' => '非常小',
                '2' => '中等',
                '3' => '很大',
            )
        ),
        '8' => array('name' => '冻结现象会让您感觉到摔倒或者其他不安全的感觉吗？', 'unit' => '',
            'radio' => array(
                '0' => '一点也不',
                '1' => '非常小',
                '2' => '中等',
                '3' => '很大',
            )
        ),
        '9' => array('name' => '冻结现象会影响你的日常活动吗？', 'unit' => '',
            'radio' => array(
                '0' => '一点也不，我会像往常一样工作',
                '1' => '一点点，我只避免很少的日常活动',
                '2' => '中等，我避免了很大一部分日常活动',
                '3' => '很严重，对于大多数的日常活动我很受限',
            )
        ),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . "." . $val['name'];
    }
    $one[] = "评分";
    $one[] = "备注";
    $cellTitle = $one;
    $model = Db::name('scale_frozen');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    $item_text = array('0' => '在最近一个月内我没有出现过这种冻结事件', '1' => "在最近一个月内我出现过这种冻结事件");
    $item_text1 = array('0' => '是', '1' => "否");
    $item_text2 = array('0' => '一次发作＞7天  ', '1' => "不经常，大约一周一次  ", '2' => "经常，大约一天一次  ", '3' => "非常频繁，一天超过一次  ");
    $item_text3 = array('0' => '从不', '1' => "极少，大约一月一次 ", '2' => "不经常，大约一周一次", '3' => "经常，大约一天一次", '4' => "非常频繁，一天超过一次");
    $item_text4 = array('1' => '很短，1秒钟', '2' => "短，2-5秒", '3' => "长，5-30秒", '4' => "非常长，超过30秒钟不能行走");
    $item_text5 = array('0' => '一点也不 ', '1' => "非常小", '2' => "中等", '3' => "很大");
    $item_text6 = array('0' => '一点也不，我会像往常一样工作 ', '1' => "  一点点，我只避免很少的日常活动  ", '2' => "中等，我避免了很大一部分日常活动  ", '3' => "很严重，对于大多数的日常活动我很受限  ");
    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        foreach ($items_list as $key => $vv) {
            switch ($key) {
                case 1:
                    $two[] = $item_text[$items[$key]];
                    break;
                case 2:
                    $two[] = $item_text2[$items[$key]];
                    break;
                case 3:
                    $two[] = $item_text3[$items[$key]];
                    break;
                case 4:
                    $two[] = $item_text4[$items[$key]];
                    break;
                case 5:
                    $two[] = $item_text3[$items[$key]];
                    break;
                case 6:
                    $two[] = $item_text4[$items[$key]];
                    break;
                case 7:
                    $two[] = $item_text5[$items[$key]];
                    break;
                case 8:
                    $two[] = $item_text5[$items[$key]];
                    break;
                case 9:
                    $two[] = $item_text6[$items[$key]];
                    break;
            }
        }
        $two[] = $val['score'];
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => '新版冻结步态量表', 'start' => "H1", 'end' => 'Q1'),
    );
    //设置工作区标题
    $sheetName = "新版冻结步态量表";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_stroop($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '量表一单词数', 'unit' => ''),
        '2' => array('name' => '量表二单词数', 'unit' => ''),
        '3' => array('name' => '量表三单词数', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数',
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . "." . $val['name'];
    }
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_stroop');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        foreach ($items_list as $key => $vv) {
            $two[] = $items[$key];
        }
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => 'stroop色词量表', 'start' => "H1", 'end' => 'J1'),
    );
    //设置工作区标题
    $sheetName = "stroop色词量表";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_wais($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '1' => array('name' => '顺背数字分数', 'unit' => ''),
        '2' => array('name' => '倒背数字分数', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数', '总分'
    );
    foreach ($items_list as $key => $val) {
        $one[] = $key . "." . $val['name'];
    }
    $one[] = "备注";
    $cellTitle = $one;

    $model = Db::name('scale_wais');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $two[] = $val['score'];
        foreach ($items_list as $key => $vv) {
            $two[] = $items[$key];
        }
        $two[] = $val['remark'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => 'WAIS-III数字广度量表', 'start' => "H1", 'end' => 'J1'),
    );
    //设置工作区标题
    $sheetName = "WAIS-III数字广度量表";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}

function get_scale_sc_en($userList = array(), $visitList = array(), $user_ids = array())
{
    $items_list = array(
        '100' => array('name' => '完全自理，无动作缓慢、动作困难或动作障碍，无任何困难的感觉；', 'unit' => ''),
        '90' => array('name' => '完全自理，轻微动作缓慢、动作困难或动作障碍，或许要花比正常多两倍的时间，感觉有些困难；', 'unit' => ''),
        '80' => array('name' => '大多数情况下完全自理，要花比正常多两倍的时间，感觉有些困难和迟缓；', 'unit' => ''),
        '70' => array('name' => '不能完全自理，处理日常活动较吃力，要花比正常多3－4倍的 时间； ', 'unit' => ''),
        '60' => array('name' => '一定的对人依赖性，可作大部分日常活动，但缓慢而吃力，易出错，有些事作不了；', 'unit' => ''),
        '50' => array('name' => '依赖别人，做任何事都吃力；', 'unit' => ''),
        '40' => array('name' => '不能自理，多数活动需别人帮助才能完成；', 'unit' => ''),
        '30' => array('name' => '绝大多数活动需别人帮助才能完成；', 'unit' => ''),
        '20' => array('name' => '有些事情能作一点，但自己不能完成任何日常活动，严重病残；', 'unit' => ''),
        '10' => array('name' => '完全不能自理，完全病残；', 'unit' => ''),
        '0' => array('name' => '植物神经功能如吞咽及大小便功能障碍，长期卧床', 'unit' => ''),
    );

    //设置表头
    $one = array(
        '姓名', '患者编号', '出生日期', '性别', '年龄', '随访日期', '随访次数', '活动度', '评分%'
    );
    $cellTitle = $one;

    $model = Db::name('scale_sc_en');
    $dataList = $model->alias('a')
        ->where(array('user_id' => array('in', $user_ids)))
        ->order('a.user_id asc,a.visit_id asc,a.id desc')->select()->toArray();
    $sex_text = array('0' => '保密', '1' => "男", '2' => "女");

    //拼装数据
    $celldata = [];
    foreach ($dataList as $val) {
        $two = [];
        $user = $userList[$val['user_id']];
        $visit = $visitList[$val['visit_id']];
        $two[] = $user['user_nickname'];
        $two[] = $user['user_code'];
        $two[] = date("Y-m-d", $user['birthday']);
        $two[] = $sex_text[$user['sex']];
        $two[] = $user['age'];
        $two[] = empty($visit) ? date('Y-m-d H:i:s', $val['create_time']) : date('Y-m-d H:i:s', $visit['visit_time']);
        $two[] = empty($visit) ? '首访' : ('第' . $visit['visit_times'] . '次');
        $items = unserialize($val['items']);
        $items = $items['sc'];
        $two[] = $items_list[$items['radio']]['name'];
        $two[] = $items['radio'];
        $celldata[] = $two;
    }
    //合并单元格设置
    $cellMerge = array(
        array('title' => '患者信息', 'start' => "A1", 'end' => 'G1'),
        array('title' => 'Schwab和England残疾量表', 'start' => "H1", 'end' => 'I1'),
    );
    //设置工作区标题
    $sheetName = "Schwab和England残疾量表";

    return array(
        'sheetName' => $sheetName,
        'cellMerge' => $cellMerge,
        'cellTitle' => $cellTitle,
        'celldata' => $celldata,
    );
}













