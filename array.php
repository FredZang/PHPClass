<?php 

	$array = array('key1'=>'táo','key2'=>'lê','key3'=>'chuối');


	//Thêm dữ liệu vào mảng
	$array['key']='value';

	//Sửa dữ liệu trong mảng
	$array['key1']='value_edited';	

	//Xóa dữ liệu trong mảng
	unset($array['key1']);

	foreach ($array as $key => $value) {
		echo $key.$value."<br>";
	}


	$giohang = array('10'=>1,'11'=>2);

 ?>