<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : 3.jsp
  * @Description : 사업신청기간관리
  *
  */
%>
</head>

<body>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>

<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
<form:form commandName="searchVO" name="form"  method="post">
	<!-- hidden  -->
	<input type="hidden" name="levelDgnssId" />
<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">사업신청기간관리</div>
		<h2>사업신청기간관리</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search3">신청기간여부</label></th>
				<td colspan="3">

					<input  name="startDt" cass="text"  style="width:100px"   maxlength="50" readOnly/>
					<img src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif' />"
			      		style="cursor:pointer"﻿
				    	width="18" height="20" alt="calendar">
				    					
					 ~
					<input  name="endDt" cass="text" style="width:100px"   maxlength="50" readOnly/>
					<img src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif' />"
			      		style="cursor:pointer"﻿
				    	width="18" height="20" alt="calendar">
				</td>
			</tr>
		</table>
	</fieldset>
	
	
	<!-- 버튼영역 -->
	<div class="btnArea tblSpace">
		<span class="button"><input type="button" value="등록" /></span>
	</div>
	<!--// 버튼영역 -->

</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
