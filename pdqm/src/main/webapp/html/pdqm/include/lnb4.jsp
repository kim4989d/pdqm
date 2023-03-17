<%@page import="egovframework.com.utl.fcc.service.EgovStringUtil"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String sub_menu = request.getRequestURI().toString();
	String sub_param = "";
	sub_param = EgovStringUtil.isNullToString(request.getParameter("bbsId"));

	String values[]=sub_menu.split("/");
	String smenu = values[values.length-1];
	String depth2 = "";
	String depth3 = "1";
	//out.println(sub_param);
	//out.println(smenu);
	if(smenu.equals("introEducation.jsp")){
		depth2 = "1";
	}else if(smenu.equals("education4.jsp")){
		depth2 = "2";
		
	}else if(smenu.equals("education4.jsp")){
		depth2 = "2";
		depth3 = "1";

	}else if (smenu.equals("VideoNoticeList.jsp")){
		depth2 = "2";

		}if(sub_param.equals("BBSMSTR_000000000221")) {
			depth3 = "2";
		
	}else if (smenu.equals("NoticeList.jsp")){
		depth2 = "2";

		}if(sub_param.equals("BBSMSTR_000000000143")) {
			depth3 = "3";
			
	}
%>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapT.png'/>" class="png24" alt="" /></div>
	<div id="conWrap">
		<div id="lnbArea">
			<!-- 품질관리교육-->
			<h2><img src="<c:url value='/images/pdqm/common/menu/secNavi/h2_4.gif'/>" alt="품질관리교육" /></h2>
			<ul id="leftMenu">
				<li id="menu4-1"><a href="<c:url value='/front/education/introEducation.do'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_4_1.gif'/>" alt="교육안내" /></a></li>
				<li id="menu4-2"><a href="<c:url value='/html/pdqm/front/education/education4.jsp'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_4_2.gif'/>" alt="교육자료" /></a>
					<ul class="depth3">
						<li id="menu4-2-1"><a href="<c:url value='/html/pdqm/front/education/education4.jsp'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_4_2_1.gif'/>" alt="교육동영상" /></a></li>
						<li id="menu4-2-2"><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000221'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_4_2_2.gif'/>" alt="일반 영상" /></a></li>
						<li id="menu4-2-3"><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000143'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h4_4_2_3.gif'/>" alt="교육 자료실" /></a></li>
					</ul>
				</li>
				<!-- <li id="menu4-3"><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000143'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_4_3.gif'/>" alt="교육 동영상" /></a></li>
				<li id="menu4-5"><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000221'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_4_5.gif'/>" alt="동영상자료" /></a></li>
				<li id="menu4-4"><a href="<c:url value='/html/pdqm/front/education/education4.jsp'/>"><img src="<c:url value='/images/pdqm/common/menu/secNavi/h3_4_4.gif'/>" alt="교육 동영상" /></a></li> -->
			</ul>
			<script type="text/javascript">initSubmenuByMenuId(4,<%=depth2%>,<%=depth3%>,0,'leftMenu');</script>
		</div>
		<div id="conArea">