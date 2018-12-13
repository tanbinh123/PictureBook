<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="css/contact.css"/>
</head>
<body>
<%@ include file="/_head.jsp" %>
		<div style="margin-left:400px;margin-top:70px;margin-right:400px;margin-bottom:200px; height: 800px;">
		<c:if test="${likeList.size()==0}"><h1>暂无收藏</h1></c:if>
		
		 <ul>
         <c:forEach items="${likeList }" var="book">
         <li style="width: 300px;height: 200px;background: #FFF;border-radius: 8px;margin-left: 40px;margin-bottom:40px;float: left;list-style: none;">
         <img alt="" src="img/book/${book.id}.png" width="300" height="170"><br>${book.name }<br>${book.athor }<br>
         <a href="canclecollect.do?bookid=${book.id}" style="float: right;">取消收藏</a></li>
         </c:forEach>
         </ul>
         </div>
	<%@ include file="/_foot.jsp" %>
</body>
</html>

