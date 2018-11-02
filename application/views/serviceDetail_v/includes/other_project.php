<section class="service-w3ls">
    <h3 class="text-center">Diğer Hizmetlerimiz</h3>
    <div class="container">
        <!-- Service Panels -->
        <div class="row">
            <?php foreach ($other_services as $service) { ?>
                <div class="col-md-3 col-sm-6">
                    <div class="thumbnail">
                        <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5c">
                            <a href="<?php echo base_url("hizmet-detay/");echo $service->url; ?>"><img src="<?php echo get_picture("services_v", $service->img_url, "750x450"); ?>" alt="<?php echo $service->title; ?>" title="<?php echo $service->title; ?>" class="img img-responsive"></a>
                        </div>
                        <h4><?php echo $service->title; ?></h4>
                        <p class="service-p1"><?php echo $service->title; ?></p>
                        <a href="<?php echo base_url("hizmet-detay/");echo $service->url; ?>" class="service-a">İncele</a>
                    </div>  
                </div>
            <?php } ?>
        </div>
    </div>
</section>