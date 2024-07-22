<?php
session_start();
if(!isset($_COOKIE["shopping_user"])){
	header("location:login.php"); 
}
if(isset($_COOKIE["shopping_user"]))
			{
				$cookie_data = stripslashes($_COOKIE['shopping_user']);
				$cart_data = json_decode($cookie_data, true);
				foreach($cart_data as $keys => $values)
				{
		
        	$cs_id=	 $values["Userid"]; 
        	$username=$values["username"];
			$use_email=$values["use_email"]; 
				}
			}
           
// include('include/header.php');
include('../config.php');
date_default_timezone_set('Asia/Kolkata');
function oid(){
   $mi = mysqli_query($con, "SELECT max(id) as mid FROM tbl_order");
   $smi = mysqli_fetch_array($mi);
   $oid=date('Ymdhis').$smi['mid'];
        return $pin=$oid;
}
$sel = "select * from tbl_customer where cust_id='$cs_id'"; 
    $rsc = mysqli_query($con,$sel);
    $show=mysqli_fetch_array($rsc);
    $cemail=$show['cust_email'];
    $fname=$show['cust_b_fname'];
    $lname=$show['cust_b_lname'];
    $cname=$fname." ".$lname;
    $caddress=$show['cust_b_address'];
    $state=$show['cust_b_state'];
    $ccity=$show['cust_b_city'];
    $cpin=$show['cust_b_zip'];
    $ccountry="India";
    $cphone=$show['cust_b_phone'];
    $address=$caddress.", ".$ccity.", ".$cpin.", ".$state.", ".$ccountry;
    
if(isset($_POST['amt']) && isset($_POST['name'])){
    $order=addslashes(trim($_POST['order_id']));
    $amt=addslashes(trim($_POST['amt']));
    $name=addslashes(trim($_POST['name']));
    $payment_status="pending";
    $pid=addslashes(trim($_POST['pid']));
    $added_on=date('Y-m-d h:i:s');
    $date=date('Y-m-d');
    mysqli_query($con,"insert into tbl_payment(customer_id,customer_name,customer_email,paid_amount,payment_status,payment_date) values('$cs_id','$cname','$cemail','$amt','$payment_status','$added_on')");
    // mysqli_query($con,"INSERT tbl_order set oid='$oid',qty='$qty',OrderDate='$date',PaymentStatus='$payment_status'");
    $_SESSION['OID']=mysqli_insert_id($con);
}
if(isset($_POST['payment_id']) && isset($_SESSION['OID'])){
    $order=$_POST['order_id'];
    $amt=$_POST['amt'];
    $name=$_POST['name'];
    $payment_status="pending";
    $added_on=date('Y-m-d h:i:s');
    $date=date('Y-m-d');
    $payment_id=$_POST['payment_id'];
    mysqli_query($con,"update tbl_payment set payment_status='Completed',payment_id='$payment_id',shipping_status='Pending',address='$address' where id='".$_SESSION['OID']."'");
    // mysqli_query($con,"DELETE FROM `tbl_cart` WHERE cs_id=$cs_id");
    $date=date('Y-m-d');
    $a=0;
    foreach ($_SESSION['cart'] as $pid => $value){
        $que = mysqli_query($con, "SELECT * FROM tbl_product where p_id='$pid'");
        $row = mysqli_fetch_array($que);
        $uprice=$row['p_current_price'];
        $que1 = mysqli_query($con, "SELECT size_name FROM tbl_size where size_id='".$row['p_size']."'");
        $row1 = mysqli_fetch_array($que1);
        $size=$row1['size_name'];
        $que2 = mysqli_query($con, "SELECT color_name FROM tbl_color where color_id='".$row['color']."'");
        $row2 = mysqli_fetch_array($que2);
        $color=$row2['color_name'];
        $oid=oid();
        $pid=addslashes(trim($row['p_id']));
        $qty=$value['quantity'];
        $oq="INSERT tbl_order set sku='".$row['p_sku']."',OrderStatus='0',product_id='$pid',product_name='".$row['p_name']."',oid='$oid',size='$size',unit_price='$uprice',color='$color',quantity='$qty',OrderDate='$date',uid='$cs_id',payment_id='$payment_id'";
            $sod=mysqli_query($con,$oq);
            
        }
        if($sod){
                $to = "tyadav82@gmail.com"; // change this email to your //
                $subject = "You have got new orders";
                $body = "
                <!DOCTYPE html>
<html>
<head>
    <style>
        /* Add some basic styling for the email */
        body {
            font-family: Arial, sans-serif;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>New Order From Website</h1>
    <table>
        <tr>
            <th>Message</th>
        </tr>
        <tr>
            <td>New Order From Website</td>
        </tr>
    </table>

    <h2>Order Details</h2>
    <table>
        <tr>
            <th>Customer Name</th>
            <th>Customer Email</th>
        </tr>
        <tr>
            <td>$cname</td>
            <td>$cemail</td>
        </tr>
        <tr>
            <th>Payment Method</th>
            <th>Payment Date</th>
        </tr>
        <tr>
            <td>Online</td>
            <td>$date</td>
        </tr>
        <tr>
            <th>Paid Amount</th>
            <th>Payment Status</th>
        </tr>
        <tr>
            <td>$amt</td>
            <td>Completed</td>
        </tr>
        <tr>
            <th>Shipping Status</th>
            <th>Payment Id</th>
        </tr>
        <tr>
            <td>Pending</td>
            <td>$payment_id</td>
        </tr>
    </table>

    <h2>Product Item 1</h2>
    <table><tr>
            <th>Product Name</th>
            <th>Size</th>
            <th>Color</th>
            <th>Quantity</th>
            <th>Unit Price</th>
        </tr>";
     foreach ($_SESSION['cart'] as $pid => $value){
        $que = mysqli_query($con, "SELECT * FROM tbl_product where p_id='$pid'");
        $row = mysqli_fetch_array($que);
        $que12 = mysqli_query($con, "SELECT size_name FROM tbl_size where size_id='".$row['p_size']."'");
        $row12 = mysqli_fetch_array($que12);
        $size2=$row12['size_name'];
        $que22 = mysqli_query($con, "SELECT color_name FROM tbl_color where color_id='".$row['color']."'");
        $row22 = mysqli_fetch_array($que22);
        $color2=$row22['color_name'];
        $body.="
        <tr>
            <td>".$row['p_name']."</td>
             <td>$size2</td>
            <td>$color2</td>
            <td>$qty</td>
            <td>".$row['p_current_price']."</td>
        </tr>";
     }
    $b.="</table>
</body>
</html>
";
                $header = "MIME-Version: 1.0" . "\r\n";
                $header .= "Content-type:text/html;charset=UTF-8" . "\r\n";
                $header .= "From: $cemail";
                
                if(mail($to,$subject,$body,$header))
                { 
                    // echo "sucess";
                }
                $to1 = $cemail; // change this email to your //
                $from= "support@typecase.in";
                $subject1 = "Order Confirmation";
                $body1 = "
                <!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Order Confirmation</h1>
    <table>
        <tr>
            <th>We have received your order and will be processing it shortly.</th>
        </tr>
        <tr>
            <td>New Order From Website</td>
        </tr>
    </table>

    <h2>Order Details</h2>
    <table>
        <tr>
            <th>Customer Name</th>
            <th>Customer Email</th>
        </tr>
        <tr>
            <td>$cname</td>
            <td>$cemail</td>
        </tr>
        <tr>
            <th>Payment Method</th>
            <th>Online</th>
        </tr>
        <tr>
            <td>Payment Details</td>
            <td>$date</td>
        </tr>
        <tr>
            <th>Paid Amount</th>
            <th>Payment Status</th>
        </tr>
        <tr>
            <td>$amt</td>
            <td>Completed</td>
        </tr>
    </table>

    <h2>Product Item 1</h2>
    <table>
        <tr>
            <th>Product Name</th>
            <th>Size</th>
            <th>Color</th>
            <th>Quantity</th>
            <th>Unit Price</th>
        </tr>";
     foreach ($_SESSION['cart'] as $pid1 => $value1){
        $quem = mysqli_query($con, "SELECT * FROM tbl_product where p_id='$pid1'");
        $rm = mysqli_fetch_array($quem);
        $que11 = mysqli_query($con, "SELECT size_name FROM tbl_size where size_id='".$rm['p_size']."'");
        $row11 = mysqli_fetch_array($que11);
        $size1=$row11['size_name'];
        $que21 = mysqli_query($con, "SELECT color_name FROM tbl_color where color_id='".$rm['color']."'");
        $row21 = mysqli_fetch_array($que21);
        $color1=$row21['color_name'];
        $body1.="
        <tr>
            <td>".$rm['p_name']."</td>
            <td>$size1</td>
            <td>$color1</td>
            <td>".$value1['quantity']."</td>
            <td>".$rm['p_current_price']."</td>
        </tr>";
     }
    $b.="</table>
</body>
</html>
                ";
                $header1 = "MIME-Version: 1.0" . "\r\n";
                $header1 .= "Content-type:text/html;charset=UTF-8" . "\r\n";
                $header1 .= "From: $from";
                if(mail($to1,$subject1,$body1,$header1))
                { 
                    // echo "sucess";
                }
                unset($_SESSION['cart']);
            }
}
?>