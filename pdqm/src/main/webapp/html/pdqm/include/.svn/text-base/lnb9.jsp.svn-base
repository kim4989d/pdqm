<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String sub_menu = request.getRequestURI().toString();
	String values[]=sub_menu.split("/");
	String smenu = values[values.length-1];
	String depth2 = "";
	//out.println(smenu);
	if(smenu.equals("MberTypeView.jsp")){
		depth2 = "1";
	} else if(smenu.equals("MberCertification.jsp")){
		depth2 = "2";
	} else if(smenu.equals("MberAgreementView.jsp")){
		depth2 = "3";
	} else if(smenu.equals("MberInsertView.jsp") || smenu.equals("MberInsertResult.jsp")){
		depth2 = "4";
	}

	//out.println("==>"+depth2);
%>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapT.png'/>" class="png24" alt="" /></div>
	<div id="conWrap">
		<div id="lnbArea">
			<!-- 회원가입-->
			<h2><img src="<c:url value='/images/pdqm/common/menu/secNavi/h2_9.gif'/>" alt="회원가입" /></h2>
			<ul id="leftMenu">
<%-- 				<li id="menu9-1"><a href="${pageContext.request.contextPath}/uss/umt/MberTypeView.do"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_9_1.gif'/>" alt="회원구분" /></a></li>
				<li id="menu9-2"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_9_2.gif'/>" alt="본인인증" /></li>
				<li id="menu9-3"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_9_3.gif'/>" alt="약관동의" /></li>
				<li id="menu9-4"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_9_4.gif'/>" alt="회원정보등록" /></li>
 --%>			</ul>
			<script type="text/javascript">initSubmenuByMenuId(9,<%=depth2%>,0,0,'leftMenu');</script>
		</div>
		<div id="conArea">