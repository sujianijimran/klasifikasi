<header class="header-section <?= ($title == "Home")? '':'header-normal' ?>">
    <!-- <div class="container-fluid"> -->
    <div class="container-fluid row">

        <div class="col-md-6 col-xs-6">
            <span class="text-white h4">
                <a href="#" style="text-decoration: none;">
                    Butik Pilihan Fashion
                </a>
            </span>
            <br>
            <span class="text-white">
                Kota Kendari, Sulawesi Tenggara, Indonesia
            </span>
        </div>

        <div class="col-md-6 col-xs-6">
            <span class="pull-right text-white h5">
                <a href="https://www.instagram.com/pilihanfashion/?hl=id"><i class="fa fa-instagram"></i></a>
            </span>
        </div>


    </div>

    <div class="container-fluid">
        <!-- BEGIN CONTAINER -->
        <!-- logo -->
        <div class="site-logo">
            <!-- <img src="<?= base_url() ?>/assets/img/logo.png" alt="logo">  -->
        </div>

        <!-- responsive -->
        <div class="nav-switch">
            <i class="fa fa-bars"></i>
        </div>

        <div class="header-right mt-2">
            <span class="text-white h5">
                <?php if(session()->login): ?>
                <a href="<?= base_url("/logout") ?>"><i class="fa fa-sign-out"></i></a>
                <?php else: ?>
                <a href="<?= base_url("/login") ?>"><i class="fa fa-sign-in"></i></a>
                <?php endif; ?>
            </span>
        </div>

        <!-- site menu -->
        <ul class="main-menu mt-2">
            <li><a href="<?= base_url() ?>">Home</a></li>
            <?php
                if(session()->login):
            ?>
            <li><a href="<?= base_url('/klasifikasi') ?>">Klasifikasi</a></li>
            <?php
                endif;
            ?>
            <li><a href="<?= base_url("/tambahKomentar") ?>">Tambah Komentar</a></li>
        </ul>
        <!-- </div> -->

    </div>
</header>