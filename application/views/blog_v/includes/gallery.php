<section class="portfolio-w3ls"> 
	<div class="container">
        <!-- Project One -->
        <div class="row">
         <?php foreach ($galleries as $gallery) { ?>
            <div class="col-md-6">
				<div class="hover01 column">
					<div>
						<figure>
                            <img class="img-responsive img-hover" src="<?php echo get_picture("galleries_v", $gallery->img_url, "750x450"); ?>" alt="<?php echo $gallery->title; ?>" title="<?php echo $gallery->title; ?>">
						</figure>
					</div>
				</div>
                <div class="col-md-12">
                    <hr>
                    <?php echo $gallery->description; ?>
                    <hr>
                </div>	
            </div>
        <?php } ?>
        </div>
        <!-- /.row -->
        <hr>
	</div>
</section>