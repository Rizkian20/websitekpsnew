<div class="container-fluid">
    <?php if ($this->session->flashdata('flash')) : ?>
        <div class="div row mt-3">
            <div class="col-md-6">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    Tentang <strong>berhasil</strong> <?= $this->session->flashdata('flash'); ?>
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
            <a class="btn btn-primary btn-sm" href="<?= base_url('tentangkami/tambah_visi'); ?>" type="button">Tambah Visi</a>
            <a class="btn btn-primary btn-sm" href="<?= base_url('tentangkami/tambah_misi'); ?>" type="button">Tambah Misi</a>
        </div>
        <div class="card-body">
            <div class="table">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="3%" class="text-center">Nomor</th>
                            <th class="text-center">Visi</th>
                            <th width="20%" class="text-center">Aksi</th>


                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($visi as $t => $value) : ?>
                            <tr>
                                <td class="text-center"><?= $t + 1 ?></td>
                                <td><?= $value['visiperusahaan'] ?></td>
                                <td class="text-center">
                                    <a class="btn btn-warning btn-sm" href="<?= base_url() ?>tentangkami/edit_visi/<?= $value['id_visi']; ?>" role="button">Edit</a>
                                    <a class="btn btn-danger btn-sm" href="<?= base_url() ?>tentangkami/hapus_visi/<?= $value['id_visi']; ?>" role="button" onclick="return confirm('Apakah yakin mau dihapus?');">Hapus</a>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>

            </div>
            <hr>
            <div class="table">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="3%" class="text-center">Nomor</th>
                            <th class="text-center">Misi</th>
                            <th width="20%" class="text-center">Aksi</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($misi as $m => $value) : ?>
                            <tr>
                                <td class="text-center"><?= $m + 1 ?></td>
                                <td><?= $value['misiperusahaan'] ?></td>
                                <td class="text-center">
                                    <a class="btn btn-warning btn-sm" href="<?= base_url() ?>tentangkami/edit_misi/<?= $value['id_misi']; ?>" role="button">Edit</a>
                                    <a class="btn btn-danger btn-sm" href="<?= base_url() ?>tentangkami/hapus_misi/<?= $value['id_misi']; ?>" role="button" onclick="return confirm('Apakah yakin mau dihapus?');">Hapus</a>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>

            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->