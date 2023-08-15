<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\widgets\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class VideoAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    
    public function init()
    {
        parent::init();
        
        foreach($this->js as &$js){
            $js .= "?" . date('Ymd');
        }
        foreach($this->css as &$css){
            $css .= "?" . date('Ymd');
        }
    }
    
    public $css = [
        'plugins/plyr/plyr.css',
//        'plugins/plyr/demo.css',
    ];
    public $js = [
        'plugins/plyr/plyr.polyfilled.min.js',
        'plugins/plyr/script.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap4\BootstrapAsset',
    ];
}
