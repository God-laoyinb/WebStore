<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- start header -->
		<header>
			<div class="top center">
		
				<div class="left fl">
					
					<ul>
					
						<li><a href="http://www.mi.com/" target="_blank">Y神商城</a></li>
						<li>|</li>
						<li><a href="">MIUI</a></li>
						<li>|</li>
						<li><a href="">Y聊</a></li>
						<li>|</li>
						<li><a href="">游戏</a></li>
						<li>|</li>
						<li><a href="">多看阅读</a></li>
						<li>|</li>
						<li><a href="">云服务</a></li>
						<li>|</li>
						<li><a href="">金融</a></li>
						<li>|</li>
						<li><a href="">Y神商城移动版</a></li>
						<li>|</li>
						<li><a href="">问题反馈</a></li>
						<li>|</li>
						<li><a href="">Select Region</a></li>
						
						<div class="clear"></div>
							
					</ul>
				
				</div>

				<div class="right fr">
					<div class="gouwuche fr"><a id="gouwucid" onclick="gouwuc('${user}')">购物车</a></div>
					<div class="fr">
						<ul>
						<c:if test="${user==null}" var="flag" scope="session">
							<li><a href="${pageContext.request.contextPath }/Test/LoginForm" target="_self">登录</a></li>
							<li>|</li>
							<li><a href="${pageContext.request.contextPath }/Test/RegisterForm" target="_self" >注册</a></li>
							<li>|</li>
							<li><a  onclick="message('请先登录')">消息通知</a></li>
						</c:if>
						<c:if test="${not flag}">
							
							<li><font style="color:pink">欢迎您：${user.username}</font></li>
							<li>|</li>
							<li><a href="${pageContext.request.contextPath }/DoLoginForm/logout" target="_self" ><font style="color:pink">注销</font></a></li>
							<li>|</li>
							<li><a href="${pageContext.request.contextPath }/findorderspage"><font style="color:pink">我的订单</font></a></li>
						</c:if>	
							
							
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</header>
	<!--end header -->
	
	<!-- start banner_x -->
		<div class="banner_x center">
			<a href="./index.html" target="_blank"><div class="logo fl"></div></a>
			<a href=""><div class="ad_top fl"></div></a>
			<div class="nav fl">
				<ul id="c_ul">
					<li><a href="${pageContext.request.contextPath}/index.jsp" target="_blank">首页</a></li>
					
				</ul>
			</div>
			<div class="search fr">
				<form action="${pageContext.request.contextPath}/searchproduct" method="post">
					<div class="text fl">
						<input type="text" class="shuru"  placeholder="Y神6&nbsp;Y神ASUS现货" name="search">
					</div>
					<div class="submit fl">
						<input type="submit" class="sousuo" value="搜索"/>
					</div>
					<div class="clear"></div>
				</form>
				<div class="clear"></div>
			</div>
		</div>
<!-- end banner_x -->
<script type="text/javascript" src="${pageContext.request.contextPath }/layer/layer.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
$(function(){
	//alert("aaa");
	$.ajax({
	    type: "post",
	    url: "${pageContext.request.contextPath}/Test/category",
	    /* data: {
	     	"cid":cid,
	     	 "cname":cname
	    }, */
	    dataType: "json",
	//   contentType:'application/json',
	    success: function (obj) {
	     //alert(obj);
	     //遍历数组
	     //$.each($(obj),function(){});
	     $(obj).each(function(){
	    	// alert(this.cname);
	    	$("#c_ul").append("<li><a href="+"${pageContext.request.contextPath}/productlist?cid="+this.cid+" target='_self'>"+this.cname+"</a></li>");	
	    	 
	     });
	  
	     },
	    
	   });
   

 });
	 function message(msg){
		 layer.msg(msg);
	 }
	 
	function gouwuc(obj){
		
		if(obj==null||obj==""){
			layer.msg("请先登录");
			return;
		}
		else{
			$('#gouwucid').attr('href','${pageContext.request.contextPath}/jsp/gouwuche.jsp'); 
		}
	}
</script>