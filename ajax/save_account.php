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
        $cname=trim(addslashes($_POST{'cus_name'}));
        $cphone=trim(addslashes($_POST{'cus_phone'}));
        $cemail=trim(addslashes($_POST{'cus_email'}));
        $qry=mysqli_query($con,"update tbl_customer set cust_name='$cname',cust_email='$cphone',cust_phone='$cphone' where cust_id='$cs_id'");
        
    }

1?>