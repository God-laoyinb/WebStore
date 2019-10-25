<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>${cname}</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/page.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/layer/layer.js"></script>
</head>
<body>

	<%@include file="/jsp/head.jsp" %>
	
	<!-- start danpin -->
		<div class="danpin center">
			
			<div class="biaoti center">${cname}</div>
			<div class="main center">
				
				<c:forEach items="${page.datas}" var = "p" end="10" varStatus="vs">
				<c:if test="${vs.count==6 }">
				<div class="clear"></div>
				</div>
				<div class="main center mb20">
				</c:if>
				<div class="mingxing fl mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
					<div class="sub_mingxing"><a href="${pageContext.request.contextPath}/product?pid=${p.pid}" target="_blank"><img style="width: 150px;height: 150px" src="${pageContext.request.contextPath}/${p.pimage}" alt=""></a></div>
					<div class="pinpai"><a href="./xiangqing.html" target="_blank">${p.pname}</a></div>
					<div class="youhui">5.16早10点开售</div>
					<div class="jiage">${p.shopprice }</div>
				</div>
				</c:forEach>
			
				<div class="clear"></div>
				
				<div>

		<c:if test="${search==null||search=='' }" var="s">
        <span style="float: right;">
           	 总共${page.totalRecords}条记录 共${page.totalPages}页 当前第${page.currentPage }页
            <a href="${pageContext.request.contextPath}/productlist?currentPage=${page.firstPage}&pageSize=${page.pageSize}&cid=${cid}"><font color="blue">首页</font></a>
            <a href="${pageContext.request.contextPath}/productlist?currentPage=${page.prePage}&pageSize=${page.pageSize}&cid=${cid}"><font color="blue">上一页</font></a>
            <a href="${pageContext.request.contextPath}/productlist?currentPage=${page.nextPage}&pageSize=${page.pageSize}&cid=${cid}"><font color="blue">下一页</font></a>
            <a href="${pageContext.request.contextPath}/productlist?currentPage=${page.lastPage}&pageSize=${page.pageSize}&cid=${cid}"><font color="blue">尾页</font></a>
             <input type="text" name="jumpPage" size="4"><button id="jumpPageBtn">跳转</button>            
         </span>
		</c:if>
		<c:if test="${not s }">
		<span style="float: right;">
			 总共${page.totalRecords}条记录 共${page.totalPages}页 当前第${page.currentPage }页
            <a href="${pageContext.request.contextPath}/searchproduct?currentPage=${page.firstPage}&pageSize=${page.pageSize}&search=${search}"><font color="blue">首页</font></a>
            <a href="${pageContext.request.contextPath}/searchproduct?search=${search}&currentPage=${page.prePage}&pageSize=${page.pageSize}"><font color="blue">上一页</font></a>
            <a href="${pageContext.request.contextPath}/searchproduct?search=${search}&currentPage=${page.nextPage}&pageSize=${page.pageSize}"><font color="blue">下一页</font></a>
            <a href="${pageContext.request.contextPath}/searchproduct?search=${search}&currentPage=${page.lastPage}&pageSize=${page.pageSize}"><font color="blue">尾页</font></a>
             <input type="text" name="jumpPage1" size="4"><button id="jumpPageBtn1">跳转</button>            
         </span>
		
		</c:if>
    </div>
		</div>
		
		<div class="clear"></div>
		
		<%@include file="/jsp/footter.jsp" %>
		
		

<!-- <script type="text/javascript">
	$("#wr-page").wrpage({
		pagesize: ${page.totalPages},
		wr_current: ${page.currentPage},
		cb: function(e) {
			console.log(e)
		}
	})
	

</script> -->
<script type="text/javascript">
    $(document).ready(function () {
        $("#jumpPageBtn").click(function () {
            var pageNo = $("input[name=jumpPage]").val();
            if(pageNo > ${page.totalPages}){
            	layer.msg("超出当前页面");
            	return;
            }
            window.location.href = "${pageContext.request.contextPath}/productlist?currentPage=" + pageNo + "&pageSize=${page.pageSize}&cid=${cid}";
        })
		

    })
     $(document).ready(function () {
    $("#jumpPageBtn1").click(function () {
            var pageNo = $("input[name=jumpPage1]").val();
            if(pageNo>${page.totalPages}){
            	layer.msg("超出当前页面");
            	return;
            }
            window.location.href = "${pageContext.request.contextPath}/searchproduct?currentPage=" + pageNo + "&pageSize=${page.pageSize}&search=${search}";
        })
      })
</script>    
    </body>
</html>
    
    
    