<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String sub_menu = request.getRequestURI().toString();
	String values[]=sub_menu.split("/");
	String smenu = values[values.length-1];
	String depth2 = "";
	String depth3 = "1";
	//out.println(smenu);
	if(smenu.equals("dgnssInfo.jsp")){
		depth2 = "1";
	}else if(smenu.equals("improvInfo.jsp")){
		depth2 = "2";
	}else if(smenu.equals("PdqmApplyInfo.jsp")){
		depth2 = "3";
	}else if(smenu.equals("PdqmApplyInfo.jsp")){
		depth2 = "3";
		depth3 = "1";
	}else if(smenu.equals("PdqmApplyRegist.jsp")){
		depth2 = "3";
		depth3 = "2";
	}else if( smenu.equals("selfdiag_dgnsstrget_information.jsp") || smenu.equals("selfdiag_dgnsstrget_view.jsp") || smenu.equals("idxselfdiag_dgnsstrget_view.jsp")){
		depth2 = "4";
	}else if(smenu.equals("introMatching.jsp")){
		depth2 = "5";
	}else if(smenu.equals("introMatching.jsp")){
		depth2 = "5";
		depth3 = "1";
	}else if(smenu.equals("matching_col_dbinfo.jsp")){
		depth2 = "5";
		depth3 = "2";
	}else if(smenu.equals("MatchingCodeInfo.jsp")){
		depth2 = "5";
		depth3 = "3";
	}
%>

<script type="text/javascript">
<!--
// 공통으로 사용 Login 페이지로 이동
function fnGoLogin() {

	if (confirm('로그인 하시겠습니까?')) {
	    document.loginForm.action="<c:url value='/front/main/egovLoginUsr.do'/>";
	    document.loginForm.submit();
	}

}
// -->
</script>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapT.png'/>" class="png24" alt="" /></div>
	<div id="conWrap">
		<div id="lnbArea">
			<!-- 지원창구-->
			<h2><img src="<c:url value='/images/pdqm/common/menu/secNavi/h2_3.gif'/>" alt="지원창구" /></h2>
			<ul id="leftMenu">
				<li id="menu3-1"><a href="<c:url value='/front/support/dgnssInfo.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_3_1.gif'/>" alt="품질진단사업안내" /></a></li>
				<li id="menu3-2"><a href="<c:url value='/front/support/improvInfo.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_3_2.gif'/>" alt="품질개선사업안내" /></a></li>
				<li id="menu3-4"><a href="<c:url value='/support/diagnosis/level/selfDgnssInformation.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_3_3.gif'/>" alt="품질수준 자가진단" /></a>
					<ul class="depth3">
						<li id="menu3-4-1"><a href="<c:url value='/support/diagnosis/level/selfDgnssInformation.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_3_3_1.gif'/>" alt="품질수준 자가진단 안내" /></a></li>
						<li id="menu3-4-2"><a href="<c:url value='/support/diagnosis/level/selectDgnssTrgetView.do?level_5_idx=level'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_3_3_2.gif'/>" alt="진단 시작하기" /></a></li>
					</ul>
				</li>
				<li id="menu3-5"><a href="<c:url value='/front/support/introMatching.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_3_4.gif'/>" alt="연계정보 정합성 검증" /></a>
					<ul class="depth3">
						<li id="menu3-5-1"><a href="<c:url value='/front/support/introMatching.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_3_4_1.gif'/>" alt="연계정보 정합성 검증 안내" /></a></li>
						<c:choose>
	  					<c:when test="${ loginVO.id != null }">
							<li id="menu3-5-2"><a href="<c:url value='/support/matching/searchAllDBInfoList.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_3_4_2.gif'/>" alt="DB스키마 정보 비교" /></a></li>
							<li id="menu3-5-3"><a href="<c:url value='/support/matching/MatchingCodeInfo.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_3_4_3.gif'/>" alt="마스터코드 정보 비교" /></a></li>
						</c:when>
						<c:otherwise>
							<li id="menu3-5-2"><a href="##" onclick="fnGoLogin();"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_3_4_2.gif'/>" alt="DB스키마 정보 비교" /></a></li>
							<li id="menu3-5-3"><a href="##" onclick="fnGoLogin();"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_3_4_3.gif'/>" alt="마스터코드 정보 비교" /></a></li>
						</c:otherwise>
	  					</c:choose>

					</ul>
				</li>
				<li id="menu3-3"><a href="<c:url value='/support/apply/selectPdqmApplyInfo.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_3_5.gif'/>" alt="품질개선 수요조사" /></a>
					<ul class="depth3">
						<li id="menu3-3-1"><a href="<c:url value='/support/apply/selectPdqmApplyInfo.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_3_5_1.gif'/>" alt="수요조사안내" /></a></li>
						<c:choose>
	  					<c:when test="${ loginVO.id != null }">
						<li id="menu3-3-2"><a href="<c:url value='/support/apply/selectPdqmApply.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_3_5_2.gif'/>" alt="사업신청" /></a></li>
						</c:when>
						<c:otherwise>
						<li id="menu3-3-2"><a href="##" onclick="fnGoLogin();"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_3_5_2.gif'/>" alt="사업신청" /></a></li>
						</c:otherwise>
	  					</c:choose>
					</ul>
				</li>
			</ul>
			<script type="text/javascript">initSubmenuByMenuId(3,<%=depth2%>,<%=depth3%>,0,'leftMenu');</script>
		</div>
		<div id="conArea">

	<form name="loginForm" method="post"  action="#">
		<input type="submit" id="loginVisible" class="invisible"/>
	</form>