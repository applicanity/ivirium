<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
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
        'plugins/rs-plugin/css/settings.css',
        'plugins/rs-plugin/css/layers.css',
        'plugins/rs-plugin/css/navigation.css',
        'css/site.css',
    ];
    public $js = [
        'plugins/rs-plugin/js/jquery.themepunch.tools.min.js',
        'plugins/rs-plugin/js/jquery.themepunch.revolution.min.js',
        'plugins/rs-plugin/js/extensions/revolution.extension.actions.min.js',
        'plugins/rs-plugin/js/extensions/revolution.extension.carousel.min.js',
        'plugins/rs-plugin/js/extensions/revolution.extension.kenburn.min.js',
        'plugins/rs-plugin/js/extensions/revolution.extension.layeranimation.min.js',
        'plugins/rs-plugin/js/extensions/revolution.extension.migration.min.js',
        'plugins/rs-plugin/js/extensions/revolution.extension.navigation.min.js',
        'plugins/rs-plugin/js/extensions/revolution.extension.parallax.min.js',
        'plugins/rs-plugin/js/extensions/revolution.extension.slideanims.min.js',
        'plugins/rs-plugin/js/extensions/revolution.extension.video.min.js',
        'js/script.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap4\BootstrapAsset',
    ];
}
