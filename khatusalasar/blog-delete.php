<?php require_once('header.php'); ?>

<?php
// Preventing the direct access of this page.
if(!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Check the id is valid or not
	$statement = $pdo->prepare("SELECT * FROM blogs WHERE id=?");
	$statement->execute(array($_REQUEST['id']));
	$total = $statement->rowCount();
	if( $total == 0 ) {
		header('location: logout.php');
		exit;
	}
}
?>

<?php
    // Getting photo ID to unlink from folder
	$statement = $pdo->prepare("SELECT * FROM blogs WHERE id=?");
	$statement->execute(array($_REQUEST['id']));
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
	foreach ($result as $row) {
		$photo = $row['banner'];
	}

	// Unlink the photo
	if($photo!='') {
		unlink('../assets/images/blog-image/'.$photo);	
	}

	// Delete from tbl_color
	$statement = $pdo->prepare("DELETE FROM blogs WHERE id=?");
	$statement->execute(array($_REQUEST['id']));

	header('location: blog.php');
?>