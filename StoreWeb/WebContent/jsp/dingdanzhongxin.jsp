<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="author" content="order by dede58.com"/>
		<title>我的订单</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
	</head>
	<body>
	<%@include file="/jsp/head.jsp" %>
<!-- self_info -->
	<div class="grzxbj">
		<div class="selfinfo center">
		<div class="lfnav fl">
			<div class="ddzx">订单中心</div>
			<div class="subddzx">
				<ul>
					<li><a href="" style="color:#ff6700;font-weight:bold;">我的订单</a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
				</ul>
			</div>
			<div class="ddzx">个人中心</div>
			<div class="subddzx">
				<ul>
					<li><a href="${pageContext.request.contextPath }/jsp/self_info.jsp">我的个人中心</a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
				</ul>
			</div>
		</div>
		<div class="rtcont fr">
			<div class="ddzxbt">我的订单</div>
			<c:forEach items="${pb.datas}" var="pbd">
			<div class="top2 center">
				<div style="float: left;">
					<font size="4" style="text-align: center;">订单号：${pbd.oid }</font>
				</div>
				<div style="float: left;">
					<font size="4" style="text-align: center; margin-left: 30px;">下单时间：<fmt:formatDate value="${pbd.ordertime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></font>
				</div>
				<div style="float: left;">
					<font size="4" style="text-align: center; margin-left: 30px;">总金额：${pbd.total }</font>
				</div>
				<div style="float: left;">
					<font size="4" style="text-align: center; margin-left: 30px;">
					<c:if test="${pbd.state==0}"><a href="${pageContext.request.contextPath }/getorderbyid?oid=${pbd.oid}" style="color: blue;">付款</a></c:if>
					<c:if test="${pbd.state==1}">已付款</c:if>
					<c:if test="${pbd.state==2}"><a href="${pageContext.request.contextPath }/ordersupdate?oid=${pbd.oid}&currentPage=${pb.currentPage}&pageSize=${pb.pageSize}" style="color: blue;">确认收货</a></c:if>
					<c:if test="${pbd.state==3}">已完成</c:if>
					</font>
				</div>
				<div class="clear"></div>
				<div class="xiantiao"></div>
			</div>
			<c:forEach items="${pbd.items }" var="pi">
			<div class="ddxq">
				<div class="ddspt fl"><img src="${pageContext.request.contextPath}/${pi.product.pimage}" alt="" style="width: 80px;height: 80px"></div>
				<div class="ddbh fl">${pi.product.pname }</div>
				<div class="ztxx fr">
					<ul>
						<li>${pi.count}</li>
						<li>${pi.product.shopprice}</li>
						<li>${pi.subtotal}</li>
						<li><a href="${pageContext.request.contextPath }/getorderbyid?oid=${pbd.oid}">订单详情></a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			</c:forEach>
		</c:forEach>
		
		</div>
		<span style="float: right;">
           	 总共${pb.totalRecords}条记录 共${pb.totalPages}页 当前第${pb.currentPage }页
            <a href="${pageContext.request.contextPath}/findorderspage?currentPage=${pb.firstPage}&pageSize=${pb.pageSize}"><font color="blue">首页</font></a>
            <a href="${pageContext.request.contextPath}/findorderspage?currentPage=${pb.prePage}&pageSize=${pb.pageSize}"><font color="blue">上一页</font></a>
            <a href="${pageContext.request.contextPath}/findorderspage?currentPage=${pb.nextPage}&pageSize=${pb.pageSize}"><font color="blue">下一页</font></a>
            <a href="${pageContext.request.contextPath}/findorderspage?currentPage=${pb.lastPage}&pageSize=${pb.pageSize}"><font color="blue">尾页</font></a>
             <input type="text" name="jumpPage" size="4"><button id="jumpPageBtn">跳转</button>
            
         </span>
		<div class="clear"></div>
		 
		</div>
		
	</div>
<!-- self_info -->
<%@include file="/jsp/footter.jsp" %>
	</body>
</html>
<script type="text/javascript">
    $(document).ready(function () {
        $("#jumpPageBtn").click(function () {
            var pageNo = $("input[name=jumpPage]").val();
            window.location.href = "${pageContext.request.contextPath}/findorderspage?currentPage=" + pageNo + "&pageSize=${page.pageSize}";
        })

    })
</script>    