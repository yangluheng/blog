<#import "layout/defaultLayout.ftl" as defaultLayout>
<@defaultLayout.htmlHead title="用户管理">
<#--css-->

<#--css end-->
</@defaultLayout.htmlHead>
<@defaultLayout.htmlBody>
    <div class="content-wrapper">

    <#--header-->
        <section class="content-header">
            <h1>用户管理<small>用户查询</small></h1>
            <ol class="breadcrumb">
                <li><a href="/article/dashBoard"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">用户管理</a></li>
                <li class="active">用户查询</li>
            </ol>
        </section>
    <#--header end-->

    <#--content-->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <a href="/user/add" style="width: 5.5%;"  class="btn btn-block btn-primary">新建用户</a>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <tr>
                                    <th>ID</th>
                                    <th>用户级别</th>
                                    <th>名称</th>
                                    <th>文章总数</th>
                                    <th>评论总数</th>
                                </tr>
                                <#if users?? && (users?size>0)>
                                    <#list users as user>
                                         <tr>
                                             <td>${user_index+1}</td>
                                             <td>管理员</td>
                                             <td>${user.username}</td>
                                         </tr>
                                    </#list>
                                </#if>

                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </section>
    <#--content end-->
    </div>
</@defaultLayout.htmlBody>
<@defaultLayout.htmlScript>
    <script>
        $(function () {
            $("#userManage").addClass("menu-open active")
            $("#userManage ul li:eq(1)").addClass("active")
        })
    </script>
</@defaultLayout.htmlScript>
