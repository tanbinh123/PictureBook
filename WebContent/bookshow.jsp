<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/contact.css" />
<title>PictureBook</title>
</head>
<body>
	<%@ include file="/_head.jsp"%>

	<div style="position: relative;margin-left:400px; margin-top: 40px;margin-right: 400px;margin-bottom: 100px;">
		<h1 style="font-size: 50px;">${book.title }</h1>
		<hr>
		<img alt="" src="img/chat/${book.id }.jpg" style="margin-left: 200px;"> <br>
		<p style="font-size: 15px;margin-left: 100px;margin-right: 100px;">${book.context }</p>
		<p style="font-size: 20px;text-align:right; ">发表于：<fmt:formatDate value="${book.time}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
	</div>
	<div
		style="position: relative; border: 2px solid; border-radius: 5px; margin-left:420px; top: 20px; width: 1000px; padding: 10px;margin-bottom: 100px">

		<!-- 输入区 -->
		<div
			style="background-color:; position: relative; height: 200px; width: 975px; padding: 10px; margin-bottom: 30px; border-bottom-style: dotted;">
			<form action="subreview.do" method="post">
				<input type="hidden" name="chatid" value="${book.id}">

				<div
					style="position: absolute; left: 250px; top: 10px; height: 150px; width: 500px;">
					<textarea name="type" style="width: 100%; height: 100%;"
						placeholder="输入你想说的话"></textarea>
				</div>
				<div
					style="position: absolute; left: 750px; top: 10px; height: 150px; width: 100px;">
					<input type="submit" value="提交"
						style="position: relative; left: 20px; top: 100px; height: 30px; width: 90px; border: 2px solid; border-radius: 5px;">
				</div>
			</form>
		</div>
		<!-- 展示评论区 -->
		<c:forEach var="review" items="${reviewList}" varStatus="status">
			<div
				style="position: relative; width: 955px; border: 2px solid; border-radius: 5px; margin: 10px;">
				<div
					style="background-color:; position: relative; width: 200px; height: 100px; padding-left: 20px; padding-top: 10px;">

					用户：${review.userid}<br>

				</div>
				<div
					style="position: absolute; left: 210px; top: 10px; height: 80px; width: 640px;">

					${review.type}</div>
				<div
					style="position: absolute; left: 850px; top: 5px; height: 80px; width: 100px;">
					
				</div>
			</div>
		</c:forEach>
	</div>
	<%@ include file="/_foot.jsp"%>
</body>
</html>