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
                            <a href="<?php path();?>/" class="d-inline">Home</a>
                        </li class="d-inline">
                        <li>
                            <span>Blog</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- blog list section started... -->
    <section class="py-60 mt-3 back_blue-1">
        <div class="container">
            <div class="row">
               <?php 
                 $query=mysqli_query($con,"SELECT * from blogs ");
                 while($row=mysqli_fetch_array($query)){
                     $date  = $row['created_at']; 
                     $time  = strtotime($date);
                     $day   = date('d M Y', $time);
                  ?>
                <div class="col-md-4 mb-4">
                    <div class="blog-box">
                        <a class="d-block blog-img">
                            <img src="<?php path();?>/assets/images/blog-image/<?php echo $row['banner'];?>" alt="">
                            <div class="date"><span></span><?php echo $day ; ?></div>
                        </a>
                        <div class="blog-content">
                            <h4><a href="<?php path();?>/blogs/<?php echo $row['slug'];?>"><?php echo $row['name'];?></a></h4>
                            <p><?php echo $row['short_description'];?></p>
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <a href="<?php path();?>/blogs/<?php echo $row['slug'];?>" class="btn btn-aqua">Read More</a>
                                </div>
                                <div class="col-6 text-right"><b><a href="<?php path();?>/blogs/<?php echo $row['slug'];?>" class="font-18">Admin</a></b></div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </section>
    <!-- blog list section ended... -->

    <?php include_once("include/footer.php")?>
</body>
</html>