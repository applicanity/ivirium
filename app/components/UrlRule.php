<?php

namespace app\components;

class UrlRule extends \yii\base\BaseObject implements \yii\web\UrlRuleInterface {

    public function createUrl($manager, $route, $params) {

        switch($route){
            //Untuk post, harus pakai nama slug-nya
            case 'post/view':
                $post=\app\models\Post::find()->where(['id'=>$params['id']])->one();
                if(empty($post))
                    return false;
                return 'post/'.$post->slug;
            
            //Untuk page, harus pakai nama slug-nya
            case 'page/view':
                $page=\app\models\Page::find()->where(['id'=>$params['id']])->one();
                if(empty($page))
                    return false;
                return 'page/'.$page->slug;
        }

        return false;
    }

    public function parseRequest($manager, $request) {
        $pathInfo = $request->getPathInfo();

        //Baca rule untuk post
        if (preg_match('%^post/([\w-]+)?$%', $pathInfo, $matches)) {
            if(isset($matches[1])){
                $post = \app\models\Post::findBySlug($matches[1]);
                if(empty($post)) return false;
                return ['post/view',['id'=>$post->id]];
            }else{
                throw new NotFoundHttpException('Page not found.');
            }
        }

        //Baca rule untuk page
        if (preg_match('%^page/([\w-]+)?$%', $pathInfo, $matches)) {
            if(isset($matches[1])){
                $page = \app\models\Page::findBySlug($matches[1]);
                if(empty($page)) return false;
                return ['page/view',['id'=>$page->id]];
            }else{
                throw new NotFoundHttpException('Page not found.');
            }
        }
        
        return false;
    }

}
