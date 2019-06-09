<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>博客系统-登录</title>
    <link href="/static/loginTemplate/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- -->
    <script>var __links = document.querySelectorAll('a');

    function __linkClick(e) {
        parent.window.postMessage(this.href, '*');
    };
    for (var i = 0, l = __links.length; i < l; i++) {
        if (__links[i].getAttribute('data-t') == '_blank') {
            __links[i].addEventListener('click', __linkClick, false);
        }
    }</script>
    <script src="/static/loginTemplate/js/jquery.min.js"></script>
    <script>$(document).ready(function (c) {
        $('.alert-close').on('click', function (c) {
            $('.message').fadeOut('slow', function (c) {
                $('.message').remove();
            });
        });
    });
    </script>
</head>
<body>
<!-- contact-form -->
<div class="message warning">
    <div class="inset">
        <div class="login-head">
            <h1>博客系统</h1>
            <div class="alert-close"></div>
        </div>
        <form method="post" action="/user/login">
            <li>
                <input name="username" type="text" class="text" value="Username" onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Username';}"><a href="#" class=" icon user"></a>
            </li>
            <div class="clear"></div>
            <li>
                <input name="password" type="password" value="Password" onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Password';}"> <a href="#" class="icon lock"></a>
            </li>
            <div class="clear"></div>
            <div class="submit">
                <input type="submit" value="Sign in">
                <h4><a href="#">Lost your Password ?</a></h4>
                <div class="clear"></div>
            </div>

        </form>
    </div>
</div>
</div>
<div class="clear"></div>
<!--- footer --->
<div class="footer">
    <p>Copyright &copy; 2014.</p>
</div>

</body>
</html>