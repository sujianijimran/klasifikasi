<?php
namespace App\models;

use CodeIgniter\Model;

class Admin extends Model
{
    protected $table = 'admin';
    protected $primaryKey = "admin_id";
    protected $allowedFields = ["username","password","nama_admin","alamat_admin","no_hp"];

    public function cekAdmin($username, $password)
    {
        $cek = ['username' => $username];
        $admin = $this->where($cek)->find();

        if($admin){
            if(password_verify($password, $admin[0]['password'])){
                return $admin;
            }
        }

        return false;

    }
}
?>