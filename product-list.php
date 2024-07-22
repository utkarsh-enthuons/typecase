
<?php  
session_start();
?><!DOCTYPE html>
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
    <section class="sub-banner">
        <?php
     $topc=$_GET['top'];
     $midc=$_GET['mid'];
     $tc=mysqli_query($con,"SELECT * FROM tbl_top_category where slug='$topc'");
     if($topc!=''){
     if(mysqli_num_rows($tc)==0){?>
         <script>
             window.location.href = 'https://typecase.in/404';
         </script>
        <?php 
     }}
     $tr=mysqli_fetch_array($tc);
     $tid=$tr['tcat_id'];
     $mc=mysqli_query($con,"SELECT * FROM tbl_mid_category where slug='$midc'");
     if($midc!=''){
     if(mysqli_num_rows($mc)==0){?>
         <script>
             window.location.href = 'https://typecase.in/404';
         </script>
        <?php 
     }}
     $mr=mysqli_fetch_array($mc);
     $mcid=$mr['mcat_id'];
    ?>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul class="breadcrumbs py-2 list-unstyled d-inline-block flex-wrap justify-content-center justify-content-lg-start">
                        <li class="d-inline">
                            <a href="<?php path();?>" class="d-inline">Home</a>
                        </li class="d-inline">
                        <li>
                            <span><?php echo $tr['tcat_name'];?></span>
                            <!-- <span><?php echo $mr['mcat_name'];?></span> -->
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- product section started... -->
    <section class="product-page position-relative back_blue-1 pb-5">
    <div class="container-fluid p-2">
        <div class="form-row">
            <div class="col-lg-3">
                <div class="left-sidebar">
                    <div class="left-head p-3 d-flex justify-content-between">
                        <h4 class="m-0">Filters</h4>
                        <span class="close d-lg-none">&times;</span>
                    </div>
                    <div class="accordion" id="accordionExample">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h2 class="mb-0">
                                    <button class="btn w-100 align-items-center justify-content-between d-flex" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">COLLECTION</button>
                                </h2>
                            </div>
                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="">
                                <div class="card-body">
                                    <ul class="left-head p-3">
                                            <?php
                                                $ins = "SELECT * FROM collection WHERE Status = '1'"; 
                                                $rsc = mysqli_query($con,$ins);
                                                if(mysqli_num_rows($rsc)){
                                                $i=0;
                                                while($row=mysqli_fetch_array($rsc)){
                                                $i++;
                                            ?>
                                        <li>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input collection filter_all" id="coll<?php echo $i; ?>" name="option2" value="<?php echo $row['id']; ?>">
                                                <label class="form-check-label" for="coll<?php echo $i; ?>"><?php echo $row['collection']; ?></label>
                                            </div>
                                        </li>
                                        <?php } }?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <h2 class="mb-0">
                                    <button class="btn w-100 align-items-center justify-content-between d-flex" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">SIZE</button>
                                </h2>
                            </div>
                            <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="">
                                <div class="card-body">
                                    <div class="left-head p-3">
                                        <ul>
                                                <?php
                                                    $size = "SELECT * FROM tbl_size WHERE status = '1'"; 
                                                    $rs = mysqli_query($con,$size);
                                                    if(mysqli_num_rows($rs)){
                                                        $i=0;
                                                    while($row1=mysqli_fetch_array($rs)){
                                                        $i++;
                                                ?>
                                            <li>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input size filter_all" id="size<?php echo $i; ?>" name="option2" value="<?php echo $row1['size_id']; ?>">
                                                    <label class="form-check-label" for="size<?php echo $i; ?>"><?php echo $row1['size_name']; ?></label>
                                                </div>
                                            </li>
                                            <?php } } ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingfour">
                                <h2 class="mb-0">
                                    <button class="btn w-100 align-items-center justify-content-between d-flex collapsed" type="button" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour">COLOR</button>
                                </h2>
                            </div>
                            <div id="collapsefour" class="collapse show" aria-labelledby="headingfour" data-parent="">
                                <div class="card-body">
                                    <div class="left-head p-3">
                                        <ul>
                                             <?php
                                                    $color = "SELECT * FROM tbl_color"; 
                                                    $run = mysqli_query($con,$color);
                                                    if(mysqli_num_rows($rs)){
                                                    $i=0;
                                                    while($row2=mysqli_fetch_array($run)){
                                                        $i++;
                                             ?>
                                            <li>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input color filter_all" id="color<?php echo $i; ?>" name="option2" value="<?php echo $row2['color_id']; ?>">
                                                    <label class="form-check-label" for="color<?php echo $i; ?>"><?php echo $row2['color_name']; ?></label>
                                                </div>
                                            </li>
                                            <?php }} ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h2 class="mb-0">
                                    <button class="btn w-100 align-items-center justify-content-between d-flex collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">PRICE</button>
                                </h2>
                            </div>
                            <div id="collapseThree" class="collapse show" aria-labelledby="headingThree" data-parent="">
                                <div class="card-body">
                                    <div class="left-head p-3">
                                        <div class="form-group">
                                            <input type="text" class="js-range-slider " name="" value="" data-type="double" data-min="0" data-max="21999" data-from="0" data-to="21999"  data-prefix="" data-grid="false"/>
                                            <input type="hidden" id="min_price_hide" class="min_value filter_all" value="0">
                                            <input type="hidden" id="max_price_hide" class="max_value filter_all" value="21999">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingfive">
                                <h2 class="mb-0">
                                    <button class="btn w-100 align-items-center justify-content-between d-flex collapsed" type="button" data-toggle="collapse" data-target="#collapsefive" aria-expanded="false" aria-controls="collapsefive">AVAILABILITY</button>
                                </h2>
                            </div>
                            <div id="collapsefive" class="collapse show" aria-labelledby="headingfive" data-parent="">
                                <div class="card-body">
                                    <div class="left-head p-3">
                                        <ul>
                                            <li>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="check2" name="option2" value="something">
                                                    <label class="form-check-label" for="check2">Show only available</label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingsix">
                                <h2 class="mb-0">
                                    <button class="btn w-100 align-items-center justify-content-between d-flex collapsed" type="button" data-toggle="collapse" data-target="#collapsesix" aria-expanded="false" aria-controls="collapsesix">CUSTOM BLOCK</button>
                                </h2>
                            </div>
                            <div id="collapsesix" class="collapse show" aria-labelledby="headingsix" data-parent="">
                                <div class="card-body">
                                    <div class="left-head p-3">
                                        <ul>
                                            <li>
                                                <p>Free shipping for all orders or more of eligible items across any product category qualify.</p>
                                            </li>
                                            <li>
                                                <p>Credit Card: Visa, MasterCard. The total will be charged to your card when the order is shipped.</p>
                                            </li>
                                            <li>
                                                <p>Returns and Refunds: You can return any item purchased on website within 3-4 days of the delivery date in case of manufacturing defect.</p>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="btn search-filter mb-3 d-lg-none" onclick="left_sidebar()"><i class="fa fa-filter"></i> Search filter</button>
            </div>
            <div class="col-lg-9">
                <div class="d-none d-lg-block">
                    <h2 class="product-page-title text-black mt-3 mt-lg-0"><?php echo $tr['tcat_name'];?></h2>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <?php  
                        if($midc==''){
                             $query="SELECT * FROM tbl_product where p_is_active='1' AND top_id='$tid'";
                        }else {
                            $query="SELECT * FROM tbl_product where p_is_active='1' AND top_id='$tid' AND mid_id='$mcid'";
                        }
                        $prd=mysqli_query($con,$query); 
                        ?>
                        <p class="mb-3 mb-md-0">Showing <?php echo mysqli_num_rows($prd) ?> products</p>
                        <!--<div class="">-->
                        <!--    <label for="sorting" class="text-black">Sort:</label>-->
                        <!--    <select name="" id="sorting" class="d-inline-block w-auto ml-2 form-control font-14">-->
                        <!--        <option value="">Name Assending</option>-->
                        <!--    </select>-->
                        <!--</div>-->
                    </div>
                </div>
                <div class="right-article p-3">
                    <div class="row">
                        <div class="col-md-6 col-lg-4">
                        <?php  
                        if($midc==''){
                             $query="SELECT * FROM tbl_product where p_is_active='1' AND top_id='$tid'";
                        }else {
                            $query="SELECT * FROM tbl_product where p_is_active='1' AND top_id='$tid' AND mid_id='$mcid'";
                        }
                        $prd=mysqli_query($con,$query); 
                        if(mysqli_num_rows($prd)==0){?>
                        <h2 class="mb-0">Products will be coming soon...</h2>
                        <?php } else { ?>
                         <!-- <h2 class="mb-0">Our Product List</h2> -->
                       <?php  } ?>
                        </div>
                    </div>
                </div>
                <?php if(mysqli_num_rows($prd)>0){?>
                <div class="right-article p-3">
                    <div class="row filter_data"  catname="<?php echo $tid?>" scid="<?php echo $mcid ?>">
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</section>
    <!-- product section ended... -->
    <!--section product content started...-->
    <section class="py-30">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <?php  
                    echo $tr['description'];
                    ?>
                </div>
            </div>
        </div>
    </section>
    <!--section product content ended...-->
    <?php include_once("include/footer.php")?>
    <script>
        filter_data();
    </script>
</body>
</html>