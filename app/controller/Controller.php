<?php 

class Controller{

	function loadView($page,$data=[]){

		$loai = new LoaiSanPham();
		$listloai = $loai->getList();

		$banner = new banner();
		$list_banner = $banner->getList();

		include "app/view/master.php";
	}

}

 ?>
