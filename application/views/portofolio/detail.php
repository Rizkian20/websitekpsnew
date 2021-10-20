<div class="container-fluid">
    <?php if ($this->session->flashdata('flash')) : ?>
        <div class="div row mt-3">
            <div class="col-md-6">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    portofolio <strong>berhasil</strong> <?= $this->session->flashdata('flash'); ?>
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
                Detail Portofolio
            </div>
            <div class="card-body">
                <?= form_open_multipart('portofolio/detail'); ?>
                <input type="hidden" name="id_layanan" value="<?= $portofolio['id_portofolio']; ?>">
                <div class="form-group">
                    <label for="kategori" style="font-size: 15px"><span>Jenis Kategori</span></label>
                    <input name="kategori" type="text" class="form-control" id="kategori" value="<?= $portofolio['kategori_p'] ?>" readonly>
                    <small class="form-text text-danger"><?= form_error('kategori_p'); ?> </small>
                </div>
                <div class="form-group">
                    <label for="judul" style="font-size: 15px"><span>Judul</span></label>
                    <input name="judul" type="text" class="form-control" id="judul" value="<?= $portofolio['judul_p'] ?>" readonly>
                    <small class="form-text text-danger"><?= form_error('judul'); ?></small>
                </div>
                <div class="form-group">
                    <label for="detail" style="font-size: 15px"><span>Detail</span></label>
                    <input name="detail" type="text" class="form-control" id="detail" value="<?= $portofolio['detail_p'] ?>" readonly>
                    <small class="form-text text-danger"><?= form_error('detail'); ?></small>
                </div>
                <div class="form-group">
                    <label for="gambar">Pilih Gambar</label>
                    <input type="file" class="form-control-file" id="gambar" name="gambar" size="20" value="<?= $portofolio['gambar_p'] ?>" readonly>
                    <small lass="form-text text-danger"><?= form_error('gambar'); ?></small>
                </div>
                <div class="form-group">
                    <img src="<?= base_url() ?>assets_p/image/portofolio/<?= $portofolio['gambar_p'] ?>" width="400px" id="image_load">
                </div>


                <div class="modal-footer">
                    <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal" onclick="history.back();">Kembali</button>
                </div>
                <?= form_close(); ?>
            </div>
        </div>
    </div>