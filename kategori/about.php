<?php 

//memanggil dari tbl_about

	//include "config/config.php;
	$sql = mysqli_query($con, "SELECT * FROM tbl_about");
	$data = mysqli_fetch_array($sql);

 ?>

 
<h4>About Us</h4>
<p class = "text-center">
	<style>
		p {
			font-weight : bold;
			font-style: italic;
		}
	</style>
<?=  $data['artikel']?>
</p>



