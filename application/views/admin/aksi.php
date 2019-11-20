<div class="container">


    <div class="row mt-3">
    </div>

    <div class="row mt-3">
        <div class="col">
            <ul class="list-group">
                <h4>Selamat Datang <?= $user['name']; ?> Jangan Asal Ya Hapus Data Nya</h4>
                <table class="table table-bordered">
                    <thead>
                        <tr class="text-center">
                            <th>Nama</th>
                            <th>Alamat</th>
                            <th>No HP</th>
                            <th>Jenis Kelamin</th>
                            <th>Keperluan</th>
                            <th>Waktu & Tanggal</th>
                            <th colspan="3">Aksi</th>
                        </tr>
                    </thead>
                    <?php foreach ($mahasiswa as $mhs) : ?>
                        <tbody>
                            <tr>

                                <td><?= $mhs['nama']; ?></td>
                                <td><?= $mhs['alamat']; ?></td>
                                <td><?= $mhs['nohp']; ?></td>
                                <td><?= $mhs['jeniskelamin']; ?></td>
                                <td><?= $mhs['keperluan']; ?></td>
                                <td><?= $mhs['datetime']; ?></td>
                                <td><a href="<?= base_url() ?>admin/detail/<?= $mhs['id']; ?>"><i class="fas fa-search-plus">Detail</i></a></td>
                                <td><a href="<?= base_url() ?>admin/hapus/<?= $mhs['id']; ?>"><i class="fas fa-trash-alt text-danger" onclick="alert="">Hapus</i></a></td>
                                <td><a href=" <?= base_url() ?>admin/ubah/<?= $mhs['id']; ?>"> <i class="fas fa-edit text-info">Edit</i></a></td>

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