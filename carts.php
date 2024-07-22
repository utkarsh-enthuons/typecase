<?php  
session_start();
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
                            <span>Carts</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- business order started... -->
    <section class="py-60">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" method="POST">
                        <div class="table-content table-responsive  cart-table-content">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Image</th>
                                        <th>Product Name</th>
                                        <th>Until Price</th>
                                        <th>Qty</th>
                                        <th>Subtotal</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $a=0;
                                            	 foreach ($_SESSION['cart'] as $pid => $value){
                                                 $que = mysqli_query($con, "SELECT * FROM tbl_product where p_id='$pid'");
                                                 $row1 = mysqli_fetch_array($que);
                                         ?>
                                    <tr>
                                        <td class="product-thumbnail">
                                            <a href=""><img src="<?php path() ?>/assets/images/product-image/<?php echo $value['image']; ?>" alt=""></a>
                                        </td>
                                        <td class="product-name"><a href="#"><?php echo $row1['p_name']; ?></a></td>
                                        <td class="product-price- Carts"><span class="amount">INR <b><?php echo $row1['p_current_price'];?></b></span></td>
                                        <td class="product-quantity">
                                            <div class="cart-plus-minus">
                                                <div class="dec qtybutton" onclick="cartMinus(this)">-</div>
                                                <input class="cart-plus-minus-box" type="text" name="quant[<?php echo $row1['p_id'];?>][qty]" value="<?php echo $value['quantity']; ?>" />
                                                <div class="inc qtybutton" onclick="cartPlus(this)">+</div>
                                            </div>
                                        </td>
                                        <td class="product-subtotal">INR<b><?php echo $t = $row1['p_current_price'] * $value['quantity']; ?></b></td>
                                        <td class="product-remove">
                                        <div class="shopping-cart-delete" data-id="<?php echo $pid  ?>">
                                                <button onclick="removeCart(this)" class="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                    </td>
                                    </tr>
                                    <?php $a=$a+$t;} ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class=" cart-shiping-update-wrapper">
                                    <div class=" cart-shiping-update mb-2">
                                        <a href="<?php path();?>" class="btn btn-aqua">Continue Shopping</a>
                                    </div>
                                    <div class=" cart-clear">
                                        <button type="submit" name="update" class="btn btn-black update-cart">Update Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="grand-totall">
                                <div class="title-wrap">
                                    <h4 class=" cart-bottom-title section-bg-gary- Carts"> <b>Cart Total</b> <span>INR <?php echo $a; ?></span></h4>
                                </div>
                                <h4 class="grand-totall-title shipping-title text-white title3 mt-3">Shipping Charge <span>Free Shipping</span></h4>
                                <h4 class="grand-totall-title text-white title2">Grand Total <span>INR <b><?php echo $a; ?></b></span></h4>
                                <a href="<?php path();?>/checkout" class="btn btn-aqua w-100">Proceed to Checkout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- business order ended... -->
    <?php include_once("include/footer.php")?>
</body>
</html>