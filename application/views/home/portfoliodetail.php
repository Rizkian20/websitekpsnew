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
    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
        <div class="container">

            <div class="row">

                <div class="col-lg-8">

                    <h2 class="portfolio-title"><?= $portofolio['judul_p'] ?></h2>
                    <div class="owl-carousel portfolio-details-carousel">
                        <img src="<?= base_url() ?>assets_p/image/portofolio/<?= $portofolio['gambar_p'] ?>" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-4 portfolio-info">
                    <h3>Informasi Projek</h3>
                    <ul>
                        <li><strong>Kategori</strong>: <?= $portofolio['kategori_p'] ?></li>
                        <li><strong>Judul</strong>: <?= $portofolio['judul_p'] ?></li>
                    </ul>

                    <p>
                        <?= $portofolio['detail_p'] ?>
                    </p>
                </div>
            </div>

        </div>
    </section><!-- End Portfolio Details Section -->

    </main><!-- End #main -->
    <!-- Vendor JS Files -->
    <script src="<?= base_url() ?>assets_p/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url() ?>assets_p/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<?= base_url() ?>assets_p/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="<?= base_url() ?>assets_p/vendor/php-email-form/validate.js"></script>
    <script src="<?= base_url() ?>assets_p/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="<?= base_url() ?>assets_p/vendor/venobox/venobox.min.js"></script>
    <script src="<?= base_url() ?>assets_p/vendor/waypoints/jquery.waypoints.min.js"></script>
    <script src="<?= base_url() ?>assets_p/vendor/owl.carousel/owl.carousel.min.js"></script>

    <!-- Template Main JS File -->
    <script src="<?= base_url() ?>assets_p/js/main.js"></script>

</body>

</html>