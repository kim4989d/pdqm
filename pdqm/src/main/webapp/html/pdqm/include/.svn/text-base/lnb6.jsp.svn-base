<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String sub_menu = request.getRequestURI().toString();
	String values[]=sub_menu.split("/");
	String smenu = values[values.length-1];
	String depth2 = "";
	//out.println(sub_param);
	//out.println(smenu);
	if(smenu.equals("intro.jsp")){
		depth2 = "1";
	}
	else if(smenu.equals("mainBusiness.jsp")){
		depth2 = "2";
	}
	else if(smenu.equals("DetailNoticeList.jsp")){
		depth2 = "3";
	}
%>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapT.png'/>" class="png24" alt="" /></div>
	<div id="conWrap">
		<div id="lnbArea">
			<!-- 센터소개-->
			<h2><img src="<c:url value='/images/pdqm/common/menu/secNavi/h2_6.gif'/>" alt="센터소개" /></h2>
			<ul id="leftMenu">
				<li id="menu6-1"><a href="<c:url value='/front/intro/intro.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_6_1.gif'/>" alt="소개" /></a></li>
				<li id="menu6-2"><a href="<c:url value='/front/intro/mainBusiness.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_6_2.gif'/>" alt="주요사업" /></a></li>
				<li id="menu6-3"><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000191'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_6_3.gif'/>" alt="보도자료" /></a></li>
				<li id="menu6-4"><a href="##"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_6_4.gif'/>" alt="오시는길" /></a></li>
			</ul>
			<script type="text/javascript">initSubmenuByMenuId(6,<%=depth2%>,0,0,'leftMenu');</script>
		</div>
		<div id="conArea">