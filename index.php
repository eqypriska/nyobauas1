<?php

require_once "koneksi/database.php";

require_once "classes/Pendaftaran.php";
require_once "classes/PendaftaranReguler.php";
require_once "classes/PendaftaranPrestasi.php";
require_once "classes/PendaftaranKedinasan.php";

$database = new Database();
$db = $database->connect();

$reguler = new PendaftaranReguler(
    0,
    "",
    "",
    0,
    0,
    "",
    ""
);

$prestasi = new PendaftaranPrestasi(
    0,
    "",
    "",
    0,
    0,
    "",
    ""
);

$kedinasan = new PendaftaranKedinasan(
    0,
    "",
    "",
    0,
    0,
    "",
    ""
);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Pendaftaran Mahasiswa Baru</title>

    <style>
        body{
            font-family: Arial;
            margin:20px;
        }

        table{
            width:100%;
            border-collapse:collapse;
            margin-bottom:30px;
        }

        th,td{
            border:1px solid black;
            padding:8px;
        }

        th{
            background:#ddd;
        }

        h2{
            background:#f4f4f4;
            padding:10px;
        }
    </style>
</head>
<body>

<h1>Data Pendaftaran Mahasiswa Baru</h1>

<!-- REGULER -->

<h2>Jalur Reguler</h2>

<table>
<tr>
    <th>ID</th>
    <th>Nama</th>
    <th>Asal Sekolah</th>
    <th>Nilai Ujian</th>
    <th>Jalur</th>
    <th>Total Biaya</th>
</tr>

<?php

$dataReguler = $reguler->getDaftarReguler($db);

while($row = $dataReguler->fetch(PDO::FETCH_ASSOC))
{
    $obj = new PendaftaranReguler(
        $row['id_pendaftaran'],
        $row['nama_calon'],
        $row['asal_sekolah'],
        $row['nilai_ujian'],
        $row['biaya_pendaftaran_dasar'],
        $row['pilihan_prodi'],
        $row['lokasi_kampus']
    );

    echo "<tr>";
    echo "<td>".$row['id_pendaftaran']."</td>";
    echo "<td>".$row['nama_calon']."</td>";
    echo "<td>".$row['asal_sekolah']."</td>";
    echo "<td>".$row['nilai_ujian']."</td>";
    echo "<td>".$obj->tampilkanInfoJalur()."</td>";
    echo "<td>Rp ".number_format($obj->hitungTotalBiaya(),0,',','.')."</td>";
    echo "</tr>";
}
?>

</table>

<!-- PRESTASI -->

<h2>Jalur Prestasi</h2>

<table>
<tr>
    <th>ID</th>
    <th>Nama</th>
    <th>Asal Sekolah</th>
    <th>Nilai Ujian</th>
    <th>Jalur</th>
    <th>Total Biaya</th>
</tr>

<?php

$dataPrestasi = $prestasi->getDaftarPrestasi($db);

while($row = $dataPrestasi->fetch(PDO::FETCH_ASSOC))
{
    $obj = new PendaftaranPrestasi(
        $row['id_pendaftaran'],
        $row['nama_calon'],
        $row['asal_sekolah'],
        $row['nilai_ujian'],
        $row['biaya_pendaftaran_dasar'],
        $row['jenis_prestasi'],
        $row['tingkat_prestasi']
    );

    echo "<tr>";
    echo "<td>".$row['id_pendaftaran']."</td>";
    echo "<td>".$row['nama_calon']."</td>";
    echo "<td>".$row['asal_sekolah']."</td>";
    echo "<td>".$row['nilai_ujian']."</td>";
    echo "<td>".$obj->tampilkanInfoJalur()."</td>";
    echo "<td>Rp ".number_format($obj->hitungTotalBiaya(),0,',','.')."</td>";
    echo "</tr>";
}
?>

</table>

<!-- KEDINASAN -->

<h2>Jalur Kedinasan</h2>

<table>
<tr>
    <th>ID</th>
    <th>Nama</th>
    <th>Asal Sekolah</th>
    <th>Nilai Ujian</th>
    <th>Jalur</th>
    <th>Total Biaya</th>
</tr>

<?php

$dataKedinasan = $kedinasan->getDaftarKedinasan($db);

while($row = $dataKedinasan->fetch(PDO::FETCH_ASSOC))
{
    $obj = new PendaftaranKedinasan(
        $row['id_pendaftaran'],
        $row['nama_calon'],
        $row['asal_sekolah'],
        $row['nilai_ujian'],
        $row['biaya_pendaftaran_dasar'],
        $row['sk_ikatan_dinas'],
        $row['instansi_sponsor']
    );

    echo "<tr>";
    echo "<td>".$row['id_pendaftaran']."</td>";
    echo "<td>".$row['nama_calon']."</td>";
    echo "<td>".$row['asal_sekolah']."</td>";
    echo "<td>".$row['nilai_ujian']."</td>";
    echo "<td>".$obj->tampilkanInfoJalur()."</td>";
    echo "<td>Rp ".number_format($obj->hitungTotalBiaya(),0,',','.')."</td>";
    echo "</tr>";
}
?>

</table>

</body>
</html>