<div class="container">
    <div class="row mt-3">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Form Ubah Tamu
                </div>
                <div class="card-body">
                    <form action="" method="POST">
                        <input type="hidden" name="id" value="<?= $mahasiswa['id']; ?>">
                        <div class="form-group">
                            <label for="nama">Nama Lengkap</label>
                            <input type="text" id="nama" name="nama" class="form-control form-control-user" value="<?= $mahasiswa['nama']; ?>">
                            <small class="form-text text-danger"><?= form_error('nama'); ?></small>
                        </div>
                        <div class="form-group">
                            <label for="alamat">Alamat</label>
                            <input type="text" id="alamat" name="alamat" class="form-control form-control-user" value="<?= $mahasiswa['alamat']; ?>">
                            <small class="form-text text-danger"><?= form_error('alamat'); ?></small>
                        </div>
                        <div class="form-group">
                            <label for="nohp">No Hp</label>
                            <input type="text" id="nohp" name="nohp" class="form-control form-control-user" value="<?= $mahasiswa['nohp']; ?>">
                            <small class="form-text text-danger"><?= form_error('nohp'); ?></small>
                        </div>
                        <div class="form-group">
                            <label for="jeniskelamin">Jenis Kelamin</label>
                            <select class="form-control" id="jeniskelamin" name="jeniskelamin">
                                <?php foreach ($jeniskelamin as $jk) : ?>
                                    <?php if ($jk == $mahasiswa['jeniskelamin']) : ?>
                                        <option value="<?= $jk; ?>" selected><?= $jk; ?></option>
                                    <?php else : ?>
                                        <option value="<?= $jk; ?>"><?= $jk; ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="keperluan">Keperluan</label>
                            <input type="textarea" id="keperluan" name="keperluan" class="form-control form-control-user" value="<?= $mahasiswa['keperluan']; ?>">
                            <small class="form-text text-danger"><?= form_error('keperluan'); ?></small>
                        </div>
                        <div class="form-group">
                            <label for="datetime">Waktu & Tanggal</label>
                            <input type="time" id="datetime" name="datetime" class="form-control form-control-user" value="<?= $mahasiswa['datetime']; ?>">
                            <small class="form-text text-danger"><?= form_error('datetime'); ?></small>
                        </div>
                        <button type="submit" name="ubah" class="btn btn-info float-right">Ubah Tamu</button>
                        <a href="<?= base_url('admin/buku') ?>" class="btn btn-primary">Kembali</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>