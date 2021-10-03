<div class="container">
    <div class="card">
        <div class="card-header">
            Detail Slideshow
        </div>
        <div class="card-body">
            <form id="form" action="<?= base_url('slideshow/detail') ?>" method="post">
                <input type="hidden" name="id_layanan" value="<?= $slideshow['id_slideshow']; ?>">
                <div class="form-group">
                    <label for="judul" style="font-size: 15px">Judul</label>
                    <input name="judul" type="text" class="form-control col-md-12 col-12" id="judul" value="<?= $slideshow['j_slideshow'] ?>" readonly>
                    <small class="form-text text-danger"><?= form_error('judul'); ?></small>
                </div>
                <div class="form-group">
                    <label for="deskripsi" style="font-size: 15px"><span>Deskripsi</span></label>
                    <input name="deskripsi" type="text" class="form-control" id="deskripsi" value="<?= $slideshow['d_slideshow'] ?>" readonly>
                    <small class="form-text text-danger"><?= form_error('deskripsi'); ?></small>
                </div>
                <div class="form-group">
                    <label for="g_slideshow">Pilih Gambar</label>
                    <input type="file" class="form-control-file" id="g_slideshow" name="g_slideshow" size="20" readonly>
                    <small lass="form-text text-danger"><?= form_error('g_slideshow'); ?></small>
                </div>
                <div class="form-group">
                    <img src="<?= base_url() ?>assets_p/image/slideshow/<?= $slideshow['g_slideshow'] ?>" width="400px" id="image_load" readonly>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal">Kembali</button>
                </div>
            </form>
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
    $("#g_berita").change(function() {
        preview(this);
    });
</script>