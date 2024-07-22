<?php 
    function path(){
        echo "https://typecase.in";
    }
    session_start();
    include 'config.php';
    $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
    $query="SELECT * FROM meta_tag WHERE page_name='$actual_link'  ";
    $meta_all=mysqli_query($con,$query);
    $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
	if($actual_link=="https://typecase.in/category/apple-magic-keyboard"){
	     header("Location: https://typecase.in/category/ipad-keyboard-cases/ipad-air-3rd-gen--pro105-");
	}
	if($actual_link=="https://typecase.in/category/ipad-10-th-generation-keyboard"){
	     header("Location: https://typecase.in/category/ipad-keyboard-cases/ipad-10th-gen");
	}
	if($actual_link=="https://typecase.in/category/ipad-pro-keyboard"){
	     header("Location: https://typecase.in/category/ipad-keyboard-cases/ipad-pro-129");
	}
	if($actual_link=="https://typecase.in/category/ipad-9th-generation-keyboard"){
	     header("Location: https://typecase.in/category/ipad-keyboard-cases/ipad-102-inch-9th8th7th-gen");
	}
	if($actual_link=="https://typecase.in/category/ipad-9th-generation-keyboard/Touch-Flexbook"){
	     header("Location: https://typecase.in/category/apple-magic-keyboard/Folio");
	}
	
?>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="<?php path();?>/assets/images/favicon.png" type="image/x-icon" />
<?php
if(mysqli_num_rows($meta_all)>0){
    $sm=mysqli_fetch_array($meta_all);
?>
<title><?php echo $sm['meta_title']; ?></title>
<meta name="description" content="<?php echo $sm['meta_description']; ?>">
<meta name="keywords" content="<?php echo $sm['meta_keyword']; ?>">
<?php } ?>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<?php path();?>/assets/css/swiper-bundle.min.css">
<!--Plugin CSS file with desired skin-->
<link rel="stylesheet" href="<?php path();?>/assets/css/ion.rangeSlider.min.css"/>
<link rel="stylesheet" href="<?php path();?>/assets/css/font-awesome.min.css"/>
  
<!-- Icon css link -->
<link href="<?php path();?>/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php path();?>/assets/css/simpleLightbox.css" rel="stylesheet">
<link href="<?php path();?>/assets/css/style.css" rel="stylesheet">
<script async src="https://cdn.razorpay.com/widgets/trusted-badge.js" ></script>
<?php 
$q1=mysqli_query($con,"SELECT * FROM tbl_settings");
if(mysqli_num_rows($q1)>0){
    $rq1=mysqli_fetch_array($q1);
    echo $rq1['before_head'];
}
?>