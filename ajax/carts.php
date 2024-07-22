<?php
function path()
{
	echo "https://typecase.in";
}
include '../config.php';
session_start();
if (isset($_POST['action'])) {
	$qty = $_POST['quantity'];
	$pid = $_POST['product_id'];
	$quer = mysqli_query($con, "SELECT * FROM tbl_product_photo where p_id='$pid' limit 1");
	$im = mysqli_fetch_array($quer);
	  $img = $im['photo'];

	// Function to add a product to the cart
	function addToCart($product)
	{
		if (isset($_SESSION['cart'][$product['pid']])) {
			// Product already exists in the cart, increment the quantity
			$_SESSION['cart'][$product['pid']]['quantity'] = $_SESSION['cart'][$product['pid']]['quantity'] + $product['quantity'];
		} else {
			// Product doesn't exist in the cart, add it
			$_SESSION['cart'][$product['pid']] = [
				'id' => $product['pid'],
				'quantity' => $product['quantity'],
				'image' => $product['image']

			];
		}
	}

	// Function to update the quantity of a product in the cart
	function updateQuantity($productId, $quantity)
	{
		if (isset($_SESSION['cart'][$productId])) {
			if ($quantity > 0) {
				$_SESSION['cart'][$productId]['quantity'] = $quantity;
			} else {
				// If quantity is 0 or less, remove the product from the cart
				removeProduct($productId);
			}
		}
	}


	// Function to clear the cart
	function clearCart()
	{
		unset($_SESSION['cart']);
	}

	// Example usage:

	// Add a product to the cart
	$product1 = [
		'pid' => $pid,
		'quantity' => $qty,
		'image' => $img
	];
	addToCart($product1);
	
}
if (isset($_POST['remove'])) {

	$pid = $_POST['pid'];
	// echo $pid;exit;
	unset($_SESSION['cart'][$pid]);
}
?>
<div class="body customScroll">
	<ul class="minicart-product-list">
		<?php
		foreach ($_SESSION['cart'] as $pid => $value){
      
                 $que = mysqli_query($con, "SELECT * FROM tbl_product where p_id='$pid'");
                    $row1 = mysqli_fetch_array($que);
                ?>
                <li class="">
                    <a href="single-product.php" class="image"><img
                            src="<?php path() ?>/assets/img/product/<?php echo $value['image']; ?>" alt="Cart product Image"></a>
                    <div class="content">
                        <a href="single-product.php" class="title"><?php echo $row1['p_name']; ?></a>
                        <span class="quantity-price"><?php echo $value['quantity']; ?> x <span class="amount"><?php echo $row1['p_price']; ?></span></span>
                        <div class="shopping-cart-delete" data-id="<?php echo $pid  ?>">
                        <button onclick="removeCart(this)" class="remove">×</button>
                        </div>
                    </div>
                </li>
                <?php 
                $t = $row1['p_price'] * $value['quantity'];
                $a=$a+$t;
                }  ?>
            </ul>
        </div>
        <div class="shopping-cart-total">
		<div class="grand-totall">
			<div class="title-wrap">
			<h4 class=" cart-bottom-title section-bg-gary- Carts"> <b>Cart Total</b> <span>INR <?php echo $t; ?></span></h4>
			</div>
			<h4 class="grand-totall-title shipping-title text-white title3 mt-3">Shipping Charge <span>INR <b>0</b></span></h4>
			<h4 class="grand-totall-title text-white title2">Grand Total <span>INR <b><?php echo $t; ?></b></span></h4>
			<a href="<?php path();?>/checkout" class="btn btn-aqua w-100">Proceed to Checkout</a>
		   </div>
        </div>
<div class="foot">
	<div class="buttons">
		<a href="<?php path() ?>/carts" class="btn btn-dark btn-hover-primary mb-30px">view cart</a>
		<a href="<?php path() ?>/checkout" class="btn btn-outline-dark current-btn">checkout</a>
	</div>
</div>