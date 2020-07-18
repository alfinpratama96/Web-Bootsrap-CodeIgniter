<div class="jumbotron" style="height: 100vh;">
  <div class="container"> 
    <div class="row">
<!-- Default form contact -->
<form method="post" class="text-center border border-light p-5 center_div" action="<?php echo base_url('/products/insert_products');?>">

    <p class="h4 mb-4">Tambah Data Produk</p>

    <!-- Name -->
    <input type="text" id="#" class="form-control mb-4" placeholder="Nama Produk" name="nama_produk">
    <!-- <input type="text" id="#" class="form-control mb-4" placeholder="Kategori Produk" name="kategori_produk"> -->
    <label>Kategori Produk</label>
    <select class="browser-default custom-select mb-4" name="kategori_produk">
        <option value="" disabled>Choose option</option>
        <option value="books">BOOKS</option>
        <option value="stationery">STATIONERY</option>
        <option value="art_and_craft">ART AND CRAFT</option>
    </select>
    <!-- Message -->
    <div class="form-group">
        <textarea class="form-control rounded-0" id="#" rows="3" placeholder="Deskripsi Produk" name="deskripsi_produk"></textarea>
    </div>

    <!-- Send button -->
    <button style="margin-left: 0%;" class="btn btn-outline-info btn-rounded btn-block z-depth-0 my-4 waves-effecto">Tambahkan</button>

</form>
<!-- Default form contact -->
    </div>
  </div>
</div>