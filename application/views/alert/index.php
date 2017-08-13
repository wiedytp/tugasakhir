  <!-- TABLE: Alert History -->
            <div class="box box-info">
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table no-margin">
                            <thead>
                                <tr>
                                    <th>Ip Source</th>
                                    <th>Ip Destination</th>
                                    <th>Action</th>
                                    <th>Time</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php
                                foreach($record AS $r) {
                                    echo "
                                    <tr>
                                        <td>
                                            " . long2ip($r->ip_src) . "
                                        </td>
                                        <td>
                                            " . long2ip($r->ip_dst) . "
                                        </td>
                                        <td>
                                                $r->sig_name
                                        </td>
                                        <td>
                                                $r->timestamp
                                        </td>
                                        </tr>
                                        ";} 
                                ?>
                            </tbody>
                        </table>
                    </div><!-- /.table-responsive -->
                </div><!-- /.box-body -->
				<div class="box-header with-border">
                    <h4 class="box-title">Total Alert : 
									<?php
									foreach($count AS $c) {
									echo $c->total;
									}
									?></h4>
                </div><!-- /.box-header -->
<?php
    echo $paging;
?>
