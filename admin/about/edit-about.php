<?php 

	$id = $_GET['id'];

	$sql = mysqli_query($con, "SELECT * FROM tbl_about WHERE id='$id'");
	$data = mysqli_fetch_array($sql);

 ?>

 <?php 
 if(isset($_POST['simpan'])) {
    $id =$_GET['id'];
    $isi=$_POST['isi'];

    $sql = mysqli_query($con,"UPDATE tbl_about SET artikel='$isi' where id='$id' ");
    echo "<script>alert('Data Berhasil Di ubah!')</script>";
				echo "<script>window.location.href='index.php?page=tampil-beranda'</script>";
 }

 ?>

<form action="" method="post">
    <div class="mb-3 row">
        <label for="isi" class="col-sm-2 col-form-label">isi</label>
        <div class="col-sm-10">
            <textarea name="isi" class="form-control" id="summernote"><?= $data['artikel'] ?></textarea>
        </div>
    </div>
    <div class="mb-3 row">
        <div class="col-sm-2"></div>
        <div class="col-sm-10">
            <input type="submit" name="simpan"  value="Simpan Data" class="btn btn-primary" />
        </div>
    </div>
</form>