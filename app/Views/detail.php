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
            <h4 class="contact-title">
                Detail
            </h4>
        </div>


        <div class="row">
            <div class="col-md-12">

                <?php
                $klasifikasi = new Klasifikasi($semuaKomentar, $komentar['komentar']);
            ?>
                <div class="row">
                    <div class="col-md-12 border p-2">
                        Nama Pelanggan : <?= $komentar['nama_pelanggan']; ?>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 border p-2">
                        Tanggal : <?= date('d-M-Y',strtotime($komentar['tgl_komentar'])) ?>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 border" style="min-height: 180px;">

                        <div class="col p-2">
                            <span>Isi Komentar :</span> <br>
                            <p class="col h5">
                                <?= $komentar['komentar']; ?>
                            </p>
                        </div>

                    </div>
                    <div class="col-md-6">
                        <div class="row border" style="min-height: 60px;">

                            <div class="col p-2">
                                <span>Hasil Cleansing :</span>
                                <p class="col h5">
                                    <?= $klasifikasi->cleansing ?>
                                </p>
                            </div>

                        </div>
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
            </div>
        </div>


    </div>

</div>
<!-- Page end -->


<?= $this->endSection() ?>