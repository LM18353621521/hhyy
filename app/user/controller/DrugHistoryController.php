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
error_reporting(E_ERROR | E_PARSE );

/**
 * 患者用药史管理
 * Class DrugHistoryController
 * @package app\user\controller
 */
class DrugHistoryController extends AdminBaseController
{
    public function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        $user_id = input('user_id');
        $user = Db::name('user')->find($user_id);
        $this->user =$user;
        $this->admin_id =session('ADMIN_ID');
        $this->assign('user',$user);
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
        );
        $this->assign('items_list',$items_list);

    }

    /**
     * 数据列表
     * @return mixed
     */
    public function index()
    {
        $request = input('request.');
        if (!empty($request['user_nickname'])) {
            $where['user_nickname'] = ['like', "%".$request['user_nickname']."%"];
        }
        if (!empty($request['title'])) {
            $where['a.title'] = $request['title'];
        }
        if (!empty($request['start_time'])&&!empty($request['end_time'])) {
            $start_time = strtotime($request['start_time']);
            $end_time = strtotime($request['end_time'])+86400;
            $where['a.create_time'] = array('between',[$start_time,$end_time]);
        }
        $where['a.user_id'] = input('user_id');

        $keywordComplex = [];
        $usersQuery = Db::name('user_drug_history');

        $list = $usersQuery
            ->alias('a')
            ->join('user_visit v','a.visit_id=v.id','left')
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
        $model = Db::name('user_drug_history');
        if ($this->request->isPost()) {
            $data   = $this->request->param();
            $data['items'] =serialize($data['items']);
            $data['update_time']=time();
            if(empty($data['id'])){
                $data['admin_id'] = $this->admin_id;
                $data['create_time']=time();
                $res = $model->insert($data);
                adminLog("添加用药史(ID:$res)");
                $this->success('添加成功!', url('DrugHistory/index', ['user_id' => $data['user_id']]));
            }else{
                $res = $model->where(array('id'=>$data['id']))->update($data);
                adminLog("编辑用药史(ID:".$data['id'].")");
                $this->success('编辑成功!', url('DrugHistory/index', ['id' => $res]));
            }
        }

    }

    /**
     * @return mixed编辑数据
     */
    public function edit()
    {
        $model = Db::name('user_drug_history');
        $id = $this->request->param('id', 0, 'intval');
        $data = $model->find($id);
        $data['items'] = unserialize($data['items']);
        $this->assign('data', $data);
        return $this->fetch();
    }

    /**
     * 删除数据
     * @throws \think\Exception
     */
    public function delete()
    {
        $model = Db::name('user_drug_history');
        $param           = $this->request->param();
        if (isset($param['id'])) {
            $id           = $this->request->param('id', 0, 'intval');
            $result       = $model->where(['id' => $id])->find();
            $model->where(['id'=>$id])->delete();
            adminLog("删除用药史(ID:".$id.")");
            $this->success("删除成功！", '');
        }
        if (isset($param['ids'])) {
            $ids     = $this->request->param('ids/a');
            $result  = $model->where(['id' => ['in', $ids]])->delete();
            adminLog("删除用药史(ID:".implode(",",$ids).")");
            if ($result) {
                $this->success("删除成功！", '');
            }
        }
    }
}