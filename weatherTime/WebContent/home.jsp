<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Bootstrap Example</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	request.setCharacterEncoding("utf-8");
%>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Sensible Clock</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="home.jsp">Home</a></li>
					<li><a href="register_area.jsp">관심 지역 등록하기 </a></li>
					<li><a href="display_weather.jsp">날씨 보기</a></li>
					<li><a href="#">시간 보기</a></li>
				</ul>
				<%
					if (session.getAttribute("name") != null) {
						String name = (String) session.getAttribute("name");
				%>
				<ul class="nav navbar-nav navbar-right">
					<li><%=name%>님 안녕하세요</li>
					<li><a href="logout.jsp"><span
							class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
				</ul>
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="join.jsp"><span
							class="glyphicon glyphicon-user"></span> 회원가입</a></li>
					<li><a href="login.jsp"><span
							class="glyphicon glyphicon-log-out"></span> 로그인</a></li>
				</ul>
				<%
					}
				%>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
			<div class="jumbotron">
				<div class="page_header">
					<h3>
						환영합니다.</br>지역을 등록하고 편리하게 날씨를 확인하세요
					</h3>
					<h3>세계 모든 지역의 날씨를 등록할수 있습니다.</h3>
				</div>
			</div>
			</div>
		</div>
	</div>
</body>
</html>
