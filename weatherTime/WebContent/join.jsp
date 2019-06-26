<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@include file="navbar.jsp"%>
	<form action="JoinOk" method="post">
	<div class="container">
  <div class="form-group">
    <label for="id">ID:</label>
    <input type="text" class="form-control" id="id" size="10" name="id">
  </div>
  <div class="form-group">
    <label for="pw">PW:</label>
    <input type="password" class="form-control" id="pw" size="10" name="pw">
  </div>
  <div class="form-group">
    <label for="name">Name:</label>
    <input type="text" class="form-control" id="name" size="10" name="name">
  </div>
  
  <button type="submit" class="btn btn-default">회원가입</button>
</form>
</div>
</body>
</html>