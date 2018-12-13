<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<link rel="stylesheet" href="css/head.css" />
<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />

<div id="common_head" style="">
	<div id="line1"
		style="width: 100%; height: 35px; background-color: #FAFAFA; border-bottom: 1px solid #EDEDED; font-size: 14px; color: #666666;">
		<div id="content"
			style="width: 1200px; margin: 0px auto; line-height: 35px;">
			<c:if test="${empty loginUser}" var="flag">
				<a href="login.jsp"
					style="font-size: 14px; text-decoration: none; color: #666666;">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				<a href="regist.jsp"
					style="font-size: 14px; text-decoration: none; color: #666666;">注册</a>
			</c:if>
			<c:if test="${!flag}">
				欢迎 ${loginUser.name} 回来&nbsp;&nbsp;|&nbsp;&nbsp;
				<a href="Logout.do"
					style="font-size: 14px; text-decoration: none; color: #666666;">注销</a>
			</c:if>
		</div>
	</div>
	<div id="line2"
		style="width: 1200px; height: 100px; margin: 0px 0px 0px 400px; line-height: 100px;">
		<form action="seach.do" method="post">
		<img id="logo" src="img/head/logo.jpg"
			style="width: 300px; height: 100px; vertical-align: middle;" /> <input
			type="text" name="text"
			style="vertical-align: middle; width: 400px; height: 30px; margin-left: 150px; border: 2px solid rgb(244, 176, 131);" />
		<input type="submit" value="搜 索"
			style="vertical-align: middle; width: 80px; height: 36px; background-color: rgb(244, 176, 131); border: 1px solid rgb(244, 176, 131); color: white; margin-left: -5px; cursor: pointer; line-height: normal; font-size: 14px;" />

		<span id="goto"
			style="vertical-align: middle; margin-left: 80px; border: 1px solid rgb(244, 176, 131); padding: 8px 0; font-size: 14px;">
			<a id="goto_cart" href="likelist.do"
			style="color: #555555; text-decoration: none; font-size: 14px;">收藏夹</a>
		</span>
		</form>
	</div>
	<div id="line3">
		<div id="content">
			<ul>
				<li><a href="index.do">首页</a></li>
				<li><a href="recommend.do">绘本大全</a></li>
				<li><a href="talks.jsp">用户推荐</a></li>
				<li><a href="write.jsp">发布推荐</a></li>
				<li><a href="books.jsp">绘本收藏</a></li>
				<li><a href="contact.jsp">联系我们</a></li>
			</ul>
		</div>
	</div>
</div>
