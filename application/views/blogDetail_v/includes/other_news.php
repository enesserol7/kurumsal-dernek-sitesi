<section class="service-w3ls">
    <h3 class="text-center">Diğer Yazılar</h3>
    <div class="container">
        <!-- Service Panels -->
        <div class="row">
            <?php foreach ($other_news as $news) { ?>
                <div class="col-md-3 col-sm-6">
                    <div class="thumbnail">
                        <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5c">
                            <?php if($news->news_type == "image") { ?>
                                <figure><img src="<?php echo get_picture("news_v", $news->img_url, "750x450"); ?>" alt="<?php echo $news->title; ?>" title="<?php echo $news->title; ?>" class="img-responsive"></figure>

                            <?php } else { ?>
                                <figure><iframe class="embed-responsive-item" src="//www.youtube.com/embed/<?php echo $news->video_url; ?>"></iframe></figure>
                            <?php } ?>
                        </div>
                        <h4><?php echo $news->title; ?></h4>
                        <p class="service-p1"><?php echo character_limiter(strip_tags($news->description),100); ?></p>
                        <a href="<?php echo base_url("hizmet-detay/");echo $news->url; ?>" class="service-a">Devamını Oku</a>
                    </div>  
                </div>
            <?php } ?>
        </div>
    </div>
</section>