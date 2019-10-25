<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="author" content="order by dede58.com"/>
		<title>我的购物车-小米商城</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/layer/layer.js"></script>
		<script type="text/javascript">
		//checkbox 全选/取消全选
		var isCheckAll = false;
		function swapCheck() {
			
			if (isCheckAll) {
				$("input[type='checkbox']").each(function() {
					this.checked = false;
				});
				isCheckAll = false;
			} else {
				$("input[type='checkbox']").each(function() {
					this.checked = true;
				});
				isCheckAll = true;
			}
		}
		function show(obj){
			
			if(obj==null||obj==""){
				layer.msg("请先登录");
				return;
			}else{
				document.getElementById('submitid').setAttribute('type','submit');
			}
			
		
		}
	</script>


	</head>
	<body>
	<!-- start header -->
	<!--end header -->
	<%@include file="/jsp/head.jsp" %>
		<form action="${pageContext.request.contextPath}/order" method="post">
		<div class="xiantiao"></div>
		<div class="gwcxqbj">
			<div class="gwcxd center">
				<div class="top2 center">
					<div class="sub_top fl">
						<input type="checkbox" value="quanxuan" class="quanxuan" onclick="swapCheck()" />全选
					</div>
					<div class="sub_top fl">商品名称</div>
					<div class="sub_top fl">单价</div>
					<div class="sub_top fl">数量</div>
					<div class="sub_top fl">小计</div>
					<div class="sub_top fr">操作</div>
					<div class="clear"></div>
				</div>
				<c:forEach items="${cart.cartItem}" var="car" varStatus="vs">
				<div class="content2 center">
					<div class="sub_content fl ">
						<input type="checkbox" value="quanxuan" class="quanxuan" />
					</div>
					<div class="sub_content fl"><img style="width: 80px;height: 80px;" src="${pageContext.request.contextPath }/${car.product.pimage}"></div>
					<div class="sub_content fl ft20">${car.product.pdesc}</div>
					<div class="sub_content fl ">${car.product.shopprice}</div>
					<div class="sub_content fl">
						<input class="shuliang" type="number" value="${car.count}" step="1" min="1" >
					</div>
					<div class="sub_content fl">${car.subtotal}</div>
					<div class="sub_content fl"><a href="${pageContext.request.contextPath }/cartdelet?pid=${car.product.pid}">×</a></div>
					<div class="clear"></div>
				</div>
				</c:forEach>
			<div class="jiesuandan mt20 center">
				<div class="tishi fl ml20">
					<ul>
						<li><a href="javascript:void(0)" ><font onclick="history.back(2)">继续购物</font></a></li>
						
						<div class="clear"></div>
					</ul>
				</div>
				<div class="jiesuan fr">
					<div class="jiesuanjiage fl">合计（不含运费）：<span>${cart.total}</span></div>
					<div class="jsanniu fr"><input id="submitid" class="jsan" type="button" name="jiesuan"  value="去结算" onclick="show('${user}')"/></div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			
		</div>
		</form>
	<%@include file="/jsp/footter.jsp" %>

</body>
</html>