<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard | SI Blogger</title>

  <link href="../assets/css/summernote-image-list.min.css">
  <script src="../assets/js/summernote-image-list.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"></link>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="../assets/css/be/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="../assets/css/ionicons.min.css">
  <!-- Main CSS -->
  <link rel="stylesheet" href="../assets/css/be/adminlte.min.css">

  <style>
    .image-list-content .col-lg-3 { width: 100%;}
        .image-list-content img { float: left; width: 20%}
        .image-list-content p {float ,left, padding-left: 20px}
        .image-list-item{padding:10px opx 10px 0px ;}
    .table tr td {
      width: 20px;
    }
  </style>
</head>

<body class="hold-transition sidebar-mini">
	<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a href="logout.php" class="nav-link text-primary"><i class="fas fa-sign-out-alt"></i>&nbsp;Log Out</a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="../assets/img/be/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">SI Blogger</span>
    </a>

    <?php
        include "../config/config.php";

        $sql = mysqli_query($con, "SELECT * FROM tbl_users WHERE id_user='$_SESSION[id]'");
        $data = mysqli_fetch_array($sql);
     ?>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../assets/img/<?= $data['img'] ?>" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block"><?= $_SESSION['pengguna'] ?></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <?php if($_SESSION['lvluser'] == 1) { ?>
            <li class="nav-item menu-open">
              <a href="index.php?page=home" class="nav-link active">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>
                  Dashboard
                </p>
              </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-clipboard"></i>
              <p>
                Posting
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    Post Beranda
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="index.php?page=tampil-beranda" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Data Beranda</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="index.php?page=tambah-beranda" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Tambah Data</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    Post Berita
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="index.php?page=tampil-berita" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Data Berita</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="index.php?page=tambah-berita" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Tambah Berita</p>
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
            <li class="nav-item">
              <a href="index.php?page=about" class="nav-link">
                <i class="nav-icon fas fa-book"></i>
                <p>
                  About Us
                  <!-- <span class="right badge badge-danger">New</span> -->
                </p>
              </a>
            </li>
           <!-- <li class="nav-item">
              <a href="index.php?page=peraturan" class="nav-link">
                <i class="nav-icon fas fa-sticky-note"></i>
                <p>
                  Peraturan
                </p>
              </a>
            </li>-->
            <li class="nav-item">
              <a href="index.php?page=galeri" class="nav-link">
                <i class="nav-icon fas fa-th"></i>
                <p>
                  Galeri
                  <!-- <span class="right badge badge-danger">New</span> -->
                </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="index.php?page=struktur-organisasi" class="nav-link">
                <i class="nav-icon fas fa-users"></i>
                <p>
                  Struktur Organisasi
                  <!-- <span class="right badge badge-danger">New</span> -->
                </p>
              </a>
            </li>
          </li>
        <?php } elseif($_SESSION['lvluser'] == 2) { ?>
          <li class="nav-item menu-open">
              <a href="index.php?page=home" class="nav-link active">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>
                  Dashboard
                </p>
              </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-clipboard"></i>
              <p>
                Posting
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    Post Berita
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="index.php?page=tampil-berita" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Data Berita</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="index.php?page=tambah-berita" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Tambah Berita</p>
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
        <?php } ?>
          <li class="nav-item">
              <a href="index.php?page=user" class="nav-link">
                <i class="nav-icon fas fa-user"></i>
                <p>
                  Akun
                  <!-- <span class="right badge badge-danger">New</span> -->
                </p>
              </a>
            </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
              <li class="breadcrumb-item active"><?= $_GET['page'] ?></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->