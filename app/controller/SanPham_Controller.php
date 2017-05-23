<?php 
	class SanPham_Controller extends Controller
	{
		function index()
		{
			$TieuDeKD = $_GET['TieuDeKD'];
			$sanpham = new SanPham();

			$id = $sanpham->findIDByTieuDeKD($TieuDeKD);
			
			$chitietsanpham = $sanpham->find($id);

			$data['chitietsanpham'] = $chitietsanpham;

			$this->loadView("chitiet",$data);
		}
	}

 ?>