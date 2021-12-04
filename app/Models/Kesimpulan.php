<?php
namespace App\models;

use CodeIgniter\Model;

class Kesimpulan extends Model
{
    protected $table = 'kesimpulan';
    protected $primaryKey = "id_kesimpulan";
    protected $allowedFields = ["kesimpulan"];
}
?>