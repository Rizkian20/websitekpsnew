<div class="container-fluid">
    <?php if ($this->session->flashdata('flash')) : ?>
        <div class="div row mt-3">
            <div class="col-md-6">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    Clients <strong>berhasil</strong> <?= $this->session->flashdata('flash'); ?>
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
            <a class="btn btn-primary btn-sm" href="<?= base_url('clients/tambah'); ?>" type="button">Tambah Clients</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="3%" class="text-center">Nomor</th>
                            <th width="30%" class="text-center">Nama Clients</th>
                            <th class="text-center">Clients</th>
                            <th width="15%" class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($clients as $t => $value) : ?>
                            <tr>
                                <td class="text-center"><?= ++$start ?></td>
                                <td class="text-center"><?= $value['nama_clients'] ?></td>
                                <td class="text-center"><img src="<?= base_url() ?>assets_p/image/clients/<?= $value['logo_clients'] ?>" width="75px"></td>
                                <td class="text-center">
                                    <a class="btn btn-warning btn-sm" href="<?= base_url() ?>clients/edit/<?= $value['id_clients']; ?>" role="button">Edit</a>
                                    <a class="btn btn-danger btn-sm" href="<?= base_url() ?>clients/hapus/<?= $value['id_clients']; ?>" role="button" onclick="return confirm('Apakah yakin mau dihapus?');">Hapus</a>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
                <?= $this->pagination->create_links(); ?>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->