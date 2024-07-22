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

include 'config.php';
    if($_POST['save']){
        $pass=trim(addslashes($_POST{'cus_name'}));
        $qry=mysqli_query($con,"update tbl_customer set cust_password='$pass' where cust_id='$cs_id'");
        
    }

1?>