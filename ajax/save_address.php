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
 include '../config.php';
if(isset($_POST['add']))
 {
    $first_name=addslashes(trim($_POST['fname'])); //exit; 
    $last_name=addslashes(trim($_POST['lname']));
    // $companyname=addslashes(trim($_POST['coname']));
    $address=addslashes(trim($_POST['address']));
    $city=addslashes(trim($_POST['town']));
    $zip=addslashes(trim($_POST['zipcode']));
    $state=addslashes(trim($_POST['state']));
    $country=addslashes(trim('India'));
    $phone=addslashes(trim($_POST['phone']));
    $email=addslashes(trim($_POST['email']));
    $adinfo=addslashes(trim($_POST['add_info']));
			 $ins = "UPDATE tbl_customer set cust_b_country='$country',add_info='$adinfo',cust_b_fname='$first_name',cust_b_lname='$last_name',cust_b_phone='$phone',cust_b_address='$address',cust_b_city='$city',
			cust_b_state='$state',cust_b_zip='$zip' where cust_id='$cs_id' ";
			$rsc = mysqli_query($con,$ins);
// 			if($rsc)
// 			{
//              header("location: checkout");
// 			}
 }
?>