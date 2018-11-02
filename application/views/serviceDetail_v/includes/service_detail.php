<section class="innerpage-header">
    <div class="container">
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header text-center"><?php echo $service->title; ?></h2> 
            </div>
        </div>
        <!-- /.row -->
    </div>
</section>
<section class="blog-post">
        <!-- Page Content -->
    <div class="container">
        <!-- Content Row -->
        <div class="row">
            <!-- Blog Post Content Column -->
            <div class="col-lg-10 col-lg-offset-1">
                <!-- Blog Post -->
                <hr>
                <!-- Preview Image -->
                <div class="hover01 column">
                    <div>
                        <figure><img class="img-responsive blogpost-img-w3ls" src="<?php echo get_picture("services_v", $service->img_url, "750x450"); ?>" alt="<?php echo $service->title; ?>" title="<?php echo $service->title; ?>"></figure>
                    </div>
                </div>
                <hr>
                <!-- Post Content -->
                <h3><?php echo $service->title; ?></h3>
                <br>
                <?php echo $service->description; ?>

                <hr>
            </div>
        </div>
        <!-- /.row -->
        <hr>
    </div>
    <!-- /.container -->
</section>