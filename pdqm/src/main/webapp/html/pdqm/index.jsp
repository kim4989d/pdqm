<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js" charset="utf-8"></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>

	<div id="indexArea">
		<div class="conBox">
			<div class="visual"><img src="<c:url value='/images/pdqm/common/main/img_visual.gif'/>" alt="공공정보 품질관리 개선" /></div>
			<!-- 지식서비스바로바기 -->
			<div class="service">
				<h2><img src="<c:url value='/images/pdqm/common/main/h2_service.gif'/>" alt="지식서비스 바로가기" /></h2>
				<ul>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/main/banner_link1.gif'/>" alt="품질교육" /></a></li>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/main/banner_link2.gif'/>" alt="품질관리 매뉴얼" /></a></li>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/main/banner_link3.gif'/>" alt="품질관리개요" /></a></li>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/main/banner_link4.gif'/>" alt="지식자료실" /></a></li>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/main/banner_link5.gif'/>" alt="뉴스와 동향" /></a></li>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/main/banner_link6.gif'/>" alt="수요조사" /></a></li>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/main/banner_link7.gif'/>" alt="품질자가진단" /></a></li>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/main/banner_link8.gif'/>" alt="전문가 컬럼" /></a></li>
				</ul>
			</div>
			<!--// 지식서비스바로바기 -->

			<!-- popup zone -->
			<div class="popzone">
				<h2><img src="<c:url value='/images/pdqm/common/main/h2_popupzone.gif'/>" alt="popup zone" /></h2>
						<span id="foo1_next" class="Lbtn1"><a href="#" title="이전으로"><img src="<c:url value='/images/pdqm/common/main/top_view_left.gif'/>" alt="이전"/></a></span>
						<span id="foo1_prev" class="Rbtn1"><a href="#" title="다음으로"><img src="<c:url value='/images/pdqm/common/main/top_view_right.gif'/>" alt="다음"/></a></span>
						<span class="Playbtn1"><a href="#" title="재생하기"><img src="<c:url value='/images/pdqm/common/main/btn_play.gif'/>" alt="재생"/></a></span>
						<span class="Stopbtn1"><a href="#" title="잠시멈춤"><img src="<c:url value='/images/pdqm/common/main/btn_pauseon.gif'/>" alt="잠시멈춤"/></a></span>
						<ul id="myCarousel" class="uxRoll">
							<li>
								<a href="#"><img src="<c:url value='/images/pdqm/common/main/img_popup1.gif'/>" alt="Event 품질관리 지원센터 오픈 자세히보기" /></a>
							</li>
						</ul>
				<!-- <ul>
					<li>
						<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_no1_on.gif'/>" alt="1" /></a>
						<p>
							<a href="##"><img src="<c:url value='/images/pdqm/common/main/img_popup1.gif'/>" alt="Event 품질관리 지원센터 오픈 자세히보기" /></a>
						</p>
					</li>
					<li>
						<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_no2.gif'/>" alt="2" /></a>
						<p>
							<a href="##"><img src="<c:url value='/images/pdqm/common/main/img_popup1.gif'/>" alt="Event 품질관리 지원센터 오픈 자세히보기" /></a>
						</p>
					</li>
					<li>
						<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_no3.gif'/>" alt="3" /></a>
						<p>
							<a href="##"><img src="<c:url value='/images/pdqm/common/main/img_popup1.gif'/>" alt="Event 품질관리 지원센터 오픈 자세히보기" /></a>
						</p>
					</li>
				</ul> -->
			</div>
			<!--// popup zone -->

			<!-- 공지사항/보도자료 -->
			<div class="tabArea" id="tabmenu">
				<dl>
					<dt class="tab1"><a href="##" onclick="maintab('tabmenu',1);return false;"><img src="<c:url value='/images/pdqm/common/main/h2_tab1.gif'/>" alt="공지사항" /></a></dt>
					<dd class="list" id="tabmenu1">
						<ul>
							<li class="first new"><a href="##">2010년 품질진단 개선사업 신청안내</a><span>2011-11-01</span></li>
							<li class="new"><a href="##">공공기관 제1차 품질관리교육 동영상</a><span>2011-11-01</span></li>
							<li><a href="##">품질관리지식서비스 이용안내</a><span>2011-11-01</span></li>
							<li><a href="##">데이터 품질관리 지원센터 지식포털</a><span>2011-11-01</span></li>
						</ul>
						<a href="##" class="more"><img src="<c:url value='/images/pdqm/common/main/btn_more.gif'/>" alt="공지사항 더보기" /></a>
					</dd>
				</dl>
				<dl>
					<dt class="tab2"><a href="##" onclick="maintab('tabmenu',2);return false;"><img src="<c:url value='/images/pdqm/common/main/h2_tab2.gif'/>" alt="보도자료" /></a></dt>
					<dd class="list" id="tabmenu2">
						<ul>
							<li class="first new"><a href="##">보도자료</a><span>2011-11-01</span></li>
							<li class="new"><a href="##">보도자료</a><span>2011-11-01</span></li>
							<li><a href="##">보도자료</a><span>2011-11-01</span></li>
							<li><a href="##">보도자료</a><span>2011-11-01</span></li>
						</ul>
						<a href="##" class="more"><img src="<c:url value='/images/pdqm/common/main/btn_more.gif'/>" alt="보도자료 더보기" /></a>
					</dd>
				</dl>
			</div>
			<!--// 공지사항/보도자료 -->

			<!-- QR코드 -->
			<div class="qrcode">
				<h2><img src="<c:url value='/images/pdqm/common/main/h2_qrcode.gif'/>" alt="QR코드" /></h2>
				<p><img src="<c:url value='/images/pdqm/common/main/img_qrcode.gif'/>" alt="QR코드 이미지" /></p>
			</div>
			<!--// QR코드 -->
		</div>

		<div class="rBox">
			<!-- 전문가칼럼 -->
			<div class="specialBox">
				<a href="##"><img src="<c:url value='/images/pdqm/common/main/specialList_box.gif'/>" alt="품질관리상담전문가- 전문가에게 물어보세요" /></a>
			</div>
			<!-- 트위터 -->
			<div class="twitterBox">&nbsp;
			</div>
			<!--// 트위터-->
			<ul class="banner">
				<li><a href="##" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/main/banner_right1.gif'/>" alt="공공정보 품질관리지원센터 페이스북으로 참여하기" /></a></li>
				<!-- <li><a href="##" onclick="alert('작업중입니다.')"><img src="<c:url value='/images/pdqm/common/main/banner_right2.gif'/>" alt="NDBF 국가DB포럼" /></a></li>
				<li><a href="##" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/main/banner_right3.gif'/>" alt="공공정보 활용 지원센터" /></a></li> -->
			</ul>
		</div>

		<ul class="bannerBox">
			<li><a href="http://www.mopas.go.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_1.gif'/>" alt="행정안전부" /></a></li>
			<li><a href="http://www.nia.or.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_2.gif'/>" alt="한국정보화진흥원" /></a></li>
			<li><a href="http://www.data.go.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_3.gif'/>" alt="공유자원포탈" /></a></li>
			<li><a href="https://www.knowledge.go.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_4.gif'/>" alt="국가지식포털" /></a></li>
			<li><a href="http://www.ndbf.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_5.gif'/>" alt="국가DB포럼" /></a></li>
			<li><a href="https://www.pisc.or.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_6.gif'/>" alt="공공정보 활용 지원센터" /></a></li>
		</ul>
	</div>

<%@ include file="/html/pdqm/include/footer.jsp" %>
