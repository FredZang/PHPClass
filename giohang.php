<?php 
	session_start();
	//Cấu trúc $giohang = array('9'=>4,'11'=>2);
	
	if(!isset($_SESSION['giohang'])){
		$_SESSION['giohang'] = array();
	}

	$action = $_GET['action']; //add, edit, delete
	
	$idSP = $_GET['idSP'];

	$soluong = 1;

	if(isset($_GET['soluong']))
		$soluong = $_GET['soluong'];


	if($action=='add'){

		$_SESSION['giohang'][$idSP] += $soluong;
	}

	if($action=='edit'){


		$_SESSION['giohang'][$idSP] = $soluong;

	}

	if($action=='delete'){

		unset($_SESSION['giohang'][$idSP]);

	}

	header('location:gio-hang/');

 ?>