<?php
session_start();
include_once("libs/DataProvider.php");
include_once("libs/Scart.php");

if(isset($_SESSION["SCart"]) == false){
	$gioHang = new SCart();
	$_SESSION["SCart"] = serialize($gioHang);
}
//include_once ("modules/mDangNhap/mLogin.php");

?>
<!DOCTYPE HTML>
<html>
<head>
<title>Pinker Bakery</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script type="text/javascript" src="js/hover_pack.js"></script>
</head>
<body>
<?php 
	include_once("modules/mHeader.php");
	// include_once("modules/mSlider.php");
?>

<div class="column_center">
<!-- <div id="menu">
        <?php
            // if(isset($_SESSION["HoTen"])){ 
            //     include("modules/mThongTinDangNhap.php"); 
            // }
        ?>
	</div> -->
	
</div>
<div class="main" style="background-color:pink">
  	<div class="content_top"  >
  		<div class="container">
	   <?php 
		   include("modules/mLeftSide.php"); 
			 include("modules/mMainContent.php");	   
		 ?>	   	   
		</div>  	    
	</div>
</div>


<br><br>
<?php include_once("modules/mFooter.php"); ?>
</body>
</html>