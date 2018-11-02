<?php if ($page->url == "galeri") { ?>
    <section class="innerpage-header">
        <div class="container">
            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header text-center"><?php echo $page->title; ?></h2> 
                </div>
            </div>
            <!-- /.row -->
        </div>
    </section>
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
<?php }elseif ($page->url == "hizmetlerimiz") { ?>
    <section class="innerpage-header">
        <div class="container">
            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header text-center"><?php echo $page->title; ?></h2> 
                </div>
            </div>
            <!-- /.row -->
        </div>
    </section>
    <section class="service-w3ls">
        <div class="container">
            <!-- Service Panels -->
            <div class="row">
                <?php foreach ($services as $service) { ?>
                    <div class="col-md-3 col-sm-6">
                        <div class="thumbnail">
                            <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5c">
                                <a href="<?php echo base_url("hizmet-detay/");echo $service->url; ?>"><img src="<?php echo get_picture("services_v", $service->img_url, "750x450"); ?>" alt="<?php echo $service->title; ?>" title="<?php echo $service->title; ?>" class="img img-responsive"></a>
                            </div>
                            <h4><?php echo $service->title; ?></h4>
                            <p class="service-p1"><?php echo character_limiter(strip_tags($service->description),75); ?></p>
                            <a href="<?php echo base_url("hizmet-detay/");echo $service->url; ?>" class="service-a">İncele</a>
                        </div>  
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>  
<?php }elseif ($page->url == "hakkimizda") { ?>
    <section class="innerpage-header">
        <div class="container">
            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header text-center"><?php echo $page->title; ?></h2> 
                </div>
            </div>
            <!-- /.row -->
        </div>
    </section>
    <section class="about-intro">   
     <div class="container">
        <!-- Intro Content -->
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="hover01 column">
                 <div>

                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <?php $settings = get_settings(); ?>
            <h3>Hakkımızda</h3>
            <?php echo $settings->about_us; ?>
            <h3>Misyonumuz</h3>
            <?php echo $settings->mission; ?>
            <h3>Vizyonumuz</h3>
            <?php echo $settings->vision; ?>
        </div>
    </div>
    <!-- /.row -->
</div>
</section>
<?php }else{ ?>
    <section class="innerpage-header">
        <div class="container">
            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header text-center"><?php echo $page->title; ?></h2> 
                </div>
            </div>
            <!-- /.row -->
        </div>
    </section>
    <section class="about-intro">   
     <div class="container">
        <!-- Intro Content -->
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="hover01 column">
                 <div>
                    <figure>
                        <img class="img-responsive" src="<?php echo get_picture("pages_v", $page->img_url, "750x450"); ?>" alt="<?php echo $page->title; ?>" title="<?php echo $page->title; ?>">
                    </figure>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <?php echo $page->description; ?>
        </div>
    </div>
    <!-- /.row -->
</div>
</section>
<?php } ?>