<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<link href="${path}/resources/css/tourfooter2.css" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<footer>
		<div class="SYJfooterNotice">
			<div class="innerBox">
				<div class="NoticeSlideWrap">
					<ul class="newsList">
						<li><a href="">[소식]인구감소지역 4곳 ‘디지털 관광주민증’ 사업지 추가 선정</a></li>
						<li><a href="">[소식]지역 고유 관광사업 함께 만들어갈 24년도 관광두레 피디 모집</a></li>
						<li><a href="">[소식]큰별쌤 최태성 강사와 오디가 들려주는 경주 역사 이야기</a></li>
						<li><a href="">[소식]국립과천과학관, 과학교구와 함께하는 주말 프로그램 「과학교구 박람회」 개최</a></li>
						<li><a href="">[소식]여행의 설렘이 두려움이 되지 않게, 2024년 열린관광지 30곳 선정</a></li>
					</ul>
				</div>
				<div class="footerPlaywrap">
					<button type="button" class="footerPlaybtn" onclick="startSlide()">재생</button>
					<button type="button" class="footerStopbtn" onclick="stopSlide()">정지</button>
				</div>
				<button type="button" class="btnPre">이전</button>
				<button type="button" class="btnNex">다음</button>
				<a href="https://korean.visitkorea.or.kr/notice/news_list.do"
					class="footerPlus"> <span class="more">더보기</span>
				</a>
				<div class="selBox">
					<div class="selmember">
					<select>
					<option value="">관광정보</option>
					<option value="">가이드북</option>
					<option value="">베니키아</option>
					<option value="">고캠핑</option>
					</select>
					<a href="#">이동</a>
					</div>
					<div class="selmember" id="link">
					<select>
					<option value="">유관기관</option>
					<option value="">외교통상부 해외 안전여행</option>
					<option value="">대한민국의 아름다운영토 독도</option>
					<option value="">박물관 길위의 인문학</option>
					</select>
					<a href="#">이동</a>
					</div>
				</div>
			</div>

		</div>
		 
	</footer>
	<script src="${path}/resources/js/tourfooter2.js"></script>
	
</body>
</html>