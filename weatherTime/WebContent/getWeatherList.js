/**
 * 나라 목록 file.json에서 뽑아오는 자바스크립트 코드
 */
$(function() {

	$(document).on(
			"change",
			"select[name='country']",
			function() {

				var selectedcountry = $(this).val();

				$.getJSON("file.json", function(data) {

					var cityList = new Array();
					// 읽어들인 데이터를 모두 순회하면서 해당되는 country의 city 리스트를 가져옴
					var index;
					for (var j = 0; j < data.length; j++) {
						if (data[j].country == selectedcountry) {
							index = j;
							break;
						}
					}
					cityList = data[index].city;

					var items = [];
					items.push("<option selected>City</option>");

					for (var k = 0; k < cityList.length; k++) {
						items.push("<option value='" + cityList[k] + "'>"
								+ cityList[k] + "</option>");
					}
					items.sort();
					$("select[name='city']").html(items);
				});

			});

});