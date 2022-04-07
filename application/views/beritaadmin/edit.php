<div class="container">
    <div class="card">
        <div class="card-header">
            Edit Berita
        </div>
        <div class="card-body">
            <?= form_open_multipart('beritaadmin/edit/' . $berita['id_berita']) ?>
            <input type="hidden" name="id_berita" value="<?= $berita['id_berita']; ?>">
            <div class="form-group">
                <label for="judul">Judul</label>
                <input name="judul" type="text" class="form-control" id="judul" value="<?= $berita['judul']; ?>">
                <small class="form-text text-danger"><?= form_error('judul'); ?></small>
            </div>
            <div class="form-group">
                <label for="isi"><span>Isi</span></label>
                <textarea id="summernote" name="isi" value="<?= $berita['isi']; ?>"></textarea>
                <small class="form-text text-danger"><?= form_error('isi'); ?></small>
            </div>
            <div class="form-group">
                <script>
                    $(document).ready(function() {
                        $('#summernote').summernote({
                            placeholder: 'Hello Bootstrap 4',
                            tabsize: 2,
                            height: 100
                        });
                    })
                </script>
            </div>
            <div class="form-group">
                <label for="penulis">Penulis</label>
                <input name="penulis" type="text" class="form-control" id="penulis" value="<?= $berita['penulis']; ?>">
                <small class="form-text text-danger"><?= form_error('penulis'); ?></small>
            </div>
            <div class="form-group">
                <label for="kategori">Kategori</label>
                <input name="kategori" type="text" class="form-control" id="kategori" value="<?= $berita['kategori']; ?>">
                <small class="form-text text-danger"><?= form_error('kategori'); ?></small>
            </div>
            <div class="form-group">
                <label for="tglpost">Tanggal Posting</label>
                <input name="tglpost" type="date" class="form-control" id="tglpost" value="<?= $berita['tglpost']; ?>">
                <small class="form-text text-danger"><?= form_error('tglpost'); ?></small>
            </div>
            <div class="form-group">
                <label for="g_berita">Pilih Gambar</label>
                <input type="file" class="form-control-file" id="g_berita" name="g_berita" size="20" value="<?= base_url() ?>assets_p/image/berita/<?= $berita['g_berita']; ?>">
                <small lass="form-text text-danger"><?= form_error('g_berita'); ?></small>
            </div>
            <div class="form-group">
                <img src="<?= base_url() ?>assets_p/image/berita/<?= $berita['g_berita']; ?>" width="400px" id="image_load">
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary btn-sm">Edit berita</button>
                <a type="button" class="btn btn-danger btn-sm " href="<?= base_url('beritaadmin/index') ?>">Kembali</a>
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

    $("#g_berita").change(function() {
        preview(this);
    });
</script>