<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="author" content="order by dede58.com"/>
		<title>Y神商城</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
	</head>
	<body>
	
	
		<%@include file="/jsp/head.jsp" %>


	<div class="danpin center">
			
			<div class="biaoti center">Y神最新单品</div>
			
			<div class="main center">
				
				<c:forEach items="${nlist}" var="p" end="4">
					<div class="mingxing fl">
						<div class="sub_mingxing"><a href="${pageContext.request.contextPath}/product?pid=${p.pid}"><img src="${pageContext.request.contextPath}/${p.pimage}" alt=""></a></div>
						<div class="pinpai"><a href="${pageContext.request.contextPath}/product?pid=${p.pid}">${p.pname}</a></div>
						<div class="youhui">5月9日-21日享花呗12期分期免息</div>
						<div class="jiage">${p.shopprice}</div>
					</div>
				</c:forEach>
				<div class="clear"></div>
			</div>
		</div>
		<div class="peijian w">
			<div class="biaoti center">热卖商品</div>
			<div class="main center">
				<div class="content">
					<div class="remen fl"><a href=""><img src="./image/1/peijian1.jpg"></a>
					</div>
					<c:forEach items="${nlist}" var ="n" varStatus="vs" end="7">
					
						
						
						<div class="remen fl">
						
						<div class="xinpin"><span style="background:#fff"></span></div>
						<div class="tu" ><a href="${pageContext.request.contextPath}/product?pid=${n.pid}"><img src="${pageContext.request.contextPath }/${n.pimage}"></a></div>
						<div class="miaoshu"><a href="${pageContext.request.contextPath}/product?pid=${n.pid}">${n.pname }</a></div>
						<div class="jiage">${n.shopprice }</div>
						<div class="pingjia"></div>
						</div>
					
					<c:if test="${vs.count==4 }">
						<div class="clear"></div>
						</div>
						<div class="content">
						</c:if>
					</c:forEach>
				
				
					<div class="remenlast fr">
						<div class="liulangengduo"><a href="${pageContext.request.contextPath}/productlist?cid=1"><img src="./image/liulangengduo.png" alt=""></a></div>					
					</div>
					<div class="clear"></div>
				</div>				
			</div>
		</div>
		
		

		<%@include file="/jsp/footter.jsp" %> 
	</body>
</html>

