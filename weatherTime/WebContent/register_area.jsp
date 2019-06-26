<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script lang="JavaScript" src="getWeatherList.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="page-header">
			<h1>관심지역 등록하기</h1>
		</div>
		<div class="row">
			<form action="registerArea" method="post">
				<div class="col-xs-12">

					<!-- 국가목록 -->
					<select class="form-control" name="country" id="country">

						<option selected>Country</option>
						<option value="AD">안도라</option>
						<option value="AE">아랍에미리트 연합</option>
						<option value="AF">아프가니스탄</option>
						<option value="AG">앤티가바부다</option>
						<option value="AI">앵귈라</option>
						<option value="AL">알바니아</option>
						<option value="AM">아르메니아</option>
						<option value="AN">네덜란드 열도</option>
						<option value="AO">앙골라</option>
						<option value="AQ">남극 대륙</option>
						<option value="AR">아르헨티나</option>
						<option value="AS">아메리칸 사모아</option>
						<option value="AT">오스트리아</option>
						<option value="AU">호주</option>
						<option value="AW">아루바</option>
						<option value="AZ">아제르바이잔</option>
						<option value="BA">보스니아-헤르체고비나</option>
						<option value="BB">바베이도스</option>
						<option value="BD">방글라데시</option>
						<option value="BE">벨기에</option>
						<option value="BF">부르키나파소</option>
						<option value="BG">불가리아</option>
						<option value="BH">바레인</option>
						<option value="BI">부룬디</option>
						<option value="BJ">베냉</option>
						<option value="BL">세인트 바르탤르미</option>
						<option value="BM">버뮤다</option>
						<option value="BN">브루나이</option>
						<option value="BO">볼리비아</option>
						<option value="BQ">영령 안탁</option>
						<option value="BR">브라질</option>
						<option value="BS">바하마</option>
						<option value="BT">부탄</option>
						<option value="BV">부베 섬</option>
						<option value="BW">보츠와나</option>
						<option value="BY">벨라루스</option>
						<option value="BZ">벨리즈</option>
						<option value="CA">캐나다</option>
						<option value="CC">코코스 군도</option>
						<option value="CD">콩고 민주공화국</option>
						<option value="CF">중앙아프리카</option>
						<option value="CG">콩고</option>
						<option value="CH">스위스</option>
						<option value="CI">코트디부아르</option>
						<option value="CK">쿡 아일랜드</option>
						<option value="CL">칠레</option>
						<option value="CM">카메룬</option>
						<option value="CN">중국</option>
						<option value="CO">콜롬비아</option>
						<option value="CR">코스타리카</option>
						<option value="CS">세르비아와 몬테네그로</option>
						<option value="CT">캔톤아일랜드</option>
						<option value="CU">쿠바</option>
						<option value="CV">카보 베르데</option>
						<option value="CW">큐라소</option>
						<option value="CX">크리스마스 아일랜드</option>
						<option value="CY">키프로스</option>
						<option value="CZ">체코</option>
						<option value="DE">독일</option>
						<option value="DJ">지부티</option>
						<option value="DK">덴마크</option>
						<option value="DM">도미니카</option>
						<option value="DO">도미니카 공화국</option>
						<option value="DZ">알제리</option>
						<option value="EC">에콰도르</option>
						<option value="EE">에스토니아</option>
						<option value="EG">이집트</option>
						<option value="EH">서사하라</option>
						<option value="ER">에리트레아</option>
						<option value="ES">스페인</option>
						<option value="ET">에티오피아</option>
						<option value="FI">핀란드</option>
						<option value="FJ">피지</option>
						<option value="FK">포클랜드 군도</option>
						<option value="FM">미크로네시아</option>
						<option value="FO">파로에 군도</option>
						<option value="FR">프랑스</option>
						<option value="FX">프랑스 메트로폴리탄</option>
						<option value="GA">가봉</option>
						<option value="GB">영국</option>
						<option value="GD">그레나다</option>
						<option value="GE">조지아</option>
						<option value="GF">불령 가이아나</option>
						<option value="GG">건지</option>
						<option value="GH">가나</option>
						<option value="GI">지브롤터</option>
						<option value="GL">그린랜드</option>
						<option value="GM">감비아</option>
						<option value="GN">기니</option>
						<option value="GP">과들루프</option>
						<option value="GQ">적도 기니</option>
						<option value="GR">그리스</option>
						<option value="GS">남조지아 & 남샌드위치 군도</option>
						<option value="GT">과테말라</option>
						<option value="GU">괌</option>
						<option value="GW">기네비소</option>
						<option value="GY">가이아나</option>
						<option value="HK">홍콩</option>
						<option value="HM">허드 앤 맥도날드 군도</option>
						<option value="HN">온두라스</option>
						<option value="HR">크로아티아</option>
						<option value="HT">아이티</option>
						<option value="HU">헝가리</option>
						<option value="ID">인도네시아</option>
						<option value="IE">아일랜드</option>
						<option value="IL">이스라엘</option>
						<option value="IM">맨섬</option>
						<option value="IN">인도(인디아)</option>
						<option value="IO">영령 인도양</option>
						<option value="IQ">이라크</option>
						<option value="IR">이란</option>
						<option value="IS">아이슬란드</option>
						<option value="IT">이탈리아</option>
						<option value="JE">저지</option>
						<option value="JM">자메이카</option>
						<option value="JO">요르단</option>
						<option value="JP">일본</option>
						<option value="JT">존스턴섬</option>
						<option value="KE">케냐</option>
						<option value="KG">키르기스스탄</option>
						<option value="KH">캄보디아</option>
						<option value="KI">키리바시</option>
						<option value="KM">코모로</option>
						<option value="KN">세인트 키츠 네비스</option>
						<option value="KP">북한</option>
						<option value="KR">한국</option>
						<option value="KW">쿠웨이트</option>
						<option value="KY">영령 캐이맨 군도</option>
						<option value="KZ">카자흐스탄</option>
						<option value="LA">라오스</option>
						<option value="LB">레바논</option>
						<option value="LC">세인트 루시아</option>
						<option value="LI">리히텐슈타인</option>
						<option value="LK">스리랑카</option>
						<option value="LR">라이베리아</option>
						<option value="LS">레소토</option>
						<option value="LT">리투아니아</option>
						<option value="LU">룩셈부르크</option>
						<option value="LV">라트비아</option>
						<option value="LY">리비아</option>
						<option value="MA">모로코</option>
						<option value="MC">모나코</option>
						<option value="MD">몰도바</option>
						<option value="ME">몬테네그로</option>
						<option value="MF">세인트 마틴</option>
						<option value="MG">마다가스카르</option>
						<option value="MH">마셜제도</option>
						<option value="MI">미드웨이 군도</option>
						<option value="MK">마케도니아</option>
						<option value="ML">말리</option>
						<option value="MM">미얀마</option>
						<option value="MN">몽골</option>
						<option value="MO">마카오</option>
						<option value="MP">북마리아나 군도</option>
						<option value="MQ">마르티니크</option>
						<option value="MR">모리타니</option>
						<option value="MS">몬트세랫</option>
						<option value="MT">몰타</option>
						<option value="MU">모리셔스</option>
						<option value="MV">몰디브</option>
						<option value="MW">말라위</option>
						<option value="MX">멕시코</option>
						<option value="MY">말레이시아</option>
						<option value="MZ">모잠비크</option>
						<option value="NA">나미비아</option>
						<option value="NC">뉴 칼레도니아</option>
						<option value="NE">니제르</option>
						<option value="NF">노폴크 아일랜드</option>
						<option value="NG">나이지리아</option>
						<option value="NH">뉴헤브리디스</option>
						<option value="NI">니카라과</option>
						<option value="NL">네덜란드</option>
						<option value="NO">노르웨이</option>
						<option value="NP">네팔</option>
						<option value="NQ">드롬힝 마우드랜드</option>
						<option value="NR">나우루</option>
						<option value="NT">중립지대</option>
						<option value="NU">니우에</option>
						<option value="NZ">뉴질랜드</option>
						<option value="OM">오만</option>
						<option value="PA">파나마</option>
						<option value="PC">퍼시픽제도（미령）</option>
						<option value="PE">페루</option>
						<option value="PF">불령 폴리네시아</option>
						<option value="PG">파푸아 뉴기니</option>
						<option value="PH">필리핀</option>
						<option value="PK">파키스탄</option>
						<option value="PL">폴란드</option>
						<option value="PM">세인트 피레 미켈론</option>
						<option value="PN">핏케언섬</option>
						<option value="PR">푸에르토리코</option>
						<option value="PS">팔레스타인 해방기구</option>
						<option value="PT">포르투갈</option>
						<option value="PU">퍼시픽 아일랜드</option>
						<option value="PW">팔라우</option>
						<option value="PY">파라과이</option>
						<option value="PZ">파나마운하지역</option>
						<option value="QA">카타르</option>
						<option value="RE">불령 리유니온,코모도 제도</option>
						<option value="RO">루마니아</option>
						<option value="RS">세르비아공화국</option>
						<option value="RU">러시아</option>
						<option value="RW">르완다</option>
						<option value="SA">사우디아라비아</option>
						<option value="SB">솔로몬 군도</option>
						<option value="SC">세이셸</option>
						<option value="SD">수단</option>
						<option value="SE">스웨덴</option>
						<option value="SG">싱가포르</option>
						<option value="SH">세인트 헬레나</option>
						<option value="SI">슬로베니아</option>
						<option value="SJ">스발바르 제도</option>
						<option value="SK">슬로바키아</option>
						<option value="SL">시에라리온</option>
						<option value="SM">산마리노</option>
						<option value="SN">세네갈</option>
						<option value="SO">소말리아</option>
						<option value="SR">수리남</option>
						<option value="SS">사우스수단</option>
						<option value="ST">상투메 프린스페</option>
						<option value="SU">소련</option>
						<option value="SV">엘살바도르</option>
						<option value="SY">시리아</option>
						<option value="TG">토고</option>
						<option value="TH">태국</option>
						<option value="TJ">타지키스탄</option>
						<option value="TK">토켈라우</option>
						<option value="TL">동티모르</option>
						<option value="TM">투르크메니스탄</option>
						<option value="TN">튀니지</option>
						<option value="TO">통가</option>
						<option value="TP">티모르</option>
						<option value="TR">터키</option>
						<option value="TT">트리니다드 토바고</option>
						<option value="TV">투발루</option>
						<option value="TW">대만</option>
						<option value="TZ">탄자니아</option>
						<option value="UA">우크라이나</option>
						<option value="UG">우간다</option>
						<option value="UM">마이너 아우틀링 합중국 군도</option>
						<option value="US">미국</option>
						<option value="UY">우루과이</option>
						<option value="UZ">우즈베키스탄</option>
						<option value="VA">교황청</option>
						<option value="VC">세인트 빈센트 그레나딘</option>
						<option value="VE">베네수엘라</option>
						<option value="VG">영령 버진아일랜드</option>
						<option value="VI">미령 버진군도</option>
						<option value="VN">베트남</option>
						<option value="VU">바누아투</option>
						<option value="WF">왈라스 & 퓨투나</option>
						<option value="WS">사모아</option>
						<option value="YD">남예멘</option>
						<option value="YE">예멘</option>
						<option value="YM">마케도니아</option>
						<option value="YT">마요트</option>
						<option value="YU">유고슬라비아</option>
						<option value="Z1">국제통화기금</option>
						<option value="ZA">남아프리카 공화국</option>
						<option value="ZM">잠비아</option>
						<option value="ZR">자이르</option>
						<option value="ZW">짐바브웨</option>


					</select>

				</div>


				<div class="col-xs-12">
					<select class="form-control" name="city" id="city">
						<option selected>City</option>
					</select>
				</div>
				<div class="col-xs-12">
					<button type="submit" class="btn btn-default">등록</button>
				</div>
			</form>
		</div>
	</div>


</body>
</html>