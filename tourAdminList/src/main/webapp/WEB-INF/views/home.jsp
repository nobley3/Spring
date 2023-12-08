<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>Home</title>
    <link href="${path}/resources/css/tourMainheader.css" rel="stylesheet"/>
	<link href="${path}/resources/css/mainSlide.css" rel="stylesheet"/> 
	<link href="${path}/resources/css/tourMainSection.css" rel="stylesheet"/> 
	<link href="${path}/resources/css/tourfooter2.css" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<style>
	
 @media all and (max-width: 767px){
	 .headerBox{
		 width: 50%;
		 }
	 
 }

@media all and (min-width: 768px) and (max-width: 991px) {
     
}	


@media all and (min-width: 992px){

}
</style>  
</head>
<body>
 
<header>
    <div class="headerBox"> <!--row1-->
        <div class="logo">
            <h1 class="mainlogo">
                <a class="mainicon" href="/main/main.do">
                    <svg id="icon1" version="1.1" xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="510px" height="86px"
                        viewBox="0 0 510 86" style="enable-background:new 0 0 510 86;" xml:space="preserve">
                        <path class="text-path"
                            d="M483.7,49.5h-39.2c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h28.3v17c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V50.6C484.8,50,484.3,49.5,483.7,49.5z M453,41.3c3.3,3.8,8,5.4,13.7,5.4h1.8c0.9,0,1.7-0.7,1.7-1.7c0-0.9-0.7-1.7-1.7-1.7h0c-4.6,0-9.4-2.4-9.4-7.7V20.8c0-0.9-0.8-1.7-1.7-1.7h-8.7c-0.9,0-1.7,0.8-1.7,1.7v14.7c0,5.4-4.8,7.7-9.4,7.7h0c0,0-18.7,0-18.7,0c4.8-2,10.7-6.4,10.7-15.6v-6.8c0-0.9-0.8-1.7-1.7-1.7h-33.7c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h23.3v5.2c0,15.3-7.7,15.6-7.7,15.6h-24.5c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h19.7v23.2c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V46.6h22.3C445,46.6,449.7,45,453,41.3z M483.1,19.1h-8.7c-0.9,0-1.7,0.8-1.7,1.7v8.1h-4c-0.9,0-1.7,0.7-1.7,1.7s0.7,1.7,1.7,1.7h4v12.7c0,0.9,0.8,1.7,1.7,1.7h8.7c0.9,0,1.7-0.8,1.7-1.7V20.8C484.8,19.9,484.1,19.1,483.1,19.1z M467.1,0H351.6c-23.1,0-42,18.3-43,41.2H272C271,18.3,252.1,0,229,0c-23.7,0-43,19.3-43,43c0,23.7,19.3,43,43,43c23.1,0,42-18.3,43-41.2h36.6c1,22.9,19.9,41.2,43,41.2h115.5c23.7,0,43-19.3,43-43C510.1,19.3,490.8,0,467.1,0z M229,82.3c-21.7,0-39.3-17.6-39.3-39.3c0-21.7,17.6-39.3,39.3-39.3c21.7,0,39.3,17.6,39.3,39.3C268.3,64.7,250.7,82.3,229,82.3z M467.1,82.3H351.6c-21.7,0-39.3-17.6-39.3-39.3c0-21.7,17.6-39.3,39.3-39.3h115.5c21.7,0,39.3,17.6,39.3,39.3C506.4,64.7,488.7,82.3,467.1,82.3z M347.5,41.3c3.3,3.8,8,5.4,13.7,5.4h1.8c0.9,0,1.7-0.7,1.7-1.7c0-0.9-0.7-1.7-1.7-1.7h0c-4.6,0-9.4-2.4-9.4-7.7V20.8c0-0.9-0.8-1.7-1.7-1.7h-8.7c-0.9,0-1.7,0.8-1.7,1.7v14.7c0,5.4-4.8,7.7-9.4,7.7h0c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h1.8C339.4,46.6,344.1,45,347.5,41.3z M377.6,19.1h-8.7c-0.9,0-1.7,0.8-1.7,1.7v8.1h-4c-0.9,0-1.7,0.7-1.7,1.7s0.7,1.7,1.7,1.7h4v12.7c0,0.9,0.8,1.7,1.7,1.7h8.7c0.9,0,1.7-0.8,1.7-1.7V20.8C379.3,19.9,378.5,19.1,377.6,19.1z M254.8,43.3h-18c4.8-2,10.7-6.4,10.7-15.7v-6.8c0-0.9-0.8-1.7-1.7-1.7h-33.7c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h23.3v5.2c0,15.3-7.7,15.7-7.7,15.7h-24.5c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h19.7v23.2c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V46.6h19.7c0.9,0,1.7-0.7,1.7-1.7C256.4,44,255.7,43.3,254.8,43.3z M378.1,49.5h-39.2c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h28.3v17c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V50.6C379.3,50,378.8,49.5,378.1,49.5z"
                            stroke="undefined" stroke-width="1"></path>
                        <path class="text-path"
                            d="M66.2,35.2c0-3.3-1.4-6.2-4.2-8h4.1c0.8,0,1.5-0.7,1.5-1.5c0-0.8-0.7-1.5-1.5-1.5h-7.4v-4c0-0.6-0.5-1.1-1.1-1.1H53c-0.6,0-1.1,0.5-1.1,1.1v4h-7.4c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h4.2c-2.7,1.8-4.2,4.7-4.2,8c0,5.4,3.9,9.8,10.9,9.8C62.4,45.1,66.2,40.7,66.2,35.2z M51.2,35.2c0-3.8,1.5-6.8,4.2-6.8c2.7,0,4.2,3.1,4.2,6.8c0,3.8-1.5,6.8-4.2,6.8C52.7,42.1,51.2,39,51.2,35.2z M35.4,19.6H31c-0.6,0-1.1,0.5-1.1,1.1v10.4h-4.2V21.1c0-0.6-0.5-1.1-1.1-1.1h-4.4c-0.6,0-1.1,0.5-1.1,1.1v21.8c-0.6,0.2-1.3,0.5-2.1,0.6c-0.9,0.2-1.9,0.3-3.1,0.3h-7V24.3H14c0.8,0,1.5-0.7,1.5-1.5c0-0.8-0.7-1.5-1.5-1.5H1c-0.6,0-1.1,0.5-1.1,1.1v23.4c0,0.6,0.5,1.1,1.1,1.1h12.6c1.3,0,2.4-0.1,3.3-0.4c0.9-0.3,1.6-0.6,2.2-1.1v15c0,0.6,0.5,1.1,1.1,1.1H22c2.1,0,3.7-1.6,3.7-3.7V35.1h4.2v25.9c0,0.6,0.5,1.1,1.1,1.1h1.8c2.1,0,3.7-1.6,3.7-3.7V20.7C36.5,20.1,36,19.6,35.4,19.6z M78.5,59H57.8v-9.6c0-0.6-0.5-1.1-1.1-1.1h-4.8c-0.6,0-1.1,0.5-1.1,1.1v11.5c0,0.6,0.5,1.1,1.1,1.1h26.6c0.8,0,1.5-0.7,1.5-1.5C80,59.7,79.3,59,78.5,59z M119,51h1.4c2.5,0,4.5-2,4.5-4.4V20.7c0-0.6-0.5-1.1-1.1-1.1H119c-0.6,0-1.1,0.5-1.1,1.1v29.1C117.9,50.5,118.4,51,119,51z M168.8,36h-5.3c0.5-0.6,0.9-1.6,1.2-3c0.3-1.4,0.5-2.6,0.5-3.8v-6.9c0-0.6-0.5-1.1-1.1-1.1h-27.3c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h21.4v5.2c0,1.2-0.1,2.4-0.2,3.5c-0.1,1.2-0.3,2.2-0.7,3.1H132c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h14.7v7.7h-10.1c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h21.5v11.3c0,0.6,0.5,1.1,1.1,1.1h1.4c2.5,0,4.5-2,4.5-4.4v-9.9c0-0.6-0.5-1.1-1.1-1.1h-10.3v-7.7h15c0.8,0,1.5-0.7,1.5-1.5C170.3,36.6,169.6,36,168.8,36z M84,30.3h-5.5v-9.6c0-0.6-0.5-1.1-1.1-1.1h-4.8c-0.6,0-1.1,0.5-1.1,1.1v29.1c0,0.6,0.5,1.1,1.1,1.1H74c2.5,0,4.5-2,4.5-4.4V33.3H84c0.8,0,1.5-0.7,1.5-1.5C85.5,31,84.8,30.3,84,30.3z M124.8,59h-21.7V48.6c0-0.6-0.5-1.1-1.1-1.1h-4.8c-0.6,0-1.1,0.5-1.1,1.1v12.3c0,0.6,0.5,1.1,1.1,1.1h27.6c0.8,0,1.5-0.7,1.5-1.5C126.3,59.7,125.6,59,124.8,59z M111.8,38.5V22.3c0-0.6-0.5-1.1-1.1-1.1H90.9c-0.6,0-1.1,0.5-1.1,1.1v19.6c0,0.6,0.5,1.1,1.1,1.1h16.4C109.8,42.9,111.8,41,111.8,38.5z M104.8,40h-8V24.2h8V40z"
                            stroke="undefined" stroke-width="1">
                        </path>
                    </svg>
                </a>
            </h1>
        </div>
        <div class="munuwrap">
            <ul class="menu">
                <li>
                    <a href="#">홈</a>
                </li>
                <li> <a href="#">테마</li>
                <li><a href="#">지역</li>
                <li><a href="#">여행콕콕
                        <ul class="menuContent">
                            <li><a href="#">핫플콕콕</li>
                            <li><a href="#">AI콕콕 플래너</li>
                        </ul>
                </li>
                <li><a href="#">여행정보
                        <ul class="menuContent">
                            <li><a href="#">여행지</li>
                            <li><a href="#">여행코스</li>
                            <li><a href="#">축제</li>
                            <li><a href="#">공연/행사</li>
                        </ul>
                </li>
                <li><a href="#">여행지도</li>
            </ul>
        </div>
        <div class="searchBox">
            <span class="searchWrap">
                <input type="text" placeholder="어디로, 어떤 여행을 떠날 예정인가요?" title="검색" autocomplete="off">
                <a href="#" class="searchBtn">검색</a>
            </span>
            <span class="profile">
                <a href=""></a>
            </span>
        </div>
    </div>

    <div class="contentBox"></div>
</header>

    <!-- 슬라이드전체 -->
  <div class="slideWrap">
    <!-- 텍스트전체 -->
    <div class="textBox">
      <div class="textsmallBox">
        <ul class="textList">
          <li>
            <div class="slideTitle">
              <em></em>
              <strong style="color:#3d3d3d"></strong>
              <a href="#">자세히 보기</a>
            </div>
            <!-- 텍스트추가 -->
          </li>
          
           
        </ul>
      </div>
    </div>

    <!-- 이미지 전체 -->
    <div class="imgBox">
      <div class="imgsmallBox">
        <div class="imgList">
          <div class="imgSlide" >
             
          </div> 
        </div>
      </div>
    </div>
    <!-- 페이지 전체 -->
    <div class="pagingBox">

      <div class="pagingBarBox">
        <span class="bar"></span>
      </div>

      <div class="pagingNum">
        <span class="firstNum">01</span>
        /
        <span class="secondNum"></span>
      </div>

      <div class="pagingBtn">
        <div class="btnpreNum" tabindex="0" role="button" aria-label="Previous slide">이전</div>
        <div class="btnnexNum" tabindex="0" role="button" aria-label="Next slide">다음</div>
        <div class="btnAuto">
            <button class="btnPlay">재생</button>
            <button class="btnStop">멈춤</button>
        </div>
      </div>
    </div>
  </div>
  <section>
  <!-- 섹션 -->
    <!-- 핫플콕콕 -->
    <div class="mainContentsBox">
        <div class="kokBox">
            <h2>
                <a href="">
                    "DaTa Lab 여행콕콕"
                    <span>빅데이터 기반 AI 추천 여행지 및 코스를 알려드려요.</span>
                </a>
            </h2>
            <div class="contentWrap">
                <ul class="tabBar">
                    <li class="menu1">
                        <a href="">
                            <span>핫플콕콕</span>
                        </a>
                    </li>
                    <li class="menu2">
                        <a href="">
                            <span>AI콕콕 플래너</span>
                        </a>
                    </li>
                </ul>
                <div class="menu1Contents">
                    <p>관광 빅데이터 정보로 분석한 지역별 핫한 여행지와 맛집을 소개합니다.</p>
                    <div class="areaBar">
                        <ul class="areaWrap">
                            <li>
                                <button type="button" class="allA">전국</button>
                            </li>
                            <li>
                                <button type="button">서울</button>
                            </li>
                            <li> <button type="button">인천</button></li>
                            <li> <button type="button">대전</button></li>
                            <li> <button type="button">대구</button></li>
                            <li> <button type="button">광주</button></li>
                            <li> <button type="button">부산</button></li>
                            <li> <button type="button">울산</button></li>
                            <li> <button type="button">세종</button></li>
                            <li> <button type="button">경기</button></li>
                            <li> <button type="button">강원</button></li>
                            <li> <button type="button">충북</button></li>
                            <li> <button type="button">충남</button></li>
                            <li> <button type="button">경북</button></li>
                            <li> <button type="button">경남</button></li>
                            <li> <button type="button">전북</button></li>
                            <li> <button type="button">전남</button></li>
                            <li> <button type="button">제주</button></li>
                        </ul>
                    </div>
                    <div class="hotPoto">
                        <ul>
                            <li>
                                <div>
                                    <a href="#">
                                        <div class="kokimgWrap"></div>
                                        <strong class="stitle"></strong>
                                    </a>
                                    <button type="button" class="likebtn" id="likebtn">좋아요</button>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <a href="#">
                                        <div class="kokimgWrap">

                                        </div>
                                        <strong></strong>
                                    </a>
                                    <button type="button" class="likebtn" id="likebtn">좋아요</button>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <a href="#">
                                        <div class="kokimgWrap">

                                        </div>
                                        <strong></strong>
                                    </a>
                                    <button type="button" class="likebtn" id="likebtn">좋아요</button>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <a href="#">
                                        <div class="kokimgWrap">

                                        </div>
                                        <strong></strong>
                                    </a>
                                    <button type="button" class="likebtn" id="likebtn">좋아요</button>
                                </div>
                            </li>
                        </ul>

                    </div>
                    <div class="recomBox">
                        <button type="button">
                            오늘의
                            <strong>핫플콕콕</strong>
                            추천
                        </button>
                        <a href="#">더보기</a>
                    </div>
                </div>
                
            </div>
        </div>
        <div class="eventContentsBox">
            <div class="eInnerBox">
                <div class="eLeftC">
                   <a href="#">
                    <img src="http://tong.visitkorea.or.kr/cms/resource/40/3035040_image2_1.jpg" alt="다양한 신상 여행지가 가득! 가볼래-터 11월호 ">
                   </a>
                </div>
                <div class="eRightC">
                    <a href="#" class="ecTitle">
                        오늘의 축제/공연/행사 소식
                        <span class="btnmore">더보기</span>
                    </a>
                    <ul class="eBoard">
                        <li >
                            <a href="#" title="가을 매력이 가득한 여행을 떠나요 로 이동">
                                <em class="boardtitle">찾아가고 싶은 가을섬</em>
                                가을 매력이 가득한 여행을 떠나요
                            </a>
                        </li>
                        <li>
                            <a href="#" title="맛보고 즐기고! 목포 렛츠겟잇 로 이동">
                                <em style="color: #f57373;">축제 |</em>
                                맛보고 즐기고! 목포 렛츠겟잇
                            </a>
                        </li>
                        <li>
                            <a href="#" title="‘2023 대한민국 숙박세일 페스타’ 로 이동">
                                <em style="color: #f57373;">공연ㅣ</em>
                                ‘2023 대한민국 숙박세일 페스타’ 
                            </a>
                        </li>
                        <li>
                            <a href="#" title="‘포레스티 캠페인’ 참여하세요! 로 이동">
                                <em style="color: #f57373;">행사ㅣ</em>
                                ‘포레스티 캠페인’ 참여하세요!
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
  </section>
  <footer>
   <div class="SYJfooterNotice">
			<div class="innerBox">
				<div class="NoticeSlideWrap">
					<ul class="newsList">						 
					  					  
					</ul>
				</div>
				<div class="footerPlaywrap">
					<button type="button" class="footerPlaybtn"  >재생</button>
					<button type="button" class="footerStopbtn" >정지</button>
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
        <div class="SYJfooterBox">
            <div class="SYJfootersnsList">
                <strong class="Stitle">대한민국 구석구석을 SNS에서 만나보세요!</strong>
                <ul class="SYJfooterUL">
                    <li><a href="http://blog.naver.com/korea_diary/" target="_blank" title="새창">
                            <span class="SnsIcon iconB"></span>
                            <em class="SnsName">블로그</em>
                        </a>
                    </li>
                    <li><a href="http://post.naver.com/korea_diary" target="_blank" title="새창">
                            <span class="SnsIcon iconP"></span>
                            <em class="SnsName">포스트</em>
                        </a></li>
                    <li><a href="https://www.facebook.com/9suk9suklive" target="_blank" title="새창">
                            <span class="SnsIcon iconF"></span>
                            <em class="SnsName">페이스북</em>
                        </a></li>
                    <li><a href="https://twitter.com/kor_visitkorea" target="_blank" title="새창">
                            <span class="SnsIcon iconT"></span>
                            <em class="SnsName">트위터</em>
                        </a></li>
                    <li><a href="https://story.kakao.com/#ch/visitkorea/" target="_blank" title="새창">
                            <span class="SnsIcon iconKS"></span>
                            <em class="SnsName">카카오스토리</em>
                        </a></li>
                    <li><a href="https://www.instagram.com/kto9suk9suk/" target="_blank" title="새창">
                            <span class="SnsIcon iconI"></span>
                            <em class="SnsName">인스타<br>그램</em>
                        </a></li>
                    <li><a href="https://band.us/@koreadiary" target="_blank" title="새창">
                            <span class="SnsIcon iconNB"></span>
                            <em class="SnsName">네이버<br>밴드</em>
                        </a></li>
                </ul>
            </div>
            <div class="SYJfooterInfo">
                <div class="SYJfooterBanner">
                    <span>
                        <a href="#">
                        <img src="resources/images/img1.png" alt="">
                        </a>
                    </span>
                    <span>
                        <a href="#">
                        	<img src="resources/images/img2.png" alt=""></a>
                    </span>
                    <span>
                        <a href=" "><img src="resources/images/img3.png"
                                alt=""></a>
                    </span>
                    <span>
                        <a href=" "><img
                                src="resources/images/img4.png"
                                alt=""></a>
                    </span>
                    <span>
                        <a href=" "><img src="resources/images/img5.png"
                                alt=""></a>
                    </span>
                    <ul class="SYJfooterInfoBox">
                        <li><a href="" class="footerPersonalInfo">프로젝트 팀원 :</a></li>
                        <li><a href="">조은경</a></li>
                        <li><a href="">이윤</a></li>
                        <li><a href="">서예진</a></li>
                        <li><a href="">문나정</a></li>
                        <li><a href="">이윤정</a></li>
                        <li><a href="">One-Piece</a></li>
                    </ul>
                    <ul class="SYJfooterAddress">
                        <li>
                            <span>우) 04038</span>
                            <span>서울 마포구 양화로 122 3층, 4층</span>
                            TEL : 02-2231-6412
                        </li>
                        <li>에이콘아카데미</li>
                        <li>자바(JAVA)웹개발자 양성과정(IoT융합)</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="SYJfooterLogo">

            <span class="SYJfooterSmallLogo">
                <img src="https://cdn.visitkorea.or.kr/resources/images/common/logo_foot.png" alt="한국관광공사">
            </span>
            <ul class="SYJfooterLogoList">
                <li>
                    <a href="https://api.visitkorea.or.kr/#/" target="_blank" title="새창">
                        <img src="https://korean.visitkorea.or.kr/resources/images/common/logo_foot_api.png?v=20230601001"
                            alt="TourAPI 4.0">
                    </a>
                </li>
                <li>
                    <a href="http://www.wa.or.kr/board/list.asp?search=total&SearchString=%B4%EB%C7%D1%B9%CE%B1%B9%20%B1%B8%BC%AE%B1%B8%BC%AE&BoardID=0006"
                        target="_blank" title="새창">
                        <img src="	https://cdn.visitkorea.or.kr/resources/images/common/logo_foot_wa.png"
                            alt="과학기술정보통신부 웹 접근성 품질인증 마크">
                    </a>
                </li>
                <li>
                    <a href="https://kto.visitkorea.or.kr/kor.kto" target="_blank" title="새창">
                        <img src="	https://cdn.visitkorea.or.kr/resources/images/common/logo_foot_gg.png" alt="한국관광공사">
                    </a>
                </li>
                <li>
                    <a href="https://www.mcst.go.kr/kor/main.jsp" target="_blank" title="새창">
                        <img src="	https://cdn.visitkorea.or.kr/resources/images/common/logo_foot_mg.png" alt="문화체육관광부">
                    </a>
                </li>
            </ul>
        </div>
  </footer>
  <script src="${path}/resources/js/toursection.js"></script>
   
  <script type="text/javascript">
  
  
  //let imgcnt=0;
  $(document).ready(function(){
	  
	  /*메인슬라이드 (축제/공연)*/
	  $.ajax({
          type: "GET",
          url: "/tourAlist/selectedF",
          success: function(selectedSpots) {
        	 // console.log( "ㅇㄹㅇㄹㅇ" +selectedSpots);
             //let firstimage = selectedSpots[0].firstimage;
        	 //console.log(firstimage);
        	 
        	 let firstimage = "";
        	 let title ="";
        	 $.each(selectedSpots,function(index,Fspot){
        		 
        		 title +=  
        			 "<li>" + 
        			 "<div>" + 
        			 "<em>" + "대한민국구석구석" + "</em>" + 
        			 "<strong style='color:#3d3d3d'>" + Fspot.title + "</strong>"+ 
        			 "<a href='#'>자세히 보기</a>"+ 
        			 "</div>" + 
        			 "</li>";
        			 
        		 firstimage += 
        			    "<div  class='imgSlide'>" +
        			    "<a href='#'>" +
        			    "<img src='" + Fspot.firstimage + "' alt='Spot Image' style='margin-right: 0px'>" +
        			    "</a>" +
        			    "</div>";
        		 
        		 
        	 });
        	 
        	 $(".imgList").html(firstimage);
        	 $(".slideTitle").html(title);
        	 updateNumbers(1, selectedSpots.length);
        	 
        	 // 총 갤러리 이미지수 
        	 //imgcnt   = selectedSpots.length;
          },
          error: function(err) {
              console.log(err);
          }
           
      });
	  
	  //페이징넘버
	  function updateNumbers(current, total) {
		  document.querySelector('.firstNum').textContent = String(current).padStart(2, '0');
		  document.querySelector('.secondNum').textContent = String(total).padStart(2, '0');
		}
	  
	  
	  
	  
	  /*여행콕콕(여행지)*/
	  $.ajax({
		    type: "GET",
		    url: "/tourAlist/selectedSpot",
		    success: function (selectedSpots) {
		        $.each(selectedSpots, function (index, spot) {
		            console.log(spot.firstimage);
		            // 이미지를 각 li 요소에 추가
		            let firstimage = "<div class='kokimgWrap' style='background-image: url(" + spot.firstimage + ")'><a href='#'><img src=''></a></div>";
		            let title = "<strong class='stitle'>"+spot.title+"</strong>"
		            $(".hotPoto ul li").eq(index).find(".kokimgWrap").html(firstimage+title);
		            
		        });
		    },
		    error: function (err) {
		        console.log(err);
		    }
		});
	  
	  
	  
	  
	  let currentSlide = 0;
	  let slideHeight = 65; // 슬라이드 아이템의 높이
	  let slideCount; // 슬라이드의 총 개수
	  let slideInterval; // 슬라이드 타이머

	  
	  
	  function startSlideShow() {
		  console.log("자동 슬라이드 쇼가 시작되었습니다.");
		  if (slideInterval) {
		        clearInterval(slideInterval); // 기존 타이머 정지
		    }		  
	        slideInterval = setInterval(function() {
	            if(currentSlide < slideCount - 1) {
	                currentSlide++;
	            } else {
	                currentSlide = 0;
	            }
	            $(".newsList").animate({top: -(slideHeight * currentSlide)}, 300);
	        }, 3000); // 3초 간격으로 자동 슬라이드
	        
	    }

	  function stopSlideShow() {
		  console.log("자동 슬라이드 쇼가 정지되었습니다.");
	        clearInterval(slideInterval);
	        
	    }

	   
		
	  
	  
	  /*푸터(여행코스)*/
		$.ajax({
	  		 type: "GET",
	         url: "/tourAlist/selectedC",
	         success: function(selectedSpots) {
	        	 //console.log( selectedSpots );
	        	 
         	   //showCheckedList(selectedSpots);
         	  
	        	 //let title = selectedSpots[0].title;
	        	 //alert(title);
	        	 
	        	 let title = "";
	        	 $.each(selectedSpots,function(index,Cspot){
	        		 console.log(Cspot.title);
	        		 title += "<li id='courselist'>"+"<a>" + Cspot.title + "</a>"+"</li>";	
	        		 
	        		 
	        		 
	        	 });
	        	 
	        	 //title  ="<li>" + title + "</li>";	        	 
	        	 $(".newsList").append(title); // .innerHTML
	        	 slideCount = $(".newsList li").length;
	        	 startSlideShow(); 
	        	 
           },
           error: function(err) {
               console.log(err);
           }
		});
	  
	  
		 $(".btnNex").click(function() {
		        if(currentSlide < slideCount - 1) {
		            currentSlide++;
		            $(".newsList").animate({top: -(slideHeight * currentSlide)}, 300);
		        } else {
		            currentSlide = 0;
		            $(".newsList").animate({top: 0}, 300);
		        }
		    });

		    $(".btnPre").click(function() {
		        if(currentSlide > 0) {
		            currentSlide--;
		            $(".newsList").animate({top: -(slideHeight * currentSlide)}, 300);
		        } else {
		            currentSlide = slideCount - 1;
		            $(".newsList").animate({top: -(slideHeight * currentSlide)}, 300);
		        }
		    }); 
	   
		    
		 // '재생' 버튼 클릭 이벤트
		    $(".footerPlaybtn").click(function() {
		    	console.log(" 버튼 클릭됨"); 
		        startSlideShow();
		        $(".footerStopbtn").show();
		        $(".footerPlaybtn").hide();
		    });

		    // '정지' 버튼 클릭 이벤트
		    $(".footerStopbtn").click(function() {
		    	console.log("정지 버튼 클릭됨"); 
		        $(".footerStopbtn").hide();
		        $(".footerPlaybtn").show();
		        stopSlideShow();
		        
		    });

		    
		    
	  
	  
  });
  </script>
</body>
</html>
