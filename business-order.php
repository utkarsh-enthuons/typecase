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
                            <span>Business Order</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- product detail section started... -->
    <!-- business order started... -->
    <section class="py-30">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-lg-6 mx-auto">
                    <h1 class="text-center title2 text-black mb-1">Business Orders</h1>
                    <p class="text-center">If you'd like to place an order for your business, please use the below inquiry form, including details of your business, and your estimate unit requirement. We'll get back to you as soon as possible.</p>
                    <div class="card-box review-form">
                        <div class="card-box-body">
                            <form action="" method="post" class="">
                                <div class="form-group">
                                    <label for="" class="text-black">Name*</label>
                                    <input type="text" placeholder="Enter your name" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="" class="text-black">Email*</label>
                                    <input type="text" placeholder="Enter your email" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="" class="text-black">Phone*</label>
                                    <input type="text" placeholder="Enter Your Phone Number" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="" class="text-black">Message</label>
                                    <textarea name="" id="" cols="30" rows="5" class="form-control" placeholder="Write your message"></textarea>
                                </div>
                                <button class="btn btn-aqua w-100">Submit Now</button>
                            </form>
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