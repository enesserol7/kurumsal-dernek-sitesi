<section class="innerpage-header">
    <div class="container">
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header text-center"><?php echo $news->title; ?></h2> 
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
                <!-- Date/Time -->
                <p class="blogpost-w3ls"><i class="fa fa-clock-o"></i> Posted on July 28, 2016 at 9:00 PM</p>

                <hr>
                <!-- Preview Image -->
                <div class="hover01 column">
                    <div>
                        <?php if($news->news_type == "image") { ?>
                            <figure><img src="<?php echo get_picture("news_v", $news->img_url, "750x450"); ?>" alt="<?php echo $news->title; ?>" title="<?php echo $news->title; ?>" class="img-responsive"></figure>

                        <?php } else { ?>
                            <figure><iframe class="embed-responsive-item" src="//www.youtube.com/embed/<?php echo $news->video_url; ?>"></iframe></figure>
                        <?php } ?>
                    </div>
                </div>
                <hr>
                <!-- Post Content -->
                <?php echo $news->description; ?>
                <hr>
            </div>
        </div>
        <!-- /.row -->
        <hr>
    </div>
    <!-- /.container -->
</section>