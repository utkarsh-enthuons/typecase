<?php
include '../config.php';
$name = htmlspecialchars(trim($_POST['name']));
$email = htmlspecialchars(trim($_POST['email']));
$pass = htmlspecialchars(trim($_POST['password']));
$mobile = htmlspecialchars(trim($_POST['phone']));

if (empty($name) || empty($email) || empty($pass) || empty($mobile)) {
    echo '<div class="alert alert-warning" role="alert">please fill all required field</div>';
} else {
    $sql = "insert into tbl_customer(cust_name,cust_email,cust_password,cust_phone) values ('$name','$email','$pass','$mobile')";
    if ($res = mysqli_query($con,$sql)) {
        echo '<div class="alert alert-success" role="alert">Account Created Successfully </div>';
    } else {
        echo '<div class="alert alert-warning" role="alert">Something went wrong</div>';
    }
}
