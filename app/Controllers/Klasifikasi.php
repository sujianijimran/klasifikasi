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
	
	public function index($kelas = '')
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
			$data_pagination = $komentarBaru->where('kesimpulan_id', $kesimpulan_id);
			
			$data = array_merge($data, [
				'semuaKomentar' => $this->komentarModel->findAll(),
				'komentar' => $data_pagination->paginate(1, 'klasifikasi'),
				'pager' => $data_pagination->pager,
				'kesimpulan_id' => $kesimpulan_id
			]);
		}

		return view('klasifikasi', $data);
	}

}