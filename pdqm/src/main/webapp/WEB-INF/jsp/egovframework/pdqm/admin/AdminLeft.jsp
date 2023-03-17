<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> 공공정보 품질관리 지원센터 </title>
<link href="<c:url value='/css/pdqm/admin/admin.css'/>" rel="stylesheet" type="text/css" />
<!-- 슬라이딩 스크립트 시작 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.min.js"></script>
<script type="text/javascript">
<!--
	$(function(){
		$(".depth2").hide();
		// 두번째 메뉴 클릭시 이벤트
		$(".leftMenu>li>a.smenu").click(function(){
			//alert($(".depth2").is(":visible"));
			$(".depth2:visible").slideUp("middle");
			$(this).next('.depth2:hidden').slideDown("middle");
		return false;
		});
	});

	function devIng(){
		alert("서비스 준비중입니다 .");
	}
//-->
</script>
</head>
<base target="content" />

<body>

<!-- leftmenu Start -->
<div id="secNavi" style="margin-top:25px;">
	<p><img src="<c:url value='/images/pdqm/admin/secNavi_tit.gif'/>" alt="관리자(admin)" /></p>
	<ul class="leftMenu">
		<li><a class="smenu" href="#">회원관리</a>
			<ul class="depth2">
				<li><a href="${pageContext.request.contextPath}/uss/umt/EgovMberManage.do">회원정보조회</a></li>
			</ul>
		<li><a class="smenu" href="#">팝업존/서비스 관리</a>
			<ul class="depth2">
				<li><a href="${pageContext.request.contextPath}/uss/ion/bnr/selectBannerList.do">팝업존/서비스 바로가기 관리</a></li>
			</ul>
		<li><a class="smenu" href="#">콘텐츠관리</a>
			<ul class="depth2">
				<li><a href="${pageContext.request.contextPath}/uss/olh/faq/FaqListInqire.do">자주하는질문 관리</a></li>
				<li>뉴스레터 관리
					<ul class="depth3">
						<li><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000211'/>">뉴스레터 목록</a></li>
						<li><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000241&searchBbsId=BBSMSTR_000000000191'/>">뉴스레터 콘텐츠 관리</a></li>
						<li><a href="<c:url value='/cop/ems/selectSndngMailList.do'/>">메일발송내역 조회</a></li>
					</ul>
				</li>				
			</ul>
		</li>
		<li><a class="smenu" href="#">지원사업 수요조사 관리</a>
			<ul class="depth2">
				<li><a href="${pageContext.request.contextPath}/support/apply/SupportApply.do">사업신청기간관리</a></li>
				<li><a href="${pageContext.request.contextPath}/support/apply/selectApplyList.do">사업신청내역</a></li>
			</ul>
		</li>
		<li><a class="smenu" href="#">품질수준 자가진단 관리</a>
			<ul class="depth2">
				<li>관리수준 자가진단
					<ul class="depth3">
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/selectDiagnosisLevelMngList.do" >진단대상 및 관점 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/level/selectQuizList.do">문항 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/level/selectScoreDgnssTrgetList.do" >결과(진단대상) 점수 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/level/selectScoreViewPointList.do" >결과(진단관점) 점수 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/level/selectResultExplainList.do" >결과 설명 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/level/selectSelfDiagnosisList.do" >자가진단 관리</a></li>
					</ul>
				</li>
				<li>지표별 자가진단
					<ul class="depth3">
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/selectDiagnosisIdxMngList.do">지표 및 특성 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/selectIdxDbTypeList.do">DB유형 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/diagnoIdxDbTypePMngList.do" >DB유형별 중점지표 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/wghtval/diagnoWghtvalIdxMngList.do" >가중치 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/diagnoDianoIdxQesMngList.do" >지표별 문항 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/result/selectDianoIdxSelfMngPList.do">지표별 결과 점수 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPList.do" >지표별 결과 설명 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do" >지표별 자가진단 관리</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><a class="smenu" href="#">통계</a>
			<ul class="depth2">
				<li><a href="${pageContext.request.contextPath}/admin/stats/selectJoinCountView.do" >가입통계</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/stats/selectAccessCountView.do" >접속통계</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/stats/selectUseCountView.do" >서비스별 이용 현황</a></li>
			</ul>
		</li>
		<li><a class="smenu" href="#">공통코드관리</a>
			<ul class="depth2">
				<li><a href="${pageContext.request.contextPath}/sym/ccm/ccc/EgovCcmCmmnClCodeList.do">공통분류코드관리</a></li>
				<li><a href="${pageContext.request.contextPath}/sym/ccm/cca/EgovCcmCmmnCodeList.do">공통코드관리</a></li>
				<li><a href="${pageContext.request.contextPath}/sym/ccm/cde/EgovCcmCmmnDetailCodeList.do">공통상세코드관리</a></li>
			</ul>
		</li>
	</ul>
</div>
<hr/>
<!-- leftmenu End -->

</body>
</html>
