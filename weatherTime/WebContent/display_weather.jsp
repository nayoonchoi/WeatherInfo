<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="db.MemberWithAreaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.MemberWithAreaDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>날씨 정보</title>

</head>

<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
	
	
	 </div>
        <script>
		$(function() {
			<%
				String memberId=(String)session.getAttribute("id");
				MemberWithAreaDAO dao = new MemberWithAreaDAO();
				ArrayList<String> citylist=dao.AreaSelectByMemberId(memberId);
				
				for(int i=0;i<citylist.size();i++){
			%>
			
				
			var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="
				+ "<%=citylist.get(i)%>"
				+ "&appid=825324af24a5271880fc0ad9ecb83fbf&lang=kr";
			 {
				var container=document.getElementsByClassName("container");
				$.ajax(apiURI)
				.done(function(resp) {
					console.log(resp);
					var newpanel=document.createElement("div");
					newpanel.className="panel panel-default";
					var panel_head=document.createElement("div");
					panel_head.className="panel-heading";
					
					
					var panel_body=document.createElement("div");
					panel_body.className="panel-body";
					container[0].insertAdjacentElement("beforeend",newpanel);
					newpanel.insertAdjacentElement("beforeend",panel_head);
					newpanel.insertAdjacentElement("beforeend",panel_body);
					var h= document.getElementsByClassName("panel-body");
					var h1= document.getElementsByClassName("panel-heading");
					
			  	panel_body.insertAdjacentHTML("beforeend",
							"<p>현재온도 : "
									+ (resp.main.temp - 273.15)
									+ "</p>");
			  	panel_body.insertAdjacentHTML(
							"beforeend",
							"<p>현재습도 : "
									+ resp.main.humidity
									+ "</p>");
			  	panel_body.insertAdjacentHTML(
							"beforeend",
							"<p>날씨 : "
									+ resp.weather[0].main
									+ "</p>");
			  	panel_body.insertAdjacentHTML(
							"beforeend",
							"<p>상세날씨설명 : "
									+ resp.weather[0].description
									+ "</p>");
			  	panel_body.insertAdjacentHTML(
							"beforeend",
							"<p>날씨 이미지 : "
									+ resp.weather[0].icon
									+ "</p>");
			  	panel_body.insertAdjacentHTML("beforeend",
					"<p>바람   : "
							+ resp.wind.speed
							+ "</p>");
			  	panel_head.insertAdjacentHTML("beforeend",
					"<p>나라   : "
							+ resp.sys.country
							+ "</p>"); 
			  	panel_head.insertAdjacentHTML("beforeend","<p>도시이름  : " + resp.name+ "</p>");
			  	panel_head.insertAdjacentHTML("beforeend","<form action='\DeleteInfo'method='post'> <input type='hidden' id='id' name='id' value=<%=citylist.get(i)%> ><input type='hidden' id='area' name='area' value=<%=memberId%> size=20><button type='submit'><span class='glyphicon glyphicon-remove'></span></button></form>");
			panel_body.insertAdjacentHTML("beforeend","<p>구름  : "+ (resp.clouds.all)+ "%" + "</p>"); 
			
			
				})
				
				.fail(function() {
					alert("요청 실패");
				})
				 
			}<%}%>
		});
	</script>
	
</body>
</html>