<!DOCTYPE html>
<html lang="en">
<head>
	<base href="http://localhost/PHPClass/">
	<meta charset="UTF-8">
	<title>PHP</title>
	<link rel="stylesheet" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700&amp;subset=latin-ext" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <script src="css/jquery-3.1.0.min.js"></script>
  <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
 <!--  //githut -->
	<!-- <link href="ihover-gh-pages/src/ihover.css" rel="stylesheet"> -->
</head>
<body>
<header>
	<div id="top_header">
		<div class="container">
			<div class="row">
				 <div class="col-md-4 col-sm-5 col-xs-12">
				 	<span class="gray">Languages :</span>
				 		<select name="sl_Lang" id="js_Lang">
				 			<option value="">Viennames</option>
				 			<option value="">English</option>				 		</select>	
				 	<span class="gray">Currency :</span>
				 		<select name="sl_Lang" id="js_Lang">
				 			<option value="">VND</option>
				 			<option value="">USD</option>
				 			
				 		</select>			 	
				 </div>
  				 <div class="col-md-8 col-sm-7 col-xs-12">
  				  <ul class="nav navbar-nav navbar-right">
     					<li><a href="">Account</a></li>
  				 		<li><a href="">Wishlist</a></li>
  				 		<li><a href="">Checkout</a></li>
  				 		<li><a href="">Log in</a></li>
  				 		<li><a href="" style="border: none;">Sign Up</a></li>
  				  </ul>
  				 
  				 </div>
			</div>
		</div>
	</div>
	<div id="bot_header">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-3 col-xs-12"><h1 style="color: #656565;">PHP SHOP</h1></div>
				<div class="col-md-10 col-sm-9 col-xs-12">
					<div class="col-md-6 col-sm-5 col-xs-12">
						<nav class="navbar">
				   		 <ul class="nav navbar-nav">
						      <li class="active"><a href="./">Trang chủ</a></li>
						      
						      <?php foreach ($listloai as $loai) {
						      	?>
								<li>
								<a href="<?=$loai["TieuDeKD"]?>/">
								<?=$loai["ten_theloai"]?></a></li>
						      	<?php
						      } ?>
						      
						      
				   		 </ul>					
						</nav>
					</div>			
					<div class="col-md-3 col-sm-4 col-xs-3">
						<form>
					  <div class="input-group">
					    
					    <input id="email" type="text" class="form-control" name="search" placeholder="search" style="border-right: none;">
					    <span class="input-group-addon" style="background-color: #fff;border-left: none; "><i class="glyphicon glyphicon-search " style="color: #656565;"></i></span>
					  </div>
					  </form>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-5" id="cart">
						<span class="glyphicon glyphicon-erase tron"></span>
						<span class="glyphicon glyphicon-shopping-cart tron"></span>
						<span style="color: gray">Cart(<?php echo count($_SESSION['giohang']) ?>)</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<div id="banner">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    
  <?php
  //var_dump($list_banner);
  $dem=0;
   foreach ($list_banner as $banner) {
   	if($dem==0) $str = "active";
   	else $str = "";
   	$dem++;
  ?>
   <div class="item <?=$str?>">
      <img src="<?=$banner["url_hinh"]?>" alt="Flower" style="width: 1000px !important;height: 200px;">
    </div>
  <?php
  } ?>
   

  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
	</div>
</div>
<div id="content">
		<div class="container">
			<div class="row">

				<div class="col-md-10 col-sm-9 col-xs-12" style="color: #333;">
					<?php include "app/view/$page.php"; ?>
				</div>
				<div class="col-md-2 col-sm-3 col-xs-4">
					<div class="row">
						<div id="myAds" class="carousel slide" data-ride="carousel">
					  <!-- Indicators -->

					  <ol class="carousel-indicators">
					    <li data-target="#myAds" data-slide-to="0" class="active"></li>
					    <li data-target="#myAds" data-slide-to="1"></li>
					    <li data-target="#myAds" data-slide-to="2"></li>
					    <li data-target="#myAds" data-slide-to="3"></li>
					  </ol>


					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" role="listbox">
					    <div class="item active">
					      <img src=" images/ads.jpg" alt="Chania">
					    </div>

					    <div class="item">
					      <img src=" images/ads.jpg" alt="Chania">
					    </div>

					    <div class="item">
					      <img src="images/ads.jpg" alt="Flower">
					    </div>

					    <div class="item">
					      <img src="images/ads.jpg" alt="Flower">
					    </div>
					  </div>

					  <!-- Left and right controls -->
					
					<input type="button" value="Check it out" id="btn_checkit">  
					</div>

					</div>
				</div>

			</div>		
		</div>
	</div>
<footer>
	<div id="top_footer">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12"><span class="glyphicon glyphicon-earphone icon_footer"></span><p class="caption_footer">Call us! toll free 016694284</p></div>
				<div class="col-md-6 col-sm-6 col-xs-12"><span class="glyphicon glyphicon-earphone icon_footer"></span><p class="caption_footer">Call us! toll free 016694284</p></div>
			</div>
		</div>
	</div>
	<div id="center_footer">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<h3 id="caption_center">facebook</h3>
					<p>20000 member</p>
					 <button type="button" class="btn btn-default btn-sm like">
         			 <span class="glyphicon glyphicon-thumbs-up"></span> Like
       				 </button>
       				 <div id="memberFb">
       				 	<div class="row">
       				 		<div class="col-md-3 col-sm-3"><img src="images/member.jpg" alt=""></div>
       				 		<div class="col-md-3 col-sm-3"><img src="images/member.jpg" alt=""></div>
       				 		<div class="col-md-3 col-sm-3"><img src="images/member.jpg" alt=""></div>
       				 		<div class="col-md-3 col-sm-3"><img src="images/member.jpg" alt=""></div>
       				 		<div class="col-md-3 col-sm-3"><img src="images/member.jpg" alt=""></div>
       				 		<div class="col-md-3 col-sm-3"><img src="images/member.jpg" alt=""></div>
       				 		<div class="col-md-3 col-sm-3"><img src="images/member.jpg" alt=""></div>
       				 		<div class="col-md-3 col-sm-3"><img src="images/member.jpg" alt=""></div>
       				 	</div>
       				 </div>
       				 <h4>facebook social plugin</h4>
				</div>
				<div class="col-md-3">
					<h3 id="caption_center">infomation</h3>
					 <ul class="list-group">
				    	<li>lorem</li>
				    	<li>lorem</li>
				    	<li>lorem</li>
				    	<li>lorem</li>
				    	<li>lorem</li>
				    	<li>lorem</li>
				  	</ul>
				</div>
				<div class="col-md-3">
					<h3 id="caption_center">infomation</h3>
					 <ul class="list-group">
				    	<li>lorem</li>
				    	<li>lorem</li>
				    	<li>lorem</li>
				    	<li>lorem</li>
				    	<li>lorem</li>
				    	<li>lorem</li>
				  	</ul>
				</div>
				<div class="col-md-3">
					<h3 id="caption_center">contac us</h3>
					<p>lorem hermerdinge</p>
					<p>lorem hermerdinge</p>
					<p>lorem hermerdinge</p>
					<p>lorem hermerdinge</p>
					<p>lorem hermerdinge</p>	
					<hr>
					<div class="row">
						<div class="col-md-3"><span class="glyphicon glyphicon-heart icon_center"></span></div>
						<div class="col-md-3"><span class="glyphicon glyphicon-heart icon_center"></span></div>
						<div class="col-md-3"><span class="glyphicon glyphicon-heart icon_center"></span></div>
						<div class="col-md-3"><span class="glyphicon glyphicon-heart icon_center"></span></div>
					</div>	
				</div>
			</div>
		</div>
	</div>
	<div id="bot_footer">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					&copy Copy right 2016 Css Author. All right Reponsive
				</div>
				<div class="col-md-6 col-sm-6">
					<ul class="nav navbar-nav navbar-right">
						<li>About  | </li>
						<li>Shop | </li>
						<li>Contac |</li>
						<li>Shop  </li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</footer>
</body>
</html>




