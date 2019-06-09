<#macro layout>
    <div class="wrapper">

        <header class="main-header">
            <!-- Logo -->
            <a href="index2.html" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>D</b>TO</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>博客</b>管理系统</span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="/static/AdminLTE-2.4.10/dist/img/user2-160x160.jpg" class="user-image"
                                     alt="User Image">
                                <span class="hidden-xs">${user.username}</span>
                            </a>

                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu" data-widget="tree">

                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-archive"></i> <span>文章管理</span>
                            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="writeArticle" class="active"><a href="article/write"><i
                                    class="fa fa-pencil"></i>新建文章</a></li>
                            <li><a href="index2.html"><i class="fa fa-search"></i> 文章搜索</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-tags"></i>
                            <span>标签管理</span>
                            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="pages/layout/top-nav.html"><i class="fa fa-pencil"></i>新建标签</a></li>
                            <li><a href="pages/layout/boxed.html"><i class="fa fa-search"></i> 标签搜索</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-th-list"></i>
                            <span>分类管理</span>
                            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="pages/layout/top-nav.html"><i class="fa fa-pencil"></i>新建分类</a></li>
                            <li><a href="pages/layout/boxed.html"><i class="fa fa-search"></i> 分类搜索</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-user"></i>
                            <span>用户管理</span>
                            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="pages/layout/top-nav.html"><i class="fa fa-pencil"></i>新建用户</a></li>
                            <li><a href="pages/layout/boxed.html"><i class="fa fa-search"></i> 用户搜索</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="#">
                            <i class="fa fa-comment"></i>
                            <span>评论管理</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-dashboard"></i>
                            <span>网站大盘</span>
                        </a>
                    </li>

                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    文章管理
                    <small>文章编辑</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li><a href="#">文章管理</a></li>
                    <li class="active">新建文章</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">


                <!-- Main row -->
                <div class="row">
                <@block name="lbody"></@block>
                </div>
                <!-- /.row (main row) -->

            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <div class="pull-right hidden-xs">
                <b>Version</b> 2.4.0
            </div>
            <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
            reserved.
        </footer>


    </div>
</#macro>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>博客管理系统</title>

    <link rel="stylesheet" href="/static/AdminLTE-2.4.10/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/AdminLTE-2.4.10/bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/static/AdminLTE-2.4.10/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="/static/AdminLTE-2.4.10/dist/css/skins/_all-skins.min.css">
    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

</head>
<body class="hold-transition skin-blue sidebar-mini fixed">

<script src="/static/AdminLTE-2.4.10/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/static/AdminLTE-2.4.10/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/static/AdminLTE-2.4.10/dist/js/adminlte.min.js"></script>


</body>

</html>
