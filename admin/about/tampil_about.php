<?php 

	$author = $_SESSION['pengguna'];

	$sql = mysqli_query($con, "SELECT * FROM tbl_about");

 ?>
<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header">
				<h5>Data About Us</h5>
			</div>
			<div class="card-body">
				<table class="table table-bordered">
					<tr class="text-center">
						<th>#</th>
						<th>Artikel</th>
						<th>Date</th>						
						<th>Aksi</th>
					</tr>
				<?php $no = 1; foreach($sql as $data): ?>
					<tr>
						<td><?= $no++; ?></td>
						<td><?= $data['artikel'] ?></td>
						<td><?= $data['date'] ?></td>
						<td class="text-center">
							<a href="index.php?page=edit-about&id=<?=$data['id'] ?>" class="btn btn-warning text-white">
								<i class="fas fa-edit"></i>
							</a>
						</td>
					</tr>
				<?php endforeach; ?>
				</table>
			</div>
		</div>
	</div>
</div>