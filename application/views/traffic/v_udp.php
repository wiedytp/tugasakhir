<!-- TABLE: Alert History -->
            <div class="box box-info">
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table no-margin">
                            <thead>
                                <tr>
                                    <!-- <th>ID</th> -->
                                    <th>Signature</th>
                                    <th>TimeStamp</th>
                                    <th>Source Address</th>
                                    <th>Destination Address</th>
                                    <!-- <th>Proto Layer 4</th> -->
                                </tr>
                            </thead>
                            <tbody>
                            <?php
                                foreach($record AS $r) {
                                    echo "
                                    <tr>

                                        <td>
                                                $r->signature
                                        </td>
                                        <td>
                                                $r->timestamp
                                        </td>
                                        <td>
                                                $r->src
                                        </td>
                                         <td>
                                                $r->dst
                                        </td>
                                      
                                        </tr>
                                        ";} 
                                ?>
                            </tbody>
                        </table>
                    </div><!-- /.table-responsive -->
               <!--  </div><!-- /.box-body -->
                <!-- <div class="box-header with-border">
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