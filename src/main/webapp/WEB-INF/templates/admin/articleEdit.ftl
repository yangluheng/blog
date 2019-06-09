<#import "layout/defaultLayout.ftl" as defaultLayout>
<@defaultLayout.htmlHead title="文章编辑">
    <#--css-->
        <!-- bootstrap-datetimepicker -->
        <link href="/static/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
        <!-- Select2 -->
        <link rel="stylesheet" href="/static/AdminLTE-2.4.10/bower_components/select2/dist/css/select2.min.css">
        <!-- iCheck for checkboxes and radio inputs -->
          <link rel="stylesheet" href="/static/AdminLTE-2.4.10/plugins/iCheck/all.css">
        <link href="/static/editormd/css/editormd.min.css" rel="stylesheet" type="text/css"/>
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="/static/AdminLTE-2.4.10/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

        <style>
            .full-scanner{
                z-index: 99999;
            }
            .my-CodeMirror-gutters{
                height: 100%;
            }
        </style>
    <#--css end-->
</@defaultLayout.htmlHead>
<@defaultLayout.htmlBody>
    <div class="content-wrapper">

        <#--header-->
        <section class="content-header">
            <h1>文章管理<small>文章编辑</small></h1>
            <ol class="breadcrumb">
                <li><a href="/article/dashBoard"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="/article/list">文章管理</a></li>
                <li class="active">新建文章</li>
            </ol>
        </section>
        <#--header end-->

        <#--content-->
        <section class="content">
            <form id="defaultForm" action="/article/edit/save/${article.id}" method="post"
                  data-bv-message="This value is not valid"
                  data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                  data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                  data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
                <input name="articleId" type="hidden" value="${articleDetail.id}">
                <div class="row">
                    <section class="col-md-9">
                        <div class="box">
                            <div class="box-header with-border">
                                <h3 class="box-title">文章编辑</h3>
                            </div>
                            <div class="box-body">
                                <!-- text input -->
                                <div class="form-group">
                                    <label>标题</label>
                                    <input name="title" type="text" class="form-control" value="${article.title}">
                                </div>
                                <!-- textarea -->
                                <div >
                                    <!-- editormd start -->
                                    <label>正文</label>
                                    <div class="editormd form-control" id="test-editormd">
                                        <textarea  class="editormd-markdown-textarea" name="content"  id="editormd" >${articleDetail.content}</textarea>
                                        <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
                                        <!-- html textarea 需要开启配置项 saveHTMLToTextarea == true -->
                                        <textarea class="editormd-html-textarea" name="contenthtml" id="editorhtml"></textarea>
                                    </div>
                                    <!-- editormd end -->
                                </div>

                                <div class="form-group">
                                    <label>标签</label>
                                    <#assign startTag>
                                        <#list tagList as tag>
                                            <#if articleTagList??>
                                                <#list articleTagList as articleTag><#if tag.id==articleTag?number>${tag.id},</#if></#list>
                                            </#if>
                                        </#list>
                                    </#assign>
                                    <select name="tags" class="form-control select2" multiple="multiple"
                                            style="width: 100%;">

                                    <#list tagList as tag>

                                        <#if articleTagList??>
                                            <option <#list articleTagList as articleTag><#if tag.id==articleTag?number>selected="selected"</#if></#list>   value="${tag.id}">${tag.name}</option>
                                        <#else>
                                             <option value="${tag.id}">${tag.name}</option>
                                        </#if>
                                    </#list>
                                    </select>
                                    <input name="startTag" type="hidden" value="${startTag}">
                                </div>
                            </div>
                        </div>
                        <div class="box" >
                            <div class="box-header">
                                <h3 class="box-title">摘要设置
                                    <small>默认自动生成摘要</small>
                                </h3>

                            </div>
                            <!-- /.box-header -->
                            <div class="box-body pad">
                            <textarea name="description" class="textarea"
                                      style="width: 100%; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">${article.description}</textarea>
                            </div>
                        </div>
                    </section>
                    <section class="col-md-3">
                        <div class="box">
                            <div class="box-body" style="margin-top: 50px">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-3 control-label">分类</label>
                                    <div class="col-sm-9">
                                        <select name="categoryId" class="form-control select2">
                                        <#list categoryList as category>
                                            <#if category.parentID?? && category.parentID gt 0 >
                                                   <option <#if article.category_id??&& article.category_id==category.id>selected="selected"</#if> value="${category.id}">└${category.name}</option>
                                            <#else >
                                                    <option <#if article.category_id??&& article.category_id==category.id>selected="selected"</#if> value="${category.id}">${category.name}</option>
                                            </#if>
                                        </#list>
                                        </select>
                                    </div>
                                </div>
                                <br> <br>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-3 control-label">状态</label>
                                    <div class="col-sm-9">
                                        <select name="status" class="form-control select2">
                                            <option value="0" <#if article.status==0> selected="selected"</#if>>公开</option>
                                            <option value="1" <#if article.status==1> selected="selected"</#if>>草稿</option>
                                            <option value="2" <#if article.status==2> selected="selected"</#if>>私密</option>
                                        </select>
                                    </div>
                                </div>
                                <br> <br>
                                <div class="form-group">
                                    <label  class="col-sm-3 control-label">作者</label>
                                    <div class="col-sm-9">
                                        <input name="userId" type="hidden" class="form-control" value="1">
                                        <input  type="text" class="form-control"  disabled  value="admin">
                                    </div>
                                </div>
                                <br> <br>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-3 control-label">日期</label>
                                    <div style="margin-left: 90px" class="input-group date form_datetime col-md-8"  data-date-format="yyyy-mm-dd - HH:ii" data-link-field="dtp_input1">
                                        <input class="form-control" size="16" type="text" value="${date}" readonly>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                    </div>
                                    <input name="updateTime_s" type="hidden" id="dtp_input1" value="${date}" /><br/>
                                </div>
                                <div class="form-group" style="margin-left: 40%;">
                                    <label>是否置顶</label>
                                    <input name="isTop_flag" type="checkbox" <#if article.is_top==1> checked="checked"</#if> class="flat-red" >

                                    <label>禁止评论</label>
                                    <input name="isComment_flag" type="checkbox" <#if article.is_comment==1> checked="checked"</#if> class="flat-red">
                                </div>
                                <div class="form-group" style="margin-left: 40%">
                                    <button style="width: 50%;" type="submit" class="btn btn-block btn-primary">提交</button>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

            </form>
        </section>
        <#--content end-->
    </div>
</@defaultLayout.htmlBody>
<@defaultLayout.htmlScript>


    <!-- Select2 -->
    <script src="/static/AdminLTE-2.4.10/bower_components/select2/dist/js/select2.full.min.js"></script>

    <script src="/static/editormd/editormd.js"></script>
    <script src="/static/editormd/editormd.amd.js"></script>

    <!-- Bootstrap WYSIHTML5 -->
    <script src="/static/AdminLTE-2.4.10/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>

    <!-- bootstrap-datetimepicker -->

    <script type="text/javascript" src="/static/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>

    <!-- iCheck 1.0.1 -->
<script src="/static/AdminLTE-2.4.10/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(function () {
            //Initialize Select2 Elements
            $('.select2').select2()





            var testEditor;
            testEditor = $(function () {
                editormd("test-editormd", {
                    width: "100%",
                    autoHeight:false,
                    height:'60%',
                    codeFold: true,
                    syncScrolling: "single",
                    //你的lib目录的路径
                    path: "/static/editormd/lib/",
                    imageUpload: false,//关闭图片上传功能
                    emoji: false,
                    taskList: true,
                    tocm: true,         // Using [TOCM]
                    tex: true,                   // 开启科学公式TeX语言支持，默认关闭
                    flowChart: true,             // 开启流程图支持，默认关闭
                    sequenceDiagram: true,       // 开启时序/序列图支持，默认关闭,
                    saveHTMLToTextarea: true,
                    onfullscreen:function () {
                        $("#test-editormd").addClass("full-scanner")
                        var obj = document.getElementsByClassName("CodeMirror-gutters");
                        obj[0].style.height='100%'

                    },
                    onfullscreenExit:function () {
                        $("#test-editormd").removeClass("full-scanner")
                    }
                });
            });


            //bootstrap WYSIHTML5 - text editor
            $('.textarea').wysihtml5()


            //Datetime picker
            $('.form_datetime').datetimepicker({
                //language:  'fr',
                weekStart: 1,
                todayBtn:  1,
                autoclose: 1,
                todayHighlight: 1,
                startView: 2,
                forceParse: 0,
                showMeridian: 1,

            });

            //Flat red color scheme for iCheck
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                checkboxClass: 'icheckbox_flat-green',
                radioClass   : 'iradio_flat-green'
            })

            $("#defaultForm").submit(function () {
                var content = $("#editormd").val()
                if (content.trim() == "" || content == undefined) {
                    alert("正文不能为空")
                    return false
                }else{
                    return true
                }

            })

        })
    </script>
</@defaultLayout.htmlScript>
