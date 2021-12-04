<?= $this->extend("layout/main") ?>

<?= $this->section("content") ?>
<!-- CONTENT -->

<!-- Page -->
<div class="page-area contact-page">
    <div class="container contact-info-warp">
        <?php if (session()->getFlashdata('pesan')) : ?>
        <div class="alert alert-danger" role="alert">
            <?= session()->getFlashdata('pesan') ?>
        </div>
        <?php endif; ?>
        <form class="checkout-form" method="POST">
            <div class="contact-card-edit mb-3">
                <div class="text-center mb-3">
                    <span class="text-white h3">Login</span>
                </div>
                <div class="row">
                    <div class="col-md-12 form-group">
                        <input type="text" name="username"
                            class="form-control <?= ($validation->hasError('username')) ? 'is-invalid' : '' ?> mb-0"
                            placeholder="Username *">
                        <?= 
                            '<span class="invalid-feedback">'.
                            $validation->getError('username') 
                            .'</span>'
                        ?>
                    </div>
                    <div class="col-md-12 form-group">
                        <input type="password" name="password"
                            class="form-control <?= ($validation->hasError('username')) ? 'is-invalid' : '' ?> mb-0"
                            placeholder="Password *">
                        <?= 
                            '<span class="invalid-feedback">'.
                            $validation->getError('password') 
                            .'</span>'
                        ?>
                    </div>
                </div>
                <div class="text-center mb-3">
                    <button class="site-btn btn-block btn-line">Send Message</button>
                </div>
            </div>
        </form>
    </div>
    <div class="map-area bg-white">
    </div>
</div>
<!-- Page end -->

<?= $this->endSection() ?>