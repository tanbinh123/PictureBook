<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
  <head>
  	<style type="text/css">
  		body{
  			text-align: center;
  		}
		table {
			text-align: center;
		}
		th{
			background-color: silver;
		}
  	</style>
  </head>
  <body>
  	<h1>商品管理</h1>
  	<a href="${pageContext.request.contextPath }/backend/manageAddProd.jsp">添加商品</a>
  	<hr>
  	<table align="center" bordercolor="black" border="1" width="90%" cellspacing="0px" cellpadding="5px">
  	<tr>
  		<th>商品图片</th>
  		<th>商品id</th>
  		<th>商品名称</th>
		<th>商品种类</th>
		<th>商品单价</th>
		<th>库存数量</th>
		<th>描述信息</th>
  	</tr>
  	<c:forEach items="${requestScope.list }" var="prod" >
  		<tr>
  			<td><img width="120px" height="120px" src="${pageContext.request.contextPath }/servlet/ImgServlet?id=${prod.id}"/></td>
  			<td>${prod.id }</td>
  			<td>${prod.name }</td>
  			<td>${prod.category }</td>
  			<td>${prod.price }</td>
  			<td>${prod.pnum }</td>
  			<td>${prod.description }</td>
  		</tr>
  	</c:forEach>
  	</table>
  </body>
</html>
