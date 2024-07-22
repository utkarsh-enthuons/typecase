<?php 
if(isset($_COOKIE["shopping_user"])){
    setcookie("shopping_user", "", time() - 3600, '/');

    header("Location: login.php"); // You can redirect to your login page
    exit();
}
?>