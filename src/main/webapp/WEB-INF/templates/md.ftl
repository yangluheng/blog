<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>md</title>
    <link href="/static/editormd/css/editormd.min.css" rel="stylesheet" type="text/css"/>
    <script src="https://cdn.bootcss.com/jquery/3.2.0/jquery.min.js"></script>
    <script src="/static/editormd/editormd.js"></script>
    <script src="/static/editormd/editormd.amd.js"></script>
</head>
<body>
<!-- editormd start -->
<div class="editormd form-control" style="margin: 0px;" id="test-editormd">
    <textarea class="editormd-markdown-textarea" name="test-editormd-markdown-doc" id="editormd"></textarea>
    <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
    <!-- html textarea 需要开启配置项 saveHTMLToTextarea == true -->
    <textarea class="editormd-html-textarea" name="editorhtml" id="editorhtml"></textarea>
</div>
<!-- editormd end -->
</body>
<script>
    $(function () {
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
</script>
</html>