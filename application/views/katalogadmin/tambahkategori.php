<div class="container">
    <div class="card">
        <div class="card-header">
            Tambah Kategori
        </div>
        <div class="card-body">
            <form id="form" action="<?= base_url('katalogadmin/tambahkategori') ?>" method="post">
                <div class="form-group">
                    <label for="nomor" style="font-size: 15px">No</label>
                    <input name="nomor" type="text" class="form-control col-md-12 col-12" id="nomor">
                    <small class="form-text text-danger"><?= form_error('nomor'); ?></small>
                </div>
                <div class="form-group">
                    <label for="kategori" style="font-size: 15px"><span>Kategori</span></label>
                    <input name="kategori" type="text" class="form-control" id="kategori">
                    <small class="form-text text-danger"><?= form_error('kategori'); ?></small>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-sm ">Tambah Kategori</button>
                    <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal" onclick="history.back();">Kembali</button>
                </div>
            </form>
        </div>
    </div>
</div>