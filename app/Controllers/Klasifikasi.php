<?php

namespace App\Controllers;

use App\models\Kesimpulan;
use App\models\Komentar;

class Klasifikasi extends BaseController
{
	protected $komentarModel;
	protected $kesimpulanModel;

	public function __construct(){
		$this->komentarModel = new Komentar();
		$this->kesimpulanModel = new Kesimpulan();
	}
	
	public function index()
	{
		$dataKesimpulan = $this->kesimpulanModel->findAll();

		$kesimpulan = [];
		foreach ($dataKesimpulan as $value) {
			$kesimpulan[$value['id_kesimpulan']] = $value['kesimpulan'];
		}
		
		$komentarBaru = new Komentar();
		$data_pagination = $komentarBaru->orderBy('tgl_komentar DESC');
		
		$data = [
			'title' => 'Klasifikasi',
			// 'semuaKomentar' => $this->komentarModel->join('pelanggan','pelanggan.id_pelanggan=mengomentari.pelanggan_id')->findAll(),
			'semuaKomentar' => $this->komentarModel->orderBy('tgl_komentar DESC')->findAll(),
			'komentar' => $data_pagination->paginate(10, 'klasifikasi'),
			'pager' => $data_pagination->pager,
			'kesimpulan' => $kesimpulan
		];

		return view('klasifikasi', $data);
	}

	public function klasifikasiLama($kelas = '')
	{
		$dataKesimpulan = $this->kesimpulanModel->findAll();

		$dataBaru = [];
		foreach ($dataKesimpulan as $value) {
			$dataBaru[$value['id_kesimpulan']] = $value['kesimpulan'];
		}
		
		// var_dump(in_array($kelas,$dataBaru));die;
		$data = [
			'title' => 'Klasifikasi',
			'kesimpulan' => $dataBaru,
		];

		if(in_array($kelas,$dataBaru)){

			$kesimpulan_id = array_search($kelas, $dataBaru);
			$komentarBaru = new Komentar();
			$data_pagination = $komentarBaru->join('pelanggan','pelanggan.id_pelanggan=mengomentari.pelanggan_id')->where('kesimpulan_id', $kesimpulan_id);
			
			$data = array_merge($data, [
				'semuaKomentar' => $this->komentarModel->join('pelanggan','pelanggan.id_pelanggan=mengomentari.pelanggan_id')->findAll(),
				'komentar' => $data_pagination->paginate(1, 'klasifikasi'),
				'pager' => $data_pagination->pager,
				'kesimpulan_id' => $kesimpulan_id
			]);
		}

		return view('klasifikasi-lama', $data);
	}

	public function detail($id_komentar)
	{
		$dataKesimpulan = $this->kesimpulanModel->findAll();

		$kesimpulan = [];
		foreach ($dataKesimpulan as $value) {
			$kesimpulan[$value['id_kesimpulan']] = $value['kesimpulan'];
		}
				
		$komentar = $this->komentarModel->join('pelanggan','pelanggan.id_pelanggan=mengomentari.pelanggan_id')->find($id_komentar);

		$data = [
			'semuaKomentar' => $this->komentarModel->whereNotIn('id_komentar', [$id_komentar])->findAll(),
			'title' => 'Detail',
			'kesimpulan' => $kesimpulan,
			'komentar' => $komentar
		];
		
		return view('detail', $data);
	}

}