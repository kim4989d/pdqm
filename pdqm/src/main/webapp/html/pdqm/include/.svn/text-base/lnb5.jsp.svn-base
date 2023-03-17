<%@page import="egovframework.com.utl.fcc.service.EgovStringUtil"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String sub_menu = request.getRequestURI().toString();
	String sub_param = "";
	sub_param = EgovStringUtil.isNullToString(request.getParameter("bbsId"));

	String values[]=sub_menu.split("/");
	String smenu = values[values.length-1];
	//out.println(sub_param);
	//out.println(smenu);
	String depth2 = "";
	String depth3 = "1";
	if(smenu.equals("introCommunity.jsp")){
		depth2 = "1";
	}else if(smenu.equals("ContentWithNoticeList.jsp")){
		if (sub_param.equals("BBSMSTR_000000000171")) {
			depth2 = "2";
		}
	}else if (smenu.equals("NoticeList.jsp")){
		depth2 = "1";
		if (sub_param.equals("BBSMSTR_000000000151")) {
			depth3 = "2";
		}else if(sub_param.equals("BBSMSTR_000000000152")) {
			depth3 = "3";
		}
	}

%>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapT.png'/>" class="png24" alt="" /></div>
	<div id="conWrap">
		<div id="lnbArea">
			<!-- 소통ㆍ참여-->
			<h2><img src="<c:url value='/images/pdqm/common/menu/secNavi/h2_5.gif'/>" alt="소통ㆍ참여" /></h2>
			<ul id="leftMenu">
				<li id="menu5-1"><a href="<c:url value='/front/community/introCommunity.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_5_1.gif'/>" alt="협의회/커뮤니티" /></a>
					<ul class="depth3">
						<li id="menu5-1-1"><a href="<c:url value='/front/community/introCommunity.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_5_1_1.gif'/>" alt="협의회/커뮤니티 안내" /></a></li>
						<c:choose>
	  					<c:when test="${ loginVO.mberGrp == '2' || loginVO.mberType == 'A' }">
							<li id="menu5-1-2"><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000151'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_5_1_2.gif'/>" alt="커뮤니티 게시판" /></a></li>
							<li id="menu5-1-3"><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000152'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_5_1_3.gif'/>" alt="자료실" /></a></li>
						</c:when>
						<c:otherwise>
							<li id="menu5-1-2"><a href="##" onclick="alert('협의회 사용자만 가능합니다.')"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_5_1_2.gif'/>" alt="커뮤니티 게시판" /></a></li>
							<li id="menu5-1-3"><a href="##" onclick="alert('협의회 사용자만 가능합니다.')"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_5_1_3.gif'/>" alt="자료실" /></a></li>
						</c:otherwise>
	  					</c:choose>
					</ul>
				</li>
				<li id="menu5-2"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000171"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_5_2.gif'/>" alt="전문가컬럼" /></a></li>
				<li id="menu5-3"><a href="javascript:alert('서비스 준비중입니다.')"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_5_3.gif'/>" alt="묻고 답하기" /></a></li>
			</ul>
			<script type="text/javascript">initSubmenuByMenuId(5,<%=depth2%>,<%=depth3%>,0,'leftMenu');</script>
		</div>
		<div id="conArea">