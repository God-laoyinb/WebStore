<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>商品详情</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
</head>
<body>
	
	<%@include file="/jsp/head.jsp" %>
<!-- xiangqing -->
	<form action="${pageContext.request.contextPath}/cart" method="post">
	<div class="xiangqing">
		<div class="neirong w">
			<div class="xiaomi6 fl">${fn:substring(product.pname,0,5)}</div>
			<nav class="fr">
				<li><a href="">概述</a></li>
				<li>|</li>
				<li><a href="">变焦双摄</a></li>
				<li>|</li>
				<li><a href="">设计</a></li>
				<li>|</li>
				<li><a href="">参数</a></li>
				<li>|</li>
				<li><a href="">F码通道</a></li>
				<li>|</li>
				<li><a href="">用户评价</a></li>
				<div class="clear"></div>
			</nav>
			<div class="clear"></div>
		</div>	
	</div>
	
	<div class="jieshao mt20 w">
		<div class="left fl"><img style="width: 560px;height: 560px;" src="${pageContext.request.contextPath }/${product.pimage}"></div>
		<div class="right fr">
			<div class="h3 ml20 mt20">${fn:substring(product.pname,0,5)}</div>
			<div class="jianjie mr40 ml20 mt10">${fn:substring(product.pname,5,30)}</div>
			<div class="jiage ml20 mt10">${product.shopprice}元</div>
			<div class="ft20 ml20 mt20">选择版本</div>
			<div class="xzbb ml20 mt10">
				<div class="banben fl">
					<a>
						<span>${fn:substring(product.pdesc,5,20)}</span>
						<span>${product.shopprice}</span>
					</a>
				</div>
				
				<div class="clear"></div>
			</div>
			<div class="ft20 ml20 mt20">选择颜色</div>
			<div class="xzbb ml20 mt10">
				<div class="banben">
					<a>
						<span class="yuandian"></span>
						<span class="yanse">${fn:substring(product.pdesc,22,30)}</span>
					</a>
				</div>
				
			</div>
			<div class="xqxq mt20 ml20">
				<div class="top1 mt10">
					<div class="left1 fl">${product.pdesc }</div>
					<div class="right1 fr">${product.shopprice}元</div>
					<div class="clear"></div>
				</div>
				<div class="bot mt20 ft20 ftbc">总计：${product.shopprice}元</div>
			</div>
			
			<div class="xiadan ml20 mt20">
					
					<input type="hidden" name="pid" value="${product.pid }"/>
					<input type="hidden" name="count" value="1"/>
					<input class="jrgwc"  type="button" name="jrgwc" value="立即选购" />
					<input class="jrgwc" type="submit" name="jrgwc" value="加入购物车" />
				
			</div>
			
		</div>
		<div class="clear"></div>
	</div>
	</form>
		<%@include file="/jsp/footter.jsp" %> 
</body>
</html>