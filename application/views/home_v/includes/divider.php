<?php $settings = get_settings(); ?>
<section class="divider">
	<div class="container">
		<h3>- Hakkımızda -</h3>
		<blockquote>
		<?php echo $settings->about_us; ?>
		</blockquote>
		<h3>- Misyonumuz -</h3>
		<blockquote>
		<?php echo $settings->mission; ?>
		</blockquote>
		<h3>- Vizyonumuz -</h3>
		<blockquote>
		<?php echo $settings->vision; ?>
		</blockquote>
	</div>
</section>