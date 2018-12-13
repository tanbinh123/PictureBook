<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" buffer="0kb" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="css/contact.css"/>
		<title>PictureBook</title>
	</head>
	<body>
	<%@ include file="/_head.jsp" %>
	<div id="bg">
		<div id="contact">
		    <div id="cd">姓名：
		        <input type="text" value=""/>
		     </div>
		    <div id="cd">电话：
		        <input type="text" value=""/>
		     </div>
		     <div id="cd">邮箱：
		        <input type="text" value=""/>
		     </div>
		     <div id="cd">意见：</div>
		      <div id="cd1">
		        <textarea rows="10" cols="60"></textarea>
		       </div>
		     
		     <div >
		        <input id="sub" type="submit" value="提交" onclick="window.location='index.do'"/>
		     </div>
		</div>
    </div>
	<%@ include file="/_foot.jsp" %>
	
	</body>
</html>
