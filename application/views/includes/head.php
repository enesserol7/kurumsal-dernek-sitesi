<?php $settings = get_settings(); ?>
<?php if ($page == "") { ?>
	<title>Ana Sayfa | <?php echo $settings->company_name; ?></title>
<?php }else{ ?>
	<title><?php echo $page->title; ?> | <?php echo $settings->company_name; ?></title>
<?php } ?>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php if ($page == "") { ?>
	<meta name="keywords" content="<?php echo $settings->site_keyw; ?>" />
	<meta name="description" content="<?php echo $settings->site_desc; ?>" />
<?php }else{ ?>
	<meta name="keywords" content="<?php echo $page->page_keyw ?>" />
	<meta name="description" content="<?php echo $page->page_desc; ?>" />
<?php } ?>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css" media="all" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Viga' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href="<?php echo base_url("assets/"); ?>css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php echo base_url("assets/"); ?>css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php echo base_url("assets/"); ?>css/info.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php echo base_url("assets/"); ?>css/style.css" rel="stylesheet" type="text/css" media="all" />