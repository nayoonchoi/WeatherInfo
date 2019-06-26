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
<title>로그인화면</title>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class=contianer>
<div class=col-xs-12>
	<form action="LoginOk" method="post">
  <div class="form-group">
    <label for="id">ID:</label>
    <input type="text" class="form-control" id="id" name ="id">
  </div>
  <div class="form-group">
    <label for="pw">Password:</label>
    <input type="password" class="form-control" id="pw" name="pw">
  </div>
  <div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>
</div>
</body>
</html>