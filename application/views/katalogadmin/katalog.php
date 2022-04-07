<!-- Begin Page Content -->
<div class="container-fluid">
    <?php if ($this->session->flashdata('flash')) : ?>
        <div class="div row mt-3">
            <div class="col-md-6">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    Kategori <strong>berhasil</strong> <?= $this->session->flashdata('flash'); ?>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </div>
        </div>
    <?php endif ?>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><?= $title ?></h6>
            <hr class="sidebar-divider">
            <a class="btn btn-primary btn-sm" href="<?= base_url('katalogadmin/tambahkategori'); ?>" type="button">Tambah Kategori</a>
            <div class="search-form">
                <form action="<?= base_url() ?>katalogadmin/searchkategori" method="post">
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <input type="text" class="form-control mb-1 mt-2" name="keyword" id="keyword" placeholder="Kata Kunci..." autocomplete="off" autofocus>
                            <button type="submit" name="submit" class="btn btn-primary mb-1 mt-1">Search</button>
                        </div>
                </form>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="3%" class="text-center">Nomor</th>
                            <th class="text-center">Kategori Barang</th>
                            <th width="20%" class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($list_kategori as $k => $value) : ?>
                            <tr>
                                <td class="text-center"><?= ++$start ?></td>
                                <td><?= $value['kat_barang'] ?></td>
                                <td class="text-center">
                                    <a class="btn btn-warning btn-sm" href="<?= base_url() ?>katalogadmin/editkategori/<?= $value['id_kat_barang'] ?>" role="button">Edit</a>
                                    <a class="btn btn-danger btn-sm" href="<?= base_url() ?>katalogadmin/hapuskategori/<?= $value['id_kat_barang'] ?>" role="button">Hapus</a>
                                    <a class="btn btn-info btn-sm" href="<?= base_url() ?>katalogadmin/detailkategori/<?= $value['id_kat_barang'] ?>" role="button">Detail</a>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
                <?= $this->pagination->create_links(); ?>
            </div>
        </div>
        <!-- Modal -->
    </div>
    <!-- /.container-fluid -->
</div>