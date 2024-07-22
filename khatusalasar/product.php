<?php require_once('header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>View Products</h1>
	</div>
	<div class="content-header-right">
		<a href="product-add.php" class="btn btn-primary btn-sm">Add Product</a>
	</div>
</section>

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-body table-responsive">
					<table id="example1" class="table table-bordered table-hover table-striped">
					<thead class="thead-dark">
							<tr>
								<th width="10">#</th>
								<th>Photo</th>
								<th>Product Name</th>
								<th width="60">Old Price</th>
								<th width="60">(C) Price</th>
								<th>SKU </th>
								<th>Product Size</th>
								<th>Active?</th>
								<!--<th>Category</th>-->
								<th width="130">Action</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$i=0;
							$statement = $pdo->prepare("SELECT p_id,
                            							p_name,
                            					        p_old_price,
                            					        p_current_price,
													    p_sku,
													    p_featured_photo,
													    p_size,
													    p_is_active

												   FROM tbl_product
												   ORDER BY p_id DESC
						                           	");
							$statement->execute();
							$result = $statement->fetchAll(PDO::FETCH_ASSOC);
							//print_r($result); exit;
							foreach ($result as $row) {
								$i++;
								$pid=$row['p_id'];
								$statement1 = $pdo->prepare("SELECT * FROM tbl_product_photo where p_id='$pid'");
    							$statement1->execute();
    							$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
    							foreach ($result1 as $row1) {
    							    $img=$row1['photo'];
    							}
								?>
								<tr>
									<td><?php echo $i; ?></td>
									<td style="width:82px;"><img src="../assets/images/product-image/<?php echo $img; ?>" alt="<?php echo $row['p_name']; ?>" style="width:80px;"></td>
									<td><?php echo $row['p_name']; ?></td>
									<td>INR<?php echo $row['p_old_price']; ?></td>
									<td>INR<?php echo $row['p_current_price']; ?></td>
									<td><?php echo $row['p_sku']; ?></td>
									<td><?php echo $row['p_size']; ?> </td>
									<td>
										<?php if($row['p_is_active'] == 1) {echo '<span class="badge badge-success" style="background-color:green;">Yes</span>';} else {echo '<span class="badge badge-danger" style="background-color:red;">No</span>';} ?>
									</td>
								
									<td>
									    <a href="product-variant.php?id=<?php echo $row['p_id']; ?>" class="btn btn-primary btn-xs">Variant</a>										
										<a href="product-edit.php?id=<?php echo $row['p_id']; ?>" class="btn btn-primary btn-xs">Edit</a>
										<a href="#" class="btn btn-danger btn-xs" data-href="product-delete.php?id=<?php echo $row['p_id']; ?>" data-toggle="modal" data-target="#confirm-delete">Delete</a>  
									</td>
								</tr>
								<?php
							}
							?>							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Delete Confirmation</h4>
            </div>
            <div class="modal-body">
                <p>Are you sure want to delete this item?</p>
                <p style="color:red;">Be careful! This product will be deleted from the order table, payment table, size table, color table and rating table also.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger btn-ok">Delete</a>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>