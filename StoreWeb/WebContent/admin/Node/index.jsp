<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
<form class="form-inline definewidth m20" action="index.jsp" method="get">  
    分类名称：
   <!--  <input type="text" name="rolename" id="rolename"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;   -->
    <!-- <button type="submit" class="btn btn-primary">查询</button> -->&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">新增分类</button>
</form>
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        <th>商品分类编号</th>
        <th>分类名称</th>
        <th>删除</th>
        <th>管理操作</th>
    </tr>
    </thead>
    <c:forEach items="${list}" var = "v">
	     <tr>
            <td>${v.cid}</td>
            <td>${v.cname}</td>
            <td><a href="${pageContext.request.contextPath }/admincategorydelet?cid=${v.cid}" style="color: blue;">删除</a></td>
            <td>
                  <a href="${pageContext.request.contextPath }/admin/Node/edit.jsp?cid=${v.cid}">编辑</a>
            </td>
        </tr>
        
    </c:forEach>
        </table>
<div class="inline pull-right page">
       </div>
</body>
</html>
<script>
    $(function () {
        
		$('#addnew').click(function(){

				window.location.href="${pageContext.request.contextPath }/admin/Node/add.jsp";
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