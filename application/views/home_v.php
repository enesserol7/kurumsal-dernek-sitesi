<!DOCTYPE HTML>
<html>
<head>
<?php $this->load->view("includes/head"); ?>
</head>
<body>
<!-- navigation -->
<?php $this->load->view("includes/navbar"); ?>
<!-- /navigation -->
<?php $this->load->view("{$viewFolder}/content"); ?>
<!-- map section -->
<?php $this->load->view("includes/map"); ?>
<!-- /map section -->
<!-- contact section -->
<?php $this->load->view("includes/contact"); ?>
<!-- /contact section -->
<!-- footer -->
<?php $this->load->view("includes/footer"); ?>
<!-- footer -->
<!-- js files -->
<?php $this->load->view("includes/script"); ?>
</body>
</html>