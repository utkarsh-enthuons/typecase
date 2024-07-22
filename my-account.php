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
if(isset($_POST['save_changes'])){
    $name=addslashes(trim($_POST['name']));
    $address=addslashes(trim($_POST['address']));
    $city=addslashes(trim($_POST['city']));
    $state=addslashes(trim($_POST['state']));
    $zip=addslashes(trim($_POST['pin']));
    $country=addslashes(trim($_POST['country']));
    $phone=addslashes(trim($_POST['phone']));
    $email=addslashes(trim($_POST['email']));
    $ins = "Update  tbl_customer set cust_name='$name',cust_address='$address',cust_city='$city',cust_state='$state',cust_zip='$zip',cust_email='$email',cust_country='$country',cust_phone='$phone' Where cust_id='$cs_id'";
			$rsc = mysqli_query($con,$ins);
	}
	$qu=mysqli_query($con,"SELECT * FROM tbl_customer where cust_id='$cs_id'");
	$row=mysqli_fetch_array($qu);
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
                            <h5 class="text-black">My Account</h5>
                            <form action="" method="post">
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="first_name">Name</label>
                                            <input type="text" id="first_name" name="name" value="<?php echo $row['cust_name']; ?>" class="form-control">
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="your_Phone">Your Phone</label>
                                            <input type="number" minlength='10' name="phone" maxlength="10" value="<?php echo $row['cust_phone']; ?>" id="your_Phone" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="your_email">Your Email</label>
                                            <input type="email" id="your_email" name="email" value="<?php echo $row['cust_email']; ?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="address">Address</label>
                                            <input type="text" name="address" id="address" value="<?php echo $row['cust_address']; ?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="city">City</label>
                                            <input type="text" name="city" id="city" value="<?php echo $row['cust_city']; ?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="apartment">Zipcode</label>
                                            <input type="number" maxlength='6' name="pin" id="zipcode" value="<?php echo $row['cust_zip']; ?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="state">State</label>
                                            <?php 
                                         $q=mysqli_query($con,"select * from tbl_state "); 
                                    ?>
                                    <select name="state" id="state" class="form-control" >
                                        <option value="0" selected="">Choose State</option>
                                        <?php 
                                            while($r=mysqli_fetch_array($q)){
                                         ?>
                                              <option value="<?php echo  $r['state']; ?>" <?php  if($r['state']==$row['cust_state']){ echo "selected"; } ?>><?php echo $r['state']; ?></option>
                                           <?php  } ?>  
                                    </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="region">Country/Region</label>
                                            <select name="" id="region" class="form-control">
                                                <option value="" disabled selected>--Choose Region--</option>
                                                <option value="India" <?php if($row['cust_country']=='India'){ echo "selected"; } ?>>India</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <div class="text-center">
                                    <input type="submit" name="save_changes" class="btn btn-aqua w-100" value="Save Changes">
                                </div>
                            </form>
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