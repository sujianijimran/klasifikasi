<?php

namespace App\Controllers;

use App\models\Admin;

class logout extends BaseController
{
	public function index()
	{
		$session_login = ['id', 'username', 'nama_admin', 'alamat_admin', 'login','status'];

		session()->remove($session_login);
		unset($session_login);

		return redirect()->to('login/');
	}

	
}