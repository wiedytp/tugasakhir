<!doctype html>
<html>
    <head>
        <title>User List</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
      
    </head>
    
    <body>
        <h2 style="margin-top:0px">User <?php echo $button ?></h2>
        <form action="<?php echo $action; ?>" method="post">
	    <div class="form-group">
            <label for="varchar">Nama <?php echo form_error('nama') ?></label>
            <input type="text" class="form-control" name="nama" id="nama" placeholder="Name" value="<?php echo $nama; ?>" />
        </div>
	    <div class="form-group">
            <label for="varchar">User Name <?php echo form_error('u_name') ?></label>
            <input type="text" class="form-control" name="u_name" id="u_name" placeholder="Email" value="<?php echo $u_name; ?>" />
        </div>
	    <div class="form-group">
            <label for="varchar">Password <?php echo form_error('u_paswd') ?></label>
            <input type="text" class="form-control" name="u_paswd" id="u_paswd" placeholder="Password" value="<?php echo $u_paswd; ?>" />
        </div>
	    
	    <input type="hidden" name="u_id" value="<?php echo $u_id; ?>" /> 
	    <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
	    <a href="<?php echo site_url('user') ?>" class="btn btn-default">Cancel</a>
	</form>
    </body>
</html>