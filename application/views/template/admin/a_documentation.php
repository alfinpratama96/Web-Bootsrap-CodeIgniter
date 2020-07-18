<div class="test" style="height: 100vh; margin: 5%;">

<h3 class="mt-5 text-center documentation" id="documentation">DOCUMENTATION</h3>
    <hr>

<!--     <div class="container"> -->
      <div class="row text-center">
        <?php foreach ($images as $value) { ?>
        <div class="col-md-4">
          <a href="">
            <img src="<?php echo base_url('assets/img/'.$value->nama_image.''); ?>" class="img-thumbnail">
          </a>
        </div>
        <?php } ?>
      </div>
<!-- 
<div class="container" style="margin-top:5%;"> -->
  
  <div class="row text-center">
    <?php foreach ($images as $value) { ?>
    <div class="col-md-4">
    <form class="form-horizontal"  method="post" action="<?php echo base_url('/documentation/insert_gallery/'.$value->id.'');?>" enctype="multipart/form-data" accept-charset="utf-8">
      <div class="form-group">
        <input type="file" class="form-control" id="exampleInputFile" aria-describedby="fileHelp" name="file_name">
        <button type="submit" class="btn btn-info waves-effect waves-light m-t-10">Tambah</button>
      </div>
    </form>
  </div>
  <?php } ?>

  </div>
</div>