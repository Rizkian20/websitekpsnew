<div class="container">
    <div class="card">
        <div class="card-header">
            Edit Kategori
        </div>
        <div class="card-body">
            <form id="form" action="<?= base_url('katalogadmin/editkategori') ?>" method="post">
                <div class="form-group">
                    <label for="id_kat_barang" style="font-size: 15px">No</label>
                    <input name="id_kat_barang" type="text" class="form-control col-md-12 col-12" id="id_kat_barang" value="<?= $kategori['id_kat_barang'] ?>">
                    <small class="form-text text-danger"><?= form_error('id_kat_barang'); ?></small>
                </div>
                <div class="form-group">
                    <label for="kat_barang" style="font-size: 15px"><span>Kategori</span></label>
                    <input name="kat_barang" type="text" class="form-control" id="kat_barang" value="<?= $kategori['kat_barang'] ?>">
                    <small class="form-text text-danger"><?= form_error('kat_barang'); ?></small>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-sm ">Edit Kategori</button>
                    <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal" onclick="history.back();">Kembali</button>
                </div>
            </form>
        </div>
    </div>
</div>