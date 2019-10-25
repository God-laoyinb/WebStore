<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<form action="${pageContext.request.contextPath }/adminupdateuser?uid=${user.uid}" method="post" class="definewidth m20">
<input type="hidden" name="id" value="{$user.id}" />
    <table class="table table-bordered table-hover definewidth m10">
        <tr>
            <td width="10%" class="tableleft">用户名</td>
            <td><input type="text" name="username" value="${user.username}"/></td>
        </tr>
        <tr>
            <td class="tableleft">密码</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td class="tableleft">真实姓名</td>
            <td><input type="text" name="name" value="${user.name}"/></td>
        </tr>
        <tr>
            <td class="tableleft">邮箱</td>
            <td><input type="text" name="email" value="${user.email}"/></td>
        </tr>
        <tr>
            <td class="tableleft">手机号</td>
            <td><input type="text" name="telphone" value="${user.telphone}"/></td>
        </tr>
         
        <tr>
            <td class="tableleft">性别</td>
            <td>
            <c:if test="${user.sex==1 }" var="vss">
            <input type="radio" name="sex" value="1" checked/> 男
           <input type="radio" name="sex" value="0"/> 女
            </c:if>
            <c:if test="${not vss }">
            <input type="radio" name="sex" value="1" /> 男
           <input type="radio" name="sex" value="0" checked/> 女
            </c:if>
        </td>
        </tr>
        <tr>
            <td class="tableleft">状态</td>
            <td>
            <c:if test="${user.state==1 }" var="vs">
            <input type="radio" name="state" value="1" checked/> 激活
           <input type="radio" name="state" value="0"/> 冻结
            </c:if>
            <c:if test="${not vs }">
            <input type="radio" name="state" value="1" /> 激活
           <input type="radio" name="state" value="0" checked/> 冻结
            </c:if>
        </td>
        </tr>
        
        <tr>
            <td class="tableleft"></td>
            <td>
                <button type="submit" class="btn btn-primary" type="button">保存</button>				 &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
<script>
    $(function () {       
		$('#backid').click(function(){
				history.back();
		 });

    });
</script>