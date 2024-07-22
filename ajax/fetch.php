<?php 
// include '../config.php';
function path()
{
	echo "https://typecase.in";
}
include '../config.php';
// $con = mysqli_connect("localhost","demowdix_typecase","deWLrh?}N6P[","demowdix_typecase")or die("Not Database connect");
$query="SELECT * FROM tbl_product where p_is_active='1' AND (variant='' OR variant IS NULL)";
$tid=$_POST['catname'];
$mid=$_POST['scid'];
if ($_POST["catname"]!=""){
        $query .=" AND top_id=$tid";
}
if ($_POST["scid"]!='' && $_POST['catname']!=""){
        $query .=" AND mid_id=$mid";
}
if (isset($_POST["collection"])) {
        $brand_filter = implode(",", $_POST["collection"]);
        $query .=" AND collection IN($brand_filter)
       ";
}
if (isset($_POST["size"])) {
        $size_filter = implode(",", $_POST["size"]);
        $query .=" AND p_size IN($size_filter)
       ";
}
if (isset($_POST["color"])) {
        $color_filter = implode(",", $_POST["color"]);
        $query .= " AND color IN($color_filter)
       ";
}
if (isset($_POST["minimum_price"] , $_POST["maximum_price"])) {
        $query .=" AND p_current_price BETWEEN ".$_POST["minimum_price"] ." AND ".$_POST["maximum_price"]." ";
}
// echo $query;
        
        $prd=mysqli_query($con,$query);
        while($sh=mysqli_fetch_array($prd)){
            $pid=$sh['p_id'];
            $cp=$sh['p_old_price']; 
            $sp=$sh['p_current_price'];
            $dp=$cp-$sp;
            $discount=$dp/$cp*100;    
            $pid=$sh['p_id'];?>
            <div class="col-md-6 col-lg-4">
                          <article class="list-product product_data_id" id="product_data_id" data-id="<?php echo $sh['p_id']; ?>">
                            <div class="product-box mb-4">
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
                                        <div class="col-6"><button class="btn btn-aqua-inverse w-100 cart-btn" onclick="addCart(this)" >ADD TO CART </button></div>
                                        <div class="col-6"><a href="<?php echo path() ?>/product/<?php echo $sh['slug']; ?>" class="btn btn-aqua w-100">Buy Now</a></div>
                                    </div>
                                </div>
                            </div>
                            </article>
                        </div>
<?php 
 }
?>