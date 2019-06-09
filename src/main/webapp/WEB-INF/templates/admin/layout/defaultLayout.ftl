
<!DOCTYPE html>
<html>
<#macro htmlHead title charset="UTF-8" lang="en">
<head>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta http-equiv="Content-Type" content="text/html; charset=${charset}" />
    <meta http-equiv="Content-Language" content="${lang}"/>
    <title>daTou博客-${title}</title>
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="/static/AdminLTE-2.4.10/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/static/AdminLTE-2.4.10/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="/static/AdminLTE-2.4.10/bower_components/Ionicons/css/ionicons.min.css">

    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/static/AdminLTE-2.4.10/dist/css/skins/_all-skins.min.css">
    <#--bootstrapvalidator-->
    <link rel="stylesheet" href="/static/bootstrapvalidator/dist/css/bootstrapValidator.css"/>
    <#nested>
    <!-- Theme style -->
    <link rel="stylesheet" href="/static/AdminLTE-2.4.10/dist/css/AdminLTE.min.css">
    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

</head>
</#macro>
<#macro htmlBody>
<body class="hold-transition skin-blue sidebar-mini fixed">
    <div class="wrapper">
        <#include "header.ftl">
        <#include "sidebar.ftl">
        <#nested>
        <#include "footer.ftl">
    </div>
</#macro>
<#macro htmlScript>
    <script src="/static/AdminLTE-2.4.10/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="/static/AdminLTE-2.4.10/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="/static/AdminLTE-2.4.10/dist/js/adminlte.min.js"></script>
    <script type="text/javascript" src="/static/bootstrapvalidator/dist/js/bootstrapValidator.js"></script>
<#nested>
</body>
</html>
</#macro>