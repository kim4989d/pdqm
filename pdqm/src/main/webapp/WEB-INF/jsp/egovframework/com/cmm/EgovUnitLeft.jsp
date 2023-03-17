<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/admin/admin.css'/>" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript">
	function devIng(){
		alert("서비스 준비중입니다 .");
	}
	
</script>
<body>
<c:set var="isUat" value="false"/>
<c:set var="isSec" value="false"/>
<c:set var="isSts" value="false"/>
<c:set var="isCop" value="false"/>
<c:set var="isUss" value="false"/>
<c:set var="isSym" value="false"/>
<c:set var="isSsi" value="false"/>
<c:set var="isDam" value="false"/>
<c:set var="isCom" value="false"/>

	<div id="secNavi">
		<p><img src="<c:url value='/images/pdqm/admin/secNavi_tit.gif'/>" alt="관리자(admin)" /></p>
		<ul class="leftMenu">
			<li class="on"><a href="${pageContext.request.contextPath}/uss/umt/EgovMberManage.do">회원정보조회</a></li>
			<li><a href="${pageContext.request.contextPath}/uss/ion/bnr/selectBannerList.do">팝업존/서비스 바로가기 관리</a></li>
			<li>콘텐츠관리
				<ul class="depth2">
					<li><a href="${pageContext.request.contextPath}/uss/olh/faq/FaqListInqire.do">자주하는질문 관리</a></li>
					<li><a href="#">뉴스레터 관리</a></li>
					<li><a href="${pageContext.request.contextPath}/cop/ems/selectSndngMailList.do">메일발송내역 조회</a></li>
				</ul>
			</li>
			<li><a href="#">팝업존/서비스 바로가기 관리</a></li>
			<li>콘텐츠관리
				<ul class="depth2">
					<li><a href="${pageContext.request.contextPath}/uss/olh/faq/FaqListInqire.do">자주하는질문 관리</a></li>
					<li><a href="#">뉴스레터 관리</a></li>
					<li><a href="${pageContext.request.contextPath}/cop/ems/selectSndngMailList.do">메일발송내역 조회</a></li>
				</ul>
			</li>
			<li>품질수준 자가진단 관리
				<ul class="depth2">
					<li>관리수준 자가진단
						<ul class="depth3">
							<li><a href="#" onclick="devIng();">진단대상 관리</a></li>
							<li><a href="#" onclick="devIng();">관리수준 문항 관리</a></li>
							<li><a href="#" onclick="devIng();">관리수준 결과 점수 관리</a></li>
							<li><a href="#" onclick="devIng();">관리수준 결과 설명 관리</a></li>
							<li><a href="#" onclick="devIng();">관리수준 관리</a></li>
						</ul>
					</li>
					<li>지표별 자가진단
						<ul class="depth3">
							<li><a href="#" onclick="devIng();">지표 관리</a></li>
							<li><a href="#" onclick="devIng();">데이터베이스유형 관리</a></li>
							<li><a href="#" onclick="devIng();">가중치 관리</a></li>
							<li><a href="#" onclick="devIng();">지표별 문항 관리</a></li>
							<li><a href="#" onclick="devIng();">지표별 결과 점수 관리</a></li>
							<li><a href="#" onclick="devIng();">지표별 결과 설명 관리</a></li>
							<li><a href="#" onclick="devIng();">지표별 관리</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li>통계
				<ul class="depth2">
					<li><a href="#">가입통계</a></li>
					<li><a href="#">접속통계</a></li>
					<li><a href="#">서비스별 이용 현황</a></li>
				</ul>
			</li>
			<li>공통코드관리
				<ul class="depth2">
					<li><a href="${pageContext.request.contextPath}/sym/ccm/ccc/EgovCcmCmmnClCodeList.do" target="_content">공통분류코드관리</a></li>
					<li><a href="${pageContext.request.contextPath}/sym/ccm/cca/EgovCcmCmmnCodeList.do" target="_content">공통코드관리</a></li>
					<li><a href="${pageContext.request.contextPath}/sym/ccm/cde/EgovCcmCmmnDetailCodeList.do" target="_content">공통상세코드관리</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<hr />

</body>
</html>
