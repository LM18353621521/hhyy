<?php
// +----------------------------------------------------------------------
// | bronet [ 以客户为中心 以奋斗者为本 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2017 http://www.bronet.cn All rights reserved.
// +----------------------------------------------------------------------
namespace api\portal\controller;

use api\portal\model\PortalCategoryModel;
use api\portal\model\PortalPostModel;
use cmf\controller\RestBaseController;

class ListsController extends RestBaseController
{

    /**
     * [推荐文章列表]
     * @Author:   wuwu<15093565100@163.com>
     * @DateTime: 2017-07-17T11:36:51+0800
     * @since:    1.0
     */
    public function recommended()
    {
        $param           = $this->request->param();
        $portalPostModel = new PortalPostModel();

        $param['where'] = ['recommended' => 1];

        $articles = $portalPostModel->getDatas($param);

        $this->success('ok', ['list' => $articles]);
    }

    /**
     * [getCategoryPostLists 分类文章列表]
     * @Author:    wuwu<15093565100@163.com>
     * @DateTime: 2017-07-17T15:22:41+0800
     * @since:    1.0
     */
    public function getCategoryPostLists()
    {
        $categoryId = $this->request->param('category_id', 0, 'intval');


        $portalCategoryModel = new  PortalCategoryModel();

        $findCategory = $portalCategoryModel->where('id', $categoryId)->find();

        //分类是否存在
        if (empty($findCategory)) {
            $this->error('分类不存在！');
        }

        $param = $this->request->param();

        $articles = $portalCategoryModel->paramsFilter($param, $findCategory->articles()->alias('post'))->select();

        if (!empty($param['relation'])) {
            if (count($articles) > 0) {
                $articles->load('user');
                $articles->append(['user']);
            }
        }

        $this->success('ok', ['list' => $articles]);
    }

}
