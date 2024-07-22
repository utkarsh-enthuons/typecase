 <?php 
   session_start();
    $cart=$_SESSION['cart'];
    // print_r($cart);
   echo "Bag (".count($_SESSION['cart']).")";
 ?>
 
 