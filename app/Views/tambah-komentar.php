<?= $this->extend("layout/main") ?>

<?= $this->section("content") ?>
<!-- CONTENT -->
<!-- Page -->
<div class="page-area contact-page">
    <div class="container spad">
        <?php if (session()->getFlashdata('pesan')) : ?>
        <div class="alert alert-success" role="alert">
            <?= session()->getFlashdata('pesan') ?>
        </div>
        <?php elseif(session()->getFlashdata('error')): ?>
        <div class="alert alert-danger" role="alert">
            <?= session()->getFlashdata('error') ?>
        </div>
        <?php endif; ?>

        <div class="text-center">
            <h4 class="contact-title">Tambah Komentar</h4>
        </div>
        <form class="contact-form" action="<?= base_url('/tambahKomentar/tambah') ?>" method="POST">
            <div class="row">
                <div class="col-md-4">
                    Nama Pelanggan
                    <input type="text" name="nama_pelanggan" required>
                </div>
                <div class="col-md-4">
                    No HP
                    <input type="text" name="no_hp" required>
                </div>
                <div class="col-md-4 mt-3">
                    <div class="text-center">
                        <button class="site-btn">Tambah</button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    Alamat Pelanggan
                    <input type="text" name="alamat_pelanggan" required="required">
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-md-8">
                    Produk
                    <select name="produk_id" class="form-control" required>
                        <option selected>- Pilih produk -</option>
                        <?php foreach($produk as $row): ?>

                        <option value="<?= $row['produk_id'] ?>"><?= $row['produk'] ?></option>

                        <?php endforeach; ?>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    Komentar
                    <div class="text-center">
                        <textarea rows="3" name="komentar" required></textarea>
                    </div>
                </div>

            </div>
        </form>
    </div>

</div>
<!-- Page end -->


<?= $this->endSection() ?>