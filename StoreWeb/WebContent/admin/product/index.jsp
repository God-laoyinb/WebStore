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
    <!-- <button type="submit" class="btn btn-primary">查询</button> -->&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">新增商品</button>
</form>
<table class="table table-bordered table-hover definewidth m10">
	
     
    <thead>
   	<tr >
   	<c:if test="${productup==0 }" var="pu">
		<th colspan="6">
			<a href="${pageContext.request.contextPath}/adminproduct"  class="btn btn-success" id="yishangjia" disabled="disabled">已上架</a>
		</th>
		<th colspan="5">
		<a href="${pageContext.request.contextPath}/adminproduct?productup=1" class="btn btn-success" id="weishangjia" >未上架</a>
		</th>
		</c:if>
		<c:if test="${not pu }">
		<th colspan="6">
			<a href="${pageContext.request.contextPath}/adminproduct"  class="btn btn-success" id="yishangjia" >已上架</a>
		</th>
		<th colspan="5">
		<a href="${pageContext.request.contextPath}/adminproduct?productup=1" class="btn btn-success" id="weishangjia" disabled="disabled">未上架</a>
		</th>
		</c:if>
	</tr>
	<c:forEach items="${list }" var="l">
    <tr> 
    	<th colspan="11">${l.cname}</th>
    </tr>
    <tr>
    	<th>商品编号</th>
        <th>图片</th>
        <th>名称</th>
        <th>市场价</th>
        <th>现价</th>
        <th>商品时间</th>
        <th>是否热门</th>
        <th>商品类型</th>
        <th>是否上架</th>
        <th>删除</th>
        <th>编辑</th>
    </tr>
    </thead>
	     <c:forEach items="${page}" var="pd">
	    	   <c:if test="${l.cid==pd.category.cid}">  
       		 <tr>
       		 	<td>${pd.pid}</td>
                <td><img style="width: 80px;height: 80px" src="${pageContext.request.contextPath}/${pd.pimage}" alt=""></td>
                <td>${pd.pname}</td>
                <td>${pd.marketprice}</td>
                 <td>${pd.shopprice}</td>
                 <td><fmt:formatDate value="${pd.pdate}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
                  <td>
                  <c:if test="${pd.ishot==1}" var="flag">是
                  </c:if> 
                  <c:if test="${not flag}">否</c:if> 							                 
                  </td>
                  <td>${pd.pdesc}</td>
                  <td>
                  <c:if test="${pd.pflag==0}" var="pflag">是
                  </c:if> 
                  <c:if test="${not pflag}">否</c:if> 							                 
                  </td>
                <td><a href="${pageContext.request.contextPath}/adminproductdelet?pid=${pd.pid}">删除</a></td>
                <td><a href="${pageContext.request.contextPath}/adminupdateproductui?pid=${pd.pid}">编辑</a></td>
            </tr>
	    	   </c:if>  
	     </c:forEach>
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
	
</script>