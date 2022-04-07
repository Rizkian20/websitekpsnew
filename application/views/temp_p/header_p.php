<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><?php echo $judul; ?></title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<?= base_url() ?>assets_p/img/favicon.png" rel="icon">
  <link href="<?= base_url() ?>assets_p/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?= base_url() ?>assets_p/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets_p/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets_p/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets_p/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets_p/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets_p/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets_p/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?= base_url() ?>assets_p/css/style.css" rel="stylesheet">

</head>

<body>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center  header-transparent ">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="logo"><a href="<?= base_url(); ?>home">CV. KEBUMEN PRIMA SARANA</a></h1>
      </div>

      <nav class="nav-menu ml-auto d-none d-lg-block">

        <ul>
          <li><a href="<?= base_url(); ?>">Home</a></li>

          <li><a href="<?= base_url(); ?>#about">Tentang Kami</a></li>
          <li class="drop-down"><a href="<?= base_url(); ?>#services">Layanan</a>
            <ul>
              <?php foreach ($daftarlayanan as $k => $value) : ?>
                <li><a href="<?= base_url(); ?>#<?= $value['id_layanan'] ?>"><?= $value['layanan'] ?></a></li>
              <?php endforeach ?>
            </ul>
          <li><a href="<?= base_url(); ?>berita/index">Berita</a></li>
          <li><a href="<?= base_url(); ?>katalog/index">Katalog</a></li>
          <li><a href="<?= base_url(); ?>#contact">Kontak</a></li>
        </ul>

      </nav><!-- .nav-menu -->
      <a href="<?= base_url('auth'); ?>" target="_blank" class="get-started-btn btn-sm ml-auto">Login</a>


    </div>
  </header><!-- End Header -->