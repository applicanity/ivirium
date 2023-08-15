<?php

use yii\helpers\Html;

\app\widgets\assets\VideoAsset::register($this);
?>
<?= Html::beginTag('video', $this->context->options) ?>
    <?php foreach($models as $model): ?>
    <source src="<?= $model['source'] ?>" type="<?= $model['type'] ?>" size="<?= $model['size'] ?>" />
    <?php endforeach; ?>
<?= Html::endTag('video'); ?>