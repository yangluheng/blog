
<!DOCTYPE html>
<html>
<#macro htmlHead title charset="UTF-8" lang="en">
<head>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta http-equiv="Content-Type" content="text/html; charset=${charset}" />
    <meta http-equiv="Content-Language" content="${lang}"/>
    <meta name="keywords" content="个人博客网站,datou博客，资源综合网站">
    <title>daTou博客-${title}</title>
    <link rel='stylesheet' href='/static/front/css/owl.carousel.min.css' type='text/css' media='all' />
    <link rel='stylesheet' href='/static/front/css/fontello.css' type='text/css' media='all' />
    <link rel='stylesheet' href='/static/front/css/nicetheme.css' type='text/css' media='all' />
    <link rel='stylesheet' href='/static/front/css/reset.css' type='text/css' media='all' />
    <link rel='stylesheet' href='/static/front/css/style.css' type='text/css' media='all' />
    <script type='text/javascript' src='/static/front/js/jquery.js'></script>
    <style>
        #header, #header .toggle-tougao, .two-s-footer .footer-box {
            background-color: #000;
        }
        #header .primary-menu ul > li > a, #menu-mobile a,  #header .js-toggle-message button,  #header .js-toggle-search,  #header .toggle-login,  #header .toggle-tougao {
            color: #bdbdbd;
        }
        .navbar-toggle .icon-bar {
            background-color: #bdbdbd;
        }
        #header .primary-menu ul > li.current-menu-item > a,  #header .primary-menu ul > li.menu-item-has-children:hover > a,  #header .primary-menu ul > li.current-menu-ancestor > a,  #header .primary-menu ul > li >a:hover {
            color: #FFF;
        }
        #header .toggle-tougao:hover,  #header .primary-menu ul > li .sub-menu li a:hover,  #header .primary-menu ul > li .sub-menu li.menu-item-has-children:hover > a,  #header .primary-menu ul > li .sub-menu li.current-menu-item > a {
            color: #000;
        }
        #header .toggle-tougao, #header .toggle-tougao:hover {
            border-color: #bdbdbd;
        }
        #header .toggle-tougao:hover {
            background-color: #FFF;
        }
    </style>
    <#nested>

</head>
</#macro>
<#macro htmlBody>
<body class="home blog off-canvas-nav-left">
    <div class="loader-mask">
        <div class="loader">
            <div></div>
            <div></div>
        </div>
    </div>
    <#include "header.ftl">
    <div id="page-content" >
        <div class="main-content">
            <div class="container">
                <div class="row">
                    <div class="article col-xs-12 col-sm-8 col-md-8">
                         <#nested>
                    </div>
                    <div class="sidebar col-xs-12 col-sm-4 col-md-4">
                         <#import "sidebar.ftl" as sildebar>
                        <@sildebar.widget page="detail"></@sildebar.widget>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <#include "footer.ftl">
</#macro>
<#macro htmlScript>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type='text/javascript'>
        /* <![CDATA[ */
        var suxingme_url = {"slidestyle":"index_slide_sytle_2","wow":"1","sideroll":"1","duang":"1"};
        /* ]]> */
    </script>
    <script type='text/javascript' src='/static/front/js/plugins.min.js'></script>
    <script type='text/javascript' src='/static/front/js/lmlblog.js'></script>
    <script type='text/javascript' src='/static/front/js/owl.carousel.min.js'></script>
    <script type='text/javascript' src='/static/front/js/wow.min.js'></script>
    <#nested>
</body>
</html>
</#macro>