<?php 
	
	class Home_Controller extends Controller
	{
		function index()
		{
			//trang home sẽ hiện những sản phẩm mới nhất
			$sanpham = new SanPham();	
			$listsp_new = $sanpham->ListNew();
			$listsp_banchay = $sanpham->ListBanChay();

			$data = array();
			$data['listsp_new'] = $listsp_new;
			$data['listsp_banchay'] = $listsp_banchay;

			$this->loadView("home",$data);
		}
		function index1()
		{
			
		}
		function index2()
		{
			
		}
	}

 ?>