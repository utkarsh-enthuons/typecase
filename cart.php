<?php 
session_start();
// print_r($_SESSION['cart']);
?>
<!DOCTYPE html>
<html>

<head>
    <?php include_once("include/head.php")?>
</head>
<?php
  if(isset($_POST['update'])){				   
   $qty=$_POST['quant'];//exit;
   function updateQuantity($productId, $quantity)
   {
       if (isset($_SESSION['cart'][$productId])) {
           if ($quantity > 0) {
               
               $_SESSION['cart'][$productId]['quantity'] = $quantity;
           } else {
               // If quantity is 0 or less, remove the product from the cart
               // removeProduct($productId);
           }
       }
   }
   foreach($qty as $productId=>$p_det)
   { 
    $quantity=addslashes(trim($p_det['qty']));//exit;
       updateQuantity($productId, $quantity);
   }    
}
 ?>
<body>
    <div id="shopify-section-header" class="shopify-section">
        <div data-section-id="header" data-section-type="header">
            <?php include_once("include/header.php")?>
        </div>
    </div>
    <section class="sub-banner back_blue-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul
                        class="breadcrumbs py-2 list-unstyled d-inline-block flex-wrap justify-content-center justify-content-lg-start">
                        <li class="d-inline">
                            <a href="<?php path();?>" class="d-inline">Home</a>
                        </li class="d-inline">
                        <li>
                            <span>Cart</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- business order started... -->
    <section class="py-60">
        <div class="container">
            <form action="#" method="POST">
            <div class="row">
                <!--<form action="#" method="POST">-->
                <?php 
                    if(isset($_SESSION['cart'])){
                        if(empty($_SESSION['cart'])){
                    ?>    
                    <div class="col-12">
                        <h2 class="title text-center">Cart Page</h2>
                        <div class="text-center">
                            <p class="text-center">Your Cart is empty. Please add some item in cart first.</p>
                            <a href="<?php path();?>/shop" class="btn btn-primary"> Shop Now</a>
                        </div>
                    </div>
                    <?php 
                    }else {
                    ?>
                <div class="col-md-8">
                    <?php $a=0;
                            	 foreach ($_SESSION['cart'] as $pid => $value){
                                 $que = mysqli_query($con, "SELECT p.*,c.color_name,s.size_name FROM tbl_product p LEFT join tbl_color c on c.color_id=p.color LEFT JOIN tbl_size s on s.size_id=p.p_size where p.p_id='$pid'");
                                 $row1 = mysqli_fetch_array($que);
                    ?>
                    <div class="cart-box">
                        <div class="cart-img">
                           <a href=""><img src="<?php path() ?>/assets/images/product-image/<?php echo $value['image']; ?>" alt=""></a>
                        </div>
                        <div class="cart-content">
                            <div class="cart-title">
                            <a href="<?php path();?>/"><?php echo $row1['p_name']; ?></a></div>
                            <div class="cart-details">
                                <p>Color : <?php echo $row1['color_name']; ?></p>
                                <p>Size : <?php echo $row1['size_name']; ?></p>
                            </div>
                            <div class="mb-3">
                                <div class="cart-plus-minus">
                                    <div class="dec qtybutton" onclick="dec(this)">-</div>
                                    <input class="cart-plus-minus-box" type="number" onclick="inc_dec(this)" name="quant[<?php echo $row1['p_id'];?>][qty]" value="<?php echo $value['quantity']; ?>" min="1">
                                    <div class="inc qtybutton" onclick="inc(this)">+</div>
                                </div>
                            </div>
                            <div class="pro-price">MRP: ₹<span><?php echo $row1['p_current_price']; $t = $row1['p_current_price'] * $value['quantity']; ?></span> </div>
                        </div>
                        <div class="cart-action ml-auto shopping-cart-delete" data-id="<?php echo $pid  ?>">
                            <button class="btn" onclick="removeCart(this)" type="button"><span></span><span></span></button>
                        </div>
                    </div>
                    <?php $a=$a+$t;} ?>
                    <button type="submit" name="update" class="btn btn-aqua-inverse">Update Cart</button>
                </div>
               
                <div class="col-md-4">
                    <div class="summary-box">
                        <h4 class="title2 text-black mb-3">Order Summary</h4>
                        <div class="sub-price subtotal">
                            <span>Subtotal:</span>
                            <span>₹<i><?php echo $a; ?></i></span>
                        </div>
                        <div class="sub-price shipping">
                            <span>Shipping Charges:</span>
                            <span><i>Free Shipping</i></span>
                        </div>
                        <div class="sub-price total">
                            <span>Total:</span>
                            <span><b>&#8377;<?php echo $a; ?></b></span>
                        </div>
                        <a href="<?php path(); ?>/checkout" class="btn btn-aqua w-100">Checkout Now</a>
                    </div>
                </div>
                <?php }}else { ?>
                <div class="col-12">
                        <h2 class="title text-center">Cart Page</h2>
                        <div class="text-center">
                            <p class="text-center">Your Cart is empty. Please add some item in cart first.</p>
                            <a href="<?php path();?>" class="btn btn--green"> Shop Now</a>
                        </div>
                    </div>
                <?php } ?>
            </div>
             </form>
        </div>
    </section>
    <!-- business order ended... -->
    <?php include_once("include/footer.php")?>
</body>
</html>