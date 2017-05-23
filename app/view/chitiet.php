
Link : giohang.php?action=add&idSP=<?=$row['id_sanpham']?>


<div style="color: black !important;">
	
	<?php 
		$row = $data['chitietsanpham'];
 	?>
 <h1><?=$row['tensp']?></h1>
 <p></p>
 <p>
 	<img src="<?=$row['hinh']?>" style="max-width:50%;float:left;margin-right:10px">
 	Giá : <?=$row['giatien']?><br>
 	Số lượng tồn : <?=$row['soluong']?>
 	<br>
 	<a href="giohang.php?action=add&idSP=<?=$row['id_sanpham']?>"><input type="button" name="" value="Mua Hàng"></a>
 	<input type="text" name="soluong" value="0">
 	<hr>
 	<?=$row['noidung']?>
 </p>



</div>