<!doctype html>
<html>
    <head>
        <title>Data User</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
    </head>
    <body>
        
        <div class="row" style="margin-bottom: 10px">
            <div class="col-md-4">
                <?php echo anchor(site_url('user/create'),'Create', 'class="btn btn-primary"'); ?>
            </div>
            <div class="col-md-4 text-center">
                <div style="margin-top: 8px" id="message">
                    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
                </div>
            </div>
            <div class="col-md-1 text-right">
            </div>
            <div class="col-md-3 text-right">
                <form action="<?php echo site_url('user/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('user'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                          <button class="btn btn-primary" type="submit">Search</button>
                        </span>
                    </div>
                </form>
            </div>
        </div>
        <div class="box box-info">
                <div class="box-body">
                    <div class="table-responsive">
                     <table class="table no-margin">
                     <thead>
        <tr>
        <th>No</th>
		<th>Nama</th>
		<th>Username</th>
		<th>Password</th>
		<th>Action</th>
            </tr>
            </thead>
            <tbody>
            <?php
            foreach ($user_data as $user)
            {
                ?>
                <tr>
			<td width="80px"><?php echo ++$start ?></td>
			<td><?php echo $user->nama ?></td>
			<td><?php echo $user->u_name ?></td>
			<td><?php echo $user->u_paswd ?></td>
			<td  width="0px">
				<?php 
				echo anchor(site_url('user/update/'.$user->u_id),'Update'); 
				echo ' | '; 
				echo anchor(site_url('user/delete/'.$user->u_id),'Delete','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
				?>
			</td>
		</tr>
                <?php
            }
            ?>
            </tbody>
            </table>
           </div>

          <h4 class="box-title">
                Total Record : <?php echo $total_rows ?>
            </h4>
	        <div class="col-md-6 text-right">
                <?php echo $pagination ?>
            </div>
        </body>
</html>