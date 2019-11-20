<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg ">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block">
                            <img src="<?= base_url('assets/') ?>img/tamu.jpg" width="115%" height="88%" alt="">
                        </div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <form action="" method="POST">
                                    <div class="form-group">
                                        <label for="nama">Nama Lengkap</label>
                                        <input type="text" id="nama" name="nama" class="form-control form-control-user">
                                        <small class="form-text text-danger"><?= form_error('nama'); ?></small>
                                    </div>
                                    <div class="form-group">
                                        <label for="alamat">Alamat</label>
                                        <input type="text" id="alamat" name="alamat" class="form-control form-control-user">
                                        <small class="form-text text-danger"><?= form_error('alamat'); ?></small>
                                    </div>
                                    <div class="form-group">
                                        <label for="nohp">NoHP</label>
                                        <input type="text" id="nohp" name="nohp" class="form-control form-control-user">
                                        <small class="form-text text-danger"><?= form_error('nohp'); ?></small>
                                    </div>
                                    <div class="form-group">
                                        <label for="jeniskelamin">Jenis Kelamin</label>
                                        <select class="form-control" id="jeniskelamin" name="jeniskelamin">
                                            <option value="Laki-Laki">Laki-Laki</option>
                                            <option value="Perempuan">Perempuan</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="keperluan">Keperluan</label>
                                        <input type="textarea" id="keperluan" name="keperluan" class="form-control form-control-user">
                                        <small class="form-text text-danger"><?= form_error('keperluan'); ?></small>
                                    </div>
                                    <button type="submit" name="submit" class="btn btn-info float-right">Tambah Tamu</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>