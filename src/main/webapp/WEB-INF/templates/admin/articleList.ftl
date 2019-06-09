<#import "layout/defaultLayout.ftl" as defaultLayout>
<@defaultLayout.htmlHead title="文章查询">
<#--css-->
 <!-- Select2 -->
        <link rel="stylesheet" href="/static/AdminLTE-2.4.10/bower_components/select2/dist/css/select2.min.css">
<#--css end-->
</@defaultLayout.htmlHead>
<@defaultLayout.htmlBody>
    <div class="content-wrapper">

    <#--header-->
        <section class="content-header">
            <h1>文章管理<small>文章查询</small></h1>
            <ol class="breadcrumb">
                <li><a href="/article/dashBoard"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">文章管理</a></li>
                <li class="active">文章查询</li>
            </ol>
        </section>
    <#--header end-->

    <#--content-->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">

                        <div class="box-header">
                            <a style="float: left;margin-right: 15%;" href="/article/write/page" class="btn btn-primary">新建文章</a>
                            <form  id="search" method="post" action="/article/list">
                                <p>搜索:&nbsp;&nbsp;分类 <select name="categoryId" class="select2" size="1" name="category" style="width:140px;">
                                    <option value=0>任意</option>
                                    <#list categoryList as category>
                                        <#if category.parentID?? && category.parentID gt 0 >
                                                   <option <#if article.categoryId?? && article.categoryId==category.id>selected="selected"</#if> value="${category.id}">└${category.name}</option>
                                        <#else >
                                                    <option <#if article.categoryId?? && article.categoryId==category.id>selected="selected"</#if> value="${category.id}">${category.name}</option>
                                        </#if>
                                    </#list>
                                </select>&nbsp;&nbsp;&nbsp;&nbsp;类型 <select class="select2" size="1" name="status"
                                                                            style="width:100px;">
                                    <option value=-1>任意</option>
                                    <option <#if article.status?? && article.status==0>selected="selected"</#if> value=0>公开</option>
                                    <option <#if article.status?? && article.status==1>selected="selected"</#if> value=1>草稿</option>
                                    <option <#if article.status?? && article.status==2>selected="selected"</#if> value=2>私密</option>
                                </select>&nbsp;&nbsp;&nbsp;&nbsp;</select>&nbsp;&nbsp;&nbsp;&nbsp;标签 <select class="select2" size="1"  name="tagId"
                                                                            style="width:100px;">
                                    <option value=0>任意</option>
                                   <#list tagList as tag>
                                       <option <#if article.tagId?? && article.tagId==tag.id>selected="selected"</#if> value="${tag.id}">${tag.name}</option>
                                   </#list>
                                </select>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label><input type="checkbox" <#if article.isTop?? && article.isTop==1>checked="checked"</#if> name="isTop_flag">&nbsp;置顶</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input name="search" style="width:250px;" type="text" value="${(article.search)!}"> &nbsp;&nbsp;&nbsp;&nbsp;<input
                                            type="submit" class="btn btn-primary" value="提交"></p>

                            </form>

                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <tr>
                                    <th>ID</th>
                                    <th>分类</th>
                                    <th>标签</th>
                                    <th>作者</th>
                                    <th>标题</th>
                                    <th>日期</th>
                                    <th>评论</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                <#if articleList?? && (articleList?size>0)>
                                    <#list articleList as article>
                                         <tr>
                                             <td>${article_index+1}</td>
                                             <td>${(article.category)!'未分类'}</td>
                                             <#if article.tagList??>
                                                <#assign tagName>
                                                    <#list article.tagList as tag>
                                                        ${tag.name},
                                                    </#list>
                                                </#assign>
                                                 <td>${tagName}</td>
                                             <#else>
                                                 <td>无标签</td>
                                             </#if>
                                             <td>${article.username}</td>
                                             <td>${article.title}</td>
                                             <td>${article.update_time}</td>
                                             <td>${article.comment_count}</td>
                                             <td>
                                                 <#if article.status==0>
                                                     <#if article.is_top==1>
                                                        置顶 |
                                                     </#if>
                                                     公开

                                                 </#if>
                                                 <#if article.status==1>
                                                     <#if article.is_top==1>
                                                        置顶 |
                                                     </#if>
                                                     草稿
                                                 </#if>
                                                 <#if article.status==2>
                                                     <#if article.is_top==1>
                                                        置顶 |
                                                     </#if>
                                                     私密
                                                 </#if>
                                             </td>
                                             <td>
                                                 <a href="/article/edit/${article.id}" class="btn">
                                                     <i class="fa fa-edit"></i>
                                                 </a>

                                                    <a href="/article/del/${article.id}" class="btn">
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
     <!-- Select2 -->
    <script src="/static/AdminLTE-2.4.10/bower_components/select2/dist/js/select2.full.min.js"></script>
    <script>
        $(function () {
            //Initialize Select2 Elements
            $('.select2').select2()
            $("#articleManage").addClass("menu-open active")
            $("#articleManage ul li:eq(1)").addClass("active")
        })
    </script>
</@defaultLayout.htmlScript>
