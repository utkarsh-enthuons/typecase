<?php  
 if (!isset($_COOKIE["shopping_user"])) {
        header("location:login");
 }
?>
<?php 
session_start();
// print_r($_COOKIE["shopping_user"]);
if (isset($_COOKIE["shopping_user"])) {
        $cookie_data = stripslashes($_COOKIE['shopping_user']);
        $cart_data = json_decode($cookie_data, true);
        foreach ($cart_data as $keys => $values) {
            $cs_id =     $values["Userid"];
            $username = $values["username"];
            $use_email = $values["use_email"];
        }
    }
    // if (!isset($_COOKIE["shopping_user"])) {
    //     header("location:login");
    // }
    // if (!isset($_SESSION["cart"])) {
    //     header("location:carts");
    // }
?>
<!DOCTYPE html>
<html>
<head>
    <?php include_once("include/head.php")?>
</head>
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
                            <span>Checkout</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- business order started... -->
    <?php
        $sd=mysqli_query($con,"SELECT add_info,cust_b_zip,cust_b_state,cust_b_country,add_info,cust_b_fname,cust_b_lname,cust_b_cname,cust_b_phone,cust_b_address,cust_b_city from tbl_customer where cust_id='$cs_id'");
        $rs=mysqli_fetch_array($sd);
    ?>
    <section class="py-60">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h4 class="title text-center text-black">Billing Details</h4>
                    <!--<form action="" method="post" class="checkout-form">-->
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="text-black" for="fname">First Name*</label>
                                    <input type="text" class="form-control" placeholder="First Name*" value="<?php echo $rs['cust_b_fname']; ?>" id="fname" >
                                    <span class="error">This field is required. Please fill the correct name</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="text-black" for="lname">Last Name</label>
                                    <input type="text" class="form-control" id="lname" value="<?php echo $rs['cust_b_lname']; ?>" placeholder="Last Name">
                                    <span class="error">This field is required. Please fill the correct name</span>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="text-black" for="address">Address*</label>
                                    <input type="text" class="form-control" id="address" value="<?php echo $rs['cust_b_address']; ?>"  placeholder="Address*">
                                    <span class="error">This field is required. Please fill the correct OTP</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="text-black" for="city">Town*</label>
                                    <input type="text" class="form-control" id="city" value="<?php echo $rs['cust_b_city']; ?>"  placeholder="Town*">
                                    <span class="error">This field is required. Please fill correct Email address</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="text-black" for="state">State*</label>
                                    <?php 
                                         $q=mysqli_query($con,"select * from tbl_state "); 
                                    ?>
                                    <select name="" id="state" class="form-control" >
                                        <option value="0" selected="">Choose State</option>
                                        <?php 
                                            while($r=mysqli_fetch_array($q)){
                                         ?>
                                              <option value="<?php echo  $r['state']; ?>" <?php  if($r['state']==$rs['cust_b_state']){ echo "selected"; } ?>><?php echo $r['state']; ?></option>
                                           <?php  } ?>  
                                    </select>
                                    <span class="error">This field is required. Please fill correct age. Age should be more than 18</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="text-black" for="zip">Postcode / ZIP*</label>
                                    <input type="text" class="form-control" id="zip" value="<?php echo $rs['cust_b_zip']; ?>"  placeholder="Postcode / ZIP*">
                                    <span class="error">This field is required. Please fill correct age. Age should be more than 18</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group otp_send">
                                    <label class="text-black" for="phone">Phone No.*</label>
                                    <input type="text" class="form-control" id="phone" value="<?php echo $rs['cust_b_phone']; ?>"  placeholder="Phone No.*">

                                    <span class="error">This field is required. Please fill the correct Phone Number</span>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="text-black" for="additional">Additional information</label>
                                    <textarea name="" id="additional" cols="30" rows="4" class="form-control" placeholder="Additional information"></textarea>

                                    <span class="error">This field is required. Please fill the correct OTP</span>
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="button" class="submit d-none">Pay Now</button>
                            </div>
                        </div>
                    <!--</form>-->
                </div>
                <div class="col-md-4">
                    <div class="back_blue-1 your-order-area mt-4 mt-lg-0 py-4 px-3">
                        <h4 class="title text-center text-black">Your Order</h4>
                        <div class="your-order-wrap">
                            <div class="your-order-product-info">
                                <div class="your-order-top">
                                    <ul>
                                        <li>Product</li>
                                        <li>Total</li>
                                    </ul>
                                </div>
                                <div class="your-order-middle">
                                    <ul>
                                        <?php $a=0;
                                            	 foreach ($_SESSION['cart'] as $pid => $value){
                                                 $que = mysqli_query($con, "SELECT * FROM tbl_product where p_id='$pid'");
                                                 $row1 = mysqli_fetch_array($que);
                                         ?>
                                       <li><span class="order-middle-left"><?php echo $row1['p_name']; ?> X <?php echo $value['quantity']; ?></span> <span class="order-price">INR <b><?php echo $t = $row1['p_current_price'] * $value['quantity']; ?></b> </span></li>
                                        <?php $a=$a+$t; } ?>
                                    </ul>
                                </div>
                                <div class="your-order-bottom">
                                    <ul>
                                        <li class="your-order-shipping">Shipping</li>
                                        <li>Free shipping</li>
                                    </ul>
                                </div>
                                <div class="your-order-total">
                                    <ul>
                                        <li class="order-total">Total</li>
                                        <li>INR <b><?php echo $a; ?></b></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="payment-method">
                                <div class="payment-accordion element-mrg">
                                    <div class="panel-group" id="accordion">

                                        <div class="panel payment-accordion">
                                            <div class="panel-heading" id="method-two">
                                                <h4 class="panel-title">
                                                    <img src="https://cdn.razorpay.com/static/assets/logo/payment.svg" alt="Payment">
                                                </h4>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                            <button class="btn btn-aqua checkout-submit w-100 mt-3" onclick="pay_now()" type="button">Place Order</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="rslt"></div>
<?php $sel = "select * from c_details where cs_id=$cs_id"; 
   $rsc = mysqli_query($con,$sel);
   $show=mysqli_fetch_array($rsc);
   $email=$show['email_phone'];
    $fname=$show['first_name'];
    $lname=$show['last_name'];
    $name=$fname." ".$lname;
    $address=$show['address'];
    $apart=$show['apartment'];
    $city=$show['city'];
    $pin=$show['zip_code'];
    $country=$show['country'];
    $phone=$show['phone'];
   ?>
    <!-- business order ended... -->
    <?php include_once("include/footer.php")?>
    <script>
    setInterval(saveData, 5000);
    function pay_now() {
                var options = {
                    "key": "rzp_test_Q9RSzWOtkyOLr9",
                    "amount": 2 * 100,
                    "currency": "INR",
                    "name": "Typecase",
                    "description": "Transaction",
                    "image": "assets/images/logo.gif",
                    "handler": function (response) {
                        jQuery.ajax({
                            type: 'post',
                            url: 'ajax/payment_process.php',
                            data: {
                                payment_id: response.razorpay_payment_id,
                                // amt: amt, // Use the variable declared outside the if block
                            },
                            success: function (result) {
                                $('.rslt').html(result);
                                window.location.href = "thank_you.php";
                            }
                        });
                    }
                };

                var rzp1 = new Razorpay(options);
                rzp1.open();
            }
       
    </script>
</body>
</html>