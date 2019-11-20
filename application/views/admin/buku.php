 <div class="container">
            <?php if ($this->session->flashdata('flash')) : ?>
            <div class="row mt-3">
                <div class="col-md-6">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        Data Tamu <strong>berhasil</strong> <?= $this->session->flashdata('flash'); ?>.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </div>
        <?php endif; ?>
        <div class="row">
            <div class="col-md">
                <a href="<?= base_url() ?>admin/tambah" class="btn btn-primary ml-4 mt-3">Tambah Data Tamu</a>
            </div>
        </div>

        <div class="row mt-3">
            <div class="col-md-6">
                <form action="" method="POST">
                    <div class="input-group">

                        <input type="text" class="form-control ml-3" placeholder="Cari Nama Tamu...." name="keyword">
                        <div class="input-group-append">
                            <button class="btn btn-info" type="submit">Cari Tamu</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="row mt-3">
            <div class="col">
                <ul class="list-group">

                    <div class="col-md-12">
                        <a href="<?= base_url('admin/aksi') ?>" class="btn btn-warning float-right mb-3">Menu Aksi Data Tamu</a>
                        <a href="<?= base_url(); ?>admin/cetak" class="btn btn-info">Menu Cetak Table
                            <i class="fas  fa-print"></i>
                        </a>
                    </div>
                    <?php if (empty($mahasiswa)) : ?>
                        <div class="alert alert-danger col-md-6" role="alert">
                            Upps Data Tamu Tidak Ada :(
                        </div>
                    <?php endif; ?>
                    <h3>Daftar Buku Tamu Selamat Mengisi <?= $user['name']; ?></h3>
                    <table class="table table-hover table-bordered">
                        <thead>
                            <tr class="text-center">
                                <th>No</th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>No HP</th>
                                <th>Jenis Kelamin</th>
                                <th>Tanggal</th>
                                <th>Waktu</th>
                                <th>Keperluan</th>
                            </tr>
                        </thead>
                        <?php $i = 1;
                        foreach ($mahasiswa as $mhs) :    ?>
                            <tbody>
                                <tr>
                                    <th><?= $i++; ?></th>
                                    <td><?= $mhs['nama']; ?></td>
                                    <td><?= $mhs['alamat']; ?></td>
                                    <td><?= $mhs['nohp']; ?></td>
                                    <td><?= $mhs['jeniskelamin']; ?></td>
                                    <td><?= $mhs['datetime']; ?></td>
                                    <td><?= $mhs['waktu']; ?></td>
                                    <td><?= $mhs['keperluan']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                            </tbody>
                    </table>
                    <?= $this->pagination->create_links(); ?>

                </ul>
            </div>
        </div>
    </div>
</div>