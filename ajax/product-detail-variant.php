<?php  
function path()
{
	echo "https://typecase.in";
}
include '../config.php';
$pid=$_POST['cid'];
 $vid=base64_decode($_POST['vid']);
$query=mysqli_query($con,"SELECT * from tbl_product where p_id='$pid'");
$row=mysqli_fetch_array($query);
$cp=$row['p_old_price']; 
$sp=$row['p_current_price'];
$dp=$cp-$sp;
$discount=$dp/$cp*100;
?>

<!-- product detail section started... -->
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
                                    <img class="lazyload" src="<?php echo path() ?>/assets/images/product-image/<?php echo $row1['photo']; ?>" />
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
                                <?php } ?>
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
                                <img src="<?php echo path() ?>/assets/images/product-image/<?php echo $row2['photo']; ?>" />
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
                        if($vid==''){
                            $vid=$pid;
                        }
                         $qu="SELECT * FROM `tbl_color` c INNER JOIN tbl_product p on p.color=c.color_id where p.variant='$vid' OR p.p_id='$vid'";
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
                        <div class="d-flex product_data_id" data-id="<?php echo $row['p_id']; ?>">
                            <div class="cart-plus-minus mr-3">
                                <div class="dec qtybutton">-</div>
                                <input class="cart-plus-minus product-quantity_val" type="number" name="qtybutton" value="1">
                                <div class="inc qtybutton">+</div>
                            </div>
                            <button type="submit" class="btn btn-aqua" data-target="add_to_cart" onclick="addCart(this)"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
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
                            <p><span><?php echo $row['p_description']; ?></span></p>
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
    <script>
        // product detail page slider 
var swiper = new Swiper(".mySwiper", {
    spaceBetween: 10,
    slidesPerView: 4,
    freeMode: true,
    watchSlidesProgress: true,
    breakpoints: {
        0: {
            slidesPerView: 3,
        },
        768: {
            slidesPerView: 4,
        },
        1024: {
            slidesPerView: 6,
        }
    },
    thumbs: {
        swiper: swiper2,
    },
});
var swiper2 = new Swiper(".mySwiper2", {
    spaceBetween: 10,
    navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
    },
    thumbs: {
        swiper: swiper,
    },
});
var iframe_src = $('.video-slide').attr('href');
var youtube_video_id = iframe_src.match(/youtube\.com.*(\?v=|\/embed\/)(.{11})/).pop();
if (youtube_video_id.length == 11) {
    var video_thumbnail = 'https://img.youtube.com/vi/'+youtube_video_id+'/0.jpg';
    $(".video-slide-image").attr("data-src",video_thumbnail);
    console.log(video_thumbnail);
}
    </script>
    <!-- prodocut description ended... -->