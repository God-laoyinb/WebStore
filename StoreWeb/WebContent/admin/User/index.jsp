<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
<form class="form-inline definewidth m20" action="index.jsp" method="get">    
    用户名称：
    <input type="text" name="username" id="username"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">新增用户</button>
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>用户id</th>
        <th>用户名</th>
        <th>真实姓名</th>
        <th>邮箱</th>
        <th>手机号</th>
        <th>出生日期</th>
        <th>性别</th>
        <th>激活状态</th>
        <th>操作</th>
    </tr>
    </thead>
    <c:forEach items="${users}" var="u">
	     <tr>
            <td>${u.uid}</td>
            <td>${u.username}</td>
            <td>${u.name}</td>
            <td>${u.email}</td>
            <td>${u.telphone}</td>
            <td>${u.birthday}</td>
            <td>
            <c:if test="${u.sex==1}">男</c:if>
            <c:if test="${u.sex==0}">女</c:if>
            </td>
            <td>
            	<c:if test="${u.state==1}" var="flag">
            	<a href="${pageContext.request.contextPath}/adminuserdelet?uid=${u.uid}&state=0" class="btn btn-primary" id="weishangjia" >冻结</a>
            	</c:if>
            	<c:if test="${not flag}" >
            	<a href="${pageContext.request.contextPath}/adminuserdelet?uid=${u.uid}&state=1" class="btn btn-primary" id="weishangjia" >激活</a>
            	</c:if>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/admineditui?uid=${u.uid}">编辑</a>                
            </td>
        </tr>	
    </c:forEach>
</table>
</body>
</html>
<script>
    $(function () {
        

		$('#addnew').click(function(){

				window.location.href="${pageContext.request.contextPath }/admin/User/add.jsp";
		 });


    });

	function del(id)
	{
		
		
		if(confirm("确定要删除吗？"))
		{
		
			var url = "index.jsp";
			
			window.location.href=url;		
		
		}
	
	
	
	
	}
</script>