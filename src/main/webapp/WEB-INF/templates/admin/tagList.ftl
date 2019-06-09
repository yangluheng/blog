<#import "layout/defaultLayout.ftl" as defaultLayout>
<@defaultLayout.htmlHead title="标签管理">
<#--css-->

<#--css end-->
</@defaultLayout.htmlHead>
<@defaultLayout.htmlBody>
    <div class="content-wrapper">

    <#--header-->
        <section class="content-header">
            <h1>标签管理<small>标签查询</small></h1>
            <ol class="breadcrumb">
                <li><a href="/article/dashBoard"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">标签管理</a></li>
                <li class="active">标签查询</li>
            </ol>
        </section>
    <#--header end-->

    <#--content-->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <a href="/tag/add/page" style="width: 5.5%;"  class="btn btn-block btn-primary">新建标签</a>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <tr>
                                    <th>ID</th>
                                    <th>名称</th>
                                    <th>文章数量</th>
                                    <th>操作</th>
                                </tr>
                                <#if tags?? && (tags?size>0)>
                                    <#list tags as tag>
                                         <tr>
                                             <td>${tag_index+1}</td>
                                             <td>${tag.name}</td>
                                             <td>${tag.articleCount}</td>
                                             <td>
                                                 <a href="/tag/edit/${tag.id}" class="btn">
                                                     <i class="fa fa-edit"></i>
                                                 </a>

                                                 <a href="/tag/del/${tag.id}" class="btn">
                                                     <i class="fa fa-minus"></i>
                                                 </a>
                                             </td>
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
            $("#tagManage").addClass("menu-open active")
            $("#tagManage ul li:eq(1)").addClass("active")
        })
    </script>
</@defaultLayout.htmlScript>
