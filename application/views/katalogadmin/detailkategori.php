<!-- Begin Page Content -->
<div class="container-fluid">
    <?php if ($this->session->flashdata('flash')) : ?>
        <div class="div row mt-3">
            <div class="col-md-6">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    Barang <strong>berhasil</strong> <?= $this->session->flashdata('flash'); ?>
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
            <a class="btn btn-primary btn-sm" href="<?= base_url('katalogadmin/tambahbarang'); ?>" type="button">Tambah Barang</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="3%" class="text-center">Nomor</th>
                            <th width="15%" class="text-center">Kategori Barang</th>
                            <th width="15%" class="text-center">Harga Barang</th>
                            <th width="15%" class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($barang as $k => $value) : ?>
                            <tr>
                                <td class="text-center"><?= ++$start ?></td>
                                <td class="text-center"><?= $value['nama_barang'] ?></td>
                                <td class="text-center"> Rp <?= $value['harga_barang'] ?></td>
                                <td class="text-center">
                                    <a class="btn btn-warning btn-sm" href="<?= base_url() ?>katalogadmin/editbarang/<?= $value['id_barang']; ?>" role="button">Edit</a>
                                    <a class="btn btn-danger btn-sm" href="<?= base_url() ?>katalogadmin/hapusbarang/<?= $value['id_barang']; ?>" role="button" onclick="return confirm('Apakah yakin mau dihapus?');">Hapus</a>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
            <?= $this->pagination->create_links(); ?>
            <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal" onclick="history.back();">Kembali</button>
        </div>
    </div>
    <!-- Modal -->
</div>
<!-- /.container-fluid -->
</div>