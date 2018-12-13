<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="css/login.css"/>
		<title>PictureBook | 登录</title>
	</head>
	<body>
		<h1>欢迎登录PictureBook</h1>
		<form action="login.do" method="POST">
			<table>
				<tr>
					<td colspan="2" style='text-align:center;color:red'>${errMsg}</td>
				</tr>
				<tr>
					<td class="tdx">用户名：</td>
					<td><input type="text" name="name"  /></td>
					<%-- <td><input type="text" name="username" value="${cookie.remname.value}"  /></td> --%>
				</tr>
				<tr>
					<td class="tdx">密&nbsp;&nbsp; 码：</td>
					<td><input type="password" name="password"/></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center">
						<input type="submit" value="登 录"/>
					</td>
				</tr>
			</table>
		</form>		
	</body>
</html>
