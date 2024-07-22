<?php  
 if (!isset($_COOKIE["shopping_user"])) {
        header("location:login");
    }
?>
<!DOCTYPE html>
<html>

<head>
    <?php include_once("include/head.php")?>
</head>
<?php  
if (isset($_COOKIE["shopping_user"])) {
        $cookie_data = stripslashes($_COOKIE['shopping_user']);
        $cart_data = json_decode($cookie_data, true);
        foreach ($cart_data as $keys => $values) {
            $cs_id =     $values["Userid"];
            $username = $values["username"];
            $use_email = $values["use_email"];
}
}
?>

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
                    <div class="card-box">
                        <div class="card-box-body">
                            <div class="trace-order">
                                <?php 
                                $oid=$_GET['oid'];
                                    // echo "SELECT * FROM tbl_order where oid='$oid' AND uid='$cs_id'";
                                       $query=mysqli_query($con,"SELECT * FROM tbl_order where oid='$oid' AND uid='$cs_id'");
                                       if(mysqli_num_rows($query)>0){
                                        $row=mysqli_fetch_array($query);
                                        
                                        
                                        $date1  = $row['OrderDate']; 
                                        $time1=strtotime($date1);
                                        $day1   = date('d M Y', $time1);
                                        
                                        
                                        
                                        $date2  = $row['delivery_date']; 
                                        $time2=strtotime($date2);
                                        $day2   = date('d M Y', $time2);
	                                                
                                ?>
                                <div class="track-box active">
                                    <div class="track-span"><span></span></div>
                                    <div class="track-content">
                                        <h3>Ordered <?php echo date('l', strtotime($date1));echo  " ".$day1;?></h3>
                                        <p>Order ID: </b><?php echo $row['oid'];  ?></span></p>
                                        <?php 
                                            if($row['aws_no']!='') {
                                            ?>
                                            <p><b>AWS number: </b><?php echo $row['aws_no'];  ?></p>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="track-box <?php  if($row['rtd']==1){echo active;}?> ">
                                    <div class="track-span"><span></span></div>
                                    <div class="track-content">
                                        <h3>Shipped Saturday <?php  
                                        $ddate = new DateTime($day1);
                                        $ddate->modify('+7 day');
                                        echo  $ddate->format('d M Y');
                                        ?></h3>
                                        <h3>Dispached From Seller <?php if($row['rtd']==1){ echo date('l', strtotime($date));echo  " ".$day;}?></h3>
                                            <?php 
                                            if($row['delivery_link']!='') {
                                            ?>
                                            <p><b>Track Here: </b><?php echo $row['delivery_link'];  ?></p>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="track-box <?php  if($row['OrderStatus']==1){echo active;}?> ">
                                                <div class="track-span"><span></span></div>
                                                <div class="track-content">
                                                    <h3>Delivered <?php if($row['OrderStatus']==1){ echo date('l', strtotime($date2));echo  " ".$day2;}?></h3>
                                                </div>
                                            </div>
                                <?php } ?>
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