<#import "layout/defaultLayout.ftl" as defaultLayout>
<@defaultLayout.htmlHead title="添加类目">
<#--css-->

        <!-- Select2 -->
        <link rel="stylesheet" href="/static/AdminLTE-2.4.10/bower_components/select2/dist/css/select2.min.css">

<#--css end-->
</@defaultLayout.htmlHead>
<@defaultLayout.htmlBody>
    <div class="content-wrapper">

    <#--header-->
        <section class="content-header">
            <h1>类目管理<small>添加类目</small></h1>
            <ol class="breadcrumb">
                <li><a href="/article/dashBoard"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="/category/list">类目管理</a></li>
                <li class="active">添加类目</li>
            </ol>
        </section>
    <#--header end-->

    <#--content-->
        <section class="content">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">类目编辑</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form id="defaultForm" action="/category/add/save" class="form-horizontal" method="post"
                      data-bv-message="This value is not valid"
                      data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                      data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                      data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
                    <div class="box-body">
                        <div class="form-group">
                            <label  class="col-md-1 control-label">名称</label>

                            <div class="col-md-5">
                                <input name="name" type="text" class="form-control" value="${(categoryById.name)!'未命名'}"
                                       data-bv-trigger="keyup" required data-bv-notempty-message="名称不能为空">
                                <input name="isEdit" type="hidden" value="${(categoryById.id)!'0'}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-1 control-label">父类</label>
                            <div class="col-md-5">
                                <select class="form-control select2" name="parentID">
                                    <option  value="">无</option>
                                    <#list categoryList as category>

                                             <option
                                                 <#if category.id?? &&categoryById??&& categoryById.parentID??&&category.id==categoryById.parentID>selected="selected"</#if>
                                                 <#if category.id?? &&categoryById??&& categoryById.id??&&category.id==categoryById.id>disabled="disabled"</#if>
                                                 value="${category.id}">${category.name}
                                             </option>
                                    </#list>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-1 control-label">排序</label>

                            <div class="col-md-5">
                                <input name="orders" type="number" class="form-control" value="${(categoryById.orders)!'0'}">
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
 <!-- Select2 -->
    <script src="/static/AdminLTE-2.4.10/bower_components/select2/dist/js/select2.full.min.js"></script>

    <script>
        $(function () {
            //Initialize Select2 Elements
            $('.select2').select2()
            $('#defaultForm').bootstrapValidator();
            $("#categoryManage").addClass("menu-open active")
            $("#categoryManage ul li:eq(0)").addClass("active")
        })
    </script>
</@defaultLayout.htmlScript>
