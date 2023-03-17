<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>





<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
<script type="text/javascript" >

function fnSysLog(svcNm) {
	//alert(svcNm);
	// 서비스로그 남기기 우선 주석 처리 psh
 	document.sysLogForm.srvcNm.value = svcNm;
    document.sysLogForm.action="<c:url value='/admin/stats/selectUseCount.do'/>";
    document.sysLogForm.submit();

}

function devIng(){
	alert("서비스 준비중입니다 .");
}
</script>
<div id="skipNav">
	<a href="#conArea">본문 바로가기 &#62;</a>
</div>



<div id="wrapper">
	<div id="header">
		<div class="topArea">
			<h1><a href="${pageContext.request.contextPath}/index.do"><img src="<c:url value='/images/pdqm/common/txt_top_logo.gif'/>" alt="공공정보 품질관리 지원센터" /></a></h1>
				<ul class="toplink">
					<li><a href="${pageContext.request.contextPath}/index.do" ><img src="<c:url value='/images/pdqm/common/txt_toplink1.png'/>" alt="홈" /></a></li>

			<!-- 로그인전 -->
			<c:choose>
				<c:when test="${ loginVO.name == null || loginVO.name == '' }">
					<li><a href="${pageContext.request.contextPath}/uss/umt/MberCertification.do"><img src="<c:url value='/images/pdqm/common/txt_toplink2.png'/>" alt="회원가입" /></a></li>
					<li><a href="${pageContext.request.contextPath}/front/main/egovLoginUsr.do"><img src="<c:url value='/images/pdqm/common/txt_toplink3.png'/>" alt="로그인" /></a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${pageContext.request.contextPath}/uss/umt/MberSelectUpdtView.do?selectedId=<c:out value="${loginVO.uniqId}"/>"><img src="<c:url value='/images/pdqm/common/txt_toplink5.png'/>" alt="개인정보수정" /></a></li>
					<li><a href="${pageContext.request.contextPath }/uat/uia/actionLogout.do"><img src="<c:url value='/images/pdqm/common/txt_toplink6.png'/>" alt="로그아웃" /></a></li>
					<c:if test="${loginVO.mberType == 'A'}">
						<li><a href="${pageContext.request.contextPath}/AdminMain.do"><img src="<c:url value='/images/pdqm/common/txt_toplink9.png'/>" alt="관리자 페이지" /></a></li>
					</c:if>
				</c:otherwise>
			</c:choose>

			<!-- 로그인후 -->
					<li><a href="<c:url value='/front/info/sitemap.do'/>"><img src="<c:url value='/images/pdqm/common/txt_toplink8.png'/>" alt="사이트맵" /></a></li>
				</ul>
		</div>

		<!-- gnb: start -->
		<div class="gnbArea" id="gnb">
			<ul>
				<li id="top-menu1"><a href="<c:url value='/front/summary/outline.do'/>" id="top-menu-head1"><img src="<c:url value='/images/pdqm/common/menu/gnb1.gif'/>" alt="공공정보 품질관리" onclick="fnSysLog('top-menu1');"/></a>
					<div class="submenu" id="top-sub-menu1">
						<ul>
							<li id="top-1-1"><a href="<c:url value='/front/summary/outline.do'/>" onclick="fnSysLog('top-1-1');"><img src="<c:url value='/images/pdqm/common/menu/gnb1_1.gif'/>" alt="공공정보품질관리 개요" /></a></li>
							<li id="top-1-2"><a href="<c:url value='/front/summary/GuideLine.do'/>" onclick="fnSysLog('top-1-2');"><img src="<c:url value='/images/pdqm/common/menu/gnb1_2.gif'/>" alt="법ㆍ지침ㆍ매뉴얼" /></a></li>
							<li id="top-1-3"><a href="<c:url value='/front/summary/introStandard.do'/>" onclick="fnSysLog('top-1-3');"><img src="<c:url value='/images/pdqm/common/menu/gnb1_3.gif'/>" alt="품질관리표준" /></a></li>
						</ul>
					</div>
				</li>
				<li id="top-menu2"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000181" id="top-menu-head2"><img src="<c:url value='/images/pdqm/common/menu/gnb2.gif'/>" alt="지식마당" onclick="fnSysLog('top-menu2');"/></a>
					<div class="submenu" id="top-sub-menu2">
						<ul>
							<li id="top-2-1"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000181" onclick="fnSysLog('top-2-1');"><img src="<c:url value='/images/pdqm/common/menu/gnb2_1.gif'/>" alt="뉴스와 동향" /></a></li>
							<li id="top-2-2"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000161" onclick="fnSysLog('top-2-2');"><img src="<c:url value='/images/pdqm/common/menu/gnb2_2.gif'/>" alt="우수사례공유" /></a></li>
							<!-- <li id="top-2-3"><a href="<c:url value='/html/pdqm/front/knowledge/knowledge3.jsp'/>"><img src="<c:url value='/images/pdqm/common/menu/gnb2_3.gif'/>" alt="품질관리 포럼ㆍ협회" /></a></li> -->
							<li id="top-2-4"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000141" onclick="fnSysLog('top-2-4');"><img src="<c:url value='/images/pdqm/common/menu/gnb2_4.gif'/>" alt="지식자료실" /></a></li>
							<!-- <li id="top-2-5"><a href="${pageContext.request.contextPath}/uss/olh/faq/Faq.do?faqCategory=0" onclick="fnSysLog('top-2-5');"><img src="<c:url value='/images/pdqm/common/menu/gnb2_5.gif'/>" alt="자주하는 질문" /></a></li> -->
						</ul>
					</div>
				</li>
				<li id="top-menu3"><a href="<c:url value='/front/support/dgnssInfo.do'/>" id="top-menu-head3"><img src="<c:url value='/images/pdqm/common/menu/gnb3.gif'/>" alt="지원창구" onclick="fnSysLog('top-menu3');"/></a>
					<div class="submenu" id="top-sub-menu3">
						<ul>
							<li id="top-3-1"><a href="<c:url value='/front/support/dgnssInfo.do'/>" onclick="fnSysLog('top-3-1');"><img src="<c:url value='/images/pdqm/common/menu/gnb3_1.gif'/>" alt="품질진단사업안내" /></a></li>
							<li id="top-3-2"><a href="<c:url value='/front/support/improvInfo.do'/>" onclick="fnSysLog('top-3-2');"><img src="<c:url value='/images/pdqm/common/menu/gnb3_2.gif'/>" alt="품질개선사업안내" /></a></li>
							<li id="top-3-4"><a href="<c:url value='/support/diagnosis/level/selfDgnssInformation.do'/>" onclick="fnSysLog('top-3-4');"><img src="<c:url value='/images/pdqm/common/menu/gnb3_4.gif'/>" alt="품질수준 자가진단" /></a></li>
							<li id="top-3-5"><a href="<c:url value='/front/support/introMatching.do'/>" onclick="fnSysLog('top-3-5');"><img src="<c:url value='/images/pdqm/common/menu/gnb3_5.gif'/>" alt="연계정보 정합성 검증" /></a></li>
							<li id="top-3-3"><a href="<c:url value='/support/apply/selectPdqmApplyInfo.do'/>" onclick="fnSysLog('top-3-3');"><img src="<c:url value='/images/pdqm/common/menu/gnb3_3.gif'/>" alt="품질개선 수요조사" /></a></li>
						</ul>
					</div>
				</li>
				<li id="top-menu4"><a href="<c:url value='/front/education/introEducation.do'/>" id="top-menu-head4"><img src="<c:url value='/images/pdqm/common/menu/gnb4.gif'/>" alt="품질관리교육" onclick="fnSysLog('top-menu4');"/></a>
					<div class="submenu" id="top-sub-menu4">
						<ul>
							<li id="top-4-1"><a href="<c:url value='/front/education/introEducation.do'/>" onclick="fnSysLog('top-4-1');"><img src="<c:url value='/images/pdqm/common/menu/gnb4_1.gif'/>" alt="교육안내" /></a></li>
							<!-- <li id="top-4-2"><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000142'/>" onclick="fnSysLog('top-4-2');"><img src="<c:url value='/images/pdqm/common/menu/gnb4_2.gif'/>" alt="교육 공지" /></a></li> -->
							<li id="top-4-3"><a href="<c:url value='/html/pdqm/front/education/education4.jsp'/>" onclick="fnSysLog('top-4-3');"><img src="<c:url value='/images/pdqm/common/menu/gnb4_3.gif'/>" alt="교육자료" /></a></li>
							<!-- 동영상자료 추가 (2011-11-30)
							<li id="top-4-4"><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000221'/>" onclick="fnSysLog('top-4-4');"><img src="<c:url value='/images/pdqm/common/menu/gnb4_5.gif'/>" alt="동영상자료" /></a></li>
							<li id="top-4-5"><a href="<c:url value='/html/pdqm/front/education/education4.jsp'/>" onclick="fnSysLog('top-4-5');"><img src="<c:url value='/images/pdqm/common/menu/gnb4_4.gif'/>" alt="교육 동영상" /></a></li>-->
						</ul>
					</div>
				</li>
				<li id="top-menu5"><a href="<c:url value='/front/community/introCommunity.do'/>" id="top-menu-head5"><img src="<c:url value='/images/pdqm/common/menu/gnb5.gif'/>" alt="소통ㆍ참여" onclick="fnSysLog('top-menu5');"/></a>
					<div class="submenu" id="top-sub-menu5">
						<ul>
							<li id="top-5-1"><a href="<c:url value='/front/community/introCommunity.do'/>" onclick="fnSysLog('top-5-1');"><img src="<c:url value='/images/pdqm/common/menu/gnb5_1.gif'/>" alt="협의회/커뮤니티" /></a></li>
							<li id="top-5-2"><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000171'/>" onclick="fnSysLog('top-5-2');"><img src="<c:url value='/images/pdqm/common/menu/gnb5_2.gif'/>" alt="전문가컬럼" /></a></li>
							<li id="top-5-3"><a href="##" onclick="devIng();"><img src="<c:url value='/images/pdqm/common/menu/gnb5_3.gif'/>" alt="묻고답하기" /></a></li>
						</ul>
					</div>
				</li>
				<li id="top-menu6" class="last"><a href="<c:url value='/front/intro/intro.do'/>" id="top-menu-head6"><img src="<c:url value='/images/pdqm/common/menu/gnb6.gif'/>" alt="센터소개" onclick="fnSysLog('top-menu6');"/></a>
					<div class="submenu" id="top-sub-menu6">
						<ul>
							<li id="top-6-1"><a href="<c:url value='/front/intro/intro.do'/>" onclick="fnSysLog('top-6-1');"><img src="<c:url value='/images/pdqm/common/menu/gnb6_1.gif'/>" alt="소개" /></a></li>
							<li id="top-6-2"><a href="<c:url value='/front/intro/mainBusiness.do'/>" onclick="fnSysLog('top-6-2');"><img src="<c:url value='/images/pdqm/common/menu/gnb6_2.gif'/>" alt="주요사업" /></a></li>
							<li id="top-6-3"><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000191' />" onclick="fnSysLog('top-6-3');"><img src="<c:url value='/images/pdqm/common/menu/gnb6_3.gif'/>" alt="보도자료" /></a></li>
							<li id="top-6-4"><a href="##" onclick="devIng();"><img src="<c:url value='/images/pdqm/common/menu/gnb6_4.gif'/>" alt="오시는 길" /></a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		<script type="text/javascript">initTopmenuByMenuId(0,0,0,0,'gnb');</script>
		<!-- gnb: end -->

	</div>
	<form name="sysLogForm" method="post"  action="#">
		<input type="hidden" id="srvcNm" name="srvcNm"/>
		<input type="submit" id="invisible" class="invisible"/>
	</form>

