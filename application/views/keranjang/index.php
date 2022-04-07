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
      <div class="row ">

        <div class="entries">
          <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog ">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Lengkapi Data</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <div class="row">

                    <div class="col-lg-12 col-md-4">

                      <h6 class="portfolio-title">Masukkan Data Pembeli</h6>
                      <form>
                        <div class="form-group">
                          <label for="recipient-name" class="col-form-label">Nama</label>
                          <input type="text" class="form-control" id="recipient-name">
                        </div>
                        <div class="form-group">
                          <label for="recipient-name" class="col-form-label">No HP atau Kontak </label>
                          <input type="text" class="form-control" id="recipient-name">
                        </div>
                        <div class="form-group">
                          <label for="recipient-name" class="col-form-label">Alamat</label>
                          <input type="text" class="form-control" id="recipient-name">
                        </div>
                        <!-- <div class="form-group">
                                            <label for="message-text" class="col-form-label">Message:</label>
                                            <textarea class="form-control" id="message-text"></textarea>
                                        </div> -->
                      </form>
                    </div>

                    <div class="col-lg-4 portfolio-info">
                      <h6>Data Barang</h6>

                      <table class="table">
                        <thead class="thead-light">
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nama Barang</th>
                            <th scope="col">Jumlah</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>Kertas HVS</td>
                            <td>2</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Flashdisk</td>
                            <td>3</td>
                          </tr>
                        </tbody>
                      </table>

                      <!-- <p>
                        <?= $portofolio['detail_p'] ?>
                      </p> -->
                    </div>
                  </div>

                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                  <button type="button" class="btn btn-primary">Order Sekarang</button>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
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
                        <a class="btn btn-warning btn-sm" href="<?= base_url() ?>keranjang/detail/<?= $value['id_kat_barang'] ?>" role="button">Detail</a>
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
          <button type="button" class="btn btn-danger btn-sm float-right " data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Selesai Belanja</button>
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

<script>
  $('#exampleModal').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
    // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
    var modal = $(this)
    modal.find('.modal-title').text('New message to ' + recipient)
    modal.find('.modal-body input').val(recipient)
  })
</script>