<?php $settings = get_settings(); ?>
<div class="navbar-wrapper">
    <div class="container">
		<nav class="navbar navbar-inverse navbar-static-top cl-effect-5">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<?php echo base_url(); ?>"><img src="<?php echo get_picture("settings_v", $settings->logo, "160x57"); ?>" alt="<?php echo $settings->company_name; ?>" class="img img-responsive"></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="<?php echo base_url(); ?>"><span data-hover="Anasayfa">Anasayfa</span></a></li>
						<?php foreach ($pages as $page) { ?>
							<li><a href="<?php echo base_url("sayfalar/");echo $page->url; ?>"><span data-hover="<?php echo $page->title; ?>"><?php echo $page->title; ?></span></a><span class="line1">/<span></li>
						<?php } ?>
						<li><a href="<?php echo base_url("iletisim"); ?>"><span data-hover="İletişim">İletişim</span></a></li>
					</ul>
				</div>
			</div>
        </nav>
	</div>
</div>