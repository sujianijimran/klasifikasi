<?php

namespace App\Controllers;

use App\models\Komentar;
use App\models\Klasifikasi;
use App\Libraries\NaiveBayesByAreOne;

class Perhitungan extends BaseController
{
	private $komentarModel;

	public function __construct()
	{
		$this->komentarModel = new Komentar();
	}

	public function index()
	{
		$dataKomentar = $this->komentarModel->findAll();	

		$klasifikasi = new Klasifikasi($dataKomentar, '');
		$naive = $klasifikasi->model_naive;

		$matrix_feature = $naive->matrix_feature;
		$count_feature = $naive->count_feature;
		$probabilitas_feature = $naive->probabilitas_feature;
		$total_unique_all_feature = $naive->total_unique_all_feature;

		$data = [
			'title' => 'Perhitungan',
			'matrix_feature' => $naive->matrix_feature,
			'count_feature' => $naive->count_feature,
			'probabilitas_feature' => $naive->probabilitas_feature,
			'total_unique_all_feature' => $naive->total_unique_all_feature
		];

		return view('perhitungan',$data);
	}
	
}