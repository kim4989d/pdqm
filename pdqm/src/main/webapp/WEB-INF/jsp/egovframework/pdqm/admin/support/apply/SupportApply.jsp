<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : SupportApply.jsp
 * @Description : 사업신청등록 
 * @Modification Information
 * @
 * @  수정일      		수정자            	수정내용
 * @ -------      --------    ---------------------------
 * @ 2011.12.02    신은영                최초생성
 *
 *  @author
 *  @since 2011.12.02
 *  @version 1.0
 *  @see
 *
 */
%>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<script type="text/javaScript" language="javascript">


function fn_insert(){
	
	var startDt = document.Form.startDt.value;
	var endDt = document.Form.endDt.value;
	
		if(document.Form.startDt.value==""){
			alert("신청시작일을 입력하세요.");
			return false;
		
		}
		if(document.Form.endDt.value==""){
			alert("신청종료일을 입력하세요.");
			return false;
		}
		
		if(startDt > endDt){
			alert("잘못 선택하였습니다.");
			return false;
		}
		
		if (document.Form.dmandExaminNm.value == ""){
			alert("수요조사명을 입력하세요.");
			document.Form.dmandExaminNm.focus();
			return false;
		}
		
		if(confirm("<spring:message code='common.save.msg'/>")){
			document.Form.action = "<c:url value='/support/apply/SupportApplyInsert.do' />";
		   	document.Form.submit();
	
		}
	}

</script>
</head>

<body>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>

<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
<form:form commandName="ApplyMngVO" name="Form"  method="post">
<input type="hidden" name="cal_url" 		value="<c:url value='/sym/cal/callCalPopup.do'/>" />
	<!-- hidden  -->

	<input type="hidden" name="levelDgnssId" />
<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">지원사업 수요조사 관리 > 사업신청기간관리</div>
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
				<th><label for="search3">신청기간여부<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<input  name="startDt" type="hidden"  style="width:100px" onchange="javascript:checkRqDate(this);"  
					value="${resultVo.startDt}" maxlength="50" readOnly/>
					<input name="startDtView" type="text" size="10"  readOnly 
						<fmt:parseDate value="${resultVo.startDt}" var="startDtView" pattern="yyyymmdd" />
								value="<fmt:formatDate value='${startDtView}' pattern='yyyy-mm-dd' />" 
						onclick="javascript:fn_egov_Calendar(document.Form, document.Form.startDt, document.Form.startDtView);" />
					<a href="#" onclick="javascript:fn_egov_Calendar(document.Form, document.Form.startDt, document.Form.startDtView);"return false;">
					<img src="<c:url value='/images/egovframework/pdqm/admin/calendar.gif' />" alt="달력보기"/></a>~
					
					<input  name="endDt" type="hidden" style="width:100px"   
					value="${resultVo.endDt}" maxlength="50" readOnly/>
					<input name="endDtView" type="text" size="10"  readOnly  
						<fmt:parseDate value="${resultVo.endDt}" var="endDtView" pattern="yyyymmdd" />
								value="<fmt:formatDate value='${endDtView}' pattern='yyyy-mm-dd' />" 
						onClick="javascript:fn_egov_Calendar(document.Form, document.Form.endDt, document.Form.endDtView);" alt="calendar">
					<a href="#" onclick="javascript:fn_egov_Calendar(document.Form, document.Form.endDt, document.Form.endDtView);"return false;">
					<img src="<c:url value='/images/egovframework/pdqm/admin/calendar.gif' />" alt="달력보기"/></a>
				</td>
			</tr>
			<tr>
				<th><label for="search3">수요조사명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td><input type="text" name="dmandExaminNm" value="${resultVo.dmandExaminNm }" style="width:250px" maxlength="30" /></td>
			</tr>
			
		</table>
	</fieldset>
	
	
	<!-- 버튼영역 -->
	<div class="btnArea tblSpace">
		<span class="button"><input type="button" value="등록" onclick="fn_insert(); return false;" /></span>
	</div>
	<!--// 버튼영역 -->

</form:form>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
