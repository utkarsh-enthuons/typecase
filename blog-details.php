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
    <?php
		  $id=$_GET['slug'];
		  $query=mysqli_query($con,"SELECT * from blogs where slug='$id'");
			$row1=mysqli_fetch_array($query);
			$date  = $row1['created_at']; 
			$time  = strtotime($date);
			$day   = date('d M Y', $time);
		?>
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
                            <span><?php echo $row1['name']; ?></span>
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
                <div class="col-md-8">
                    <div class="blog-detail back_white">
                        <div class="blog-img mb-3">
                            <img src="<?php path();?>/assets/images/blog-image/<?php echo $row1['banner'];?>" class="w-100" alt="">
                        </div>
                        <div class="blog-content p-3">
                            <h1 class="title2 text-black mb-3"><?php echo $row1['name']; ?></h1>
                            <p><span><?php echo $row1['description']; ?></span></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="right-sidebar">
                        <div class="recent-box">
                            <div class="recent-head">
                                <h5 class="title3 text-black mb-0">Trending Post</h5>
                            </div>
                            <div class="recent-body">
                            <?php 
                                $query=mysqli_query($con,"SELECT * from blogs ");
                                while($row=mysqli_fetch_array($query)){
                                    $date  = $row['created_at']; 
                                    $time  = strtotime($date);
                                    $day   = date('d M Y', $time);
                             ?>
                                <div class="recent-post">
                                    <a href="<?php path();?>/blogs/<?php echo $row['slug'];?>" class="blog-cat d-inline-block mb-2">SAFETY</a>
                                    <a href="<?php path();?>/blogs/<?php echo $row['slug'];?>" class="blog-title d-block"><?php echo $row['name'];?></a>
                                    <div class="posted"><?php echo $day ; ?></div>
                                </div>
                               
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- blog list section ended... -->

    <?php include_once("include/footer.php")?>
</body>
</html>