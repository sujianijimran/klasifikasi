<?php
namespace App\models;

use CodeIgniter\Model;

class Pelanggan extends Model
{
    protected $table = "pelanggan";
    protected $primaryKey = "id_pelanggan";
    protected $allowedFields = ["nama_pelanggan","alamat_pelanggan","no_hp"];
}
?>