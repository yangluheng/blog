<#import "layout/defaultLayout.ftl" as defaultLayout>
<@defaultLayout.htmlHead title="网站大盘">
<#--css-->

<#--css end-->
</@defaultLayout.htmlHead>
<@defaultLayout.htmlBody>
    <div class="content-wrapper">

    <#--header-->
        <section class="content-header">
            <h1>网站管理<small>网站大盘</small></h1>
            <ol class="breadcrumb">
                <li><a href="/article/dashBoard"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="javascript:void(0)">网站管理</a></li>
                <li class="active">网站大盘</li>
            </ol>
        </section>
    <#--header end-->

    <#--content-->
        <section class="content">
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>${article}</h3>

                            <p>文章汇总</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-archive"></i>
                        </div>
                        <a href="/article/list" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3>${category}</h3>

                            <p>类目汇总</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="/category/list" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3>${userCount}</h3>

                            <p>在线用户</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="/user/list" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3>${tag}</h3>

                            <p>标签汇总</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-ios-arrow-thin-right"></i>
                        </div>
                        <a href="/tag/list" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>
        </section>
    <#--content end-->
    </div>
</@defaultLayout.htmlBody>
<@defaultLayout.htmlScript>
    <script>
        $(function () {
            $("#dashBoardManage").addClass("active")
        })
    </script>
</@defaultLayout.htmlScript>
