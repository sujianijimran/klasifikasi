<?php
use App\models\Klasifikasi;
$page_klasifikasi = isset($_GET['page_klasifikasi'])? (int) $_GET['page_klasifikasi'] : 1;
$i = (($page_klasifikasi - 1) * 10) + 1;
?>

<?= $this->extend("layout/main") ?>

<?= $this->section("content") ?>
<!-- CONTENT -->
<!-- Page -->
<div class="page-area contact-page">
    <div class="container spad">
        <div class="text-center">
            <h4 class="contact-title">
                Klasifikasi
            </h4>
        </div>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>NO</th>
                    <th>Komentar</th>
                    <th>Kesimpulan</th>
                    <th>Tanggal Komentar</th>
                    <th class="text-center">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($komentar as $k) { ?>
                <tr>
                    <td><?= $i ?></td>
                    <td><?= $k['komentar'] ?></td>
                    <td><?= '<sup>('.$k['kesimpulan_id'].')</sup>'.$kesimpulan[$k['kesimpulan_id']] ?></td>
                    <td><?= date('d-m-Y', strtotime($k['tgl_komentar'])) ?></td>
                    <td class="text-center">
                        <a href="<?= site_url("/klasifikasi/detail/".$k['id_komentar']) ?>" class="btn btn-info"><span
                                class="fa fa-eye"></span> Detail</a>
                    </td>
                </tr>
                <?php $i++; } ?>
            </tbody>
        </table>

        <?= $pager->links('klasifikasi', 'klasifikasi_pagination') ?>

    </div>

</div>
<!-- Page end -->


<?= $this->endSection() ?>