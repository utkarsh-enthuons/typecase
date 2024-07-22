<!DOCTYPE html>
<html>

<head>
    <?php include_once("include/head.php")?>
</head>

<body>
    <div id="shopify-section-header" class="shopify-section">
        <div data-section-id="header" data-section-type="header">
            <?php include_once("include/header.php")?>
        </div>
    </div>
    <section class="sub-banner back_blue-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul
                        class="breadcrumbs py-2 list-unstyled d-inline-block flex-wrap justify-content-center justify-content-lg-start">
                        <li class="d-inline">
                            <a href="<?php path();?>" class="d-inline">Home</a>
                        </li class="d-inline">
                        <li>
                            <span>Customer Service</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- business order started... -->
    <section class="py-60 policy">
        <div class="container">
            <h1 class="text-center title text-black">Customer Service</h1>
            <p class="mb-5 text-center">Should you require information or help, please contact us by <a href="mailto:support@typecase.in" class="text-black text-underline">email</a> or by phone and we will be happy to assist you. </p>
            <h5>SHIPPING TIMES AND COSTS</h5>
            <ul class="mb-4">
                <li>Complimentary ground shipping within 1 to 7 business days</li>
                <li>In-store collection available within 1 to 7 business days</li>
                <li>Next-day and Express delivery options also available</li>
                <li>Purchases are delivered in an orange box tied with a Bolduc ribbon, with the exception of certain items</li>
                <li>See the delivery FAQs for details on shipping methods, costs and delivery times</li>
            </ul>
            <h5>PAYMENT METHODS</h5>
            <p>Shella accepts the following payment methods:</p>
            <ul class="mb-4">
                <li>Credit Card: Visa, MasterCard, Discover, American Express, JCB, Visa Electron. The total will be charged to your card when the order is shipped.</li>
                <li>Shella features a Fast Checkout option, allowing you to securely save your credit card details so that you don't have to re-enter them for future purchases.</li>
                <li>PayPal: Shop easily online without having to enter your credit card details on the website.Your account will be charged once the order is completed. To register for a PayPal account, visit the website <a href="https://paypal.com" target="_blank" class="text-black text-underline">paypal.com.</a></li>
            </ul>
            <h5>EXCHANGES, RETURNS AND REFUNDS</h5>
            <p>Items returned within 14 days of their original shipment date in same as new condition will be eligible for a full refund or store credit. Refunds will be charged back to the original form of payment used for purchase. Customer is responsible for shipping charges when making returns and shipping/handling fees of original purchase is non-refundable.</p>
        </div>
    </section>
    <!-- business order ended... -->
    <?php include_once("include/footer.php")?>
</body>
</html>