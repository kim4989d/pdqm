<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : DiagnosisIdxPropertyRegist.jsp
 * @Description : 지표 특성 관리
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

<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
 function fn_insert(){
	if (fn_fomrValidate()){
		if(confirm("<spring:message code='common.save.msg'/>")){
			document.form.target  = "_self";
			document.form.action = "<c:url value='/support/diagnosis/insertDiagnosisIdxProperty.do' />";
		   	document.form.submit();
		}
	}

}

	function fn_fomrValidate(){
		var frm = document.form;
		
		if (frm.upperIdxId.value == ""){
			alert("지표대상을 선택 하십시오.");
			frm.upperIdxId.focus();
			return false;
		}

		if (frm.idxNm.value == ""){
			alert("특성명을  입력 하십시오.");
			frm.idxNm.focus();
			return false;
		}

		if (frm.wghtval.value == ""){
			alert("가중치를 입력 하십시오.");
			frm.wghtval.focus();
			return false;
		}
		
		if (frm.wghtval.value > 100){
			alert("가중치 입력값이 초과 됩습니다.");
			frm.wghtval.focus();
			return false;
		}

		if (frm.sortOrdr.value == ""){
			alert("조회순번를 입력 하십시오.");
			frm.sortOrdr.focus();
			return false;
		}

		if (frm.sortOrdr.value <= 0){
			alert("조회순번을 0보다 큰값을  입력 하십시오.");
			frm.sortOrdr.focus();
			return false;
		}
		
		var maxNum = Number(document.view_iframe.ifrForm.maxNum.value)+1;

		if(maxNum < frm.sortOrdr.value){
			alert("조회순번이 " +  maxNum + " 보다 클수 없습니다.");
			frm.sortOrdr.focus();
			return false;
		}
		
		return true;

	}
/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href =  "<c:url value='/support/diagnosis/selectDiagnosisIdxMngList.do'/>";
}

/* ********************************************************
 * onload
 ******************************************************** */
function fn_onload(){

	var varForm			= document.form;
	varForm.target 		= "view_iframe";
	varForm.action      = "<c:url value='/support/diagnosis/selectIdxPropertyList.do'/>";
	varForm.submit();

}

function fn_Property(){
	
	var varForm			= document.form;
	varForm.propertyIdxLevelId.value = varForm.upperIdxId.value;
	varForm.target 		= "view_iframe";
	varForm.action      = "<c:url value='/support/diagnosis/selectIdxPropertyList.do'/>";
	varForm.submit();
}
</script>
</head>
<body  onload="fn_onload()">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="diagnosisIdxMng"  name="form" method="post">
<input type="hidden" name="propertyIdxLevelId" />
<input type="hidden" name="idxLevel" value="2" />
<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 > 지표 및 특성 관리</div>
		<h2>특성 등록</h2>
	</div>

	<fieldset>
	<legend>지표특성등록/수정/삭제</legend>

	<table class="vblType1" summary="지표특성등록/수정/삭제 테이블입니다.">
		<colgroup>
			<col width="30%" />
			<col width="70%"/>
		</colgroup>
		<tr>
			<th><label for="sel_1">지표대상명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
			<td>
				<form:select path="upperIdxId" id="sel_1" cssClass="text" onchange="fn_Property()">
					<form:option value="" label="----- 선택 -----" />
					<form:options items ="${dgnssMasterList}" itemValue="idxId" itemLabel="idxNm"/>
				</form:select>
			</td>
		</tr>
	</table>

	<div class="ov_h">
		<div class="leftArea">
			<iframe src="" id="view_iframe" name="view_iframe" width="100%" height="330px" marginwidth="0" marginheight="0" frameborder="0" scrolling="no"></iframe>
		</div>

		<div class="rightArea">
			<table class="vblType1" summary="지표특성등록/수정/삭제 테이블입니다.">
				<colgroup>
					<col width="30%" />
					<col width="70%"/>
				</colgroup>
				<tr>
					<th><label for="write1">특성명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
					<td><form:input  path="idxNm" id="write1" class="text" cssStyle="width:300px"  maxlength="13" /></td>
				</tr>
				<tr>
					<th><label for="no9">가중치<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
					<td>
						<form:input  path="wghtval" id="no9" cssClass="text" onKeyDown="PVKeyCheckNumDot()" cssStyle="width:200px" maxlength="5" />
					</td>
				</tr>
				<tr>
					<th><label for="write2">사용상태<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
					<td>
					  <form:select path="idxSttusCode" id="write2" cssClass="text" >
						  <form:option value="U" label="사용중"/>
						  <form:option value="T" label="임시"/>
					  </form:select>
					</td>
				</tr>
				<tr>
					<th><label for="write3">조회순번<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
					<td><form:input path="sortOrdr" id="write3" cssClass="text" onblur="onlyNum(this)"  cssStyle="width:100px" maxlength="2"  /></td>
				</tr>
				<tr>
					<th><label for="write4">설명</label></th>
					<td>
						<form:textarea path="idxDc" id="write4" cssClass="text" rows="10" cols="35" style="width:330px;" />
					</td>
				</tr>
			</table>

			<!-- 버튼영역:등록화면 일 때 -->
			<div class="btnArea">
				<span class="button"><input type="button" value="등록" onclick="fn_insert(); return false;" /></span>
				<span class="button"><input type="button" value="목록" onclick="fn_list(); return false;" /></span>
			</div>
		</div>
	</div>
	</fieldset>
</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
