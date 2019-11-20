<div class="container">
    <div class="row mt-5">
        <div class="col-md-6">
            <a href="<?= base_url(); ?>admin/print" class="btn btn-danger">Cetak
                <i class="fas  fa-print"></i>
            </a>
            <label for="bulan">Bulan</label>
            <select class="custom-select mt-3">
                <option disabled>Pilih Bulan</option>
                <option value="Januari">Januari</option>
                <option value="Februari">Februari</option>
                <option value="Maret">Maret</option>
                <option value="April">April</option>
                <option value="Mei">Mei</option>
                <option value="Juni">Juni</option>
                <option value="Juli">Juli</option>
                <option value="Agustus">Agustus</option>
                <option value="September">September</option>
                <option value="Oktober">Oktober</option>
                <option value="November">November</option>
                <option value="Desember">Desember</option>
            </select>

        </div>

        <div class="row mt-3">
            <div class="col">
                <ul class="list-group">
                    <h3>Daftar Buku Tamu</h3>
                    <table class="table table-bordered">
                        <thead>
                            <tr class="text-center">
                                <th>No</th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>No HP</th>
                                <th>Jenis Kelamin</th>
                                <th>Keperluan</th>
                                <th>Waktu & Tanggal</th>
                            </tr>
                        </thead>
                        <?php foreach ($mahasiswa as $mhs) : ?>
                            <tbody>
                                <tr>
                                    <th><?= $mhs['id']; ?></th>
                                    <td><?= $mhs['nama']; ?></td>
                                    <td><?= $mhs['alamat']; ?></td>
                                    <td><?= $mhs['nohp']; ?></td>
                                    <td><?= $mhs['jeniskelamin']; ?></td>
                                    <td><?= $mhs['keperluan']; ?></td>
                                    <td><?= $mhs['datetime']; ?></td>


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