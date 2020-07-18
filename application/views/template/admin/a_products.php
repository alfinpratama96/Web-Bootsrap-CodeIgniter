<div class="jumbotron" style="height: 100vh;">
  <div class="container">
  <a href="<?php echo base_url('/Products/form_products');?>">
<button type="button" class="btn btn-primary" style="margin-bottom: 0.5%;">Tambah Produk</button>
</a> 
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
    <?php $i =1; foreach($products as $val){?>
    <tr>
      <th scope="row"><?php echo $i++;?></th>
      <td><?php echo $val->product_name;?></td>
      <td><?php echo $val->slug_product;?></td>
      <td><?php echo $val->product_description;?></td>
      <td>
<a href="<?php echo base_url('index.php/admin/destinasiFormUpdate/'.$val->product_id.'') ;?>" class="btn-primary btn-sm">Update</a> | <a href="<?php echo base_url('index.php/admin/delete_destinasi/'.$val->product_id.'/'.$val->product_id.'') ;?>" class="btn-danger btn-sm">Delete</a>
      </td>
    </tr>
   <?php } ?>
  </tbody>
</table>
    </div>
  </div>
</div>