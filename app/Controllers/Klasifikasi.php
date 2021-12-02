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

		// print_r($param1);die;
		$dataBaru = [];
		foreach ($dataKesimpulan as $value) {
			$dataBaru[$value['id_kesimpulan']] = $value['kesimpulan'];
		}
		
		// var_dump(in_array($kelas,$dataBaru));die;
		$data = [];

		if(in_array($kelas,$dataBaru)){

			$id_kesimpulan = array_search($kelas, $dataBaru);
			
			$data = [
				'title' => 'Klasifikasi',
				'komentar' => $this->komentarModel->paginate(1, 'klasifikasi'),
				'semuaKomentar' => $this->komentarModel->findAll(),
				'kesimpulan' => $dataBaru,
				'pager' => $this->komentarModel->pager
			];
		}

		return view('klasifikasi', $data);
	}

}