<div class="container-fluid">
    <?php if ($this->session->flashdata('flash')) : ?>
        <div class="div row mt-3">
            <div class="col-md-6">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    Slideshow <strong>berhasil</strong> <?= $this->session->flashdata('flash'); ?>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </div>
        </div>
    <?php endif ?>
    <div class="container">
        <div class="card">
            <div class="card-header">
                Edit Slideshow
            </div>
            <div class="card-body">
                <?= form_open_multipart('slideshow/edit/' . $slideshow['id_slideshow']); ?>
                <input type="hidden" name="id_layanan" v1alue="<?= $slideshow['id_slideshow']; ?>">
                <div class="form-group">
                    <label for="judul" style="font-size: 15px">Judul</label>
                    <input name="judul" type="text" class="form-control col-md-12 col-12" id="judul" value="<?= $slideshow['j_slideshow'] ?>">
                    <small class="form-text text-danger"><?= form_error('judul'); ?></small>
                </div>
                <div class="form-group">
                    <label for="deskripsi" style="font-size: 15px"><span>Deskripsi</span></label>
                    <input name="deskripsi" type="text" class="form-control" id="deskripsi" value="<?= $slideshow['d_slideshow'] ?>">
                    <small class="form-text text-danger"><?= form_error('deskripsi'); ?></small>
                </div>
                <div class="form-group">
                    <label for="g_slideshow">Pilih Gambar</label>
                    <input type="file" class="form-control-file" id="g_slideshow" name="g_slideshow" size="20">
                    <small lass="form-text text-danger"><?= form_error('g_slideshow'); ?></small>
                </div>
                <div class="form-group">
                    <img src="<?= base_url() ?>assets_p/image/slideshow/<?= $slideshow['g_slideshow'] ?>" width="400px" id="image_load">
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-sm ">Edit Slideshow</button>
                    <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal" onclick="history.back();">Kembali</button>
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

        $("#g_slideshow").change(function() {
            preview(this);
        });
    </script>