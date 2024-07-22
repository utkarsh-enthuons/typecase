<?php 
function path()
{
	echo "https://typecase.in";
}
include '../config.php';
     $pid=$_POST['cid'];
    $vid=base64_decode($_POST['vid']);
    $query="SELECT * FROM tbl_product where p_is_active='1' AND p_id='$pid'";
    $rq=mysqli_query($con,"$query");
    if(mysqli_num_rows($rq)>0){
        $row=mysqli_fetch_array($rq);
        $cp=$row['p_old_price']; 
            $sp=$row['p_current_price'];
            $dp=$cp-$sp;
            $discount=$dp/$cp*100;
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
                                    <a href="<?php echo path() ?>/product/<?php echo $row['slug']; ?>" class="cat-name d-inline-block px-2 py-1 mb-1"><?php echo $row['p_vendor']; ?></a>
                                    <a href="<?php echo path() ?>/product/<?php echo $row['slug']; ?>" class="product-title"><?php echo $row['p_name']; ?></a>
                                    <div class="product-price d-flex align-items-center">
                                        <span class="new-price d-inline-block mr-2">&#8377;<?php echo $row['p_current_price']; ?></span><span class="old-price d-inline-block mr-2">&#8377;<?php echo $row['p_old_price']; ?></span> <span class="d-inline-block offer"><?php  echo intval($discount) ?>% Off</span>
                                    </div>
                                    <div class="color">
                                        <?php 
                                        if($vid==''){
                                            $vid=$pid;
                                        }
                                        $qu="SELECT * FROM `tbl_color` c INNER JOIN tbl_product p on p.color=c.color_id where p.variant='$vid' OR p.p_id=$vid";
                                        $vc=mysqli_query($con,$qu);
                                        if(mysqli_num_rows($vc)>0){
                                        while($sco=mysqli_fetch_array($vc)){
                                        ?>
                                        <span style="background: <?php echo $sco['code']; ?>" onclick="color_variant(this)" id="<?php echo $sco['p_id']; ?>" variant="<?php echo base64_encode($sco['variant']); ?>"></span>
                                        <?php }} ?>
                                    </div>
                                    <input class="product-quantity_val" type="hidden" name="qtybutton" readonly="" value="1">
                                    <div class="form-row product-button">
                                        <div class="col-6"><button class="btn btn-aqua-inverse w-100 cart-btn" onclick="addCart(this)" >ADD TO CART</button></div>
                                        <div class="col-6"><a href="" class="btn btn-aqua w-100">Buy Now</a></div>
                                    </div>
                                </div>
  <?php }                          
?>