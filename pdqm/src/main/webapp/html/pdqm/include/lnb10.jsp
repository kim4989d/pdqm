<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String sub_menu = request.getRequestURI().toString();
	String values[]=sub_menu.split("/");

	String smenu = values[values.length-1];
	String depth2 = "";
	if(smenu.equals("MberLoginUsr.jsp")){
		depth2 = "1";
	}
	else if(smenu.equals("EgovIdSearch.jsp")){
		depth2 = "2";
	}else {
		depth2 = "2";
	}
%>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapT.png'/>" class="png24" alt="" /></div>
	<div id="conWrap">
		<div id="lnbArea">
			<!-- 로그인-->
			<h2><img src="<c:url value='/images/pdqm/common/menu/secNavi/h2_10.gif'/>" alt="로그인" /></h2>
			<ul id="leftMenu">
				<li id="menu10-1"><a href="${pageContext.request.contextPath}/front/main/egovLoginUsr.do"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_10_1.gif'/>" alt="로그인" /></a></li>
				<li id="menu10-2"><a href="${pageContext.request.contextPath}/uat/uia/egovIdSearch.do"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_10_2.gif'/>" alt="아이디/비밀번호 찾기" /></a></li>
			</ul>
			<script type="text/javascript">initSubmenuByMenuId(10,<%=depth2%>,0,0,'leftMenu');</script>
		</div>
		<div id="conArea">