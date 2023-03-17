<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : SelfDiagnosisRegist.jsp
 * @Description : 관리수준 자가진단 등록
 * @Modification Information
 * @
 * @  수정일                    수정자                수정내용
 * @ ---------     --------    ---------------------------
 * @ 2011.11.09    김정훈         최초 생성
 *
 *  @author 김정훈
 *  @since 2011.11.09
 *  @version 1.0
 *  @see
 *
 */
%>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>

<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_insert(){
	if (fn_fomrValidate()){
		if(confirm("<spring:message code='common.save.msg'/>")){
			document.form.action = "<c:url value='/support/diagnosis/level/insertSelfDiagnosis.do' />";
		   	document.form.submit();

		}
	}
}

function fn_fomrValidate(){
	var frm = document.form;
	if (frm.levelDgnssNm.value == ""){
		alert("자기진단명을 입력 하십시오.");
		document.form.levelDgnssNm.focus();
		return false;
	}

	if (frm.ntceTyCode.value == "N20"){
		if (frm.ntceBeginDt.value == "" ){
			alert("게시일을  선택 하십시오.");
			return false;
		}
	}

	if(frm.ntceBeginDt.value != ""){
		if(frm.ntceBeginDt.value > frm.ntceEndDt.value){
			alert("게시기간 종료일이 시작일보다 빠릅니다.");
			return false;
		}
	}
	return true;

}

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href =  "<c:url value='/support/diagnosis/level/selectSelfDiagnosisList.do'/>";
}


</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<form:form commandName="diagnosisLevelSelf"  name="form" method="post">
<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/callCalPopup.do'/>" />
<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 자가진단 관리</div>
		<h2>자가진단 등록</h2>	

	</div>

	<fieldset>
	<legend>관리수준 자가진단 등록</legend>
		<table class="vblType1" summary="관리수준 자가진단 등록 테이블입니다.">
			<colgroup>
				<col width="30%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="write1">자가진단명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td><form:input  path="levelDgnssNm" cssClass="text" cssStyle="width:200px"   maxlength="50" />
				</td>
			</tr>
			<tr>
				<th><label for="write2">게시구분</label></th>
				<td>
			      <form:select path="ntceTyCode" cssClass="text" >
				      <form:option value="N10" label="미게시"/>
				      <form:option value="N20" label="게시"/>
			      </form:select>
				</td>
			</tr>
			<tr>
				<th><label for="write3">게시 시작일시</label></th>
				<td>
					<form:hidden  path="ntceBeginDt" cssClass="text" cssStyle="width:100px"   maxlength="50" />
					<input  name="ntceBeginDtView" cass="text" style="width:100px"   maxlength="50" readOnly/>
					<img src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif' />"
			      		onClick="javascript:fn_egov_Calendar(document.form, document.form.ntceBeginDt, document.form.ntceBeginDtView);"
			      		style="cursor:pointer"﻿
				    	width="18" height="20" alt="calendar">
				</td>
			</tr>
			<tr>
				<th><label for="write4">게시 종료일시</label></th>
				<td>
					<form:hidden  path="ntceEndDt" cssClass="text" cssStyle="width:100px"   maxlength="50" />
					<input  name="ntceEndDtView" cass="text" style="width:100px"   maxlength="50" readOnly/>
					<img src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif' />"
			      	onClick="javascript:fn_egov_Calendar(document.form, document.form.ntceEndDt, document.form.ntceEndDtView);"
			      	style="cursor:pointer"
				    width="18" height="20" alt="calendar">
				</td>
			</tr>
		</table>

		<!-- 버튼영역:등록화면 일 때 -->
		<div class="btnArea tblSpace">
			<span class="button"><input type="button" value="등록" onclick="fn_insert(); return false;" /></span>
			<span class="button"><input type="button" value="목록" onclick="fn_list(); return false;" /></span>

		</div>
	</fieldset>

</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
