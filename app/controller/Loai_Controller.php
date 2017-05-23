<?php 
	class Loai_Controller extends Controller
	{
		function index()
		{
			$data = array();
			$TieuDeKD = $_GET['TieuDeKD'];

			$loai = new LoaiSanPham();

			$id = $loai->findIDByTieuDeKD($TieuDeKD);
			
			$loaisp = $loai->find($id);

			$listsp_loai = $loai->ListSP($id);

			$data['loaisp'] = $loaisp;
			$data['listsp_loai'] = $listsp_loai;
			$data['loai_TieuDeKD'] = $loaisp['TieuDeKD'];

			$this->loadView("loai",$data);

		}
	}

 ?>