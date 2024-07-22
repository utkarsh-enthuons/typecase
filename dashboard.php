<?php  
if(!isset($_COOKIE["shopping_user"])){
	header("location:login.php");
}
print_r($_COOKIE["shopping_user"]);
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
    <!-- dash section started... -->
    <section class="py-60 back_blue-1">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <?php include_once("include/left_sidebar.php")?>
                </div>
                <div class="col-md-9">
                    <div class="card-box h-100">
                        <div class="card-box-body h-100">
                            <div class="form-row">
                                <div class="col-md-4 col-sm-6">
                                    <a href="" class="admin-box">
                                        <div class="admin-img">
                                            <img src="assets/images/delivery.png" alt="">
                                        </div>
                                        <div class="admin-text">
                                            <h5>Your Orders</h5>
                                            <p>Track, return orders</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <a href="" class="admin-box">
                                        <div class="admin-img"><img src="assets/images/lock.png" alt=""></div>
                                        <div class="admin-text">
                                            <h5>Login &amp; security</h5>
                                            <p>Edit Your details</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <a href="" class="admin-box">
                                        <div class="admin-img"><img src="assets/images/address.png" alt=""></div>
                                        <div class="admin-text">
                                            <h5>Your Addresses</h5>
                                            <p>Edit Your addresses</p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- dash section ended... -->
    <?php include_once("include/footer.php")?>
</body>
</html>