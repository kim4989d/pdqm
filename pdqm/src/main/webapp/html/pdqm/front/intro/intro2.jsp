<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : intgro2.jsp
  * @Description : 센터소개 > 주요사업 화면
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
		<div class="location">Home > 센터소개 > <em>주요사업</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/intro/h3_int2.gif'/>" alt="주요사업" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/intro/h3_int2_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터의 주요사업에 대한 안내입니다. 공공정보 품질관리 지원센터의 주요업무를 설명합니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/intro/h4_intro2_1.gif'/>" alt="공공정보 품질관리 지원센터의 주요 업무" /></h4>

		<h5 class="bult">공공정보 품질관리</h5>
		<p class="h5_bult_con">표준화 및 국가차원 품질관리 정책 안내</p>

		<h5 class="bult">고품질 공공정보 확보를 위한</h5>
		<p class="h5_bult_con">품질 진단 및 개선 사업 수행 및 지원</p>

		<h5 class="bult">공공기관 정보화 실무자를 위한</h5>
		<p class="h5_bult_con">품질관리 매뉴얼 보급 및 교육 실시</p>

		<h5 class="bult">품질관리 문화확산을 위한</h5>
		<p class="h5_bult_con">공공정보 품질관리지원 포털 운영</p>

	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

