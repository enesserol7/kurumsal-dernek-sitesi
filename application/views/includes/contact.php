<?php $settings = get_settings(); ?>
<section class="contact-us">
	<h3 class="text-center">İletişim</h3>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-4 contact-us-w3ls">
				<div class="contact-info">
					<a href="mailto:<?php echo $settings->email; ?>">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
						<?php echo $settings->email; ?>
					</a>		
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 contact-us-w3ls">
				<div class="contact-info">
					<p class="contact-us-p1"><span class="fa fa-volume-control-phone" aria-hidden="true"></span><?php echo $settings->phone_1; ?></p>
					<?php if ($settings->phone_2 != "") { ?>
						<p class="contact-us-p1"><span class="fa fa-volume-control-phone" aria-hidden="true"></span><?php echo $settings->phone_2; ?></p>
					<?php } ?>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 contact-us-w3ls">
				<div class="contact-info">
					<p class="contact-us-p1"><span class="fa fa-map-marker" aria-hidden="true"></span><?php echo $settings->address; ?></p>	
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<ul class="social-icons">
					<?php if ($settings->facebook != "") { ?>
						<li><a href="https://facebook.com/<?php echo $settings->facebook ?>"><i class="fa fa-facebook"></i></a></li>
					<?php } ?>
					<?php if ($settings->twitter != "") { ?>
						<li><a href="https://twitter.com/<?php echo $settings->twitter ?>"><i class="fa fa-twitter"></i></a></li>
					<?php } ?>
					<?php if ($settings->linkedin != "") { ?>
						<li><a href="https://linkedin.com/<?php echo $settings->linkedin ?>"><i class="fa fa-linkedin"></i></a></li>
					<?php } ?>
					<?php if ($settings->instagram != "") { ?>
						<li><a href="https://instagram.com/<?php echo $settings->instagram ?>"><i class="fa fa-instagram"></i></a></li>
					<?php } ?>
				</ul>
			</div>
		</div>
	</div>
</section>