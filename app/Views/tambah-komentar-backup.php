<?php

$statement = [
    ['This is my book', 2],
    ['They Are novels',2],
    ['have you read this book', 1],
    ['who is the author',1],
    ['What are the characters',1],
    ['This is how I bought the book',2],
    ['I like fictions',2],
    ['What is your favorite book',1],
];

function dataClass($data, $class)
{
    //  validasi parameter
    if(!is_array($data)){
        throw new Exception("parameter data harus berupa array [statement, class]");
    }if($class == null){
        throw new Exception("parameter class tidak boleh kosong");
    }

    // PROSES FILTER CLASS DATA
    return array_filter($data, function($var) use ($class)
    {
        return $var[1] == $class;
    });

}

// Mengubah kata dalam array menjadi lower
function lowerListOfWord($words)
{
    $result = array_map(function($val)
    {
        return strtolower($val);
    }, $words);
    
    return $result;
}

// Membagi kalimat menjadi daftar kata
function listWordSentences($data)
{
    $result = [];
    foreach ($data as $value) {
        $words = explode(" ", $value[0]);
        $result[] = lowerListOfWord($words);
    }

    return $result;
}


// Menggabungkan semua kata dari list daftar kata
function listWord($listWordSentences)
{
    $result = [];
    foreach ($listWordSentences as $value) {
        $result = array_merge($result, $value);
    }

    // Mengambil kata yang unik
    $result = array_unique($result);
    
    // Mengurutkan data tanpa memperhatikan case
    natcasesort($result);

    return array_values($result);
}


// BUAT MATRIK DATA KELAS
function matrixTraining($wordOfSentences, $listWords)  
{

    $matrix = [];

    // Mengambil setiap statement
    foreach ($wordOfSentences as $key => $vs) {
        // $key => index dari baris statement

        // Mengambil setiap word yang ingin di cek
        foreach ($listWords as $vw) {
            if(!isset($matrix[$vw])){
                $matrix[$vw] = [];
            }
            // $vw => nilai kumpulan word yang ingin dihitung dalam statement
        
                // Mengecek apakah word yang ingin di cek ada dalam words of statement
                if(in_array($vw, $vs)){
                    $matrix[$vw][$key] = 1;
                }else{
                    $matrix[$vw][$key] = 0;
                }           
        }
    }
    
    return $matrix;
}


// Menghitung jumlah kata yang terhitung dalam matrix
function countListWord($matrix)
{
    $result = [];
    foreach ($matrix as $key => $value) {
        $count = array_count_values($value);
        
        $result[$key] = $count[1];
    }
    
    return $result;
}

// menghitung probabilitas kata dalam matrix
function probWords($dataList)
{
    $count_list = count($dataList);

    $result = [];
    foreach ($dataList as $key => $value) {
        $result[$key] = $value/$count_list;
    }

    return $result;
}


// Menghitung total jumlah list kata
function totalCountList($dataList)
{
    $result = 0;

    foreach ($dataList as $value) {
        $result += $value;
    }
    return $result;
}


// menghitung jumlah kata dari dua kelas secara unique
function totalWordsSnQ($listWordsQ, $listWordsS)
{
    $result = 0;

    $temp = array_merge($listWordsQ, $listWordsS);

    $result = array_unique($temp);

    return count($result);
}

// =================================================================================
//  Menghitung probabilitas word dalam text/kalimat berdasarkan perhitungan data training
function probWordsText($sentences, $count_feature_class, $total_feature_class, $total_unique_all_feature)
{
    $result = [];
    $list_word = explode(" ", $sentences);
    $list_word = lowerListOfWord($list_word);

    $list_word_in_class = array_keys($count_feature_class);

    foreach ($list_word as $word) {
        if(in_array($word,$list_word_in_class)){
            $count = $count_feature_class[$word];
        }else{
            $count = 0;
        }

        //  Untuk menghindari nilai nol maka ditambahkan angka 0
        $result[$word] = ($count + 1)/($total_feature_class + $total_unique_all_feature);
    }

    // Sort array by key
    ksort($result);

    return $result;
}

// Nilai probabilitas total dari text yang ingin di prediksi
function totalProbText($list_word_prob_text_class)
{
    $result = 1;

    foreach ($list_word_prob_text_class as $value) {
        $result = $result * $value;
    }
    
    return $result;
}

// =================================================================================

// ===============================
// PERTANYAAN
$class_q = dataClass($statement, 1);
$probabilitas_q = count($class_q)/ count($statement);
$listWordSentence_q = listWordSentences($class_q);
$listWord_q = listWord($listWordSentence_q);

$matrix_feature_q = matrixTraining($listWordSentence_q, $listWord_q);
$count_feature_q = countListWord($matrix_feature_q);
$prob_feature_q = probWords($count_feature_q);

$total_count_feature_q = totalCountList($count_feature_q);

// ================================
// PERNYATAAN
$class_s = dataClass($statement, 2);

$probabilitas_s = count($class_s)/ count($statement);

$listWordSentence_s = listWordSentences($class_s);
$listWord_s = listWord($listWordSentence_s);

$matrix_feature_s = matrixTraining($listWordSentence_s, $listWord_s);
$count_feature_s = countListWord($matrix_feature_s);
$prob_feature_s = probWords($count_feature_s);

$total_count_feature_s = totalCountList($count_feature_s);

$total_unique_all_feature = totalWordsSnQ($listWord_s, $listWord_q);

// ============================================================
// TEST
$new_sentences = "what is the price of the book";

$prob_words_text_q = probWordsText($new_sentences, $count_feature_q, $total_count_feature_q, $total_unique_all_feature);
$prob_words_text_s = probWordsText($new_sentences, $count_feature_s, $total_count_feature_s, $total_unique_all_feature);

$probabilitas_text_q = totalProbText($prob_words_text_q) * $probabilitas_q;
$probabilitas_text_s = totalProbText($prob_words_text_s) * $probabilitas_s;
print_r([$probabilitas_text_s, $probabilitas_text_q]);die;

?>

<!-- ================================================================================================================ -->
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
                    <input type="text" name="alamat_pelanggan" required>
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