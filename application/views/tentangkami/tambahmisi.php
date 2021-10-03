<div class="container">
    <div class="card">
        <div class="card-header">
            Tambah misi
        </div>
        <div class="card-body">
            <form id="form" action="<?= base_url('tentangkami/tambahmisi') ?>" method="post">
                <div class="form-group">
                    <label for="misi" style="font-size: 15px">misi</label>
                    <input name="misi" type="text" class="form-control col-md-12 col-12" id="misi">
                    <small class="form-text text-danger"><?= form_error('misi'); ?></small>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-sm ">Tambah misi</button>
                    <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal">Kembali</button>

                </div>

            </form>
        </div>
    </div>
</div>