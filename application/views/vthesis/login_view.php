
<div class="container-fluid">
	<div class="row">
	<div class="col-lg-2">
	</div>

	<div class="col-lg-8 " style="margin-top: 50px;">
	<form method="post" action="<?php echo base_url(); ?>login_controller/login_validation">
		
	<select class="form-control" name="selectlogin" style="width: 300px; margin: 0 auto;">
		<option value="Admin">Admin</option>
        <option value="Student">Student</option>
        <option value="Teacher">Teacher</option>
      </select><br>


	<div class = "form-group" style="width: 300px; margin: 0 auto;"><i class="fa fa-user"></i>
		<label>Enter Id Number</label>
		<input type="text" name="id_number" class="form-control" required="">
		<span class="text-danger"><?php echo form_error('id_number'); ?></span>

	</div>
	<div class = "form-group" style="width: 300px; margin: 0 auto;"><i class="fa fa-lock"></i>
		<label>Enter Password</label>
		<input type="password" name="password" class="form-control" required="">
		<span class="text-danger"><?php echo form_error('password'); ?></span>
	</div>
	
	<div class="form-group" style="width: 200px; margin: 0 auto; padding: 20px;">
		<input type="submit" name="submit" value="Login" class="login1">
		<?php echo  '<label class="text-danger">' .$this->session->flashdata("error");?>
	</div>
</form>
</div>
<div class="col-lg-2">
	</div>
</div>
</div>

























</form>