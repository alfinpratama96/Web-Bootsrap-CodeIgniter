<div class="jumbotron" style="height: 100vh;">
  <div class="container">

    <div class="row table-wrapper-scroll-y my-custom-scrollbar">

<table class="table table-striped table-dark">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nama Produk</th>
      <th scope="col">Kategori Produk</th>
      <th scope="col">Deskripsi Produk</th>
      <th scope="col">Akasi</th>
    </tr>
  </thead>
  <tbody>
    <?php $i =1; foreach($contacts as $val){?>
    <tr>
      <th scope="row"><?php echo $i++;?></th>
      <td><?php echo $val->name;?></td>
      <td><?php echo $val->email;?></td>
      <td><?php echo $val->messages;?></td>
      <td>
        <a href="mailto:<?php echo $val->email; ?>" class="btn-primary btn-sm">Balas</a>
      </td>
    </tr>
   <?php } ?>
  </tbody>
</table>
    </div>
  </div>
</div>