<?php
$this->load->view('template/head');
?>

<!--tambahkan custom css disini-->
<!-- iCheck -->
<link href="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/iCheck/flat/blue.css') ?>" rel="stylesheet" type="text/css" />
<!-- Morris chart -->
<link href="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/morris/morris.css') ?>" rel="stylesheet" type="text/css" />
<!-- jvectormap -->
<link href="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/jvectormap/jquery-jvectormap-1.2.2.css') ?>" rel="stylesheet" type="text/css" />
<!-- Date Picker -->
<link href="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/datepicker/datepicker3.css') ?>" rel="stylesheet" type="text/css" />
<!-- Daterange picker -->
<link href="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/daterangepicker/daterangepicker-bs3.css') ?>" rel="stylesheet" type="text/css" />
<?php
$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>


<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Dashboard
        <small>Version 2.0</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- Info boxes -->
    

    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header with-border">

                <!-- THIS IS BOX HEADER -->
                    
                </div><!-- /.box-header -->
                <div class="box-body">
                <!-- THIS IS BOX BODY -->
                    <div class="row">
                        <div class="col-md-12">
                            <p class="text-center">
                                <strong>Traffic Protocol: 1 Jan, 2014 - 30 Jul, 2014</strong>
                            </p>
                            <div class="chart-responsive">
                                <!-- Sales Chart Canvas -->
                                <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                            </div><!-- /.chart-responsive -->
                        </div><!-- /.col -->
                    </div>
                </div>
                
                <div class="box-footer" style="text-align: center;">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-sm-4 col-xs-4">
                                <div class="description-block">
                                    <h2 class="description-header">
                                    <?php
                                        foreach ($total_icmp as $ticmp) {
                                            echo $ticmp->number;
                                        }
                                    ?>
                                        
                                    </h2>
                                    <span class="description-text">ICMP</span>
                                </div><!-- /.description-block -->
                            </div><!-- /.col -->
                            <div class="col-sm-4 col-xs-4">
                                <div class="description-block">
                                    <h2 class="description-header">
                                    <?php
                                        foreach ($total_udp as $tudp) {
                                            echo $tudp->number;
                                        }
                                    ?>
                                        
                                    </h2>
                                    <span class="description-text">UDP</span>
                                </div><!-- /.description-block -->
                            </div><!-- /.col -->
                            <div class="col-sm-4 col-xs-4">
                                <div class="description-block">
                                    <h2 class="description-header">
                                    <?php
                                        foreach ($total_tcp as $ttcp) {
                                            echo $ttcp->number;
                                        }
                                    ?>
                                    </h2>
                                    <span class="description-text">TCP</span>
                                </div><!-- /.description-block -->
                            </div>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.box-footer -->

            </div><!-- /.box -->
        </div><!-- /.col -->
    </div><!-- /.row -->

    <!-- Main row -->
    <div class="row">
        <div class="col">
        <!-- Left col -->
       
        </div><!-- /.col -->
    </div><!-- /.row -->

    <div class="row">
        <div class="col-md-12">
            <!-- TABLE: LATEST Alert -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Latest Alerts</h3>
                </div><!-- /.box-header -->
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
                <div class="box-footer clearfix">
                    <a href="alert/index" class="btn btn-sm btn-info btn-flat pull-right">View All History</a>
                </div><!-- /.box-footer -->
            </div><!-- /.box -->
        </div><!-- /.col -->
        </div><!-- ./row -->
        <div class="row">
        <div class="col-md-12">
            <!-- TABLE: LATEST Alert -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Latest Email</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table no-margin">
                            <thead>
                                <tr>
                                    <th>TextDecode</th>
                                    <th>Sendtime</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php
                                foreach($dataemail AS $d) {
                                    echo "
                                    <tr>
                                        <td>
                                            $d->pesan
                                        </td>
                                        <td>
                                            $d->sendtime
                                        </td>
                                        </tr>
                                        ";} 
                                ?>
                            </tbody>
                        </table>
                    </div><!-- /.table-responsive -->
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                    <a href="email/index" class="btn btn-sm btn-info btn-flat pull-right">View All History</a>
                </div><!-- /.box-footer -->
            </div><!-- /.box -->
        </div><!-- /.col -->
        </div><!-- ./row -->
</section><!-- /.content -->



<?php
$this->load->view('template/js');
?>

<!--tambahkan custom js disini-->
<!-- Sparkline -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/sparkline/jquery.sparkline.min.js') ?>" type="text/javascript"></script>
<!-- jvectormap -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js') ?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/jvectormap/jquery-jvectormap-world-mill-en.js') ?>" type="text/javascript"></script>
<!-- daterangepicker -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/daterangepicker/daterangepicker.js') ?>" type="text/javascript"></script>
<!-- datepicker -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/datepicker/bootstrap-datepicker.js') ?>" type="text/javascript"></script>
<!-- iCheck -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/iCheck/icheck.min.js') ?>" type="text/javascript"></script>
<!-- ChartJS 1.0.1 -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/chartjs/Chart.min.js') ?>" type="text/javascript"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/dist/js/pages/dashboard2.js') ?>" type="text/javascript"></script>

<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/dist/js/demo.js') ?>" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/highcharts/highcharts.js"></script>
<script src="<?php echo base_url();?>assets/highcharts/exporting.js"></script>
<script>
Highcharts.chart('container', {
    chart: {
        type: 'line'
    },
    title: {
        text: 'Weekly Traffic Protocol'
    },
    subtitle: {
        text: 'Source: WorldClimate.com'
    },
    xAxis: {
        categories: [
            <?php 
                foreach ($all_count as $all) {
                    echo "'".$all->date."',";
                }
            ?>
        ]
    },
    yAxis: {
        title: {
            text: 'Hit Per Day'
        }
    },
    plotOptions: {
        line: {
            dataLabels: {
                enabled: true
            },
            enableMouseTracking: false
        }
    },
    series: [{
        name: 'ICMP',
        data: [
            <?php 
                foreach ($icmp_count as $icmp) {
                    echo $icmp->number.",";
                }
            ?>
        ]
    },{
        name: 'TCP',
        data: [
            <?php 
                foreach ($tcp_count as $tcp) {
                    echo $tcp->number.",";
                }
            ?>
        ]
    },{
        name: 'UDP',
        data: [
            <?php 
                foreach ($udp_count as $udp) {
                    echo $udp->number.",";
                }
            ?>
        ]
    }]
});
</script>
<?php
$this->load->view('template/foot');
?>