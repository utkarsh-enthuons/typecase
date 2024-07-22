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
                            <span>Account</span>
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
                    <div class="card-box review-form">
                        <div class="card-box-body">
                            <h1 class="text-center title2 text-black mb-1">Forgot Password</h1>
                            <form action="" method="post" class="">
                                <div class="form-group">
                                    <label for="" class="text-black">Email*</label>
                                    <input type="text" placeholder="Enter your email" class="form-control">
                                </div>
                                <button class="btn btn-aqua w-100">Recover Password</button>
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