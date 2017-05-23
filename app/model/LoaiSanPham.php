<?php
class LoaiSanPham extends DB{

	public $tablename = "theloai_sanpham";
	public $primaryKey = "id_theloai";

	function ListSP($id){
		$sql = 'select * from sanpham where theloaisp_id = '.$id;
		return $this->result($sql);
	}
}

 ?>