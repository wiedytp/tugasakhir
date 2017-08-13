<div class="box box-info">
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table no-margin">
                            <thead>
								<tr>
									<th>Text Decoded</th>
									<th>Sending Date Time</th>	
								</tr>
							</thead>
							<tbody>
							<?php
							foreach ($dataemail as $d) {
								echo "
								<tr>
									<td>
									".$d->pesan."
									</td>
									<td>
									".$d->sendtime."
									</td>

								</tr>
		
							";}
							?>
	</tbody>
</table>
 </div><!-- /.table-responsive -->
                </div><!-- /.box-body -->
				<div class="box-header with-border">
                    <h4 class="box-title">Total Email : 
									<?php
									foreach($count AS $c) {
									echo $c->total;
									}
									?></h4>
                </div><!-- /.box-header -->
<?php
    echo $paging;
?>
