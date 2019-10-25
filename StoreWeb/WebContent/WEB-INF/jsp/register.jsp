<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>用户注册</title>
		<link rel="stylesheet" type="text/css" href="../css/login.css">
	<script type="text/javascript" src="../js/utils.js"></script>
	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>	
	<script type="text/javascript">
	function dosubmit(){
		var input = document.getElementById("submitid");
		input.disabled="disabled";
		return true;
	}

</script>
</head>
<body>
	
	<form name="registerForm" method="post" action="${pageContext.request.contextPath}/DoRegisterForm/register" onsubmit="return dosubmit">
		<input type="hidden" name="token" value="${token}">
		<div class="regist">
			<div class="regist_center">
				<div class="regist_top">
					<div class="left fl">会员注册</div>
					<div class="right fr"><font onclick="history.back()" >返回</font></div>
					<div class="clear"></div>
					<div class="xian center"></div>
				</div>
				<div class="regist_main center">
					<div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;
					<input  id = "usernameid" class="shurukuang" type="text" name="username" placeholder="请不要输入汉字" value="${registerform.username }"/>
					<span id="usernameErrSpan" value="1" style="color: red">${registerform.errors.username}</span></div>
					
					<div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;
					<input class="shurukuang" type="password" name="password" placeholder="请输入6位以上字符" value="${registerform.password }"/>
					<span id="usernamepwdSpan" style="color: red">${registerform.errors.password} </span></div>
					
					<div class="username">确认密码:&nbsp;&nbsp;
					<input class="shurukuang" type="password" name="repassword" placeholder="两次密码要输入一致哦" value="${registerform.repassword }"/>
					<span id="userrepwdErrSpan" style="color: red">${registerform.errors.repassword} </span></div>
					
					<div class="username">手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;
					<input id="phone" class="shurukuang" type="text" name="telphone" placeholder="请填写正确的手机号" value="${registerform.telphone}"/>
					<span id="usertelErrSpan" style="color: red">${registerform.errors.telphone}</span></div>
					<div class="username">
						<div class="left fl">验&nbsp;&nbsp;证&nbsp;&nbsp;码:&nbsp;&nbsp;<input class="yanzhengma" type="text" name="code" placeholder="请输入验证码"/>
						 </div>
						<div class="right fl">
						<img src="/StoreWeb/YzmServlet" onclick="changeimage(this)" alt="换一张" style="cursor: pointer;">
						<span id="useryzmErrSpan" style="color: red">${registerform.errors.code}</span></div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="regist_submit">
					<input  id="submitid" class="submit" type="submit" name="submit" value="立即注册" />
				</div>
				
			</div>
		</div>
		</form>
</body>
</html>