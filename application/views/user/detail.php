<div class="container">
    <div class="row mt-3">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Detail Data Tamu
                </div>
                <div class="card-body">
                    <p class="card-text">Nama: <?= $mahasiswa['nama']; ?></p>
                    <p class="card-text">Alamat: <?= $mahasiswa['alamat']; ?></p>
                    <p class="card-text">Jenis Kelamin: <?= $mahasiswa['jeniskelamin']; ?></p>
                    <p class="card-text">Keperluan: <?= $mahasiswa['keperluan']; ?></p>
                    <p class="card-text">Waktu Dan Tanggal: <?= date('d F Y'); ?></p>

                    <a href="<?= base_url('user/buku') ?>" class="btn btn-primary">Kembali</a>
                </div>
            </div>
        </div>
    </div>
</div>