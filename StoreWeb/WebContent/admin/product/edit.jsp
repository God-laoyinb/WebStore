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


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/upload/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/upload/css/htmleaf-demo.css">
	<link href="${pageContext.request.contextPath }/admin/upload/dist/styles.imageuploader.css" rel="stylesheet" type="text/css">
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
<form action="${pageContext.request.contextPath }/adminupdateProduct" method="post" class="definewidth m20">
<table class="table table-bordered table-hover m10">
    <tr>
        <th  class="tableleft" colspan="2">修改商品</th>
        
    </tr>
    <tr>
        <td class="tableleft">图片</td>
        <td>    
		      <img style="width: 150px;height: 150px;" src ="${pageContext.request.contextPath }/${p.pimage}" alt=""/>
		      <input type="hidden" name="pimage" value="${p.pimage}">
		 </td>
    </tr>
    <tr>
        <td class="tableleft" width="10%">名称</td>
        <td><input type="text" name="pname" value="${p.pname }"/>
         <input type="hidden" name="pid" value="${p.pid}"></td>
    </tr>
    <tr>
        <td class="tableleft">市场价</td>
        <td><input type="text" name="marketprice" value="${p.marketprice }"/></td>
    </tr>
    <tr>
        <td class="tableleft">现价</td>
        <td><input type="text" name="shopprice" value="${p.shopprice }"/></td>
    </tr>
    
    <tr>
        <td class="tableleft">类型</td>
        <td><input type="text" name="pdesc" value="${p.pdesc }"/></td>
    </tr>
    <tr>
        <td class="tableleft">商品分类</td>
        <td>
            <select name="cid">  
            
            <c:forEach items="${list }" var="c">
            <c:if test="${p.category.cid==c.cid}" var="pc">
            <option value='${c.cid }'  selected="selected"/>&nbsp;${c.cname }</option> 
            </c:if>
            <c:if test="${not pc }">
            <option value='${c.cid }'   />&nbsp;${c.cname }</option>   
            </c:if>  
            </c:forEach>
            </select>
        </td>
    </tr>
    <tr>
        <td class="tableleft">是否热门</td>
        <td>
        <c:if test="${p.ishot==1}" var="pi">
            <input type="radio" name="ishot" value="1" checked/> 是
            <input type="radio" name="ishot" value="0"/> 否
        </c:if>
        <c:if test="${not pi}">
            <input type="radio" name="ishot" value="1" /> 是
            <input type="radio" name="ishot" value="0" checked/> 否
        </c:if>
        </td>
    </tr>
    <tr>
        <td class="tableleft">是否上架</td>
        <td>
        <c:if test="${p.pflag==0}" var="pf">
            <input type="radio" name="pflag" value="0" checked/> 是
            <input type="radio" name="pflag" value="1"/> 否
        </c:if>
        <c:if test="${not pf}">
            <input type="radio" name="pflag" value="0" /> 是
            <input type="radio" name="pflag" value="1" checked/> 否
        </c:if>
        </td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit" class="btn btn-primary" type="button">确定修改</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
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