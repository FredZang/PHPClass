<h2 class="title_product">Sản phẩm mới</h2>	

<?php foreach ($data['listsp_new'] as $sanpham) {
	?>
	<div class="col-md-4 col-sm-6  col-xs-12 ">
						<div class="thumbnail">
				        
				          <img src="<?=$sanpham['hinh']?>" alt="<?=$sanpham['tensp']?>" style="width:100%">
				          <div class="caption">
				          <div class="row">
				          	<div class="col-md-8">
				          		<p style="white-space: nowrap;"><?=$sanpham['tensp']?> </p>
				            
				            <span id="price_old"><?=$sanpham['giatien']?>d</span>
				            <span id="price"><?=$sanpham['giatien']?>d</span>
				          	</div>
				          	<div class="col-md-4">
				          		<span class="glyphicon glyphicon-shopping-cart" id="cartProduct"></span>
				          	</div>
				          </div>
				            

				          </div>
				       		
     					</div></div>					
	<?php
} ?>

<hr>
<h2 class="title_product">Sản phẩm bán chạy</h2>	

<?php foreach ($data['listsp_banchay'] as $sanpham) {
	?>
	<div class="col-md-4 col-sm-6  col-xs-12 ">
						<div class="thumbnail">
				        
				          <img src="<?=$sanpham['hinh']?>" alt="<?=$sanpham['tensp']?>" style="width:100%">
				          <div class="caption">
				          <div class="row">
				          	<div class="col-md-8">
				          		<p style="white-space: nowrap;"><?=$sanpham['tensp']?> </p>
				            
				            <span id="price_old"><?=$sanpham['giatien']?>d</span>
				            <span id="price"><?=$sanpham['giatien']?>d</span>
				          	</div>
				          	<div class="col-md-4">
				          		<span class="glyphicon glyphicon-shopping-cart" id="cartProduct"></span>
				          	</div>
				          </div>
				            

				          </div>
				       		
     					</div></div>					
	<?php
} ?>

					