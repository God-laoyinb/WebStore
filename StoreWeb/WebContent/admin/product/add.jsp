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
<form action="${pageContext.request.contextPath }/AdminAddProduct" method="post" class="definewidth m20" enctype="multipart/form-data">
<table class="table table-bordered table-hover m10">
    <tr>
        <th  class="tableleft" colspan="2">添加商品</th>
        
    </tr>
    <tr>
        <td class="tableleft" width="10%">名称</td>
        <td><input type="text" name="pname"/></td>
    </tr>
    <tr>
        <td class="tableleft">市场价</td>
        <td><input type="text" name="marketprice"/></td>
    </tr>
    <tr>
        <td class="tableleft">现价</td>
        <td><input type="text" name="shopprice"/></td>
    </tr>
    <tr>
        <td class="tableleft">图片</td>
        <td>    
		      <input type="file" name="pimage" />
		 
		 </td>
    </tr>
    <tr>
        <td class="tableleft">类型</td>
        <td><input type="text" name="pdesc"/></td>
    </tr>
    <tr>
        <td class="tableleft">商品分类</td>
        <td>
            <select name="cid">  
            
            <c:forEach items="${list }" var="c">
            <option value='${c.cid }'   />&nbsp;${c.cname }</option>         
            </c:forEach>
            </select>
        </td>
    </tr>
    <tr>
        <td class="tableleft">是否热门</td>
        <td>
            <input type="radio" name="ishot" value="1" checked/> 是
            <input type="radio" name="ishot" value="0"/> 否
        </td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit" class="btn btn-primary" type="button">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath }/admin/upload/js/jquery-1.11.0.min.js"><\/script>')</script>
	<script src="${pageContext.request.contextPath }/admin/upload/dist/jquery.imageuploader.js"></script>
<script>
    $(function () {       
		$('#backid').click(function(){
				history.back();
		 });

    });
    
    (function(){
        var options = {};
        $('.js-uploader__box').uploader({
        	'selectButtonCopy':'请选择或拖拽文件',
        	'instructionsCopy':'你可以选择或拖拽多个文件',
        	'submitButtonCopy':'上传选择的文件',
        	'furtherInstructionsCopy':'你可以选择或拖拽更多的文件',
        	'secondarySelectButtonCopy':'选择更多的文件',
        	
        });
    }());
</script>