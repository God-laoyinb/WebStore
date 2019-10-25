<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>errors</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
</head>
<body>
	<%@include file="/jsp/head.jsp" %>
	<c:out value="${message}"></c:out><input type="button" onclick="history.back()" value="返回">
	<%@include file="/jsp/footter.jsp" %>
</body>
</html>