<?php 
	
	class Giohang_Controller extends Controller
	{
		function index()
		{
			$this->loadView("giohang",$data);
		}
		function checkout(){

			$hoadon = new HoaDon();
			$sanpham = new SanPham();

			$noidung = '';

			$name = $_POST['name'];
			$phone = $_POST['phone'];
			$address = $_POST['address'];
			$email = $_POST['email'];
			$tongtien = $_POST['tongtien'];

			$noidung.= 'Tên TenKH '.$name.'<br>';
			$noidung.= 'Phone '.$phone.'<br>';
			$noidung.= 'Địa chỉ '.$address.'<br>';
			$noidung.= 'Tổng tiền '.$tongtien.'<br>';
			$noidung.= '<hr>';


			$sql = " INSERT INTO `hoadon` 
					(`idHD`, `TenKH`, `DiaChi`, `Phone`, `TongTien`, `NgayTao`) 
					VALUES (NULL, '$name', '$address', '$phone', '$tongtien', 'NOW()'); ";
			
			$hoadon->query($sql);

			$idHD = $hoadon->last_insert_id();

			foreach ($_SESSION['giohang'] as $idSP => $Soluong) {
				
				$sp = $sanpham->find($idSP);

				$GiaLucMua = $sp['giatien'];

				$sql = "INSERT INTO `chitiethoadon`
					(`id`, `idHD`, `idSP`, `Soluong`, `GiaLucMua`) 
					VALUES 
					(NULL,'$idHD','$idSP',$Soluong,$GiaLucMua)";

				$hoadon->query($sql);

				$noidung.= 'Sản phẩm -> '.$sp['tensp'].' * Số lượng '.$Soluong.'<br>';
			}
			unset($_SESSION['giohang']);
			

			Mailer('kimhung120589@gmail.com','Boss','Ship hàng boss ơi','Có đơn hàng mới',$noidung);

			Mailer($email,'Kiem tra don hang','Kiem tra don hang','Có đơn hàng mới',$noidung);

			$this->loadView("thanhtoanthanhcong",$data);
		}
	}

 ?>