<!DOCTYPE html>
<html>
<head>
<?php include_once("include/head.php")?>
    <?php
$msg="";
if(isset($_POST['submit'])){
   $name=$_POST['name'];
    $email=$_POST['email'];
    $title=$_POST['title'];
    $content=$_POST['content'];
    $query=mysqli_query($con,"INSERT INTO `tbl_customer_review` ( `name`, `email`, `title`,`content`) VALUES ( '$name', '$email', '$title','$content')");
    // echo $query;
    // die();
    if($query){
        ?>
        <script>window.location.replace('<?php path();?>/');</script>
        <?php
    }else{
       $msg="Something Wrong";
    }
}
?>
</head>

<body>
    <div id="shopify-section-header" class="shopify-section">
        <div data-section-id="header" data-section-type="header">
            <?php include_once("include/header.php")?>
        </div>
    </div>
    <?php 
        $id=$_GET['slug'];
        $query=mysqli_query($con,"SELECT * from tbl_product where slug='$id'");
        if($id!=''){
     if(mysqli_num_rows($query)==0){?>
         <script>
             window.location.href = 'https://typecase.in/404';
         </script>
        <?php 
     }}
        $row=mysqli_fetch_array($query);
        $cp=$row['p_old_price']; 
        $sp=$row['p_current_price'];
        $dp=$cp-$sp;
        $discount=$dp/$cp*100;
        $p_id=$row['p_id'];
    ?>
    <section class="sub-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul
                        class="breadcrumbs py-2 list-unstyled d-inline-block flex-wrap justify-content-center justify-content-lg-start">
                        <li class="d-inline">
                            <a href="<?php path();?>" class="d-inline">Home</a>
                        </li class="d-inline">
                        <li>
                            <span><?php echo $row['p_vendor']; ?></span>
                        </li>
                        <li class="d-inline">
                            <span><?php echo $row['p_name']; ?></span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <div class="vairant_section">
    <!-- product detail section started... -->
    <!--<iframe width="560" height="315" src="https://www.youtube.com/embed/GOvcTzunU5I?si=_qwbwKMd6WGPni3U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>-->
    <section class="py-30">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product-page-gallery">
                        <div class="swiper mySwiper2">
                            <div class="swiper-wrapper">
                                
                                <?php 
                                       
                                    $pid=$row['p_id'];
                                    $query1=mysqli_query($con,"SELECT * from tbl_product_photo where p_id='$pid'");
                                    
                                    while($row1=mysqli_fetch_array($query1)){
                                 ?>
                                <div class="swiper-slide">
                                    <a href="<?php echo path() ?>/assets/images/product-image/<?php echo $row1['photo']; ?>" class="portfolio-zoomicon">
                                        <img class="lazyload" data-src="<?php echo path() ?>/assets/images/product-image/<?php echo $row1['photo']; ?>" />
                                    </a>
                                </div>
                                <?php } ?>
                                <?php if($row['video']!='') {?>
                                <div class="swiper-slide">
                                    <a href="<?php echo $row['video'];  ?>" class="video-slide portfolio-zoomicon">
                                        <img class="video-slide-image lazyload" data-src="" />
                                        <img class="lazyload video-icon" data-src="<?php echo path() ?>/assets/images/video-play.svg">
                                    </a>
                                </div>
                                <?php  } ?>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                    <div class="my-3">
                        <div class="swiper mySwiper product-page-gallery__preview">
                            <div class="swiper-wrapper">
                               
                              <?php 
                                $query2=mysqli_query($con,"SELECT * from tbl_product_photo where p_id='$pid'");
                                while($row2=mysqli_fetch_array($query2)){
                                ?> 
                                <div class="swiper-slide">
                                <img class="lazyload" data-src="<?php echo path() ?>/assets/images/product-image/<?php echo $row2['photo']; ?>" />
                                </div>
                                <?php }  ?>
                                 <?php if($row['video']!='') {?>
                                <div class="swiper-slide">
                                        <img class="video-slide-image lazyload" data-src="" />
                                </div>
                                <?php  } ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="stock mb-2">
                        <?php 
                            if($row['p_qty']>0){
                        ?>
                        <span class="in-stock">In Stock</span>
                        <?php }else{ ?>
                        <span class="out-stock">Out of Stock</span>
                        <?php } ?>
                    </div>
                    <h1 class="product-detail-title"><?php echo $row['p_name']; ?></h1>
                    <div class="border-bottom pb-2">
                        <p class="mb-1"><b>SKU:</b> <span class="text-black"><?php echo $row['p_sku']; ?></span></p>
                        <p class="mb-1"><b>Vendor:</b> <span class="text-black"><?php echo $row['p_vendor']; ?></span></p>
                        <p class="mb-1"><b>Delivery:</b> <span class="text-black">By <?php echo $row['p_delivery']; ?></span></p>
                         <!--<p class="mb-0"><b>Visitors:</b> <span class="text-black">Real time 2219 visitor right now</span></p> -->
                    </div>
                    <div class="pro-price d-flex align-items-center pt-3">&#8377;<?php echo $row['p_current_price']; ?><span class="ml-3"><?php echo intval($discount) ?>% OFF</span> </div>
                    <div class="border-bottom pt-1 pb-3">
                        <div class="old-price-product">M.R.P: <span><?php echo $row['p_old_price']; ?> </span> (Incl. of all taxes)</div>
                    </div>
                    <div class="color">
                        <?php 
                          $qu="SELECT * FROM `tbl_color` c INNER JOIN tbl_product p on p.color=c.color_id where p.variant='$p_id' OR p.p_id='$p_id'";
                        $vc=mysqli_query($con,$qu);
                        if(mysqli_num_rows($vc)>0){
                        while($sco=mysqli_fetch_array($vc)){
                        ?>
                        <span style="background: <?php echo $sco['code']; ?>" onclick="pcolor_variant(this)" id="<?php echo $sco['p_id']; ?>" variant="<?php echo base64_encode($sco['variant']); ?>"></span>
                        <?php }} ?>
                    </div>
                    <razorpay-trusted-business key="rzp_live_mlCjvRQsfc0oKJ"> </razorpay-trusted-business>
                    <razorpay-trusted-business>
                        dark-mode="true" key="rzp_live_mlCjvRQsfc0oKJ" restrict-tags="age, transaction_history,
                        return_policy">
                    </razorpay-trusted-business>
                    <form action="" method="post" class="product-form mt-3">
                        <div class="form-group">
                            <label for="additional">Additional Notes</label>
                            <textarea name="" id="" cols="30" rows="5" class="form-control" placeholder="Write here your notes for the order"></textarea>
                        </div>
                        <?php 
                            if($row['p_qty']!=0){
                        ?>
                        <div class="mb-3 d-flex product_data_id" data-id="<?php echo $row['p_id']; ?>">
                            <div class="cart-plus-minus mr-3">
                                <div class="dec qtybutton" onclick="dec(this)">-</div>
                                <input class="cart-plus-minus-box product-quantity_val" type="number" onclick="inc_dec(this)" name="" min="1" value="1">
                                <div class="inc qtybutton" onclick="inc(this)">+</div>
                            </div>
                            <button type="button" class="btn btn-aqua"  data-target="add_to_cart" onclick="addCart(this)"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                        </div>
                        <?php } ?>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- product detail section ended... -->
    <!-- prodocut description started... -->
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab" data-toggle="tab" data-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Product Information</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab" data-toggle="tab" data-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Customer Review</button>
                        </li>
                    </ul>
                    <div class="tab-content text-justify" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <p><span>
                            <?php $html=$row['p_description']; 
                            $pattern = '/ style="([^"]*)"/';
                            $cleaned_html = preg_replace($pattern, '', $html);
                            echo $cleaned_html;
                            ?></span></p>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="d-flex justify-content-between align-items-center mb-md-3">
                                <h4 class="mb-3 mb-md-0 text-black">Customer Review</h4>
                                <button class="btn btn-aqua-inverse" onclick="openReview()">Write a review</button>
                            </div>
                            <p>No Reviews yet</p>
                            <div class="row">
                                <div class="col-md-9 col-lg-6 mx-auto">
                                    <div class="card-box review-form" style="display: none">
                                        <div class="card-box-body">
                                            <form action="" method="post" class="">
                                                <div class="form-group">
                                                    <label for="" class="text-black">Name*</label>
                                                    <input type="text" name="name" value="<?php echo @$name;?>" placeholder="Enter your name" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="" class="text-black">Email*</label>
                                                    <input type="email" name="email" value="<?php echo @$email;?>" placeholder="Enter your email" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="" class="text-black">Review Title*</label>
                                                    <input type="text" name="title" value="<?php echo @$title;?>" placeholder="Enter review title" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="" class="text-black">Review (1500) content remaining</label>
                                                    <textarea name="content" id="" cols="30" rows="5" class="form-control" placeholder="Write your review"></textarea>
                                                </div>
                                                <button type="submit" name="submit" class="btn btn-aqua w-100">Submit Now</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- prodocut description ended... -->
    </div>
    <!-- related product started... -->
    <section class="pb-5">
        <div class="container">
            <h2 class="title2 text-center text-black">Related Product</h2>
            <div class="related-product swiper">
                <div class="swiper-wrapper">
                    <?php  
                        $tid=$row['top_id'];
                        $query="SELECT * FROM tbl_product where p_is_active='1' AND top_id='$tid' AND (variant='' OR variant IS NULL)";
                        $prd=mysqli_query($con,$query); 
                            while($sh=mysqli_fetch_array($prd)){
                                $pid=$sh['p_id'];
                                $cp=$sh['p_old_price']; 
                                $sp=$sh['p_current_price'];
                                $dp=$cp-$sp;
                                $discount=$dp/$cp*100;    
                                $pid=$sh['p_id'];
                           ?>
                    <div class="swiper-slide">
                     <article class="list-product product_data_id" data-id="<?php echo $sh['p_id']; ?>">
                        <div class="product-box">
                            <?php 
                                    $qu=mysqli_query($con,"SELECT * FROM tbl_product_photo where p_id='$pid' limit 2");
                                    $i=0;
                                    ?>
                            <div class="product-img">
                               <?php 
                                         while($s=mysqli_fetch_array($qu)){  
                                         $i++;
                                    ?>
                                    
                                    <img data-src="<?php path();?>/assets/images/product-image/<?php echo $s['photo'];  ?>" alt="" class="lazyload <?php if($i==2){ echo "img-second";} else{ echo "img-first";}?>">
                                <?php  } ?>
                            </div>
                            <div class="product-content">
                                <a href="<?php echo path() ?>/product/<?php echo $sh['slug']; ?>" class="cat-name d-inline-block px-2 py-1 mb-1"><?php echo $sh['p_vendor']; ?></a>
                                <a href="<?php echo path() ?>/product/<?php echo $sh['slug']; ?>" class="product-title"><?php echo $sh['p_name']; ?></a>
                                <div class="product-price d-flex align-items-center">
                                    <span class="new-price d-inline-block mr-2">&#8377;<?php echo $sh['p_current_price']; ?></span><span class="old-price d-inline-block mr-2">&#8377;<?php echo $sh['p_old_price']; ?></span> <span class="d-inline-block offer"><?php  echo intval($discount) ?>% Off</span>
                                </div>
                                <div class="color">
                                        <?php 
                                        $qu="SELECT * FROM `tbl_color` c INNER JOIN tbl_product p on p.color=c.color_id where p.variant='$pid' OR p.p_id='$pid'";
                                        $vc=mysqli_query($con,$qu);
                                        if(mysqli_num_rows($vc)>0){
                                        while($sco=mysqli_fetch_array($vc)){
                                        ?>
                                        <span style="background: <?php echo $sco['code']; ?>" onclick="color_variant(this)" id="<?php echo $sco['p_id']; ?>" variant="<?php echo base64_encode($sco['variant']); ?>"></span>
                                        <?php }} ?>
                                    </div>
                                    <input class="product-quantity_val" type="hidden" name="qtybutton" readonly="" value="1">
                                <div class="form-row product-button">
                                    <div class="col-6"><button type="button" class="btn btn-aqua-inverse w-100" onclick="addCart(this)"><i class="fa fa-shopping-cart"></i> Add to Cart</button></div>
                                    <div class="col-6"><a href="<?php echo path() ?>/product/<?php echo $sh['slug']; ?>" class="btn btn-aqua w-100">Buy Now</a></div>
                                </div>
                            </div>
                        </div>
                      </article>
                    </div>
                    <?php  }  ?> 
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>
    <!-- related Product ended... -->
    <?php include_once("include/footer.php")?>
</body>
</html>