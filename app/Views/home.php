<?= $this->extend("layout/main") ?>

<?= $this->section("content") ?>
<!-- CONTENT -->


<!-- Hero section -->
<section class="hero-section set-bg" data-setbg="#e83e8c" style="background-color : #e83e8c;">
    <div class="hero-slider owl-carousel">
        <div class="hs-item">
            <div class="hs-left"><img src="<?= base_url() ?>/assets/img/slider-img.png" alt=""></div>
            <div class="hs-right">
                <div class="hs-content">
                    <div class="price"></div>
                    <h2><span>2021</span> <br>Your Fashion Style Everyday</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero section end -->

<!-- Intro section -->
<section class="intro-section spad pb-0">
    <div class="section-title">
        <h2>pemium products</h2>
        <p>We recommend</p>
    </div>
    <div class="intro-slider">
        <ul class="slidee">
            <li>
                <div class="intro-item">
                    <figure>
                        <img src="<?= base_url() ?>/assets/foto_produk/1.jpeg" alt="#">
                    </figure>
                    <div class="product-info">
                        <h5>Pink Sunglasses</h5>
                        <p>$319.50</p>
                        <!-- <a href="#" class="site-btn btn-line">ADD TO CART</a> -->
                    </div>
                </div>
            </li>
            <li>
                <div class="intro-item">
                    <figure>
                        <img src="<?= base_url() ?>/assets/foto_produk/2.jpeg" alt="#">
                    </figure>
                    <div class="product-info">
                        <h5>Black Nighty</h5>
                        <p>$319.50</p>
                        <!-- <a href="#" class="site-btn btn-line">ADD TO CART</a> -->
                    </div>
                </div>
            </li>
            <li>
                <div class="intro-item">
                    <figure>
                        <img src="<?= base_url() ?>/assets/foto_produk/3.jpeg" alt="#">
                        <div class="bache">NEW</div>
                    </figure>
                    <div class="product-info">
                        <h5>Yellow Sholder bag</h5>
                        <p>$319.50</p>
                        <!-- <a href="#" class="site-btn btn-line">ADD TO CART</a> -->
                    </div>
                </div>
            </li>
            <li>
                <div class="intro-item">
                    <figure>
                        <img src="<?= base_url() ?>/assets/foto_produk/4.jpeg" alt="#">
                    </figure>
                    <div class="product-info">
                        <h5>Yellow Sunglasses</h5>
                        <p>$319.50</p>
                        <!-- <a href="#" class="site-btn btn-line">ADD TO CART</a> -->
                    </div>
                </div>
            </li>
            <li>
                <div class="intro-item">
                    <figure>
                        <img src="<?= base_url() ?>/assets/foto_produk/5.jpeg" alt="#">
                    </figure>
                    <div class="product-info">
                        <h5>Black Sholder bag</h5>
                        <p>$319.50</p>
                        <!-- <a href="#" class="site-btn btn-line">ADD TO CART</a> -->
                    </div>
                </div>
            </li>
            <li>
                <div class="intro-item">
                    <figure>
                        <img src="<?= base_url() ?>/assets/foto_produk/6.jpeg" alt="#">
                    </figure>
                    <div class="product-info">
                        <h5>Black Sholder bag</h5>
                        <p>$319.50</p>
                        <!-- <a href="#" class="site-btn btn-line">ADD TO CART</a> -->
                    </div>
                </div>
            </li>
            <li>
                <div class="intro-item">
                    <figure>
                        <img src="<?= base_url() ?>/assets/foto_produk/7.jpeg" alt="#">
                    </figure>
                    <div class="product-info">
                        <h5>Black Sholder bag</h5>
                        <p>$319.50</p>
                        <!-- <a href="#" class="site-btn btn-line">ADD TO CART</a> -->
                    </div>
                </div>
            </li>
            <li>
                <div class="intro-item">
                    <figure>
                        <img src="<?= base_url() ?>/assets/foto_produk/8.jpeg" alt="#">
                    </figure>
                    <div class="product-info">
                        <h5>Black Sholder bag</h5>
                        <p>$319.50</p>
                        <!-- <a href="#" class="site-btn btn-line">ADD TO CART</a> -->
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <div class="container">
        <div class="scrollbar">
            <div class="handle">
                <div class="mousearea"></div>
            </div>
        </div>
    </div>
</section>
<!-- Intro section end -->

<?= $this->endSection() ?>