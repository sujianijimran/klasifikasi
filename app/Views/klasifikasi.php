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
                Klasifikasi
                <?= (isset($kesimpulan_id))? "<sup>($kesimpulan_id)</sup>".$kesimpulan[$kesimpulan_id] : '' ?>
            </h4>
        </div>



        <?php
        if(isset($komentar)){

        ?>

        <div class="row mb-5">
            <div class="col-md-12">
                <a href="<?= site_url("/klasifikasi") ?>" class="btn btn-warning btn-sm">
                    <i class="fa fa-chevron-left"></i>
                    Kembali
                </a>

                <?php foreach($kesimpulan as $id => $data){ 
                    if($id == $kesimpulan_id) continue;
                ?>
                <a href="<?= site_url("/klasifikasi/$data") ?>" class="btn btn-danger btn-sm">
                    Kelas <?= $data ?>
                    <i class="fa fa-chevron-right"></i>
                </a>
                <?php } ?>

            </div>
        </div>

        <div class="row">
            <div class="col-md-12">

                <?php
            foreach ($komentar as $k):
                if($k['kesimpulan_id'] != $kesimpulan_id) continue;
                
                $klasifikasi = new Klasifikasi($semuaKomentar, $k['komentar']);
            ?>
                <div class="row">
                    <div class="col-md-12 border">
                        Tanggal : <?= date('d-M-Y',strtotime($k['tgl_komentar'])) ?>
                    </div>
                </div>
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
                <?php endforeach; ?>
                <?= $pager->links('klasifikasi', 'klasifikasi_pagination') ?>
            </div>
        </div>
        <?php }else{ ?>
        <div class="row mb-5">
            <?php foreach($kesimpulan as $id => $data){ ?>

            <div class="col-md-6 contact-form text-center">
                <a href="<?= site_url("/klasifikasi/$data") ?>" class="btn site-btn"><?= $data ?></a>
            </div>
            <?php } ?>
        </div>
        <?php } ?>

    </div>

</div>
<!-- Page end -->


<?= $this->endSection() ?>