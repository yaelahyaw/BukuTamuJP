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
        <div class="col-md-6">
            <a href="<?= base_url() ?>user/tambah" class="btn btn-primary">Tambah Data Tamu</a>
            <a href="<?= base_url(); ?>user/print" class="btn btn-primary">Cetak
                <i class="fas  fa-print"></i>
            </a>
        </div>
    </div>

    <div class="row mt-3">
        <div class="col-md-6">
            <form action="" method="POST">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Cari Nama Tamu...." name="keyword">
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
                <?php  $i = 1;
                if (empty($mahasiswa)) : ?>
                    <div class="alert alert-danger col-md-6" role="alert">
                        Upps Data Tamu Tidak Ada :(
                    </div>
                <?php endif; ?>
                <h3>Daftar Buku Tamu Selamat Mengisi <?= $user['name']; ?></h3>
                <table class="table table-bordered">
                    <thead>
                        <tr class="text-center">
                            <th>No</th>
                            <th colspan="4">Nama</th>
                            <th>Alamat</th>
                            <th>No HP</th>
                            <th>Jenis Kelamin</th>
                            <th>Keperluan</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <?php foreach ($mahasiswa as $mhs) : ?>
                        <tbody>
                            <tr>
                                <th><?=$i++ ?></th>
                                <td colspan="4"><?= $mhs['nama']; ?></td>
                                <td><?= $mhs['alamat']; ?></td>
                                <td><?= $mhs['nohp']; ?></td>
                                <td><?= $mhs['jeniskelamin']; ?></td>
                                <td><?= $mhs['keperluan']; ?></td>
                                <td><a href="<?= base_url() ?>user/detail/<?= $mhs['id']; ?>"><i class="fas fa-search-plus">Detail</i></a></td>

                            </tr>
                        </tbody>
                    <?php endforeach; ?>
                </table>
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item ml-auto">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>

            </ul>
        </div>
    </div>
</div>