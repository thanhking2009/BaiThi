<base href="https://thanh1496.000webhostapp.com/" />
<?php 
ob_clean();
session_start();
include("include/connect.php");?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<html xmlns:fb="http://ogp.me/ns/fb#">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title> NgonNgon </title>
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<link rel="stylesheet" style="style/sheet" href="css/index.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" style="style/sheet" href="slide/engine/style.css">

<link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="slide/engine/wowslider.js"></script>
<script type="text/javascript" src="slide/engine/wowslider.mod.js"></script>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<link rel="stylesheet" href="bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="animate.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




<!-------------------------------------zoom anh-------------------------------->
<script type="text/javascript" src="js/zoom/cloud-zoom.1.0.2.js"></script>
<link href="css/cloud-zoom.css" rel="stylesheet" type="text/css" />





<!-------------------------------------slide-------------------------------->
<link rel="stylesheet" style="style/sheet" href="css/style1.css">
<script language="javascript" type="text/javascript" src="js/jquery.easing.js"></script>
<script language="javascript" type="text/javascript" src="js/script.js"></script>
<script type="text/javascript">
 $(document).ready( function(){	
		var buttons = { previous:$('#lofslidecontent45 .lof-previous') ,
						next:$('#lofslidecontent45 .lof-next') };
						
		$obj = $('#lofslidecontent45').lofJSidernews( { interval : 4000,
												direction		: 'opacitys',	
											 	easing			: 'easeInOutExpo',
												duration		: 2000,
												auto		 	: true,
												maxItemDisplay  : 4,
												navPosition     : 'horizontal', // horizontal
												navigatorHeight : 32,
												navigatorWidth  : 80,
												mainWidth:1000,
												buttons			: buttons} );	
	});
</script>
</head>
<body style="background:white"><div class=" ">
	
<div id="wapper">
	<div id="header">
		<div id="lg-header">
			<h1><a href="index.php">logo</a></h1>
		</div>
		<!-- End .bg-lg-header -->
		<div id="bg-header">	
		</div><!-- End .bg-header -->
			<div id="menu-header">
			<?php include("home_include/menu_ngang.php"); ?>
				<!-- End .menu -->
			</div><!-- End .menu-header -->
	</div><!-- End .header -->
	
	<div id="content">
            <div class="slide">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="img/slide/slide1.png" style="width: 100%; height: 400px;">
                        </div>
                        <div class="item">
                            <img src="img/slide/slide.png" style="width: 100%; height: 400px;">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
		
			<div id="main-content">
				<div class="col-lg-3 col-xs-3" id="left-content">
					<?php include("home_include/left_content.php");?>
				</div><!-- End .left-content -->
			
				<div class="col-lg-6 col-xs-6" id="center-content">
					
					<?php include("content_page.php"); ?>
					<!-------------------------------------------------------------------------------------------------------------------->
						
					
				</div><!-- End .center-content -->
				<div class="col-lg-3 col-xs-3" id="right-content">
					<?php include("home_include/right_content.php"); ?>
				</div><!-- End .right-content-->
			</div><!-- End .main-content -->

	</div><!-- End .content -->

	<div id="footer">
		<div id="menu-footer">
			<ul>
				<li><a href="index.php">TRANG CHỦ</a></li>
				<li><a href="index.php?content=gioithieu">GIỚI THIỆU</a></li>
				<li><a href="index.php?content=sanpham">SẢN PHẨM</a>	
			</ul>
		</div><!-- End .menu-footer -->

		
		<div id="bg-footer">
			<div id="noidungfooter">
				<div id="lg-footer"	>
					<h3><a href="index.php">logo</a></h3>
				</div><!-- End .lg-footer -->
				<div id="noidung">
					<ul>
						<li>132/16 Hùng Vương, Lộc Thọ, Nha Trang, Khánh Hòa</li>
						<li>thanh1496@gmail.com</li>
						<li>(058) 3562472</li>
						<li>(+84) 1268500616</li>
					</ul>
				</div><!-- End .noidung -->
				
				<div id="copyright">
					<p>Sinh Viên : Lê Quang Thành | Lớp : 56.CNTT-2 | Gmail : thanh1496@gmail.com<p>
				</div><!-- End .copyright -->
			</div><!-- End .noidungfooter -->
		</div><!-- End .bg-footer -->
	</div><!-- End .footer -->
	

</body>
</html>