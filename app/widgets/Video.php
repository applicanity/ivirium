<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace app\widgets;

/**
 * Description of PopularNews
 *
 * @author Arief
 */
class Video extends \yii\base\Widget{
    public $sources;
    
    public $options = [
        'style' => 'height: 100%; width: 100%',
        'controls' => true,
        'playsinline' => true,
        'id' => 'player'
    ];
    
    /**
     * 
     * @param type $data = [
     *  'data' => [
     *   'id',
     *   'tag'
     *   'title',
     *   'description',
     *   'date',
     *   'thumbnail'
     *   'slideshow'
     *  ]
     * ]
     */
    public function run(){
        return $this->render('video/main', [
            'models' => $this->sources
        ]);
    }
}