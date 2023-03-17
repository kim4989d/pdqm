<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String sub_menu = request.getRequestURI().toString();
	String values[]=sub_menu.split("/");
	String smenu = values[values.length-1];
	//out.println(sub_param);
	//out.println(smenu);
	String depth2 = "";
	if(smenu.equals("MberSelectUpdtView.jsp")){
		depth2 = "1";
	}
	else if(smenu.equals("MberQuitView.jsp")){
		depth2 = "2";
	}
%>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapT.png'/>" class="png24" alt="" /></div>
	<div id="conWrap">
		<div id="lnbArea">
			<!-- 마이페이지-->
			<h2><img src="<c:url value='/images/pdqm/common/menu/secNavi/h2_11.gif'/>" alt="개인정보수정" /></h2>
			<ul id="leftMenu">
				<li id="menu11-1"><a href="${pageContext.request.contextPath}/uss/umt/MberSelectUpdtView.do?selectedId=<c:out value="${loginVO.uniqId}"/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_11_1.gif'/>" alt="개인정보수정" /></a></li>
				<li id="menu11-2"><a href="${pageContext.request.contextPath}/uss/umt/MberQuitView.do"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_11_2.gif'/>" alt="회원탈퇴" /></a></li>
			</ul>
			<script type="text/javascript">initSubmenuByMenuId(11,<%=depth2%>,0,0,'leftMenu');</script>
		</div>
		<div id="conArea">