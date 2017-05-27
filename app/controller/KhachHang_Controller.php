<?php 
	class KhachHang_Controller extends Controller
	{
		function dangky()
		{
			$KhachHang = new KhachHang();

			if(isset($_POST['btn_DangKy'])){
				$captcha = $_POST['captcha'];

				if($_SESSION["security_code"]==$captcha)
				{
					$hoten = $_POST['hoten'];
					$phone = $_POST['phone'];
					$address = $_POST['address'];
					$email = $_POST['email'];
					$pass = md5($_POST['pass']);

					$mabaomat = md5(rand(0, 99999)."hsajkdhasjkd");


					$sql = "
							INSERT INTO 
							`KhachHang`
							(`idKH`, `TenKH`, `Email`, `Pass`, `DiaChi`, `SoDienThoai`, `active`, `mabaomat`) 
							VALUES (NULL,'$hoten','$email','$pass','$address','$phone',0,'$mabaomat')";

					$KhachHang->query($sql);

					$noidung = "Mã xác nhận của bạn là : $mabaomat.
					Vui lòng click vào link sau:
					<a href='http://localhost/PHPClass/index.php?c_name=KhachHang_Controller&action=kichhoat&mabaomat=$mabaomat&email=$email'>
					Link Kích hoạt</a>
					";
					Mailer($email,$hoten,"Dang Ky Thanh Vien","Dang Ky",$noidung);
					//header("location:index.php");
				}else
				{
					die("Sai mã captcha");
				}

				
			}

			$this->loadView("dangky",$data);
		}

		function kichhoat(){

			$mabaomat = $_GET['mabaomat'];
			$email = $_GET['email'];

			$thongbao = '';
			//Nhận 2 thông số phia tren và so khop ma bao mat, neu dung thi kich hoat email, neu sai thong bao 

			
			$KhachHang = new KhachHang();

			$sql1= "Select * from KhachHang where email='$email' and 
					mabaomat = '$mabaomat'
			";
			
			$kq = $KhachHang->result($sql1);
			$count = count($kq);

			if($count==1)
			{
				$thongbao = "Bạn đã kích hoạt thành công";
				$sql = "Update KhachHang set active = 1 where email='$email'";
				$KhachHang->query($sql);
			}
			else{
				$thongbao = "Sai mã bảo mật";
			}

			$data['thongbao'] = $thongbao;

			$this->loadView("kichhoat",$data);
		}
	}

 ?>






