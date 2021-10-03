    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">

        <div class="container">

            <div class="row">

                <div class="col-lg-8">
                    <h2 class="portfolio-title">Detail Portofolio</h2>
                    <div class="owl-carousel portfolio-details-carousel">
                        <img src="<?= base_url() ?>assets_p/image/portofolio/<?= $portofolio['gambar_p'] ?>" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-4 portfolio-info">
                    <h3>Deskripsi</h3>
                    <ul>
                        <li><strong>Kategori</strong><?= $portofolio['kategori_p'] ?></li>
                    </ul>

                    <p>
                        <?= $portofolio['detail_p'] ?>
                    </p>
                </div>

            </div>

        </div>

    </section><!-- End Portfolio Details Section -->