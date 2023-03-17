<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : DiagnosisLevelViewPointRegist.jsp
 * @Description : 진단 관점 관리
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
				document.form.action = "<c:url value='/support/diagnosis/insertDiagnosisLevelViewPoint.do' />";
			   	document.form.submit();

			}
		}


	}

	function fn_fomrValidate(){
		var frm = document.form;
		if (frm.upperDgnssTrgetId.value == ""){
			alert("진단대상을 선택 하십시오.");
			frm.upperDgnssTrgetId.focus();
			return false;
		}

		if (frm.dgnssTrgetNm.value == ""){
			alert("진단관점명을  입력 하십시오.");
			frm.dgnssTrgetNm.focus();
			return false;
		}
		
		if (frm.sortOrdr.value == ""){
			alert("조회순번을 입력 하십시오.");
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
	location.href =  "<c:url value='/support/diagnosis/selectDiagnosisLevelMngList.do'/>";
}

/* ********************************************************
 * onload
 ******************************************************** */
function fn_onload(){

	var varForm			= document.form;
	varForm.target 		= "view_iframe";
	varForm.action      = "<c:url value='/support/diagnosis/selectViewPointList.do'/>";
	varForm.submit();

}

function fn_ViewPoint(){
	
	var varForm			= document.form;
	varForm.viewDgnssTrgetId.value = varForm.upperDgnssTrgetId.value;
	varForm.target 		= "view_iframe";
	varForm.action      = "<c:url value='/support/diagnosis/selectViewPointList.do'/>";
	varForm.submit();
	
}
</script>

</head>

<body onload="fn_onload()">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="diagnosisMng"  name="form" method="post">
<input type="hidden" name="viewDgnssTrgetId" />
<input type="hidden" name="dgnssTrgetLevel" value="2" />
<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 진단대상관리</div>
		<h2>진단관점 등록</h2>
	</div>

	<fieldset>
	<legend>진단관점 등록</legend>
		<table class="vblType1" summary="진단대상 항목 테이블입니다.">
			<colgroup>
				<col width="30%" />
				<col width="70%"/>
			</colgroup>
			<tr>
				<th><label for="sel_1">진단대상명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:select path="upperDgnssTrgetId" id="sel_1" cssClass="text" onchange="fn_ViewPoint()">
					    <form:option value="" label="----- 선택 -----" />
						<form:options items ="${dgnssMasterList}" itemValue="dgnssTrgetId" itemLabel="dgnssTrgetNm"/>
					</form:select>
				</td>
			</tr>
		</table>

		<div class="ov_h tblSpace">
			<div class="leftArea">
				<iframe src="" id="view_iframe" name="view_iframe" width="100%" height="330px" marginwidth="0" marginheight="0" frameborder="0" scrolling="no"></iframe>
			</div>
			<div class="rightArea">
				<table class="vblType1" summary="진단관점 등록 테이블입니다.">
					<colgroup>
						<col width="30%" />
						<col width="70%" />
					</colgroup>
					<tr>
						<th><label for="write1">진단관점명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
						<td><form:input  path="dgnssTrgetNm" id="write1" class="text" cssStyle="width:200px" maxlength="13" /></td>
					</tr>
					<tr>
						<th><label for="write2">사용상태<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
						<td>
						  <form:select path="dgnssTrgetSttusCode" id="write2" cssClass="text" >
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
							<form:textarea path="dgnssTrgetDc" id="write4" cssClass="textarea" rows="10" cols="35" style="width:330px;" />
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
