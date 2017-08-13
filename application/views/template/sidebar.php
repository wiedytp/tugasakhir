<!-- Left side column. contains the sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        
        
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="#">
                    <a href="<?php echo site_url('dashboard2') ?>"> <i class="fa fa-dashboard" ></i> <span>Dashboard</span> 
                    </a>
                </li>
         
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-history"></i>
                    <span>History</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?php echo site_url('alert/index') ?>"><i class="fa fa-circle-o"></i> Alerts History</a></li>
                    <li><a href="<?php echo site_url('email/index') ?>"><i class="fa fa-circle-o"></i> Email History</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-table"></i> <span>Log Traffic Protocol</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?php echo site_url('TrafficIcmp') ?>"><i class="fa fa-circle-o"></i> ICMP</a></li>
                    <li><a href="<?php echo site_url('TrafficTcp') ?>"><i class="fa fa-circle-o"></i> TCP</a></li>
                    <li><a href="<?php echo site_url('TrafficUdp') ?>"><i class="fa fa-circle-o"></i> UDP</a></li>
                </ul>
            </li>
            
            <li class="#">
                    <a href="<?php echo site_url('User')?>"> <i class="fa fa-users" ></i> <span>User</span> 
                    </a>
                </li>

            
           
           
    </section>
    <!-- /.sidebar -->
</aside>

<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">