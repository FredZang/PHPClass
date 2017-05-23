<?php 
class SanPham extends DB{
	public $tablename = "sanpham";
	public $primaryKey = "id_sanpham";
	
	function ListNew(){
		$sql = "select * from sanpham order by id_sanpham desc limit 0,15";
		return $this->result($sql);
	}
	function ListBanChay(){
		$sql = "select * from sanpham order by giatien limit 0,15";
		return $this->result($sql);
	}
	
}
 ?>