<main id="main">

  <!-- ======= Breadcrumbs ======= -->
  <section id="breadcrumbs" class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>Katalog</h2>
        <ol>
          <li><a href="<?= base_url(); ?>">Home</a></li>
          <li><a href="<?= base_url('katalog/index') ?>">Katalog</a></li>
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
            <!-- <a class="btn btn-info mb-2" href="<?= base_url('keranjang/index') ?>" role="button">Belanja Sekarang</a> -->
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th width="3%" class="text-center">Nomor</th>
                    <th class="text-center">Kategori Barang</th>
                    <th width="15%" class="text-center">Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($list_kategori as $k => $value) : ?>
                    <tr>
                      <td class="text-center"><?= ++$start ?></td>
                      <td><?= $value['kat_barang'] ?></td>
                      <td class="text-center">
                        <a class="btn btn-danger btn-sm" href="<?= base_url() ?>katalog/detail/<?= $value['id_kat_barang'] ?>" role="button">Detail</a>
                      </td>
                    </tr>
                  <?php endforeach ?>
                </tbody>
              </table>
            </div>
            <div class="blog-pagination" data-aos="fade-up">
              <?= $this->pagination->create_links(); ?>
            </div>
          </div>
          <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal" onclick="history.back();">Kembali</button>
        </div><!-- End blog entries list -->


        <div class="col-lg-4">

          <div class="sidebar">

            <h3 class="sidebar-title">Search</h3>
            <div class="sidebar-item search-form">
              <form action="<?= base_url() ?>katalog/searchkategori" method="post">
                <input type="text" class="form-control" placeholder="Kata kunci..." name="keyword" autocomplete="off" autofocus>
                <button type="submit" name="submit"><i class="icofont-search"></i></button>
                <!-- <?= $keyword ?> -->
              </form>
            </div><!-- End sidebar search formn-->

            <h3 class="sidebar-title">Kategori</h3>
            <div class="sidebar-item categories">
              <?php foreach ($list_kategori as $b => $value) : ?>
                <ul>
                  <li><a href="detail/<?= $value['id_kat_barang'] ?>"><?= $value['kat_barang']; ?></a></li>
                </ul>
              <?php endforeach ?>
            </div><!-- End sidebar categories-->

          </div><!-- End sidebar -->

        </div><!-- End blog sidebar -->

      </div>

    </div>
  </section><!-- End Blog Section -->

</main><!-- End #main -->
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