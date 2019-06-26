/**
 * 
 */
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
				var h = document.getElementById("weatherinfo");
				h.innerHTML = "";
				h.insertAdjacentHTML("beforeend",
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
		