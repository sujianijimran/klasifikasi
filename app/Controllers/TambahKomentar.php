<?php

namespace App\Controllers;

use App\Libraries\NaiveBayesByAreOne;
use App\models\Klasifikasi;
use App\models\Komentar;
use App\models\Pelanggan;
use App\models\Produk;

class TambahKomentar extends BaseController
{
	protected $produkModel;
	protected $komentarModel;
	protected $pelangganModel;

	public function __construct(){
		$this->produkModel = new Produk();
		$this->komentarModel = new Komentar();
		$this->pelangganModel = new Pelanggan();
	}
	
	public function index()
	{
		$data = [
			'title' => 'Tambah Komentar',
			'produk' => $this->produkModel->findAll(),
		];
		
		return view('tambah-komentar', $data);
		// return view('tambah-komentar-backup', $data);
	}

	public function tambah()
	{
		
		if($this->request->getMethod() === 'post'){
			$dataKomentar = $this->komentarModel->findAll();	
			
			$nama_pelanggan = $this->request->getVar('nama_pelanggan');
			$no_hp = $this->request->getVar('no_hp');
			$alamat_pelanggan = $this->request->getVar('alamat_pelanggan');
			$produk_id = $this->request->getVar('produk_id');
			$komentar = $this->request->getVar('komentar');
			
			$klasifikasi = new Klasifikasi($dataKomentar, $komentar);
			
			$kesimpulan_id = $klasifikasi->kesimpulan;
	
			$dataPelanggan = array_merge(compact('nama_pelanggan'),compact('no_hp'), compact('alamat_pelanggan'));
			$adaPelanggan = $this->pelangganModel->where('no_hp',  $no_hp)->first();

			$pelanggan_id = 0;
			if($adaPelanggan){
				$result = $this->pelangganModel->update($adaPelanggan['id_pelanggan'], $dataPelanggan);
				$pelanggan_id = $adaPelanggan['id_pelanggan'];
			}else{
				$result = $this->pelangganModel->insert($dataPelanggan);
				$pelanggan_id = $result;
			}

			if($result){
				
				$data = array_merge(compact('pelanggan_id'),compact('produk_id'), compact('komentar'), compact('kesimpulan_id'));
				$this->komentarModel->insert($data);
				
				if($this->komentarModel->db->affectedRows()){
					session()->setFlashData('pesan', 'Komentar berhasil ditambahkan.');
				}else{
					session()->setFlashData('error', 'Komentar gagal ditambahkan');
				}
				
			}
	
		}
		
		return redirect()->to('/tambahKomentar');;

	}
}