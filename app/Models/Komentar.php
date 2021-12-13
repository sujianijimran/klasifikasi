<?php
namespace App\models;

use CodeIgniter\Model;

class Komentar extends Model
{
    protected $table = "mengomentari";
    protected $primaryKey = "id_komentar";
    protected $allowedFields = ["pelanggan_id", "produk_id", "komentar", "kesimpulan_id"];
}
?>