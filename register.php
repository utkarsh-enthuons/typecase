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
                            <h1 class="text-center title2 text-black mb-1">Register</h1>
                            <h4 id="message"></h4>
                            <form  method="post">
                                <div class="form-group">
                                    <label for="" class="text-black">Name*</label>
                                    <input type="text" name="username" id="username" class="form-control" placeholder="Your Name" /><span class="error" id="username_err"> </span>
                                    <span class="text-danger" id="nameerr"> </span>
                                </div>
                                <div class="form-group">
                                    <label for="" class="text-black">Email*</label>
                                    <input type="email" name="email" id="email" class="form-control" placeholder="Your email" /><div id="email_err"> </div>
                                    <span class="text-danger" id="emailerr"></span>
                                </div>
                                <div class="form-group">
                                    <label for="" class="text-black">Phone*</label>
                                    <input type="number" name="mobile" id="mobile" class="form-control" placeholder="Your Phone Number" /> 
                                    <span class="text-danger" id="phoneerr"> </span>
                                </div>
                                <div class="form-group">
                                    <label for="" class="text-black">Password*</label>
                                    <input type="password" name="password" id="password" class="form-control" placeholder="Password" /> <span class="text-danger" id="password_err"> </span>
                                    <span class="text-danger" id="passerr"> </span>
                                </div>
                                <div class="form-group">
                                    <label for="" class="text-black">Confirm Password*</label>
                                    <input type="password" name="cpass" id="cpassword" class="form-control" placeholder="Confirm Password" /><span class="text-danger" id="cpassword_err"> </span>
                                    <span class="text-danger" id="cperr"> </span>
                                </div>
                                <button type="button" id="register" class="btn btn-aqua w-100" >SignIn Now</button>
                                <div class="form-row mt-3">
                                    <div class="col-12">
                                        <a href="<?php path();?>/login" class="d-inline-block text-underline text-black">Login Now</a>
                                    </div>
                                </div>
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