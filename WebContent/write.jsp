<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" buffer="0kb" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="css/contact.css"/>
		<title>PictureBook | 发布推荐</title>
	</head>
	<body>
	<%@ include file="/_head.jsp" %>
		<div id="bg">
		<div id="contact">
		<form action="submitchat.do" enctype="multipart/form-data" method="post">
		    <div id="cd">题目：
		        <input type="text" name="title" value=""/>
		     </div>
		    <div id="cd">图片：
		        <input type="file" name="file"  accept="image/jpeg"/>
		     </div>
		     <div id="cd">
		     </div>
		     <div id="cd">正文：</div>
		      <div id="cd1">
		        <textarea rows="10" cols="60" name="context"></textarea>
		       </div>
		     
		     <div >
		        <input id="sub" type="submit" value="提交"/>
		     </div>
		     </form>
		</div>
    </div>

	<%@ include file="/_foot.jsp" %>
	</body>
</html>
