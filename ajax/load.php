<?php
// Include any necessary configuration or database connection here
// ...

function path()
{
    echo "https://typecase.in";
}

$con = mysqli_connect("localhost", "demowdix_typecase", "deWLrh?}N6P[", "demowdix_typecase") or die("Not Database connect");

$query = "SELECT * FROM tbl_product where p_is_active='1'";

// Handle your POST data and modify the $query as needed here
// ...

$prd = mysqli_query($con, $query);
$response = array();

while ($sh = mysqli_fetch_array($prd)) {
    $productData = array(
        'id' => $sh['p_id'],
        'vendor' => $sh['p_vendor'],
        'name' => $sh['p_name'],
        'old_price' => $sh['p_old_price'],
        'current_price' => $sh['p_current_price'],
        'discount' => intval(($sh['p_old_price'] - $sh['p_current_price']) / $sh['p_old_price'] * 100),
        // Add any other data you want to include
    );

    $response[] = $productData;
}

// Output the data as JSON
header('Content-Type: application/json');
echo json_encode($response);
?>
