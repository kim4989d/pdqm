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
	if(smenu.equals("NoticeList.jsp") || smenu.equals("NoticeInqire.jsp")){
		if (sub_param.equals("BBSMSTR_000000000121")) {
			depth2 = "1";
		}
	}
%>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapT.png'/>" class="png24" alt="" /></div>
	<div id="conWrap">
		<div id="lnbArea">
			<!-- 공지사항-->
			<h2><img src="<c:url value='/images/pdqm/common/menu/secNavi/h2_7.gif'/>" alt="공지사항" /></h2>
			<ul id="leftMenu">
				<li id="menu7-1"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000121"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_7_1.gif'/>" alt="공지사항" /></a></li>
			</ul>
			<script type="text/javascript">initSubmenuByMenuId(7,<%=depth2%>,0,0,'leftMenu');</script>
		</div>
		<div id="conArea">