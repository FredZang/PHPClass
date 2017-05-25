<div style="color: black !important;">
<style type="text/css">
	td{
		padding: 20px;
	}
</style>

<table border="1" cellpadding="10" cellspacing="10">
	<tr>
		<td>STT</td>
		<td>Tên Sản Phẩm</td>
		<td>Hình Sản Phẩm</td>
		<td>Số lượng</td>
		<td>Đơn giá</td>
		<td>Thành tiền</td>
	</tr>
	<?php 
	$stt=1;
	$tongtien=0;
	foreach ($_SESSION['giohang'] as $key => $value) {
		
		$sanpham_model = new SanPham();
		$sanpham = $sanpham_model->find($key);

		$thanhtien = $value * $sanpham['giatien'];
		$tongtien+=$thanhtien;
		?>
		<tr>
		
		<td><?php echo $stt ?></td>
		<td><?=$sanpham['tensp']?></td>
		<td><img src="<?=$sanpham['hinh']?>" width="100"></td>
		<td><?=$value?></td>
		<td><?=number_format($sanpham['giatien'])?></td>
		<td>
			<?php 
			
			echo number_format($thanhtien);
			 ?>
		</td>


	</tr>
		<?php
		$stt++;
	} ?>
	<tr><td style="text-align: right;" colspan="6">Tổng tiền : <?php echo $tongtien; ?></td></tr>
</table>

<form action="index.php?c_name=Giohang_Controller&action=checkout" method="post">
	<table>
		<tr>
			<td>Tên khách hàng :</td>
			<td>
				<input type="text" name="name">
			</td>
		</tr>
		<tr>
			<td>
				Phone :
			</td>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<td>
				Địa chỉ :
			</td>
			<td>
				<input type="text" name="address">
			</td>
		</tr>
		<tr>
			<td>
				Ghi chú : 
			</td>
			<td>
				<textarea name="note">
					
				</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" name="btn_Checkout" value="Thanh toán">
			</td>
		</tr>
	</table>
	<input type="hidden" name="tongtien" value="<?=$tongtien?>">
</form>
</div>













