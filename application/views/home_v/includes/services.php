<section class="innerpage-header">
        <div class="container">
            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header text-center">Hizmetlerimiz</h2> 
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