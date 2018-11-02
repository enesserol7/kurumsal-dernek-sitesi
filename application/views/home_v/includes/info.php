    <section class="innerpage-header">
        <div class="container">
            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header text-center">Galeri</h2> 
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
                        <?php echo character_limiter(strip_tags($gallery->description),550); ?>
                        <hr>
                    </div>  
                </div>
            <?php } ?>
        </div>
        <!-- /.row -->
        <hr>
    </div>
</section>