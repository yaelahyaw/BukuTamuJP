<table class="table table-bordered">
    <thead>
        <tr>
            <th>No</th>
            <th colspan="4">Nama</th>
            <th>Alamat</th>
            <th>No HP</th>
            <th>Jenis Kelamin</th>
            <th>Keperluan</th>
        </tr>
    </thead>
    <?php foreach ($mahasiswa as $mhs) : ?>
        <tbody>
            <tr>
                <th><?= $mhs['id']; ?></th>
                <td colspan="4"><?= $mhs['nama']; ?></td>
                <td><?= $mhs['alamat']; ?></td>
                <td><?= $mhs['nohp']; ?></td>
                <td><?= $mhs['jeniskelamin']; ?></td>
                <td><?= $mhs['keperluan']; ?></td>
            </tr>
        </tbody>
    <?php endforeach; ?>
</table>
<script type="text/javascript">
    window.print();
</script>