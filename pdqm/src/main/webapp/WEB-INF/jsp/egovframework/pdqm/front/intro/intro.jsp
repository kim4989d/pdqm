<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : intgro1.jsp
  * @Description : 센터소개 > 소개 화면
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb6.jsp" %>

<!-- contents영역시작 -->

<div class="bg_intro">
	<div class="title">
		<div class="location">Home > 센터소개 > <em>소개</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/intro/h3_int1.gif'/>" alt="소개" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/intro/h3_int1_desc.png'/>" class="png24" alt="행정안전부 산하기관인 한국정보화진흥원에서 운영하는 공공정보 품질관리 지원센터를 소개합니다. 리플렛 전문을 ppt 파일로 다운로드 받거나 열람할 수 있습니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/intro/h4_intro1_1.gif'/>" alt="공공정보 품질관리 지원센터의 설치 근거" /></h4>
		<p class="depth1_con">공공정보 품질관리 지원센터는 “공공기관의 데이터베이스 품질관리지침”(행정안전부고시 2011-25호, '11.7.4)에 ‘제7조 (품질관리지원센터)’에 따라 설치되었습니다.</p>
		<div class="tBox_1">
			<h5>품질관리지침 제7조 (품질관리지원센터)</h5>
			<ol>
				<li>① 장관은 공공기관의 데이터베이스 품질관리에 대한 행정적∙기술적 지원을 하기 위하여 품질관리지원센터를 둘 수 있다.</li>
				<li>② 품질관리 지원센터는 다음 각 호의 업무를 수행한다.
					<ol class="depth1_con">
						<li>1. 공공기관의 데이터베이스 품질관리를 위한 정책 및 표준화 연구</li>
						<li>2. 공공기관의 데이터베이스 품질관리 정책 관련 사업의 실행 및 지원</li>
						<li>3. 공공기관의 데이터베이스 품질관리 교육</li>
						<li>4. 공공기관의 데이터베이스 품질관리 매뉴얼 개발 및 보급</li>
						<li>5. 그 밖에 공공기관의 데이터베이스 품질관리 지원에 관한 사항</li>
					</ol>
				</li>
			</ol>
		</div>

		<h4><img src="<c:url value='/images/pdqm/front/intro/h4_intro1_2.gif'/>" alt="공공정보 품질관리 지원센터 운영기관" /></h4>
		<p class="depth1_con">공공정보 품질관리 지원센터는 한국정보화진흥원(http://www.nia.or.kr)이 역할을 수행하고 있습니다.</p>
		<dl class="dlType1">
			<dt><img src="<c:url value='/images/pdqm/front/intro/logo.gif'/>" alt="공공정보 품질관리 지원센터 로고" /></dt>
			<dd>공공정보 품질관리 지원센터</dd>
			<dd>100-170 서울특별시 중구 청계천로 14(무교동 77번지)</dd>
			<dd>Tel : 02-2131-0377</dd>
		</dl>

		<h4><img src="<c:url value='/images/pdqm/front/intro/h4_intro1_3.gif'/>" alt="공공정보 품질관리 지원센터 홍보 리플렛" /></h4>
		<p class="depth1_con">공공정보 품질관리 지원센터의 홍보 리플렛을 열람하고 다운로드 받을 수 있습니다.</p>

		<h5 class="bult depth1_con">홍보 리플렛 겉지</h5>
		<p class="mt_10">그림</p>
		<p class="ta_c mt_10">
			<a href="##">큰 그림으로 보기</a>
			<a href="##">다운로드</a>
		</p>

		<h5 class="bult depth1_con">홍보 리플렛 속지</h5>
		<p class="mt_10">그림</p>
		<p class="ta_c mt_10">
			<a href="##">큰 그림으로 보기</a>
			<a href="##">다운로드</a>
		</p>

	</div>
</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

