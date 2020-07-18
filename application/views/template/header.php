<!doctype html>
<html lang="en" id="home">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url('assets/boostrap.css'); ?>" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/fontawesome/css/all.min.css'); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/style.css'); ?>">

    <title>Company Profile</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
      <a class="navbar-brand" href="#"><strong>Gramedia Wholesale</strong></a>
      <div class="container">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse ml-5" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link ml-3" href="#home">HOME</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ml-3" href="#about">ABOUT US</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ml-3" href="#services">OUR SERVICE</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ml-3" href="#documentation">DOCUMENTATION</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ml-3" href="#contact">CONTACT US</a>
          </li>
          </li>
        </ul>
      </div>
      </div>
    </nav>

    <div class="jumbotron">
      <h1 class="display-4">Gramedia Wholesale</h1>
      <hr class="my-4">
      <p class="lead">Menjadi Perusahaan yang terbesar, terbaik, terpadu dan tersebar di Asia Tenggara melalui usaha berbasis pengetahuan yang menciptakan masyarakat tedidik, tercerahkan, menghargai kebhinekaan dan adil sejahtera.</p>
    </div>
<?php
// foreach ($produk as $val) {
//   echo $val->product_name."<br>";
// }
?>
    <div class="container"> 
      <div class="row">
      <div class="card text-center">
        <div class="card-header h3">
          BOOKS <br>
          <span class="display-4">Novel,Comic,Motivation,etc.</span>
        </div>
        <div class="card-body">
          <ul class="list-group list-group-flush mb-4">
            <li class="list-group-item">Seebuah Seni Bersikap Bodoh Amat</li>
            <li class="list-group-item">Segala-galanya Ambyar</li>
            <li class="list-group-item">Selena dan Nebula</li>
            <li class="list-group-item">Hai Miko 37</li>
            <li class="list-group-item">One Piece 198</li>
            <li class="list-group-item"><a href="<?php echo base_url('/services/tampildeskripsi'); ?>" class="btn-primary btn-sm">READMORE</a></li>  
          </ul>
        </div>
      </div>

      <div class="card text-center">
        <div class="card-header h3">
          STATIONERY <br>
          <span class="display-4">Atk Perkantoran dan Sekolah</span>
        </div>
        <div class="card-body">
          <ul class="list-group list-group-flush mb-4">
            <li class="list-group-item">Adhesive dan Tape</li>
            <li class="list-group-item">Pemotong Kertas</li>
            <li class="list-group-item">Alat Tulis</li>
            <li class="list-group-item">Penjilidan dan Penyimpanan</li>
            <li class="list-group-item">Produk Kertas</li>
            <li class="list-group-item"><a href="<?php echo base_url('/services/tampilatk'); ?>" class="btn-primary btn-sm">READMORE</a></li>
          </ul>
        </div>
      </div>

      <div class="card text-center">
        <div class="card-header h3">
          ART AND CRAFT <br>
          <span class="display-4">Cat,Kuas,Clay</span>
        </div>
        <div class="card-body">
          <ul class="list-group list-group-flush mb-4">
            <li class="list-group-item">Lego</li>
            <li class="list-group-item">Kertas Scrap</li>
            <li class="list-group-item">Bufalo</li>
            <li class="list-group-item">Impraboard</li>
            <li class="list-group-item">Kertas Kado</li>
            <li class="list-group-item"><a href="<?php echo base_url('/services/tampilart'); ?>" class="btn-primary btn-sm">READMORE</a></li>
          </ul>
        </div>
      </div>
      </div>
    </div> 