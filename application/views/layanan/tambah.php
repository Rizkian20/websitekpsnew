<div class="container">
    <div class="card">
        <div class="card-header">
            Tambah Layanan
        </div>
        <div class="card-body">
            <form id="form" action="<?= base_url('layanan/tambah') ?>" method="post">
                <div class="form-group">
                    <label for="layanan" style="font-size: 15px">Jenis Layanan</label>
                    <input name="layanan" type="text" class="form-control col-md-12 col-12" id="layanan">
                    <small class="form-text text-danger"><?= form_error('layanan'); ?></small>
                </div>
                <div class="form-group">
                    <label for="deskripsi" style="font-size: 15px"><span>Deskripsi</span></label>
                    <input name="deskripsi" type="text" class="form-control" id="deskripsi">
                    <small class="form-text text-danger"><?= form_error('deskripsi'); ?></small>
                </div>
                <div class="form-group">
                    <label for="icon layanan" style="font-size: 15px">Icon Layanan</label>
                    <div class="row">
                        <input name="icon_layanan" type="text" class="form-control col-md-3 mr-2 " style="margin-left: 0.9rem;" id="icon_layanan">
                        <a href="https://icofont.com/icons" target="_blank"><button type="button" class="btn btn-dark mb-2">Browse</button></a>
                    </div>
                    <small class="form-text text-danger"><?= form_error('icon_layanan'); ?></small>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-sm ">Tambah Layanan</button>
                    <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal">Kembali</button>
                </div>
            </form>
        </div>
    </div>
</div>