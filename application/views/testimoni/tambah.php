<div class="container">
    <div class="card">
        <div class="card-header">
            Tambah Testimoni
        </div>
        <div class="card-body">
            <?= form_open_multipart('testimoni/tambah'); ?>
            <!-- <form id="form" action="<?= base_url('testimoni/tambah') ?>" method="post"> -->

            <div class="form-group">
                <label for="nama" style="font-size: 15px">Nama</label>
                <input name="nama" type="text" class="form-control col-md-12 col-12" id="nama">
                <small class="form-text text-danger"><?= form_error('nama'); ?></small>
            </div>
            <div class="form-group">
                <label for="pekerjaan" style="font-size: 15px"><span>Pekerjaan</span></label>
                <input name="pekerjaan" type="text" class="form-control" id="pekerjaan">
                <small class="form-text text-danger"><?= form_error('pekerjaan'); ?></small>
            </div>
            <div class="form-group">
                <label for="isi" style="font-size: 15px"><span>Isi Testimoni</span></label>
                <input name="isi" type="text" class="form-control" id="isi">
                <small class="form-text text-danger"><?= form_error('isi'); ?></small>
            </div>
            <!-- <div class="form-group">
                    <label for="gambar" style="font-size: 15px"><span>Gambar</span></label>
                    <input name="gambar" type="text" class="form-control" id="gambar">
                    <small class="form-text text-danger"><?= form_error('gambar'); ?></small>
                </div>-->
            <div class="form-group">
                <label for="foto">Pilih Gambar</label>
                <input type="file" class="form-control-file" id="foto" name="foto" size="20">
                <small class="form-text text-danger"><?= $this->session->flashdata('flashgambar') ?></small>
            </div>
            <div class="form-group">
                <img src="<?= base_url() ?>assets_p/image/testimoni/noimage.jpg" width="400px" id="image_load">
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary btn-sm ">Tambah testimoni</button>
                <button type="button" class="btn btn-danger btn-sm float-right" role="button">Kembali</button>
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

    $("#foto").change(function() {
        preview(this);
    });
</script>