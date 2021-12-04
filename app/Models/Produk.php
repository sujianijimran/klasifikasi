<?php
namespace App\models;

use CodeIgniter\Model;

class Produk extends Model
{
    protected $table = 'produk';
    protected $primaryKey = "produk_id";
    protected $allowedFields = ["total","produk"];
}
?>