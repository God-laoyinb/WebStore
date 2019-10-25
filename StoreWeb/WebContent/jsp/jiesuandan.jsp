<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
        <meta name="author" content="order by dede58.com"/>
		<title>订单中心</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/layer/layer.js"></script>
		<script type="text/javascript">
		function show(){
			layer.msg("暂无此功能");
		}
		</script>
	</head>
	<body>
	
	<%@include file="/jsp/head.jsp" %>
	
	
<!-- self_info -->
	<div class="grzxbj">
		<div class="selfinfo center" style="width: 1000px;">
		
		<div class="rtcont fr">
			<div class="ddzxbt">交易订单</div>
			
			<div class="top2 center">
				<div style="float: left;">
					<font size="4" style="text-align: center;">订单号：${bean.oid }</font>
				</div>
				<div style="float: left;">
					<font size="4" style="text-align: center; margin-left: 30px;">下单时间：<fmt:formatDate value="${bean.ordertime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></font>
				</div>
				<div style="float: left;">
					<font size="4" style="text-align: center; margin-left: 30px;">
					<c:if test="${bean.state==0}">去付款</a></c:if>
					<c:if test="${bean.state==1}">已付款</c:if>
					<c:if test="${bean.state==2}">确认收货</a></c:if>
					<c:if test="${bean.state==3}">已完成</c:if>
					</font>
				</div>
				<div class="clear"></div>
				<div class="xiantiao"></div>
			</div>
			<c:forEach items="${bean.items}" var= "bi">
			
			<div class="ddxq">
				<div class="ddspt fl"><img src="${pageContext.request.contextPath}/${bi.product.pimage}" alt="" style="width: 80px;height: 80px"></div>
				<div class="ddbh fl">${bi.product.pname}</div>
				<div class="ztxx fr">
					<ul>
						<li>${bi.count}</li>
						<li>${bi.product.shopprice}</li>
						
						<li><a href="">${bi.subtotal}</a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			</c:forEach>
			<div class="top2 center">
				<div style="float: right;margin-right: 30px;">
					<font size="4" style="text-align: center;">商品总金额：${bean.total }</font>
				</div>
				<div class="clear"></div>
				<div class="xiantiao"></div>
			</div>
			<div class="top2 center">
				<div class="col-xs-12" style="margin-top: 20px;">
					<span class="span_style" id="">详细地址：</span>
					<input class="input_style" type="" name="" id="address" value="" placeholder="&nbsp;&nbsp;请输入您的详细地址" />
				</div>
				<div class="col-xs-12" style="margin-top: 20px;">
					<span class="span_style" class="span_sty" id="">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</span>
							<input class="input_style" type="" name="" id="name_" value="" placeholder="&nbsp;&nbsp;请输入您的姓名" />
				</div>
				<div class="col-xs-12" style="margin-top: 20px;">
							<span class="span_style" id="">手机号码：</span>
							<input class="input_style" type="" name="" id="phone" value="" placeholder="&nbsp;&nbsp;请输入您的手机号码" />
						</div>
			<div class="clear"></div>
				<div class="xiantiao"></div>
			</div>
			<div class="top2 center">
				<span class="span_style" id="">选择银行：</span>
				<div class="col-xs-12" style="margin-top: 20px;">
				<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C"/>工商银行
 				<img src="bank_img/icbc.bmp" align="middle"/>
 				<input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行
 				<img src="bank_img/bc.bmp" align="middle"/><br/><br/>
 				<input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>农业银行
				 <img src="bank_img/abc.bmp" align="middle"/>
				 <input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>建设银行
				 <img src="bank_img/ccb.bmp" align="middle"/><br/><br/>
				 <input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>交通银行
				 <img src="bank_img/bcc.bmp" align="middle"/><br/>
				 </div>
				<div class="clear"></div>
				<div class="xiantiao"></div>
			</div>
			
			<div class="top2 center">
				<input type="button" onclick="show()" value="确认订单" style="width: 150px;height: 50px;margin-left: 750px;margin-top: 10px" />
			</div>
		</div>
		<div class="clear"></div>
		</div>
	</div>
<!-- self_info -->
		
		<%@include file="/jsp/footter.jsp" %> 
	</body>
</html>