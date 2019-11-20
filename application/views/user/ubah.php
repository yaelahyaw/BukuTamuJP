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
                            <label for="nama">Nama</label>
                            <input type="text" id="nama" name="nama" class="form-control form-control-user" value="<?= $mahasiswa['nama']; ?>">
                            <small class="form-text text-danger"><?= form_error('nama'); ?></small>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" id="email" name="email" class="form-control form-control-user" value="<?= $mahasiswa['email']; ?>">
                            <small class="form-text text-danger"><?= form_error('email'); ?></small>
                        </div>
                        <div class="form-group">
                            <label for="textarea">Keperluan</label>
                            <textarea class="form-control" id="keperluan" rows="3"></textarea>
                        </div>

                        <button type="submit" name="ubah" class="btn btn-info float-right">Ubah Tamu</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>