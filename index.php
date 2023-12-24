<?php include "config/config.php";
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Portal Berita</title>

	<link rel="stylesheet" href="assets/css/bootstrap-grid.css">
	<link rel="stylesheet" href="assets/css/bootstrap-reboot.css">
	<link rel="stylesheet" href="assets/css/bootstrap-utilities.css">
	<link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/ionicons.min.css">
	<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-dark p-2">
	  <div class="container-fluid">
	    <a class="navbar-brand d-flex align-items-center" href="#">
	    	<img src="https://upload.wikimedia.org/wikipedia/commons/7/74/Seal_of_Jombang_Regency.svg" width="6%" height="6%">
	    	&nbsp; <span>Portal Berita</span>
	    </a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarScroll">
	      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="index.php?page=beranda">Beranda</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="index.php?page=berita">Berita</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="index.php?page=about">About Us</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="index.php?page=galeri">Galeri</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="index.php?page=struktur-organisasi">Struktur Organisasi</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<header id="header">
		<div class="d-flex align-items-center p-3">
			<div class="container header-box mt-3">
				<div class="row">
					<div class="col-md-12 text-center">
						<img src="https://upload.wikimedia.org/wikipedia/commons/7/74/Seal_of_Jombang_Regency.svg" height="10%" width="10%" class="img-fluid">
						<h3 class="mt-2">Website Berita Jombang</h3>
						<p>"Info Ter-update Berita Jombang"</p>
						<br><center><p>Repost by <a href='https://stokcoding.com/' title='StokCoding.com' target='_blank'></a></p></center>
						
					</div>
				</div>
			</div>
		</div>
	</header>

	<section id="sec-article" class="mt-3">

		

		<div class="container">

			<nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item active" aria-current="page"><?= $_GET['page'] ?></li>
			  </ol>
			</nav>

			<div class="row mt-3">
			<?php 

				if(isset($_GET['page'])) {
					$page = $_GET['page'];

					switch ($page) {
						case 'beranda':
							include "kategori/beranda.php";
							break;

						case 'berita':
							include "kategori/berita.php";
							break;

						case 'detail':
							include "kategori/detail-post.php";
							break;

						case 'about':
							include "kategori/about.php";
							break;


						case 'galeri':
							include "kategori/galeri.php";
							break;

						case 'struktur-organisasi':
							include "kategori/struktur-organisasi.php";
							break;

						default:
							echo "<center><h3>Maaf. Halaman tidak di temukan !</h3></center>";
							break;
					}
				} else {
					header("location: index.php?page=beranda");
					include "kategori/beranda.php";
				}

			 ?>
			 

	</section>

	

	<footer id="footer" class="mt-5 footer bg-dark">

	<div class="container footer-top">
		<div class="row gy-4">
		<div class="col-lg-6 col-md-12 footer-about">
			<p class="text-white mt-4">Jombang (Jawa: Hanacaraka: ꦗꦺꦴꦩ꧀ꦧꦁ, Pegon: جَومباڠ) adalah </br>sebuah kabupaten yang terletak di bagian tengah Provinsi Jawa Timur, Indonesia.</br> Ibu kotanya adalah Kecamatan Jombang. Kabupaten Jombang memiliki ketinggian 44 meter di atas permukaan laut, dan berjarak 79 km dari barat daya Surabaya, ibu kota Provinsi Jawa Timur.</br> Luas wilayah kabupaten Jombang yakni 1.159,50 km².</br> Pada tahun 2021, penduduk Jombang mencapai 1.325.914 jiwa, dengan kepadatan penduduk 1.143 jiwa/km2.</p>
		</div>

      <div class="col-lg-3 col-5 footer-links">
        <h4>Our Services</h4>
        <ul>
          <li><a href="index.php?page=beranda" style="color: white;">Beranda</a></li>
          <li><a href="index.php?page=berita" style="color: white;">Berita</a></li>
          <li><a href="index.php?page=about" style="color: white;">About us</a></li>
          <li><a href="index.php?page=galeri" style="color: white;">Galeri</a></li>
          <li><a href="index.php?page=struktur-organisasi" style="color: white;">Struktur Organisasi</a></li>
        </ul>
      </div>

      <div class="col-lg-2 col-md-12 footer-contact text-center text-md-start">
        <h4>Contact Us</h4>
        <p style="color: white;">Jl. K.H. Wahid Hasyim</p>
        <p style="color: white;">Jombang, Kode Pos 61411</p>
        <p style="color: white;">Indonesa</p>
        <p class="mt-4" style="color: white;"><strong>Phone:</strong> <span>+62 0821 4683 0661</span></p>
        <p style="color: white;"><strong>Email:</strong> <span>rusdingawi34@gmail.com</span></p>
      </div>

    </div>
  </div>

  <div class="container copyright text-center mt-4">
    <p style="color: white;">&copy; <span>Copyright</span> <strong class="px-1">Abiyan Nur</strong> <span>All Rights Reserved</span></p>
  </div>
</footer>




	<script src="assets/js/bootstrap.js"></script>

</body>
</html>