<?php

namespace App\Filters;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Filters\FilterInterface;

class AuthFilter implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null)
    {
        // Menentukan variabel url bernilai uri halaman login
        $url = base_url('login/index');
        $path_login = ['login/index', 'login', 'home/index','home','/','tambahKomentar','tambahKomentar/tambah'];
        // Halaman yang tidak boleh diakses ketika sudah login
        $not_access = ['login/index','login'];
        // $path_buat_jadwal = ['mengelolaJadwal/tambah', 'mengelolaJadwal/simpan', 'mengelolaJadwal/buatJadwal', 'mengelolaJadwal/hapus'];

        // // ===============================================================
        // if ($request->uri->getTotalSegments() <= 1) {

        //     // session()->remove(['data', 'data_baru']);
        //     session()->remove('data_jadwal');
        // } else {

        //     $cek_buat_jadwal = $request->uri->getSegments()[0] . "/" . $request->uri->getSegments()[1];

        //     if (!in_array($cek_buat_jadwal, $path_buat_jadwal)) {

        //         // session()->remove(['data', 'data_baru']);
        //         session()->remove('data_jadwal');
        //     }
        // }

        // ===========================================================================
        // Mengecek apakah user SUDAH LOGIN? saat mengakses halaman yang bukan halaman login
        if (session()->has('login')) {

            // Mengecek apakah path uri tidak mengarah kehalaman login
            if (in_array($request->uri->getPath(), $not_access)) {

                return redirect()->to('/home/index');
            }
        }
        // Mengecek apakah request uri bukan uri login?
        else if (!in_array($request->uri->getPath(), $path_login)) {

            // Mengarahkan ke halaman login
            return redirect()->to($url);
        }
    }

    //--------------------------------------------------------------------

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        // Do something here
    }
}