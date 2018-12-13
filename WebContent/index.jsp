<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" buffer="0kb" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
		<title>PictureBook | 首 页</title>
		<link rel="stylesheet" href="css/orbit-1.2.3.css">
		<link rel="stylesheet" href="css/index.css">
		<script src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.orbit-1.2.3.min.js"></script>
		<script type="text/javascript">
			$(window).load(function() {
				$('#featured').orbit();
			});
		</script>
		</head>
		<%@ include file="/_head.jsp" %>
		<body>
		

        <div class="container">
            <div id="con-right" style="float: right;position: relative;width: 500px;"> 
                <hr><h1>今日推荐图书</h1><br>
                <table style="font-size: 20px;line-height: 50px;">
                <c:forEach items="${chatList }" var="chat" begin="0" end="7">
                <tr>
                <td width="370"><a href="showbook.do?bookid=${chat.id}">${chat.title }</a></td>
                <td><fmt:formatDate value="${chat.time}" pattern="yyyy-MM-dd"/></td>
                </tr>
                </c:forEach>
                </table>
             </div>
          <div id="featured" style="float: left;position: relative;">
            <a href=""><img style="width:500px;height:400px"  src="img/index/1.jpg" /></a> 
            <img style="width:500px;height:400px" src="img/index/2.jpg" data-caption="#htmlCaption" /> 
            <img style="width:500px;height:400px"  src="img/index/3.jpg"  /> 
            <img style="width:500px;height:400px"  src="img/index/4.jpg"  /> 
            </div>
         </div>
         <div style="margin-top:100px; margin-left: 20%;margin-right: 20%;">
         <hr><h1>绘本推荐</h1><br>
         <ul>
         <c:forEach items="${pictureList }" var="picture" begin="0" end="2">
         <li style="width: 300px;height: 200px;background: #FFF;border-radius: 8px;margin-left: 40px;float: left;list-style: none;">
         <img alt="" src="img/book/${picture.id}.png" width="300" height="170"><br>${picture.name }<br>${picture.athor }<br>
         <a href="watch.do?bookid=${picture.id}" target="_blank" style="float: right;">观看</a></li>
         </c:forEach>
         </ul>
         </div>
         <div style="margin-top:250px; margin-left: 20%;margin-right: 20%;">
         <hr><h1>图书推荐</h1><br>
         <ul>
         <c:forEach items="${bookList }" var="book" begin="0" end="2">
         <li style="width: 300px;height: 200px;background: #FFF;border-radius: 8px;margin-left: 40px;float: left;list-style: none;margin-bottom: 200px;">
         <img alt="" src="img/book/${book.id}.png" width="300" height="170"><br>${book.name }<br>${book.athor }<br>
         <a href="books.jsp" style="float: right;">查看详情</a></li>
         </c:forEach>
         </ul><br><br><br><br>
         </div>

</body>
</html>
