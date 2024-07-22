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
                            <span>Submit a ticket</span>
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
            <h1 class="text-center title2 text-black mb-1">Submit a ticket</h1>
            <div class="row">
                <div class="col-md-12 mx-auto">
                    <div class="card-box">
                        <div class="card-box-body">
                            <form action="" method="post" class="">
                                <h5 class="text-black">Ticked Information</h5>
                                <div class="form-row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="" class="text-black">Contact Name*</label>
                                            <input type="text" placeholder="Enter your name" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="" class="text-black">Email*</label>
                                            <input type="text" placeholder="Enter your email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="" class="text-black">subject*</label>
                                            <input type="text" placeholder="Enter Your Subject" class="form-control">
                                        </div>        
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="" class="text-black">Issue</label>
                                            <textarea name="" id="" cols="30" rows="5" class="form-control" placeholder="Write your issue"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <h5 class="text-black mt-4">Order Information</h5>
                                <div class="form-row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="" class="text-black">Order ID</label>
                                            <input type="text" class="form-control" placeholder="Order ID">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="" class="text-black">Order Date</label>
                                            <input type="text" class="form-control" placeholder="Order Date">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="" class="text-black">Phone</label>
                                            <input type="text" class="form-control" placeholder="Phone">
                                        </div>
                                    </div>
                                </div>
                                <h5 class="text-black mt-4">Additional Information</h5>
                                <div class="form-row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="" class="text-black">Priority</label>
                                            <select name="pri" id="" class="form-control">
                                                <option value="" disabled="">-None-</option>
                                                <option value="" disabled="">-High-</option>
                                                <option value="" disabled="">-Medium-</option>
                                                <option value="" disabled="">-Low-</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="" class="text-black">Classification</label>
                                            <select name="class" id="" class="form-control">
                                                <option value="" selected="" disabled="">-None-</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="" class="text-black">Priority</label>
                                            <input type="file" class="form-control" placeholder="Priority">
                                        </div>
                                    </div>
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