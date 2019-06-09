<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>详情</title>


    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script>


    <link href="/static/editormd/css/editormd.min.css" rel="stylesheet" type="text/css"/>
<#--<script src="https://cdn.bootcss.com/jquery/3.2.0/jquery.min.js"></script>-->
    <script src="/static/editormd/editormd.js"></script>
    <script src="/static/editormd/editormd.amd.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row" style="height: 100%">
        <div class="col-md-2" style="height: 100%">
            <div style="border-right: #887878 1px solid;height: 100%">

                <div>
                    <h3>示例项目</h3>
                    <form class="form-inline">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    </form>
                </div>

                <div style="margin-top:5px">
                    <div id="tree"></div>
                </div>

            </div>

        </div>
        <div class="col-md-10">
            <!-- editormd start -->
            <div class="editormd form-control" style="margin: 0px;" id="test-editormd">
                <textarea class="editormd-markdown-textarea" name="test-editormd-markdown-doc" id="editormd"></textarea>
                <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
                <!-- html textarea 需要开启配置项 saveHTMLToTextarea == true -->
                <textarea class="editormd-html-textarea" name="editorhtml" id="editorhtml"></textarea>
            </div>
            <!-- editormd end -->
        </div>
    </div>
</div>

</body>
<script>
    $(function () {
        $.ajax({
            type: "get",
            url: '/static/data/tsconfig.json',
            dataType: 'json',
            success: function (data) {
                console.log(data);
                $('#tree').treeview({
                    levels: 1,
                    data: getTree(),
                    selectedBackColor: "#F0F7FF", //选中节点颜色
                    selectedColor: "#606266",
                    showBorder: false,  //显示边框
                    //backColor背景颜色
                    //borderColor:"red"  //边框颜色
                    collapseIcon: "glyphicon glyphicon-chevron-down",  //展开后节点图标
                    emptyIcon: "glyphicon glyphicon-file",  //没有子节点的节点图标
                    expandIcon: "glyphicon glyphicon-chevron-right ", //展开树节点使用图标
                    highlightSearchResults: true,  //是否突出显示搜索结果
                    highlightSelected: true, //是否突出选中节点
                    onhoverColor: "#f5f7fa",


                });
            }
        });

        var testEditor;
        testEditor = $(function () {
            editormd("test-editormd", {
                width: "100%",
                height: 340,
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
                saveHTMLToTextarea: true
            });
        });
    })


    function getTree() {
        //节点上的数据遵循如下的格式：
        var tree = [
            {
                text: "markdown文档示例",  //节点文本
                //icon:"glyphicon glyphicon-file",   //节点图标
                color: "#606266"    //节点文本颜色

            },
            {
                text: "http登录文档示例",
                //icon:"glyphicon glyphicon-file",
                color: "#606266"
            },
            {
                text: "富文本示例",
                //icon:"glyphicon glyphicon-file",
                color: "#606266"
            },
            {
                text: "TCP文档示例",
                //icon:"glyphicon glyphicon-file",
                color: "#606266"
            },
            {
                text: "需求文档",
                //icon:"glyphicon glyphicon-folder-close",
                icon: "glyphicon glyphicon-folder-open",  //节点选中图标
                color: "#606266",
                nodes: [{
                    text: "API接口压测计划"
                }, {
                    text: "接口测试功能计划"
                },
                    {
                        text: "不限层次的目录",
                        icon: "glyphicon glyphicon-folder-open",
                        nodes: [{text: "还可以继续", icon: "glyphicon glyphicon-folder-open", nodes: [{text: "不限层次的目录"}]}]
                    }
                ]
            }
        ];

        return tree;
    }
</script>
</html>
