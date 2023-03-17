<%pageContext.setAttribute("crlf", "\r\n"); %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String sub_menu = request.getRequestURI().toString();
	String values[]=sub_menu.split("/");
	String smenu = values[values.length-1];
	String depth2 = "";
	//out.println(smenu);
	if(smenu.equals("outline.jsp")){
		depth2 = "1";
	}
	else if(smenu.equals("GuideLine.jsp")){
		depth2 = "2";
	}
	else if(smenu.equals("introStandard.jsp")){
		depth2 = "3";
	}
%>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapT.png'/>" class="png24" alt="" /></div>
	<div id="conWrap">
		<div id="lnbArea">
			<!-- 공공정보 품질관리-->
			<h2><img src="<c:url value='/images/pdqm/common/menu/secNavi/h2_1.gif'/>" alt="공공정보 품질관리" /></h2>
			<ul id="leftMenu">
				<li id="menu1-1"><a href="<c:url value='/front/summary/outline.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_1_1.gif'/>" alt="공공정보품질관리 개요" /></a></li>
				<li id="menu1-2"><a href="<c:url value='/front/summary/GuideLine.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_1_2.gif'/>" alt="법ㆍ지침ㆍ매뉴얼" /></a></li>
				<li id="menu1-3"><a href="<c:url value='/front/summary/introStandard.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_1_3.gif'/>" alt="품질관리표준" /></a></li>
			</ul>
			<script type="text/javascript" charset="utf-8">initSubmenuByMenuId(1,<%=depth2%>,0,0,'leftMenu');</script>
		</div>
		<div id="conArea">