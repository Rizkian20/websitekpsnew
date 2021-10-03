<div class="container-fluid">
    <?php if ($this->session->flashdata('flash')) : ?>
        <div class="div row mt-3">
            <div class="col-md-6">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    Kontak <strong>berhasil</strong> <?= $this->session->flashdata('flash'); ?>
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
            <h6 class="m-0 font-weight-bold text-primary">Manajemen Kontak</h6>
            <hr class="sidebar-divider">
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="5%" class="text-center">Nomor</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Nomor HP</th>
                            <th class="text-center">Alamat</th>
                            <th width="15%" class="text-center">Aksi</th>


                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($kontak as $k => $value) : ?>
                            <tr>
                                <td class="text-center"><?= $value['id_kontak'] ?></td>
                                <td><?= $value['email'] ?></td>
                                <td><?= $value['no_hp'] ?></td>
                                <td><?= $value['alamat'] ?></td>
                                <td class="text-center">
                                    <a class="btn btn-warning btn-sm" href="<?= base_url() ?>kontak/edit/<?= $value['id_kontak']; ?>" role="button">Edit</a>

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