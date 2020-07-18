<h3 class="mt-5 text-center services" id="services">OUR SERVICES</h3>
    <hr>

    <div class="container">
      <div class="row text-center">
        <div class="col-md-4">
          <i class="fas fa-camera-retro h1"></i>
          <h3>Social Marketing</h3>
			<form method="post" action="<?php echo base_url('/services/updateBooks/1');?>">
			<div class="form_grup">
				
				<textarea class="from-control" rows="10" name="textedit"><?php echo $sosial;?></textarea>
			</div>
			<div class="form_grup">
				<button class="btn btn-primary mb-2">Update</button>
			</div>
			</form>
        </div>

        <div class="col-md-4">
          <i class="fas fa-chart-pie h1"></i>
          <h3>Contract Training</h3>
			<form method="post" action="<?php echo base_url('/services/updateBooks/2');?>">
			<div class="form_grup">
				
				<textarea class="from-control" rows="10" name="textedit"><?php echo $training;?></textarea>
			</div>
			<div class="form_grup">
				<button class="btn btn-primary mb-2">Update</button>
			</div>
			</form>
        </div>
      
        <div class="col-md-4">
          <i class="fas fa-clock h1"></i>
          <h3>24/7 Suport</h3>
			<form method="post" action="<?php echo base_url('/services/updateBooks/3');?>">
			<div class="form_grup">
				
				<textarea class="from-control" rows="10" name="textedit"><?php echo $suport;?></textarea>
			</div>
			<div class="form_grup">
				<button class="btn btn-primary mb-2">Update</button>
			</div>
			</form>
        </div>
      </div>
    </div>  