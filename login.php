<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
if(isset($_COOKIE["shopping_user"])){
	header("location:dashboard.php");
}
// print_r($_COOKIE["shopping_user"]);

if (isset($_POST["login"])) {
    include 'config.php';

    if (!empty($_POST['email']) && !empty($_POST['password'])) {
        $user = $_POST['email'];
        $pass = $_POST['password'];

        // Use prepared statements to prevent SQL injection
        $stmt = mysqli_prepare($con, "SELECT * FROM tbl_customer WHERE cust_email=? AND cust_password=?");
        mysqli_stmt_bind_param($stmt, "ss", $user, $pass);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        if (mysqli_num_rows($result) != 0) {
            $row = mysqli_fetch_assoc($result);
            $dbusername = $row['cust_name'];
            $dbpassword = $row['cust_password'];
            $dbEmail = $row['cust_email'];
            $id = $row['cust_id'];
            $status = $row['cust_status'];

            if ($status == '0') {
                $re = "<div class='alert alert-danger' role='alert'>Your account has been suspended.</div>";
            } else {
                $cart_data = array();
                $item_array = array(
                    'Userid' => $id,
                    'username' => $dbusername,
                    'use_email' => $dbEmail
                );
                $cart_data[] = $item_array;
                $item_data = json_encode($cart_data);

                // Set the cookie with a valid name
                setcookie('shopping_user', $item_data, time() + (86400 * 30), '/'); // '/' makes the cookie available throughout the site

                // Redirect to the desired page
                header("Location: index.php?success=1");
                exit(); 
            }
        } else {
            $re = "<div class='alert alert-danger' role='alert'>Invalid username or password!</div>";
        }
    } else {
        $re = "<div class='alert alert-warning' role='alert'>All fields are required!</div>";
    }
}

    
?>
<!DOCTYPE html>
<html>
<head>
    <?php include_once("include/head.php");
     ?>
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
                            <span>Account</span>
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
            <div class="row">
                <div class="col-md-9 col-lg-6 mx-auto">
                    <div class="card-box review-form">
                        <div class="card-box-body">
                          <?php
                          if(isset($re)){
                          echo $re;
                          }?>
                            <h1 class="text-center title2 text-black mb-1">Login</h1>
                            <form  method="POST" action=''>
                                <div class="form-group">
                                    <!-- <label for="" class="text-black">Email*</label>  -->
                                    <input type="email" required="" class="form-control" name="email" placeholder="Your Email">
                                </div>
                                <div class="form-group">
                                    <!-- <label for="" class="text-black">Password*</label> -->
                                    <input class="form-control" required="" type="password" name="password" placeholder="Password">
                                </div>
                                <button type="submit" class="btn btn-aqua w-100" name="login">Login Now</button>
                            </form>
                                <div class="form-row mt-3">
                                    <div class="col-6">
                                        <a href="<?php path();?>/register" class="text-underline text-black d-inline-block">Create an account?</a>
                                    </div>
                                    <div class="col-6 text-right">
                                        <a href="<?php path();?>/forgot-password" class="text-underline text-grey d-inline-block">Forgot Password?</a>
                                    </div>
                                </div>
                            
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