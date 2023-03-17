<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.min.js"></script>
<script>
	$(document).ready(function(){
		// sm 클래스 바로 하위에 있는 a 태그를 클릭했을때
		$("#exam2 .menu>a").click(function(){
			var submenu = $(this).next("ul");
			
			// submenu 가 화면상에 보일때는 위로 부드럽게 접고 아니면 아래로 부드럽게 펼치기
			if( submenu.is(":visible") ){
				submenu.slideUp();
			}else{
				submenu.slideDown();
			}
		});
	});
	
	$(document).ready(function(){
		// sm 클래스 바로 하위에 있는 a 태그를 클릭했을때
		$("#secNavi .leftMenu>li").click(function(){
			debug("1");
			var submenu = $(this).next("ul");
			debug("ul==>"+submenu.is(""));
			// submenu 가 화면상에 보일때는 위로 부드럽게 접고 아니면 아래로 부드럽게 펼치기
			if( submenu.is(":visible") ){
				submenu.slideUp();
			}else{
				submenu.slideDown();
			}
		});
	});	
</script>
<style>
	.menu img{cursor:pointer;}
	.menu .hide{display:none;}
</style>

<div id="wrapper">
	<!-- Skip -->
	<ul id="topSkip">
		<li><a href="#cntArea">본문으로 바로가기</a></li>
		<li><a href="#secNavi">서브메뉴로 바로가기</a></li>
	</ul>
	<hr />

	<!-- topArea:Start -->
	<div id="topArea">
		<div class="topWrap">
			<h1 class="logo"><a href="/pdqm/index.do" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/admin/logo.gif'/>" alt="공공정보 품질관리 지원센터" /></a></h1>
			<p class="topBtn">
				<a href="${pageContext.request.contextPath}/cop/com/selectBBSUseInfs.do" style="text-decoration:none;cursor:none;">&nbsp;&nbsp;&nbsp;&nbsp;</a>
				${loginVO.name }님 환영합니다. <!-- <a href="${pageContext.request.contextPath}/index.do">[공공정보 품질관리 지원센터 바로가기]</a> -->
				<a href="${pageContext.request.contextPath }/uat/uia/actionLogout.do">로그아웃</a></p>
		</div>
	</div>
	<hr />
	<!-- topArea:End -->

	<!-- cntWrap:Start -->
	<div id="cntWrap">
		<div id="secNavi">
			<p><img src="<c:url value='/images/pdqm/admin/secNavi_tit.gif'/>" alt="관리자(admin)" /></p>
			<ul class="leftMenu">
				<li class="on"><a href="${pageContext.request.contextPath}/uss/umt/EgovMberManage.do">회원정보조회</a></li>
				<li><a href="${pageContext.request.contextPath}/uss/ion/bnr/selectBannerList.do">팝업존/서비스 바로가기 관리</a></li>
				<li>콘텐츠관리
					<ul class="depth2">
						<li><a href="${pageContext.request.contextPath}/uss/olh/faq/FaqListInqire.do">자주하는질문 관리</a></li>
						<li>뉴스레터 관리
							<ul class="depth3">
								<li><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000211'/>">뉴스레터 목록</a></li>
								<li><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000241'/>">뉴스레터 콘텐츠 관리</a></li>
								<li><a href="<c:url value='/cop/ems/selectSndngMailList.do'/>">메일발송내역 조회</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li>지원사업 수요조사 관리
					<ul class="depth2">
						<li><a href="${pageContext.request.contextPath}/support/apply/SupportApply.do">사업신청기간관리</a></li>
						<li><a href="${pageContext.request.contextPath}/support/apply/selectApplyList.do">사업신청내역</a></li>
					</ul>
				</li>
				<li>품질수준 자가진단 관리
					<ul class="depth2">
						<li>관리수준 자가진단
							<ul class="depth3">
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/selectDiagnosisLevelMngList.do" >진단대상 및 관점 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/level/selectQuizList.do">관리수준 문항 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/level/selectScoreDgnssTrgetList.do" >관리수준 결과(진단대상) 점수 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/level/selectScoreViewPointList.do" >관리수준 결과(진단관점) 점수 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/level/selectResultExplainList.do" >관리수준 결과 설명 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/level/selectSelfDiagnosisList.do" >관리수준 자가진단 관리</a></li>
							</ul>
						</li>
						<li>지표별 자가진단
							<ul class="depth3">
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/selectDiagnosisIdxMngList.do">지표 및 특성 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/selectIdxDbTypeList.do">데이터베이스유형 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/diagnoIdxDbTypePMngList.do" >데이터베이스유형별 중점지표 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/wghtval/diagnoWghtvalIdxMngList.do" >가중치 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/diagnoDianoIdxQesMngList.do" >지표별 문항 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/result/selectDianoIdxSelfMngPList.do">지표별 결과 점수 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPList.do" >지표별 결과 설명 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do" >지표별 자가진단 관리</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li>통계
					<ul class="depth2">
						<li><a href="${pageContext.request.contextPath}/admin/stats/selectJoinCountView.do" >가입통계</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/stats/selectAccessCountView.do" >접속통계</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/stats/selectUseCountView.do" >서비스별 이용 현황</a></li>
					</ul>
				</li>
				<li>공통코드관리
					<ul class="depth2">
						<li><a href="${pageContext.request.contextPath}/sym/ccm/ccc/EgovCcmCmmnClCodeList.do">공통분류코드관리</a></li>
						<li><a href="${pageContext.request.contextPath}/sym/ccm/cca/EgovCcmCmmnCodeList.do">공통코드관리</a></li>
						<li><a href="${pageContext.request.contextPath}/sym/ccm/cde/EgovCcmCmmnDetailCodeList.do">공통상세코드관리</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<hr />


		<!-- Contents Area:Start -->
		<div id="cntArea">
		
		
		
	<div id="exam2">
		<ul>
			<li class="menu">
				<a href="#">회원정보조회</a>
				<ul class="hide">
					<li>메뉴1-1</li>
					<li>메뉴1-2</li>
					<li>메뉴1-3</li>
					<li>메뉴1-4</li>
					<li>메뉴1-5</li>
					<li>메뉴1-6</li>
				</ul>
			</li>

			<li class="menu">
				<a href="#">상위메뉴이미지2</a>
				<ul class="hide">
					<li>메뉴2-1</li>
					<li>메뉴2-2</li>
					<li>메뉴2-3</li>
					<li>메뉴2-4</li>
					<li>메뉴2-5</li>
					<li>메뉴2-6</li>
				</ul>
			</li>
		</ul>
	</div>
