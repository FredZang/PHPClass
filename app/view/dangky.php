<style type="text/css">
	td	{
		padding: 10px;
	}
</style>
<form data-toggle="validator" method="post" action="">
	
	<table border="1">
	<tr>
		<td colspan="2" style="text-align:center">Đăng ký thành viên</td>
	</tr>
	<tr>
		<td> Họ tên </td>
		<td> 
		<input type="text" class="form-control" name="hoten" placeholder="Mời nhập họ tên" required>
		</td>
	</tr>
	<tr>
		<td> Email </td>
		<td> 
		<input type="email" class="form-control" name="email">
		</td>
	</tr>
	<tr>
		<td> Mật khẩu </td>
		<td> 
		<input type="password" class="form-control" name="pass" placeholder="Mời nhập mật khẩu" data-minlength="6" required 
		id="inputPassword">
		</td>
	</tr>
	<tr>
		<td> Nhập lại Mật khẩu </td>
		<td> 
		<input type="password" class="form-control" name="pass1" placeholder="Mời nhập lại mật khẩu" required data-match="#inputPassword"
		>
		</td>
	</tr>
	<tr>
		<td> Phone </td>
		<td> 
		<input type="text" name="phone" class="form-control">
		</td>
	</tr>
	<tr>
		<td> Địa chỉ </td>
		<td> 
		<input type="text" name="address" class="form-control">
		</td>
	</tr>
	<tr>
		<td> Captcha </td>
		<td> 
		<input type="text" name="captcha" class="form-control">
		<img src="captcha.php" width="200">
		</td>
	</tr>
	<tr>
		<td colspan="2"> 
		<input type="submit" name="btn_DangKy" value="Đăng ký" class="form-control">
		</td>
	</tr>
</table>	
</form>
