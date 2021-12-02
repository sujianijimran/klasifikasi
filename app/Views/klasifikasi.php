<?php
use App\models\Klasifikasi;

?>

<?= $this->extend("layout/main") ?>

<?= $this->section("content") ?>
<!-- CONTENT -->
<!-- Page -->
<div class="page-area contact-page">
    <div class="container spad">
        <div class="text-center">
            <h4 class="contact-title">Klasifikasi</h4>
        </div>

        <?php
            foreach ($komentar as $k):
                $klasifikasi = new Klasifikasi($semuaKomentar, $k['komentar']);
            ?>

        <div class="row">
            <div class="col-md-6 border" style="min-height: 180px;">

                <div class="col p-2">
                    <span>Isi Komentar :</span> <br>
                    <p class="col h5">
                        <?= $k['komentar']; ?>
                    </p>
                </div>

            </div>
            <div class="col-md-6">
                <div class="row border" style="min-height: 60px;">

                    <div class="col p-2">
                        <span>Hasil Case Folding :</span>
                        <p class="col h5">
                            <?= $klasifikasi->case_folding ?>
                        </p>
                    </div>

                </div>
                <div class="row border" style="min-height: 60px;">

                    <div class="col p-2">
                        <span>Hasil Tokenisasi :</span>
                        <p class="col h5">
                            <?= implode(", ",$klasifikasi->tokenisasi) ?>
                        </p>
                    </div>

                </div>
                <div class="row border" style="min-height: 60px;">

                    <div class="col p-2">
                        <span>Filter Stopword :</span> <br>
                        <p class="col h5">
                            <?= $klasifikasi->filtering ?>
                        </p>
                    </div>

                </div>
                <div class="row border" style="min-height: 60px;">

                    <div class="col p-2">
                        <span>Hasil Steming :</span> <br>
                        <p class="col h5">
                            <?= $klasifikasi->stemming ?>
                        </p>
                    </div>

                </div>
            </div>
        </div>
        <div class="row border mb-4">
            <div class="col-12">
                <div class="row">
                    <div class="col-md-2">
                        Nilai Pertanyaan
                    </div>
                    <div>:</div>
                    <div class="col-md-9"><?= $klasifikasi->hasil[1]; ?></div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        Nilai Pernyataan
                    </div>
                    <div>:</div>
                    <div class="col-md-9"><?= $klasifikasi->hasil[2]; ?></div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        Hasil Klasifikasi
                    </div>
                    <div>:</div>
                    <div class="col-md-9">
                        <?= $kesimpulan[$klasifikasi->kesimpulan]." - ".$klasifikasi->kesimpulan ?>
                    </div>
                </div>
            </div>
        </div>
        <?php endforeach; ?>
        <?= $pager->links('klasifikasi', 'klasifikasi_pagination') ?>
    </div>

</div>
<!-- Page end -->


<?= $this->endSection() ?>