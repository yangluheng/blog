<#import "layout/defaultLayout.ftl" as defaultLayout>
<@defaultLayout.htmlHead title="类目查询">
<#--css-->

<#--css end-->
</@defaultLayout.htmlHead>
<@defaultLayout.htmlBody>
    <div class="content-wrapper">

    <#--header-->
        <section class="content-header">
            <h1>类目管理<small>类目查询</small></h1>
            <ol class="breadcrumb">
                <li><a href="/article/dashBoard"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">类目管理</a></li>
                <li class="active">类目查询</li>
            </ol>
        </section>
    <#--header end-->

    <#--content-->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <a href="/category/add" style="width: 5.5%;"  class="btn btn-block btn-primary">新建分类</a>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <tr>
                                    <th>ID</th>
                                    <th>排序</th>
                                    <th>名称</th>
                                    <th>文章数量</th>
                                    <th>操作</th>

                                </tr>
                                <#if categorys?? && (categorys?size>0)>
                                    <#list categorys as category>
                                         <tr>
                                             <td>${category_index+1}</td>
                                             <td>${category.orders}</td>
                                             <#if category.parentID?? && category.parentID gt 0 >
                                                   <td>└${category.name}</td>
                                             <#else >
                                                    <td>${category.name}</td>
                                             </#if>
                                             <td>${category.articleCount}</td>
                                             <td>
                                                 <a href="/category/edit/${category.id}" class="btn">
                                                     <i class="fa fa-edit"></i>
                                                 </a>
                                                  <#if !category.parentID??>
                                                    <a href="/category/del/${category.id}" class="btn">
                                                        <i class="fa fa-minus"></i>
                                                    </a>
                                                  </#if>

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
            $("#categoryManage").addClass("menu-open active")
            $("#categoryManage ul li:eq(1)").addClass("active")
        })
    </script>
</@defaultLayout.htmlScript>
