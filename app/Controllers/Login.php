<?php

namespace App\Controllers;

use App\models\Admin;

class Login extends BaseController
{
	protected $adminModel;
	
	public function __construct(){
		$this->adminModel = new Admin();
	}
	public function index()
	{
		$data = [
			'title' => 'Login',
			'validation' => \Config\Services::validation()
		];

		$username = $this->request->getVar('username');
		$password = $this->request->getVar('password');
		if ($this->request->getMethod() === 'post') {
			
			if (!$this->validate([
				'username' => [
					'rule' => 'required',
					'errors' => [
						'required' => 'Username wajib diisi.'
					]
				],
				'password' => [
					'rule' => 'required',
					'errors' => [
						'required' => 'Password wajib diisi.'
					]
				],
			])) {
				return redirect()->to('/Login/index')->withInput();
			}

			// Mengecek apakah user yang login adalah Admin
			if ($this->adminModel->cekAdmin($username, $password)) {
				// dd("Admin");
				$user_login = $this->adminModel->cekAdmin($username, $password)[0];

				$user_session = [
					'id' => $user_login['admin_id'],
					'username' => $user_login['username'],
					'nama_admin' => $user_login['nama_admin'],
					'login' => true,
					'status' => 'admin'
				];
				session()->set($user_session);

				return redirect()->to('/Home/index');
			}else{
				session()->setFlashData('pesan', 'Username atau Password salah.');
			}
		}

		return view('login', $data);
	}

	
}