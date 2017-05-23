<h1><?=$data["loaisp"][0]['ten_theloai']?></h1>

<?php foreach ($data['listsp_loai'] as $sanpham) {
	?>
	<div class="col-md-4 col-sm-6  col-xs-12 ">
						<div class="thumbnail">
				        
				          <img src="<?=$sanpham['hinh']?>" alt="<?=$sanpham['tensp']?>" style="width:100%">
				          <div class="caption">
				          <div class="row">
				          	<div class="col-md-8">
				          		<p style="white-space: nowrap;">
<a href="<?=$data['loai_TieuDeKD']?>/<?=$sanpham['TieuDeKD']?>.html">
				          			<?=$sanpham['tensp']?>
				          		</a> </p>
				            
				            <span id="price_old"><?=$sanpham['giatien']?>d</span>
				            <span id="price"><?=$sanpham['giatien']?>d</span>
				          	</div>
				          	<div class="col-md-4">
				          		
				          		<a href="giohang.php?action=add&idSP=<?=$sanpham['id_sanpham']?>">
				          			<span class="glyphicon glyphicon-shopping-cart" id="cartProduct"></span>
				          		</a>
				          	</div>
				          </div>
				            

				          </div>
				       		
     					</div></div>					
	<?php
} ?>
