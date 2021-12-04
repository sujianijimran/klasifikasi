<?php

namespace App\Controllers;

class Produk extends BaseController
{
	public function index()
	{
		$data = [
			'title' => 'Produk'
		];
		
		return view('produk', $data);
	}
}