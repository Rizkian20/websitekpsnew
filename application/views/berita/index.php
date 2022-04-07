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
<main id="main">

  <!-- ======= Breadcrumbs ======= -->
  <section id="breadcrumbs" class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>Berita</h2>
        <ol>
          <li><a href="<?= base_url(); ?>">Home</a></li>
          <li><a href="<?= base_url('berita/index') ?>">Berita</a></li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <!-- ======= Blog Section ======= -->
  <section id="blog" class="blog">
    <div class="container">
      <div class="row">

        <div class="col-lg-8 entries">

          <div class="row">
            <?php foreach ($berita as $b => $value) : ?>
              <div class="col-lg-6  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                <article class="entry">

                  <div class="entry-img">
                    <img src="<?= base_url() ?>assets_p/image/berita/<?= $value['g_berita'] ?>" alt="" class="img-fluid">
                  </div>

                  <h2 class="entry-title">
                    <a href="<?= base_url() ?>berita/beritasingle/<?= $value['id_berita'] ?>"><?= $value['judul'] ?></a>
                  </h2>

                  <div class="entry-meta">
                    <ul>
                      <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="<?= base_url() ?>berita/beritasingle/<?= $value['id_berita'] ?>l"><?= $value['penulis'] ?></a></li>
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
          <div class="blog-pagination" data-aos="fade-up">
            <?= $this->pagination->create_links(); ?>
          </div>
        </div><!-- End blog entries list -->


        <div class="col-lg-4">

          <div class="sidebar">

            <h3 class="sidebar-title">Search</h3>
            <div class="sidebar-item search-form">
              <form action="<?= base_url() ?>berita/search" method="post">
                <input type="text" class="form-control" placeholder="Kata kunci..." name="keyword" autocomplete="off" autofocus>
                <button type="submit" name="submit"><i class="icofont-search"></i></button>
                <!-- <?= $keyword ?> -->
              </form>
            </div><!-- End sidebar search formn-->

            <h3 class="sidebar-title">Kategori</h3>
            <div class="sidebar-item categories">
              <?php foreach ($kategori as $b => $value) : ?>
                <ul>
                  <li><a href="#"><?= $value['kategori']; ?> <span>(<?= $value['jumlah'] ?>)</span></a></li> <!-- ????? -->
                </ul>

              <?php endforeach ?>
            </div><!-- End sidebar categories-->

            <h3 class="sidebar-title">Postingan Terbaru</h3>
            <div class="sidebar-item recent-posts">
              <?php foreach ($list_berita as $b => $value) : ?>
                <div class="post-item clearfix">
                  <img src="<?= base_url() ?>/assets_p/image/berita/<?= $value['g_berita'] ?>" alt="">
                  <h4><a href="<?= base_url('berita/beritasingle/' . $value['id_berita']); ?>"><?= $value['judul'] ?></a></h4>
                  <time datetime=""><?= $value['tglpost'] ?></time>
                </div>
              <?php endforeach ?>
            </div><!-- End sidebar recent posts-->

          </div><!-- End sidebar -->

        </div><!-- End blog sidebar -->

      </div>

    </div>
  </section><!-- End Blog Section -->

</main><!-- End #main -->