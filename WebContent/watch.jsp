<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrapValidator.css">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<title>${pcbook.name }</title>
</head>
<body>
<%@ include file="/_head.jsp" %>
<div class="container" style="margin-top:100px; margin-bottom: 200px;">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="carousel slide" id="carousel-834659">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-834659">
					</li>
					<c:forEach items="${numberList }" var="number">
					<li data-slide-to="${number }" data-target="#carousel-834659">
					</li>
					</c:forEach>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="img/book/${pcbook.id }.png" />
						<div class="carousel-caption">
						</div>
					</div>
					<c:forEach items="${numberList }" var="number">
					<div class="item">
						<img alt="" src="img/book/${pcbook.id }_${number}.png" />
						<div class="carousel-caption">
						</div>
					</div>
					</c:forEach>
				</div> <a class="left carousel-control" href="#carousel-834659" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-834659" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
</div>
<%@ include file="/_foot.jsp" %>

</body>
</html>