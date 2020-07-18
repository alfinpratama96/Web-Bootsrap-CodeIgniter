<h3 class="mt-5 mb-3 text-center contact" id="contact">CONTACT US</h3>
    <hr> 

    <div class="container">
      <div class="row">
        <div class="col-md-7">
        <form method="post"  action="<?php echo base_url('/contact/insert_contact');?>">
          <div class="form-group">
            <label><strong>Nama Lengkap</strong></label>
            <input type="text" name="nama_lengkap" class="form-control">
          </div>
           <div class="form-group">
            <label><strong>Email</strong></label>
            <input type="email" name="email" class="form-control">
          </div>
           <div class="form-group">
            <label><strong>Pesan</strong></label>
            <textarea type="text" class="form-control" rows="5" name="pesan"></textarea>
          </div>

          <button type="submit" class="btn btn-primary" >Kirim</button>
      </form>
        </div>
        <div class="col-md-3">
          <img src="<?php echo base_url('assets/img/cs.png'); ?>" width="350px">
        </div>
        </div>
    </div> 