<#import "layout/defaultLayout.ftl" as defaultLayout>
<@defaultLayout.htmlHead title="添加用户">
<#--css-->
<link rel="stylesheet" href="/static/AdminLTE-2.4.10/bower_components/select2/dist/css/select2.min.css">
<#--css end-->
</@defaultLayout.htmlHead>
<@defaultLayout.htmlBody>
    <div class="content-wrapper">

    <#--header-->
        <section class="content-header">
            <h1>用户管理<small>添加用户</small></h1>
            <ol class="breadcrumb">
                <li><a href="/article/dashBoard"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="/user/list">用户管理</a></li>
                <li class="active">添加用户</li>
            </ol>
        </section>
    <#--header end-->

    <#--content-->
        <section class="content">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">用户编辑</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form method="post" id="defaultForm" action="/tag/add/save" class="form-horizontal"
                      data-bv-message="This value is not valid"
                      data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                      data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                      data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
                    <div class="box-body">
                        <div class="form-group">
                            <label  class="col-md-1 control-label">用户级别</label>
                            <div class="col-md-5">
                                <select class="select2 form-control">
                                    <option>管理员</option>
                                    <option>普通用户</option>
                                </select>
                            </div>

                        </div>
                        <div class="form-group">
                            <label  class="col-md-1 control-label">昵称</label>

                            <div class="col-md-5">
                                <input name="name" type="text" class="form-control" value="${(tag.name)!''}"
                                       data-bv-trigger="keyup" required data-bv-notempty-message="名称不能为空">
                                <input name="isEdit" type="hidden" value="${(tag.id)!'0'}">
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-md-1 control-label">密码</label>
                            <div class="col-md-5">
                                <input class="form-control" name="password" type="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-1 control-label">确认密码</label>
                            <div class="col-md-5">
                                <input class="form-control" name="password" type="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-1 control-label">邮箱</label>
                            <div class="col-md-5">
                                <input class="form-control" name="email" type="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-1 control-label">个人主页</label>
                            <div class="col-md-5">
                                <input class="form-control" name="email" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-1 control-label">个人介绍</label>
                            <div class="col-md-5">
                                <input class="form-control" name="email" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-1 control-label">头像</label>
                            <div class="col-md-5">
                                <input class="form-control" name="email" type="file">
                                <br>
                                <img src="/static/AdminLTE-2.4.10/dist/img/user2-160x160.jpg" class="user-image"
                                     alt="User Image">
                            </div>
                        </div>

                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">提交</button>
                    </div>
                    <!-- /.box-footer -->
                </form>
            </div>
        </section>
    <#--content end-->
    </div>
</@defaultLayout.htmlBody>
<@defaultLayout.htmlScript>
<script src="/static/AdminLTE-2.4.10/bower_components/select2/dist/js/select2.full.min.js"></script>
    <script>
        $(function () {
            //Initialize Select2 Elements
            $('.select2').select2()
            $("#userManage").addClass("menu-open active")
            $("#userManage ul li:eq(0)").addClass("active")
        })
    </script>
</@defaultLayout.htmlScript>
