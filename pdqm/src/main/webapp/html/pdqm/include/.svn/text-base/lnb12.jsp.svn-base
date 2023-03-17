<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String sub_menu = request.getRequestURI().toString();
	String values[]=sub_menu.split("/");
	String smenu = values[values.length-1];
	String depth2 = "";
	if(smenu.equals("footer1.jsp")){
		depth2 = "1";
	}
	else if(smenu.equals("footer2.jsp")){
		depth2 = "2";
	}
	else if(smenu.equals("sitemap.jsp")){
		depth2 = "3";
	}
%>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapT.png'/>" class="png24" alt="" /></div>
	<div id="conWrap">
		<div id="lnbArea">
			<!-- 홈페이지-->
			<h2><img src="<c:url value='/images/pdqm/common/menu/secNavi/h2_12.gif'/>" alt="홈페이지" /></h2>
			<ul id="leftMenu">
				<li id="menu12-1"><a href="<c:url value='/html/pdqm/front/info/footer1.jsp'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_12_1.gif'/>" alt="이용약관안내" /></a></li>
				<li id="menu12-2"><a href="<c:url value='/html/pdqm/front/info/footer2.jsp'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_12_2.gif'/>" alt="개인정보보호정책" /></a></li>
				<li id="menu12-3"><a href="<c:url value='/front/info/sitemap.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_12_3.gif'/>" alt="사이트맵" /></a></li>
			</ul>
			<script type="text/javascript">initSubmenuByMenuId(12,<%=depth2%>,0,0,'leftMenu');</script>
		</div>
		<div id="conArea">