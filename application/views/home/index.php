<style>
    .text {
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 3;
        /* number of lines to show */
        -webkit-box-orient: vertical;
    }
</style>
<!-- ======= Hero Section ======= -->
<section id="hero">
    <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

            <!-- Slide -->
            <?php foreach ($berita as $b => $value) : ?>
                <div class="carousel-item <?= $b != 0 ?: 'active'; ?>" style="background-image: url('<?= base_url() ?>assets_p/image/berita/<?= $value['g_berita'] ?>')">
                    <div class="carousel-container">
                        <div class="container">
                            <h2 class="animate__animated animate__fadeInDown"><?= $value['judul'] ?></h2>
                            <p class="text" class="animate__animated animate__fadeInUp"><?= strip_tags($value['isi']) ?></p>
                            <a href="<?= base_url('berita/beritasingle/' . $value['id_berita']); ?>" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

    </div>
</section><!-- End Hero -->

<main id="main">
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
        <div class="container">
            <div class="section-title">
                <h2>Tentang Kami</h2>
                <p>Kebumen Prima Sarana</p>
            </div>
            <div class="row content">
                <div class="col-lg-6">
                    <h2>VISI</h2>
                    <p style="font-size: 20px; margin-top: 1.8rem !important"><?= $visi['visiperusahaan']; ?></p>
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0">
                    <h2>MISI</h2>
                    <?php foreach ($misi as $m => $value) : ?>
                        <ul>
                            <li><i class="ri-check-double-line"></i> <?= $value['misiperusahaan'] ?> </li>

                        </ul>
                    <?php endforeach ?>
                </div>
            </div>

        </div>
    </section><!-- End About Section -->



    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
        <div class="container">

            <div class="section-title">
                <h2>Layanan</h2>
                <p>Layanan yang Ditawarkan</p>
            </div>

            <div class="row">

                <?php foreach ($daftarlayanan as $k => $value) : ?>
                    <div class="col-md-6 mt-4 mt-md-0">
                        <div class="icon-box">
                            <?= $value['icon_layanan'] ?>
                            <h4 id="<?= $value['id_layanan'] ?>"><?php echo $value['layanan'] ?></h4>
                            <p><?= $value['deskripsi'] ?></p>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>


        </div>
    </section><!-- End Services Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
        <div class="container">

            <div class="section-title">
                <h2>Portofolio</h2>
                <p>Pekerjaan Terbaru</p>
            </div>

            <div class="row">
                <div class="col-lg-12 d-flex justify-content-center">
                    <ul id="portfolio-flters">

                        <li data-filter="*" class="filter-active">Semua</li>
                        <?php foreach ($kategori as $k => $value) : ?>
                            <li data-filter=".filter-<?= str_replace(' ', '', $value['kategori_p']) ?>"><?= $value['kategori_p'] ?></li>
                        <?php endforeach ?>
                    </ul>
                </div>
            </div>

            <div class="row portfolio-container">
                <?php foreach ($portofolio as $p => $value) : ?>
                    <div class="col-lg-4 col-md-6 portfolio-item filter-<?= str_replace(' ', '', $value['kategori_p']) ?>">
                        <div class="portfolio-wrap">
                            <img src="<?= base_url() ?>assets_p/image/portofolio/<?= $value['gambar_p'] ?>" class="img-fluid" alt="">
                            <div class="portfolio-info">
                                <h4><?= $value['judul_p'] ?> </h4>
                                <p><?= $value['kategori_p'] ?></p>
                                <div class="portfolio-links">
                                    <a href="<?= base_url() ?>assets_p/image/portofolio/<?= $value['gambar_p'] ?>" data-gall="portfolioGallery" class="venobox" title="<?= $value['judul_p'] ?>"><i class="bx bx-plus"></i></a>
                                    <a href="<?= base_url() ?>home/portfoliodetail/<?= $value['id_portofolio'] ?>" data-gall="portfolioDetailsGallery" data-vbtype="iframe" class="venobox" title="Portfolio Details"><i class="bx bx-link"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </section><!-- End Portfolio Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
        <div class="container">

            <div class="section-title">
                <h2>Testimoni</h2>
                <p>Testimoni Mitra dan Pelanggan</p>
            </div>

            <div class="row">
                <?php foreach ($testimoni as $t => $value) : ?>
                    <div class="col-lg-6">
                        <div class="testimonial-item">
                            <img src="<?= base_url() ?>assets_p/image/testimoni/<?= $value['foto'] ?>" class="testimonial-img" alt="">
                            <h3><?= $value['nama'] ?></h3>
                            <h4><?= $value['pekerjaan'] ?></h4>
                            <p>
                                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                <?= $value['isi'] ?>
                                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                            </p>
                        </div>
                    </div>
                <?php endforeach ?>

            </div>

        </div>
    </section> <!-- End Testimonials Section -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
        <div class="container">
            <div class="section-title">
                <h2>Berita</h2>
                <p>Berita Terbaru</p>
            </div>
            <div class="row">
                <?php foreach ($berita as $b => $value) : ?>
                    <div class="col-lg-4  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                        <article class="entry">

                            <div class="entry-img">
                                <img src="<?= base_url() ?>assets_p/image/berita/<?= $value['g_berita'] ?>" width="400px" alt="" class="img-fluid">
                            </div>

                            <h2 class="entry-title">
                                <a href="<?= base_url() ?>berita/beritasingle/<?= $value['id_berita'] ?>"><?= $value['judul'] ?></a>
                            </h2>

                            <div class="entry-meta">
                                <ul>
                                    <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="<?= base_url() ?>berita/beritasingle/<?= $value['id_berita'] ?>"><?= $value['penulis'] ?></a></li>
                                    <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="<?= base_url() ?>berita/beritasingle/<?= $value['id_berita'] ?>"><time datetime="2020-01-01"><?= $value['tglpost'] ?></time></a></li>
                                </ul>
                            </div>

                            <div class="entry-content">
                                <p class="text">
                                    <?= strip_tags($value['isi']) ?>
                                </p>
                                <div class="read-more">
                                    <a href="<?= base_url('berita/beritasingle/' . $value['id_berita']); ?>">Read More</a>
                                </div>
                            </div>

                        </article><!-- End blog entry -->

                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </section><!-- End Blog Section  -->
    <!-- ======= Clients Section ======= -->

    <section id="lowongan" class="about">
        <div class="container">
            <div class="section-title">
                <h2>Info</h2>
                <p>Info Lowongan Pekerjaan</p>
            </div>
            <div class="row mb-2">
                <div class="col-lg-6" data-aos="zoom-in">
                    <img src="<?= base_url() ?>assets_p/image/loker/loker.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 d-flex flex-column justify-contents-center" data-aos="fade-left">
                    <div class="content pt-4 pt-lg-0">
                        <h3>Lowongan Posisi Toko</h3>
                        <p class="font-italic">
                            Kami sedang membutuhkan tenaga kerja baru untuk Posisi Toko, berikut beberapa kriteria yang kami inginkan :
                        </p>
                        <ul>
                            <li><i class="ri-check-double-line"></i> Laki-Laki/perempuan</li>
                            <li><i class="ri-check-double-line"></i> Usia maksimal 24 tahun</li>
                            <li><i class="ri-check-double-line"></i> Minimal lulusan SMA/sederajat</li>
                            <li><i class="ri-check-double-line"></i> Dapat mengoperasikan komputer (ms.word & excel)</li>
                            <li><i class="ri-check-double-line"></i> Dapat bekerja secara team maupun individu</li>
                            <li><i class="ri-check-double-line"></i> Dapat bekerja secara di bawah tekanan</li>
                            <li><i class="ri-check-double-line"></i> Dapat berkomunikasi dengan baik dan responsif</li>
                            <li><i class="ri-check-double-line"></i> Jujur, rajin dan bertanggungjawab</li>
                            <li><i class="ri-check-double-line"></i> Mempunyai pengalaman di bidang marketing (Nilai Tambah)</li>
                        </ul>
                        <p>
                            Dengan ini kami ucapkan banyak terimakasih kepada semua pihak yang telah berpartisipasi.
                        </p>
                        <a href="https://docs.google.com/forms/d/e/1FAIpQLSddaDkcSzRTvtdbqHEwh9eC4qtVFVYaHjNOO9mlFSV7uAwsxA/viewform" target="_blank">
                            <button class="btn btn-danger btn-get-started mb-5">Daftar Sekarang</button>
                        </a>
                    </div>
                </div>
            </div>

            <div class="row mt-2">
                <div class="col-lg-6" data-aos="zoom-in">
                    <img src="<?= base_url() ?>assets_p/image/loker/network_engineer.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 d-flex flex-column justify-contents-center" data-aos="fade-left">
                    <div class="content pt-4 pt-lg-0">
                        <h3>Lowongan Teknisi Komputer & Jaringan</h3>
                        <p class="font-italic">
                            Kami sedang membutuhkan tenaga kerja baru sebagai Teknisi Komputer & Jaringan, berikut beberapa keriteria yang kami inginkan :
                        </p>
                        <ul>
                            <li><i class="ri-check-double-line"></i> Laki-Laki</li>
                            <li><i class="ri-check-double-line"></i> Lulusan SMK (Jurusan Elektronika, Teknik Komputer Jaringan)</li>
                            <li><i class="ri-check-double-line"></i> Attitude baik, tekun belajar, kemampuan bekerja dalam tim.</li>
                            <li><i class="ri-check-double-line"></i> Usia Max 24 th.</li>
                            <li><i class="ri-check-double-line"></i> Penempatan Jogja & Kebumen</li>
                        </ul>
                        <p>
                            Dengan ini kami ucapkan banyak terimakasih kepada semua pihak yang telah berpartisipasi.
                        </p>
                        <a href="https://docs.google.com/forms/d/e/1FAIpQLSddaDkcSzRTvtdbqHEwh9eC4qtVFVYaHjNOO9mlFSV7uAwsxA/viewform" target="_blank">
                            <button class="btn btn-danger btn-get-started">Daftar Sekarang</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End About Section -->

    <section id="clients" class="clients section-bg">
        <div class="container">

            <div class="row">
                <?php foreach ($clients as $c => $value) : ?>
                    <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                        <img src="<?= base_url() ?>assets_p/image/clients/<?= $value['logo_clients'] ?>" class="img-fluid" alt="">
                    </div>
                <?php endforeach ?>

            </div>

        </div>
    </section>
    <!-- End Clients Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container">
            <div class="section-title">
                <h2>Kontak</h2>
                <p>Kontak Kami</p>
            </div>

            <div>
                <iframe style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3954.1649985629406!2d109.64220021420867!3d-7.665403277984669!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7ab508b8c2a42f%3A0x265abbdc1b9e3cc8!2sCV.%20Kebumen%20Prima%20Sarana!5e0!3m2!1sid!2sid!4v1627028356261!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>

            <div class="row mt-5">

                <div class="col-lg-4">
                    <div class="info">
                        <div class="address">
                            <a href="https://goo.gl/maps/y8Ng9fhkkKZWG1E7A" class="maps" target="_blank"><i class="icofont-google-map"></i></a>
                            <!-- <i class="icofont-google-map" src="https://goo.gl/maps/y8Ng9fhkkKZWG1E7A"></i> -->
                            <h4>Lokasi</h4>
                            <p><?= $kontak['alamat']; ?></p>
                        </div>

                        <div class="email">
                            <a href="https://mail.google.com/mail/u/0/#inbox?compose=CllgCJZWPrcMpjxbhXPlBZwGHMdKChwRhNLhqBQdbhHWmCQNkVbmDcHPRWWNsVbTqzndlDMSvzL" class="email" target="_blank"><i class="icofont-envelope"></i></a>
                            <!-- <i class="icofont-envelope"></i> -->
                            <h4>Email</h4>
                            <p><?= $kontak['email']; ?></p>
                        </div>

                        <div class="phone">
                            <!-- <a href="https://api.whatsapp.com/send?phone=<?= $kontak['no_hp'] ?>" class="maps" target="_blank"><i class="icofont-google-map"></i></a> -->
                            <i class="icofont-phone"></i>
                            <h4>Telepon / WA</h4>
                            <p><?= $kontak['no_hp']; ?></p>
                        </div>

                    </div>

                </div>

                <div class="col-lg-8 mt-5 mt-lg-0">

                    <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                <div class="validate"></div>
                            </div>
                            <div class="col-md-6 form-group">
                                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                <div class="validate"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                            <div class="validate"></div>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                            <div class="validate"></div>
                        </div>
                        <div class="mb-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                        </div>
                        <div class="text-center"><button type="submit">Send Message</button></div>
                    </form>

                </div>

            </div>

        </div>
    </section><!-- End Contact Section -->

    <!-- <section id="statistik">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th width="5%" class="text-center">Waktu</th>
                        <th class="text-center">Jumlah</th>



                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($statistic as $k => $value) : ?>
                        <tr>
                            <td class="text-center"><?= $k ?></td>
                            <td><?= $value ?></td>
                        </tr>
                    <?php endforeach ?>


                </tbody>
            </table>
        </div>

    </section> -->
</main><!-- End #main -->



<!-- ======= Footer ======= -->