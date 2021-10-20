<div class="container">
    <div class="card">
        <div class="card-header">
            Tambah Misi
        </div>
        <div class="card-body">
            <form id="form" action="<?= base_url('tentangkami/tambah_misi') ?>" method="post">
                <div class="form-group">
                    <label for="misi" style="font-size: 15px">Misi</label>
                    <input name="misi" type="text" class="form-control col-md-12 col-12" id="misi">
                    <small class="form-text text-danger"><?= form_error('misi'); ?></small>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-sm ">Tambah Misi</button>
                    <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal" onclick="history.back();">Kembali</button>

                </div>

            </form>
        </div>
    </div>
</div>