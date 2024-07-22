<?php 
include '../config.php';
$email=$_POST['email'];
$query=mysqli_query($con,"SELECT count(*) as total FROM tbl_customer where cust_email='$email' ");
$re=mysqli_fetch_array($query);
 $total=$re['total'];

if($total>=1){
    echo "<span class='error'> Email already exists </span>";
} else{
    echo "<span class='success'>Valid Email </span>";
}
?>