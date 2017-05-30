<?php 

class Controller{

	function loadView($page,$data=[]){

		$loai = new LoaiSanPham();
		$listloai = $loai->getList();

		$banner = new banner();
		$list_banner = $banner->getList();

		if($data){
			foreach ($data as $key => $value) {
					$$key = $value;
				}	
		}
		

		include "app/view/master.php";
	}

}

 ?>
