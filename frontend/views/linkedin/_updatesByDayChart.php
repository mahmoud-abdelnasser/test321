<?php
    if($updates_by_day_json_table){
	$this->registerJs("GoogleCharts.drawColumns(".$updates_by_day_json_table.", 'Updates by day', 'updates_by_day')", yii\web\View::POS_END);
	?>
        <h3 class="internal-title noneBG">Updates by day</h3>
	<div class="internal-content">
            <div id="updates_by_day"></div>
	</div>
<?php }
?>
	