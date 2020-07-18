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

    <title>Admin - Company Profile</title>
  </head>
  <body>
    <?php if($this->session->has_userdata('user')){ ?>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
      <a class="navbar-brand" href="<?php echo base_url();?>"><strong>Gramedia Wholesale</strong></a>
      <div class="container">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse ml-5" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link ml-3" href="<?php echo base_url('/Products/editProducts');?>">BOOKS</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ml-3" href="<?php echo base_url('/services/editservice');?>">OUR SERVICE</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ml-3" href="<?php echo base_url('/documentation/editdoc');?>">DOCUMENTATION</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ml-3" href="<?php echo base_url('/contact/editContact');?>">CONTACT US</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ml-3" href="<?php echo base_url('/login/logout');?>">LOGOUT</a>
          </li>
          </li>
        </ul>
      </div>
      </div>
    </nav>
    <?php }else{}?>