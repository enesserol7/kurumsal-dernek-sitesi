<?php $settings = get_settings(); ?>
<div class="row">
    <!-- Map Column -->
    <div class="col-md-8">
        <!-- Embedded Google Map -->
        <iframe class="googlemaps" src="<?php echo $settings->map_code; ?>" style="border:0" allowfullscreen></iframe>
    </div>
    <!-- Contact Details Column -->
    <div class="col-md-4">
        <div class="contact-info">
            <h4>İletişim Bilgilerimiz :</h4>
            <p><strong>Telefon :</strong> <?php echo $settings->phone_1; ?></p>
            <?php if ($settings->phone_2 != "") { ?>
                <p><strong>Telefon 2 :</strong> <?php echo $settings->phone_2; ?></p>
            <?php } ?>
            <p><strong>Email :</strong> <a href="mailto:<?php echo $settings->email; ?>"></a><?php echo $settings->email; ?></p>
            <p class="addr"><strong>Adres :</strong> <?php echo $settings->address; ?></p>
            <ul class="social-icons2">
                <?php if ($settings->facebook != "") { ?>
                    <li><a href="https://facebook.com/<?php echo $settings->facebook ?>"><i class="fa fa-facebook"></i></a></li>
                <?php } ?>
                <?php if ($settings->twitter != "") { ?>
                    <li><a href="https://twitter.com/<?php echo $settings->twitter ?>"><i class="fa fa-twitter"></i></a></li>
                <?php } ?>
                <?php if ($settings->linkedin != "") { ?>
                    <li><a href="https://linkedin.com/<?php echo $settings->linkedin ?>"><i class="fa fa-linkedin"></i></a></li>
                <?php } ?>
                <?php if ($settings->instagram != "") { ?>
                    <li><a href="https://instagram.com/<?php echo $settings->instagram ?>"><i class="fa fa-instagram"></i></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>