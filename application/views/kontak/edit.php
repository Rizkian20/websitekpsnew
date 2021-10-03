<div class="container">
    <div class="card">
        <div class="card-header">
            Edit Kontak
        </div>
        <div class="card-body">
            <form id="form" action="<?= base_url('kontak/edit') ?>" method="post">
                <input type="hidden" name="id_kontak" value="<?= $kontak['id_kontak']; ?>">
                <div class="form-group">
                    <label for="email" style="font-size: 15px">Email</label>
                    <input name="email" type="text" class="form-control col-md-12 col-12" id="alamat" value="<?= $kontak['email']; ?>">
                    <small class="form-text text-danger"><?= form_error('email'); ?></small>
                </div>
                <div class="form-group">
                    <label for="no_hp" style="font-size: 15px"><span>Nomor HP</span></label>
                    <input name="no_hp" type="text" class="form-control" id="no_hp" value="<?= $kontak['no_hp']; ?>">
                    <small class="form-text text-danger"><?= form_error('no_hp'); ?></small>
                </div>
                <div class="form-group">
                    <label for="alamat" style="font-size: 15px"><span>Alamat</span></label>
                    <input name="alamat" type="text" class="form-control" id="alamat" value="<?= $kontak['alamat']; ?>">
                    <small class="form-text text-danger"><?= form_error('alamat'); ?></small>
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-sm ">Edit Kontak</button>
                    <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal">Kembali</button>
                </div>
            </form>
        </div>
    </div>
</div>