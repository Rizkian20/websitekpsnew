<div class="container">
    <div class="card">
        <div class="card-header">
            Tambah Clients
        </div>
        <div class="card-body">
            <?= form_open_multipart('clients/tambah'); ?>
            <div class="form-group">
                <label for="nama_clients" style="font-size: 15px">Nama Clients</label>
                <input name="nama_clients" type="text" class="form-control col-md-12 col-12" id="nama_clients">
                <small class="form-text text-danger"><?= form_error('nama_clients'); ?></small>
            </div>
            <div class="form-group">
                <label for="logo_clients">Pilih Logo</label>
                <input type="file" class="form-control-file" id="logo_clients" name="logo_clients" size="20">
                <small class="form-text text-danger"><?= $this->session->flashdata('flashgambar') ?></small>
            </div>
            <div class="form-group">
                <img src="<?= base_url() ?>assets_p/image/clients/noimage.jpg" width="400px" id="image_load">
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary btn-sm ">Tambah clients</button>
                <button type="button" class="btn btn-danger btn-sm float-right" role="button" onclick="history.back();">Kembali</button>
            </div>
            <?= form_close(); ?>
        </div>
    </div>
</div>
<script>
    function preview(input) {
        if (input.files && input.files[0])
            var reader = new FileReader();
        reader.onload = function(e) {
            $('#image_load').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }

    $(" #logo_clients").change(function() {
        preview(this);
    });
</script>