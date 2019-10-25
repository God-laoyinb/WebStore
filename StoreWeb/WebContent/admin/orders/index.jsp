<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Css/style.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }/admin/Js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/admin/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/admin/Js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/admin/Js/ckform.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/admin/Js/common.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/layer/layer.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
</head>
<body>
<form class="form-inline definewidth m20" action="index.html" method="get">
    商品名称：
   <!--  <input type="text" name="menuname" id="menuname"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  -->
    <!-- <button type="submit" class="btn btn-primary">查询</button> -->
</form>
<table class="table table-bordered table-hover definewidth m10">
	
     
    <thead>
   	<tr >
   	<c:if test="${state==2 }" var="s">
		<th colspan="2">
		<a href="${pageContext.request.contextPath}/admingetorders?state=0" class="btn btn-success" id="weishangjia" >未付款</a>
		</th>
		<th colspan="2">
			<a href="${pageContext.request.contextPath}/admingetorders?state=1"  class="btn btn-success" id="yishangjia" >未下单</a>
		</th>
		<th colspan="2">
		<a href="${pageContext.request.contextPath}/admingetorders?state=2" class="btn btn-success" id="weishangjia" disabled="disabled">已发货</a>
		</th>
		<th colspan="3">
		<a href="${pageContext.request.contextPath}/admingetorders?state=3" class="btn btn-success" id="weishangjia" >已完成</a>
		</th>
		</c:if>
   	
   	<c:if test="${state==1}">
		<th colspan="2">
		<a href="${pageContext.request.contextPath}/admingetorders?state=0" class="btn btn-success" id="weishangjia" >未付款</a>
		</th>
		<th colspan="2">
			<a href="${pageContext.request.contextPath}/admingetorders?state=1"  class="btn btn-success" id="yishangjia" disabled="disabled">未下单</a>
		</th>
		<th colspan="2">
		<a href="${pageContext.request.contextPath}/admingetorders?state=2" class="btn btn-success" id="weishangjia" >已发货</a>
		</th>
		<th colspan="3">
		<a href="${pageContext.request.contextPath}/admingetorders?state=3" class="btn btn-success" id="weishangjia" >已完成</a>
		</th>
		
		</c:if>
		
		
		
		<c:if test="${state==3 }">
		<th colspan="2">
		<a href="${pageContext.request.contextPath}/admingetorders?state=0" class="btn btn-success" id="weishangjia" >未付款</a>
		</th>
		<th colspan="2">
			<a href="${pageContext.request.contextPath}/admingetorders?state=1"  class="btn btn-success" id="yishangjia" >未下单</a>
		</th>
		<th colspan="2">
		<a href="${pageContext.request.contextPath}/admingetorders?state=2" class="btn btn-success" id="weishangjia" >已发货</a>
		</th>
		<th colspan="3">
		<a href="${pageContext.request.contextPath}/admingetorders?state=3" class="btn btn-success" id="weishangjia" disabled="disabled">已完成</a>
		</th>
		</c:if>
		
		<c:if test="${state==0||state==null }">
		<th colspan="2">
		<a href="${pageContext.request.contextPath}/admingetorders?state=0" class="btn btn-success" id="weishangjia" disabled="disabled">未付款</a>
		</th>
		<th colspan="2">
			<a href="${pageContext.request.contextPath}/admingetorders?state=1"  class="btn btn-success" id="yishangjia" >未下单</a>
		</th>
		<th colspan="2">
		<a href="${pageContext.request.contextPath}/admingetorders?state=2" class="btn btn-success" id="weishangjia" >已发货</a>
		</th>
		<th colspan="3">
		<a href="${pageContext.request.contextPath}/admingetorders?state=3" class="btn btn-success" id="weishangjia" >已完成</a>
		</th>
		</c:if>
		
		
	</tr>
	
    <tr> 
    	<th colspan="9">订单列表</th>
    </tr>
    <tr>
    	<th>序号</th>
        <th>订单编号</th>
        <th>订单金额</th>
         <th>下单时间</th>
        <th>收货人</th>
        <th>收货地址</th>
        <th>联系电话</th>
        <th>订单状态</th>
        <th>订单详情</th>
    </tr>
    </thead>
	     <c:forEach items="${orders}" var="os" varStatus="vs">
	  
       		 <tr>
       		 	<td>${vs.count}</td>
                <td>${os.oid }</td>
                <td>${os.total}</td>
                <td><fmt:formatDate value="${os.ordertime}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
                 <td>${os.name}</td>
                 <td>${os.address}</td>
                 <td>${os.telphone}</td>
   
                  <td>
                  <c:if test="${os.state==0}">未付款</c:if> 
                  <c:if test="${os.state==1}">
                  	<a href="${pageContext.request.contextPath}/adminupdateorderstate?oid=${os.oid }&state=${state}" class="btn btn-success" >去下单</a></c:if>
                   <c:if test="${os.state==2}">待收货</c:if>
                    <c:if test="${os.state==3}">已完成 </c:if>  							                 
                  </td>
                  <td><input type="button" class="btn btn-primary" onclick="showdetail('${os.oid}')" value = "订单详情 >>" />	</td>
                  
            </tr>
	    	   
	     </c:forEach>
       </table>
    
       

</body>
</html>
<script type="text/javascript">
    $(function () {
        

		$('#addnew').click(function(){

				window.location.href="${pageContext.request.contextPath }/adminaddproductui";
		 });


    });
	
    function showdetail(oid){
    	//layer.alert(oid);
    	//发送ajax
    	$.post("${pageContext.request.contextPath}/adminshowdetail",{"oid":oid},function(d){
    		//alert(d);
    		var s="<table cellspacing='0' align='center' border ='1' width='99%'>";
    		s+="<tr><th>图片地址</th><th>商品名称</th><th>购买数量</th><th>单价</th><th>合计</th></tr>";
    	
    		$(d).each(function(){
    			 s+="<tr><td>"+this.product.pimage+
    			"</td><td>"+this.product.pname+"</td><td>"+this.count+"</td><td>"+
    			this.product.shopprice+"</td><td>"+this.subtotal+"</td></tr>" 
    			
    		});
    		s+="</table>";
    		
    		layer.open({
    			  type: 1,//弹窗类型
    			  shade:0.5,//透明度
    			  shadeClose:true,//是否在弹窗外点击关闭
    			  area: ['800px','500px'],//弹窗大小
    			  title:"订单号："+oid,
    			  maxmin: true,//是否放大缩小按钮
    			  anim:4,//弹窗出现方式
    			  closeBtn:1,//关闭按钮样式
    			  moveOut:true,//是否拉出界面外
    			  content:s,
    			
    			  
    			});
    	},"json");
    }
</script>