<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" buffer="0kb" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="css/contact.css"/>
		<title>PictureBook</title>
	</head>
	
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>


	
	<body>
	<%@ include file="_head.jsp" %>
	<div style="margin-left:400px;margin-top:70px;margin-right:400px;margin-bottom:200px; height: 800px;">
	<c:if test="${pictureList.size()==0}"><h1>暂无此类图书</h1></c:if>
		 <ul>
         <c:forEach items="${pictureList }" var="picture">
         <li style="width: 300px;height: 200px;background: #FFF;border-radius: 8px;margin-left: 40px;margin-bottom:40px;float: left;list-style: none;">
         <img alt="" src="img/book/${picture.id}.png" width="300" height="170"><br>${picture.name }<br>${picture.athor }<br>
         <a href="watch.do?bookid=${picture.id}" target="_blank" style="float: right;">观看</a></li>
         </c:forEach>
         </ul>
         </div>
	<%@ include file="_foot.jsp" %>
	</body>
</html>
