<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>会员登录</title>
		<link rel="stylesheet" type="text/css" href="../css/login.css">
	
	<script type="text/javascript" src="../js/utils.js"></script>
	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
	function dosubmit(){
		var input = document.getElementById("loginsubmitid");
		input.disabled="disabled";
		return true;
	}

</script>	
	</head>
	<body>
		<!-- login -->
		<div class="top center">
			<div class="logo center">
				<a href="${pageContext.request.contextPath}/index.html" target="_blank"><img src="../image/ystore_logo.png" alt=""></a>
			</div>
		</div>
		<form  method="post" action="${pageContext.request.contextPath}/DoLoginForm/login" class="form center" onsubmit="return dosubmit()">
		<input type="hidden" name="logintoken" value="${logintoken}">
		<div class="login">
			<div class="login_center">
				<div class="login_top">
					<div class="left fl">会员登录</div>
					<div class="right fr">您还不是我们的会员？<a href="${pageContext.request.contextPath}/Test/RegisterForm" target="_self">立即注册</a></div>
					<div class="clear"></div>
					<div class="xian center"></div>
				</div>
				<div class="login_main center">
					<div class="username">用户名:&nbsp;<input class="shurukuang" type="text" name="username" placeholder="请输入你的用户名" value = "${loginform.username }"/>
					<span id="usernameSpanid" style="color: red">${loginform.loginerrors.username} </span></div>
					<div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;<input class="shurukuang" type="password" name="password" placeholder="请输入你的密码" value="${ loginform.password}"/>
					<span id="usernamepwdSpanid" style="color: red">${loginform.loginerrors.password} </span></div>
					<div class="username">
						<div class="left fl">验证码:&nbsp;<input class="yanzhengma" type="text" name="code" placeholder="请输入验证码"/></div>
						<div class="right fl"><img src="/StoreWeb/YzmServlet" onclick="changeimage(this)" alt="换一张" style="cursor: pointer;">
						<span id="yzmSpanid" style="color: red">${loginform.loginerrors.code} </span></div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="login_submit">
					<input  id="loginsubmitid" class="submit" type="submit" name="submit" value="立即登录" >
				</div>
				
			</div>
		</div>
		</form>
		<footer>
			<div class="copyright">简体 | 繁体 | English | 常见问题</div>
			<div class="copyright">Y神公司版权所有-京ICP备10086-<img src="../image/ghs.png" alt="">京公网安备11111111111111号-京ICP证111111号</div>

		</footer>
	</body>
</html>