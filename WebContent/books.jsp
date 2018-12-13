<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>	
<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="css/contact.css"/>
		<title>PictureBook</title>
	</head>
	<body>
	<%@ include file="/_head.jsp" %>
		<div style="margin-left:400px;margin-top:70px;margin-right:400px;margin-bottom:200px; height: 800px;">
		 <ul>
         <c:forEach items="${bookList }" var="book">
         <li style="width: 300px;height: 200px;background: #FFF;border-radius: 8px;margin-bottom:40px; margin-left: 40px;float: left;list-style: none;">
         <img alt="" src="img/book/${book.id}.png" width="300" height="170"><br>${book.name }<br>${book.athor }<br>
         <button onclick="collect(bookid=${book.id})" style="float: right;">收藏</button></li>
         </c:forEach>
         </ul>
         </div>
<script type="text/javascript">
function collect(bookid){
	var url = "collect.do";
	var data = {"bookid":bookid};
	$.post(url,data,function(result){
		//result就是服务器返回的应答内容
		// 将应答内容添加到username对应的span中
		alert(result);
	});
}
</script>
	<%@ include file="/_foot.jsp" %>
	</body>
</html>