<section class="our-blog">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-6 blog-w3ls1">
				<h3>Blog</h3>
				<p class="blog-p1"></p>	
			</div>
			<?php foreach ($news as $news) { ?>
				<div class="col-lg-3 col-md-3 col-sm-6 blog-w3ls2">
					<div class="blog-agile">
						<a href="<?php echo base_url("blog-detay/");echo $news->url; ?>" class="blogimg-w3ls">
							<div class="hover01 column">
								<div>
									<?php if($news->news_type == "image") { ?>
										<figure><img src="<?php echo get_picture("news_v", $news->img_url, "750x450"); ?>" alt="<?php echo $news->title; ?>" title="<?php echo $news->title; ?>" class="img-responsive"></figure>

									<?php } else { ?>
										<figure><iframe class="embed-responsive-item" src="//www.youtube.com/embed/<?php echo $news->video_url; ?>"></iframe></figure>
									<?php } ?>
								</div>
							</div>
						</a>		
						<a href="<?php echo base_url("blog-detay/");echo $news->url; ?>" class="blogimg-w3lh"><h4><?php echo $news->title; ?></h4></a>
						<p class="blog-p2"><?php echo character_limiter(strip_tags($news->description),100); ?></p>
						<a href="<?php echo base_url("blog-detay/");echo $news->url; ?>" class="blogimg-agile"> 
							<p>Devamını Oku</p>	
							<span class="fa fa-angle-double-right" aria-hidden="true"></span>
						</a>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
</section>