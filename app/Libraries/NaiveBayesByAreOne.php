<?php
// =======================
// Created By Arwan Prianto Mangidi - Are One
// =======================
namespace App\Libraries;

use Exception;

class NaiveBayesByAreOne
{
    /**
     * @property $statements array
     */
    public $statements;
    /**
     * @property string $text
     */
    public $text;
    /**
     * @property array $classStatements
     */
    public $classOfStatements;

    public $matrix_feature;

    public $count_feature;

    public $probabilitas_feature;

    public $total_unique_all_feature;

    public function __construct($statements, $text)
    {
       if(!is_array($statements)){
            throw new Exception("parameter data harus berupa array [statement, class]");
       }

       if(!is_string($text)){
            throw new Exception("parameter text harus kalimat");
       }

       if(!isset($statements[0][0])){
            throw new Exception("parameter data harus berupa array [statement, class]");
       }

       if(!isset($statements[0][1])){
        throw new Exception("parameter data harus berupa array [statement, class]");
        }

        $this->statements = $statements;
        $this->text = $text; 
        $this->classOfStatements = $this->getClass();
    }

    /**
     * @return array
     */
    public function predict()
    {    
        // ===============================
        // PERTANYAAN

        $listWordAllClass = [];
        foreach ($this->classOfStatements as $value) {
            ${"class_".$value} = $this->dataClass($this->statements, $value);
            
            ${"probabilitas_".$value} = count(${"class_".$value})/ count($this->statements);
            
            ${"listWordSentence_".$value} = $this->listWordSentences(${"class_".$value});
            ${"listWord_".$value} = $this->listWord(${"listWordSentence_".$value});
            
            ${"matrix_feature_".$value} = $this->matrixTraining(${"listWordSentence_".$value}, ${"listWord_".$value});
            ${"count_feature_".$value} = $this->countListWord(${"matrix_feature_".$value});
            ${"prob_feature_".$value} = $this->probWords(${"count_feature_".$value});
            
            ${"total_count_feature_".$value} = $this->totalCountList(${"count_feature_".$value});

            $this->matrix_feature[$value] = ${'matrix_feature_'.$value};
            $this->count_feature[$value] = ${'count_feature_'.$value};
            $this->probabilitas_feature[$value] = ${'prob_feature_'.$value};

            $listWordAllClass[] = ${"listWord_".$value};
        }
        // print_r($total_count_feature_1);echo "<br>";
        // print_r($total_count_feature_2);echo "<br>";die;
        // ================================
        // Total semua fitur
        $total_unique_all_feature = $this->totalWordsSnQ($listWordAllClass);
        $this->total_unique_all_feature = $total_unique_all_feature;
                
        // ============================================================
        // Prediksi Teks/kalimat
        $result = [];
        foreach ($this->classOfStatements as  $value) {
            # code...
            ${"prob_words_text_".$value} = $this->probWordsText($this->text, ${"count_feature_".$value}, ${"total_count_feature_".$value}, $total_unique_all_feature);
            ${"probabilitas_text_".$value} = $this->totalProbText(${"prob_words_text_".$value}) * ${"probabilitas_".$value};
            $result[$value] = ${"probabilitas_text_".$value};
        }

        return $result;
    }

    /**
     * @return array
     */
    public function getClass($statements = [])
    {
        $statements = ($statements)?: $this->statements;
        $classStatements = [];
        foreach ($statements as $statement) {
            $classStatements[] = $statement[1];
        }
        
        $result = array_unique($classStatements);
        asort($result);
        
        return array_values($result);
    }
    
    /**
     * @param mixed $data
     * @param mixed $class
     * 
     * @return array
     */
    public function dataClass($data, $class)
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
    /**
     * @param mixed $words
     * 
     * @return [type]
     */
    public function lowerListOfWord($words)
    {
        $result = array_map(function($val)
        {
            return strtolower($val);
        }, $words);
        
        return $result;
    }
    
    /**
     * Membagi kalimat menjadi daftar kata
     * @param mixed $data
     * 
     * @return [type]
     */
    function listWordSentences($data)
    {
        $result = [];
        foreach ($data as $value) {
            $words = explode(" ", $value[0]);
            $result[] = $this->lowerListOfWord($words);
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
    public function matrixTraining($wordOfSentences, $listWords)  
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
    public function countListWord($matrix)
    {
        $result = [];
        foreach ($matrix as $key => $value) {
            $count = array_count_values($value);
            
            $result[$key] = $count[1];
        }
        
        return $result;
    }
    
    // menghitung probabilitas kata dalam matrix
    public function probWords($dataList)
    {
        $count_list = count($dataList);
    
        $result = [];
        foreach ($dataList as $key => $value) {
            $result[$key] = $value/$count_list;
        }
    
        return $result;
    }
    
    
    // Menghitung total jumlah list kata
    public function totalCountList($dataList)
    {
        $result = 0;
    
        foreach ($dataList as $value) {
            $result += $value;
        }
        return $result;
    }
    
    
    // menghitung jumlah kata dari dua kelas secara unique
    public function totalWordsSnQ($arrayListWordsOfClass)
    {
        $temp = [];
        foreach ($arrayListWordsOfClass as $listWord) {
            $temp = array_merge($temp, $listWord);
        }
    
        $result = array_unique($temp);
    
        return count($result);
    }
    
    // =================================================================================
    //  Menghitung probabilitas word dalam text/kalimat berdasarkan perhitungan data training
    public function probWordsText($sentences, $count_feature_class, $total_feature_class, $total_unique_all_feature)
    {
        $result = [];
        $list_word = explode(" ", $sentences);
        $list_word = $this->lowerListOfWord($list_word);
    
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
    public function totalProbText($list_word_prob_text_class)
    {
        $result = 1;
    
        foreach ($list_word_prob_text_class as $value) {
            $result = $result * $value;
        }
        
        return $result;
    }
    
}

?>