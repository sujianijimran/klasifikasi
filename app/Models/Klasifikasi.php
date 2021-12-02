<?php
namespace App\models;

use App\Libraries\NaiveBayesByAreOne;
use CodeIgniter\Model;
use Sastrawi\Stemmer\StemmerFactory;

class Klasifikasi extends Model
{
    public $kesimpulan;
    public $text;
    public $cleansing;
    public $case_folding;
    public $tokenisasi;
    public $filtering;
    public $stemming;
    public $hasil;
    public $model_naive;
    
    public function __construct($daftar_komentar, $komentar)
    {
        $daftar_komentar = $this->setData($daftar_komentar);
        
        // ======== PROSES PRE PROCESSING ======================

        $temp = [];
        foreach ($daftar_komentar as $key => $value) {
            $temp[$key][0] = $this->preProcessing($value[0]);
            $temp[$key][1] = $value[1];
        }
        $daftar_komentar = $temp;
        
        $this->text = $komentar;
        $komentar = $this->preProcessing();
        // =====================================================

        // ==== PROSES KLASIFIKASI =============================
        $nb = new NaiveBayesByAreOne($daftar_komentar, $this->text);

        $this->hasil = $nb->predict();

        $this->model_naive = $nb;

        $terbesar = 0;
        $class_terbesar = 0;
        foreach ($this->hasil as $key => $value) {
            if($value > $terbesar){
                $terbesar = $value;
                $class_terbesar = $key;
            }
        }
            
        $this->kesimpulan = $class_terbesar;
    }

    public function preProcessing(string $text = '')
    {
        $dataText = ($text === '')? $this->text : $text;
        
        $this->cleansing = $this->clean($dataText);
        $this->case_folding = $this->case_folding($this->cleansing);
        $this->tokenisasi = $this->tokenisasi($this->case_folding);
        $this->filtering = $this->filtering($this->tokenisasi);
        $this->stemming = $this->stemming($this->filtering);
        // $text_implode = implode(" ", $this->tokenisasi);
        // $this->stemming = $this->stemming($text_implode);
        
        if($text === ''){
            $this->text = $this->stemming;
        }else{
            return $this->stemming;
        }
    }

    private function clean($text)
    {
        // PROSES CLEANSING
        $tanda_baca = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '@', '.', '>', '<', ',', ')', '(', ':', '/', '!', '#', '🙏', '😊', '😩', '"', '😁', '👏', '😍', '😁', '💪'];
        $tanda = implode('', $tanda_baca);
        $cleansing = trim($text, $tanda);

        foreach ($tanda_baca as $tb) {
            $cleansing = str_replace($tb, '', $cleansing);
        }

        return $cleansing;
    }

    private function case_folding($text)
    {
        // PROSES CASE FALDING
        $cf = strtolower($text);
        $cf = trim($cf);

        return $cf;
    }
    
    private function tokenisasi($text)
    {
        // PROSES TOKENISASI
        $tokenisasi = explode(" ", $text);

        return $tokenisasi;
    }

    private function filtering($text)
    {
        // PROSES FILTERING
        $removerFactory = new \Sastrawi\StopWordRemover\StopWordRemoverFactory();

        $remover = $removerFactory->createStopWordRemover();

        $text = implode(' ', $text);

        $remove = $remover->remove($text);

        return $remove;
    }

    private function stemming($text)
    {
        // PROSES STEMMING
        $stemmerFactory = new \Sastrawi\Stemmer\StemmerFactory();
        $stemmer  = $stemmerFactory->createStemmer();

        // stem
        $sentence = $text;
        $output   = $stemmer->stem($sentence);

        return $output;
    }

    public function setData($dataKomentar)
    {
        // Atur struktur data
        $statement = [];
        foreach ($dataKomentar as $data) {
            $statement[] = [$data['komentar'], $data['kesimpulan_id']];
        }	

        return $statement;
    }
}
?>