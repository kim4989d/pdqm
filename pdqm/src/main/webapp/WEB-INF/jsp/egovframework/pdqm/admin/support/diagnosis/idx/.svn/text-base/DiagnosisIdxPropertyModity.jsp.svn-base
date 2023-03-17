<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : DiagnosisIdxPropertyModity.jsp
 * @Description : 지표특성 관리
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
 function fn_update(){
		if (fn_fomrValidate()){
			if(confirm("<spring:message code='common.update.msg'/>")){
				document.form.target  = "_self";
				document.form.action = "<c:url value='/support/diagnosis/updateDiagnosisIdxProperty.do' />";
			   	document.form.submit();

			}
		}

	}

	function fn_fomrValidate(frm){
		var frm = document.form;
		
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
			alert("조회순번을 입력 하십시오.");
			frm.sortOrdr.focus();
			return false;
		}

		if (frm.sortOrdr.value <= 0){
			alert("조회순번을 0보다 큰값을  입력 하십시오.");
			frm.sortOrdr.focus();
			return false;
		}
		
		var maxNum = Number(document.view_iframe.ifrForm.maxNum.value);

		if(maxNum < frm.sortOrdr.value){
			alert("조회순번이 " +  maxNum + " 보다 클수 없습니다.");
			frm.sortOrdr.focus();
			return false;
		}

		if (frm.sortOrdr.value != frm.oldSortOrdr.value){
			frm.orderUpChk.value = 'Y';
		}
		
		return true;

	}

	function fn_delete(){
		if(confirm("<spring:message code='common.delete.msg'/>")){
			document.form.target  = "_self";
			document.form.action = "<c:url value='/support/diagnosis/deleteDiagnosisIdxProperty.do' />";
		   	document.form.submit();

		}
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

</script>
</head>
<body onload="fn_onload()">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="diagnosisIdxMng"  name="form" method="post">
<input type="hidden" name="propertyIdxLevelId" value="${diagnosisIdxMng.upperIdxId }" />
<input type="hidden" name="idxLevel" value="2" />
<input type="hidden" name="oldSortOrdr" value="${diagnosisIdxMng.sortOrdr}" />	
<input type="hidden" name="orderUpChk" />

<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 > 지표 및 특성 관리</div>
		<h2>특성 수정</h2>
	</div>

	<table class="vblType1" summary="진단관점 수정/삭제 테이블입니다.">
		<colgroup>
			<col width="30%" />
			<col width="70%"/>
		</colgroup>
		<tr>
			<th>지표명</th>
			<td><form:input  path="upperIdxNm" cssClass="readonly" cssStyle="width:200px" Disabled ="true " /></td>
		</tr>
	</table>

	<div class="ov_h">
		<div class="leftArea">
			<iframe src="" id="view_iframe" name="view_iframe" width="100%" height="330px" marginwidth="0" marginheight="0" frameborder="0" scrolling="no"></iframe>
		</div>


		<div class="rightArea">
			<fieldset>
				<legend>특성 수정/삭제</legend>
				<table class="vblType1" summary="진단관점 수정/삭제 테이블입니다.">
					<colgroup>
						<col width="30%" />
						<col width="70%" />
					</colgroup>
					<tr>
						<th><label for="write1">특성명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
						<td>
							<form:input  path="idxNm" id="write1" cssClass="text" cssStyle="width:300px" maxlength="13" />
      						<form:hidden path="idxId"  />
						</td>
					</tr>
					<tr>
						<th><label for="no9">가중치<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
						<td>
							<form:input  path="wghtval" id="no9" cssClass="text" onKeyDown="PVKeyCheckNumDot()" cssStyle="width:200px"   maxlength="5" />
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
							<form:textarea path="idxDc" id="write4" cssClass="textarea" rows="10" cols="35" style="width:330px;"  />
						</td>
					</tr>
				</table>

				<!-- 버튼영역:수정화면 일 때 -->
				<div class="btnArea">
					<span class="button"><input type="button" value="삭제" onclick="fn_delete(); return false;" /></span>
					<span class="button"><input type="button" value="수정" onclick="fn_update(); return false;" /></span>
					<span class="button"><input type="button" value="목록"  onclick="fn_list(); return false;"/></span>
				</div>
			</fieldset>
		</div>
	</div>
</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
