<%@page import="egovframework.com.utl.fcc.service.EgovStringUtil"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String sub_menu = request.getRequestURI().toString();
	String sub_param = "";
	String values[]=sub_menu.split("/");
	String smenu = values[values.length-1];
	String depth2 = "1";
	String depth3 = "1";
	sub_param = EgovStringUtil.isNullToString(request.getParameter("searchNttClCode"));
	//out.println(smenu);
	//out.println(sub_param);	
	if(smenu.equals("DetailNoticeList.jsp")){
		depth2 = "1";
		if(sub_param.equals("NTTCL01")) {
			depth3 = "1";	
		} else if(sub_param.equals("NTTCL02")) {
			depth3 = "2";
		} else if(sub_param.equals("NTTCL03")) {
			depth3 = "3";
		}
	} else if(smenu.equals("NoticeListWithContent.jsp")){
		depth2 = "2";
/* 	} else if(smenu.equals("NoticeList.jsp")){
		depth2 = "3"; */
	} else if(smenu.equals("NoticeList.jsp")){
		depth2 = "4";
	} else if(smenu.equals("Faq.jsp")){
		depth2 = "5";
	}
%>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapT.png'/>" class="png24" alt="" /></div>
	<div id="conWrap">
		<div id="lnbArea">
			<!-- 지식마당-->
			<h2><img src="<c:url value='/images/pdqm/common/menu/secNavi/h2_2.gif'/>" alt="지식마당" /></h2>
			<ul id="leftMenu">
				<li id="menu2-1"><a href="##"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_2_1.gif'/>" alt="뉴스와 동향" /></a>
					<ul class="depth3">
						<li id="menu2-1-1">
							<a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000181&searchNttClCode=NTTCL01">
							<img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_2_1_1.gif'/>" alt="품질관련 뉴스" />
							</a>
						</li>
						<li id="menu2-1-2">
							<a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000181&searchNttClCode=NTTCL02">
							<img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_2_1_2.gif'/>" alt="시장ㆍ기술ㆍ제품 동향" />
							</a>
						</li>
						<li id="menu2-1-3">
							<a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000181&searchNttClCode=NTTCL03">
							<img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_2_1_3.gif'/>" alt="전문컬럼ㆍ기고문" />
							</a>
						</li>
					</ul>
				</li>
				<li id="menu2-2"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000161"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_2_2.gif'/>" alt="우수사례공유" /></a></li>
				<!-- <li id="menu2-3"><a href="<c:url value='/html/pdqm/front/knowledge/knowledge3.jsp'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_2_3.gif'/>" alt="품질관리 포럼ㆍ협회" /></a></li> -->
				<li id="menu2-4"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000141"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_2_3.gif'/>" alt="지식자료실" /></a></li>
				<!-- <li id="menu2-5"><a href="${pageContext.request.contextPath}/uss/olh/faq/Faq.do?faqCategory=0"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_2_5.gif'/>" alt="자주하는 질문" /></a></li> -->
			</ul>
			<script type="text/javascript">initSubmenuByMenuId(2,<%=depth2%>,<%=depth3%>,0,'leftMenu');</script>
		</div>
		<div id="conArea">