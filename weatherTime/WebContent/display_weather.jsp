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

<script type="text/javascript">
		
		function getWeatherbycity(area){
			var city=area;
			document.getElementById("weatherinfo").innerHTML="hi";
			
			console.log("함수");
			var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="
				+ area
				+ "&appid=825324af24a5271880fc0ad9ecb83fbf&lang=kr";
			$.ajax({
				
				type:'GET',
				url:'./UserRegisterCheckServlet',
				async : "false",
				success : function(resp){
					
					var h = document
					.getElementById("weatherinfo");
			h.innerHTML = "";
			h
					.insertAdjacentHTML(
							"beforeend",
							"<p>현재온도 : "
									+ (resp.main.temp - 273.15)
									+ "</p>");
			h
					.insertAdjacentHTML(
							"beforeend",
							"<p>현재습도 : "
									+ resp.main.humidity
									+ "</p>");
			h
					.insertAdjacentHTML(
							"beforeend",
							"<p>날씨 : "
									+ resp.weather[0].main
									+ "</p>");
			h
					.insertAdjacentHTML(
							"beforeend",
							"<p>상세날씨설명 : "
									+ resp.weather[0].description
									+ "</p>");
			h
					.insertAdjacentHTML(
							"beforeend",
							"<p>날씨 이미지 : "
									+ resp.weather[0].icon
									+ "</p>");
			h.insertAdjacentHTML("beforeend",
					"<p>바람   : "
							+ resp.wind.speed
							+ "</p>");
			h.insertAdjacentHTML("beforeend",
					"<p>나라   : "
							+ resp.sys.country
							+ "</p>");
			h.insertAdjacentHTML("beforeend",
					"<p>도시이름  : " + resp.name
							+ "</p>");
			h.insertAdjacentHTML("beforeend",
					"<p>구름  : "
							+ (resp.clouds.all)
							+ "%" + "</p>");
		
				}
			})
			
		}
		
		console.log("자바스크립트진입");
		$(function() {
		$(document)
		.on(function(){
			var h = document
			.getElementById("weatherinfo");
			console.log("자바스크립트진입");
		var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="
			+ "Seoul"
			+ "&appid=825324af24a5271880fc0ad9ecb83fbf&lang=kr";
	$.ajax({  url : apiURI,
			dataType : "json",
			type : "GET",
			async : "false",
			success : function(resp) {
				var h = document
				.getElementById("weatherinfo");
		h.innerHTML = "";
		h
				.insertAdjacentHTML(
						"beforeend",
						"<p>현재온도 : "
								+ (resp.main.temp - 273.15)
								+ "</p>");
		h
				.insertAdjacentHTML(
						"beforeend",
						"<p>현재습도 : "
								+ resp.main.humidity
								+ "</p>");
		h
				.insertAdjacentHTML(
						"beforeend",
						"<p>날씨 : "
								+ resp.weather[0].main
								+ "</p>");
		h
				.insertAdjacentHTML(
						"beforeend",
						"<p>상세날씨설명 : "
								+ resp.weather[0].description
								+ "</p>");
		h
				.insertAdjacentHTML(
						"beforeend",
						"<p>날씨 이미지 : "
								+ resp.weather[0].icon
								+ "</p>");
		h.insertAdjacentHTML("beforeend",
				"<p>바람   : "
						+ resp.wind.speed
						+ "</p>");
		h.insertAdjacentHTML("beforeend",
				"<p>나라   : "
						+ resp.sys.country
						+ "</p>");
		h.insertAdjacentHTML("beforeend",
				"<p>도시이름  : " + resp.name
						+ "</p>");
		h.insertAdjacentHTML("beforeend",
				"<p>구름  : "
						+ (resp.clouds.all)
						+ "%" + "</p>");
	}
			}
	})
		});
	

		});
		
		
		</script>
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
			$(document).ready(function() {
				$.ajax(apiURI)
				.done(function(resp) {
					alert("요청 성공");
				
					var h = document
					.getElementById("text");
			//h.innerHTML = "";
			h
					.insertAdjacentHTML(
							"beforeend",
							"<p>현재온도 : "
									+ (resp.main.temp - 273.15)
									+ "</p>");
			h
					.insertAdjacentHTML(
							"beforeend",
							"<p>현재습도 : "
									+ resp.main.humidity
									+ "</p>");
			h
					.insertAdjacentHTML(
							"beforeend",
							"<p>날씨 : "
									+ resp.weather[0].main
									+ "</p>");
			h
					.insertAdjacentHTML(
							"beforeend",
							"<p>상세날씨설명 : "
									+ resp.weather[0].description
									+ "</p>");
			h
					.insertAdjacentHTML(
							"beforeend",
							"<p>날씨 이미지 : "
									+ resp.weather[0].icon
									+ "</p>");
			h.insertAdjacentHTML("beforeend",
					"<p>바람   : "
							+ resp.wind.speed
							+ "</p>");
			h.insertAdjacentHTML("beforeend",
					"<p>나라   : "
							+ resp.sys.country
							+ "</p>");
			h.insertAdjacentHTML("beforeend",
					"<p>도시이름  : " + resp.name
							+ "</p>");
			h.insertAdjacentHTML("beforeend",
					"<p>구름  : "
							+ (resp.clouds.all)
							+ "%" + "</p>");
				})
				.fail(function() {
					alert("요청 실패");
				})
				
			});<%}%>
		});
	</script>
</head>

<body>
	<%@include file="navbar.jsp"%>

	<p id="text"></p>
	 
        
	
</body>
</html>