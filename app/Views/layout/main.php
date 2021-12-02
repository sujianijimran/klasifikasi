<!DOCTYPE html>
<html lang="zxx">

<head>
    <title><?= $title ?></title>
    <meta charset="UTF-8">
    <meta name="description" content="The Plaza eCommerce Template">
    <meta name="keywords" content="plaza, eCommerce, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link href="<?= base_url() ?>/assets/img/favicon.ico" rel="shortcut icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="<?= base_url() ?>/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?= base_url() ?>/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="<?= base_url() ?>/assets/css/owl.carousel.css" />
    <link rel="stylesheet" href="<?= base_url() ?>/assets/css/style.css" />
    <link rel="stylesheet" href="<?= base_url() ?>/assets/css/animate.css" />


    <!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <!-- HEADER: MENU + HEROE SECTION -->
    <!-- Header section -->
    <?= $this->include("layout/header") ?>
    <!-- Header section end -->



    <!-- ========== CONTENT =================== -->
    <?= $this->renderSection("content") ?>
    <!-- ====================================== -->

    <!-- FOOTER: DEBUG INFO + COPYRIGHTS -->

    <?= $this->include("layout/footer") ?>


    <!--====== Javascripts & Jquery ======-->
    <script src="<?= base_url() ?>/assets/js/jquery-3.2.1.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/bootstrap.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/owl.carousel.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/mixitup.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/sly.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/jquery.nicescroll.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/main.js"></script>
</body>

</html>