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
                        <div class="order-table">
                            <table border="1">
                                <thead>
                                    <tr>
                                        <th>Sr. No.</th>
                                        <th>Product Name</th>
                                        <th>Order Date</th>
                                        <th>Delivery Date</th>
                                        <th>Track Package</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    $oq=mysqli_query($con,"SELECT * FROM tbl_order ORDER BY id");
                                    if(mysqli_num_rows($oq)>0){
                                        while($row=mysqli_fetch_array($oq)){
                                            $date  = $row['OrderDate']; 
                                            $time  = strtotime($date);
                                            $day   = date('d M Y', $time);
                                            
                                    ?>
                                    <tr>
                                        <td>1.</td>
                                        <td><a href="<?php path(); ?>" target="_blank"><?php echo $row['product_name']; ?></a></td>
                                        <td><?php echo $day; ?></td>
                                        <td>
                                            <?php
                                            $ddate = new DateTime($day);
                                            $ddate->modify('+7 day');
                                           echo $ddate->format('d M Y')
                                            ?>
                                        </td>
                                        <td><a href="track-order?oid=<?php echo $row['oid']; ?>">Track Now</a></td>
                                    </tr>
                                    <?php } } ?>
                                </tbody>
                            </table>
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