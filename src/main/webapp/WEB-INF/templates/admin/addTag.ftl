<#import "layout/defaultLayout.ftl" as defaultLayout>
<@defaultLayout.htmlHead title="添加标签">
<#--css-->

<#--css end-->
</@defaultLayout.htmlHead>
<@defaultLayout.htmlBody>
    <div class="content-wrapper">

    <#--header-->
        <section class="content-header">
            <h1>标签管理<small>添加标签</small></h1>
            <ol class="breadcrumb">
                <li><a href="/article/dashBoard"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="/tag/list">标签管理</a></li>
                <li class="active">添加标签</li>
            </ol>
        </section>
    <#--header end-->

    <#--content-->
        <section class="content">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">标签编辑</h3>
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
                            <label  class="col-md-1 control-label">名称</label>

                            <div class="col-md-5">
                                <input name="name" type="text" class="form-control" value="${(tag.name)!''}"
                                       data-bv-trigger="keyup" required data-bv-notempty-message="名称不能为空">
                                <input name="isEdit" type="hidden" value="${(tag.id)!'0'}">
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
    <script>
        $(function () {
            $('#defaultForm').bootstrapValidator();
            $("#tagManage").addClass("menu-open active")
            $("#tagManage ul li:eq(0)").addClass("active")
        })
    </script>
</@defaultLayout.htmlScript>
