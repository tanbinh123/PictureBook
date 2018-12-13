<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" buffer="0kb" %>
<!DOCTYPE HTML>
<html>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrapValidator.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="css/contact.css"/>
		<title>PictureBook | 论  坛</title>
	</head>
	<body>
	<%@ include file="/_head.jsp" %>
		<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table">
				<thead>
					<tr>
						<th>
							推荐题目
						</th>
						<th>
							发表用户
						</th>
						<th>
							发表时间
						</th>
						
					</tr>
				</thead>
				<tbody>
				 <c:forEach items="${chatList }" var="chat">
					<tr class="warning">
						<td>
							<a href="showbook.do?bookid=${chat.id}">${chat.title }</a>
						</td>
						<td>
							${chat.type}
						</td>
						<td>
							<fmt:formatDate value="${chat.time}" pattern="yyyy-MM-dd"/>
						</td>
						
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

	<%@ include file="/_foot.jsp" %>
	</body>
</html>
