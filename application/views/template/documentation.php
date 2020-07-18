<h3 class="mt-5 text-center documentation" id="documentation">DOCUMENTATION</h3>
    <hr>

    <div class="container">
      <div class="row text-center">
        <?php foreach ($images as $value) { ?>
        <div class="col-md-4">
          <a href="">
            <img src="<?php echo base_url('assets/img/'.$value->nama_image.''); ?>" class="img-thumbnail">
          </a>
        </div>
        <?php } ?>
      </div>