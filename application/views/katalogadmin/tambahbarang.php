<div class="container">
    <div class="card">
        <div class="card-header">
            Tambah Barang
        </div>
        <div class="card-body">
            <form id="form" action="<?= base_url('katalogadmin/tambahbarang') ?>" method="post">
                <div class="form-group">
                    <label for="nama_barang" style="font-size: 15px">Nama Barang</label>
                    <input name="nama_barang" type="text" class="form-control col-md-12 col-12" id="nama_barang">
                    <small class="form-text text-danger"><?= form_error('nama_barang'); ?></small>
                </div>
                <div class="form-group">
                    <label for="id_kat_barang" style="font-size: 15px">Kategori Barang</label>
                    !-- <input name="id_kat_barang" type="text" class="form-control col-md-12 col-12" id="id_kat_barang"> -->
                    <select name="id_kat_barang" type="text" class="form-control col-md-12 col-12" id="id_kat_barang">
                        <option value="">Pilih Kategori</option>
                        <?php foreach ($kategori as $k => $value) : ?>
                            <option value="<?= $value['id_kat_barang'] ?>"><?= $value['kat_barang'] ?></option>
                        <?php endforeach ?>
                    </select>
                    <small class="form-text text-danger"><?= form_error('id_kat_barang'); ?></small>
                </div>
                <div class="form-group">
                    <label for="harga_barang" style="font-size: 15px"><span>Harga Barang</span></label>
                    <input name="harga_barang" type="text" class="form-control" id="harga_barang">
                    <small class="form-text text-danger"><?= form_error('harga_barang'); ?></small>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-sm ">Tambah Barang</button>
                    <button type="button" class="btn btn-danger btn-sm float-right " data-dismiss="modal" onclick="history.back();">Kembali</button>
                </div>
            </form>
        </div>
    </div>
</div>