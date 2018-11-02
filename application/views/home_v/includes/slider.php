<div class="slider">
	<ul class="slider-main">
		<?php $sayi = array(); $sayac = 0; ?>
	<?php foreach ($slides as $slide) { ?>
		<li class="slider-panel"> 
			<img src="<?php echo get_picture("slides_v", $slide->img_url, "1680x1120"); ?>" alt="<?php echo $slide->title; ?>" title="<?php echo $slide->title; ?>">
			<div class="banner-info">
				<div class="row">
					<div class="col-lg-6 banner-w3ls1">
						<h3><?php echo $slide->title; ?></h3>
					</div>
					<div class="col-lg-6 banner-w3ls2">	
						<p><?php echo $slide->description; ?></p>
					<?php if($slide->allowButton) { ?>
						<a href="<?php echo base_url($slide->button_url); ?>"><?php echo $slide->button_caption; ?></a>
					<?php } ?>
					</div>
				</div>		
			</div>
		</li>
		<?php $sayac++; array_push($sayi,$sayac);?>
	<?php } ?>
	</ul>
	<div class="slider-extra">
		<ul class="slider-nav">
			<?php foreach ($sayi as $say) { ?>
				<li class="slider-item"><?php echo $say; ?></li>
			<?php } ?>
		</ul>
		<div class="slider-page"> <a class="slider-pre" href="javascript:;;">&lt;</a> <a class="slider-next" href="javascript:;;">&gt;</a> </div>
	</div>
</div>