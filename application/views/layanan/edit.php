<div class="container">
    <div class="card">
        <div class="card-header">
            Edit Layanan
        </div>
        <div class="card-body">
            <form id="form" action="<?= base_url('layanan/edit') ?>" method="post">
                <input type="hidden" name="id_layanan" value="<?= $daftarlayanan['id_layanan']; ?>">
                <div class="form-group">
                    <label for="layanan" style="font-size: 15px">Jenis Layanan</label>
                    <input name="layanan" type="text" class="form-control col-md-12 col-12" id="layanan" value="<?= $daftarlayanan['layanan']; ?>">
                    <small class="form-text text-danger"><?= form_error('layanan'); ?></small>
                </div>
                <div class="form-group">
                    <label for="deskripsi" style="font-size: 15px"><span>Deskripsi</span></label>
                    <input name="deskripsi" type="text" class="form-control" id="deskripsi" value="<?= $daftarlayanan['deskripsi']; ?>">
                    <small class="form-text text-danger"><?= form_error('deskripsi'); ?></small>
                </div>
                <div class="form-group">
                    <label for="icon layanan" style="font-size: 15px">Icon Layanan</label>
                    <div class="row">
                        <input name="icon_layanan" type="text" class="form-control col-md-10 mr-2 " value='<?= $daftarlayanan['icon_layanan']; ?>' style="margin-left: 0.9rem;" id="icon_layanan">
                        <a href="https://icofont.com/icons"><button class="btn btn-dark btn-sm m" type="button">Browse icon</button></a>
                    </div>
                    <small class="form-text text-danger"><?= form_error('icon_layanan'); ?></small>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-sm ">Edit Layanan</button>
                    <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal">Kembali</button>

                </div>

            </form>
        </div>
    </div>
</div>