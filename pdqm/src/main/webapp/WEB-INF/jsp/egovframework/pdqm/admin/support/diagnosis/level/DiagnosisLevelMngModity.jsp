<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : DiagnosisMngList.jsp
 * @Description : 진단대상관리
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

			document.form.action = "<c:url value='/support/diagnosis/updateDiagnosisLevelMng.do' />";
		   	document.form.submit();

		}
	}
}

function fn_fomrValidate(frm){
	var frm = document.form;
	if (frm.dgnssTrgetNm.value == ""){
		alert("진단대상을 입력 하십시오.");
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
	var maxNum = Number(frm.maxNum.value);

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

		document.form.action = "<c:url value='/support/diagnosis/deleteDiagnosisLevelMng.do' />";
	   	document.form.submit();

	}
}
/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href =  "<c:url value='/support/diagnosis/selectDiagnosisLevelMngList.do'/>";
}


</script>

</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<form:form commandName="diagnosisLevelMng"  name="form" method="post">
<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 진단대상관리</div>
		<h2>진단대상 수정</h2>
	</div>


	<div class="ov_h">
		<div class="leftArea">

			<table class="tblType1" summary="순번/진단대상 테이블입니다.">
				<colgroup>
					<col width="30%">
					<col width="70%">
				</colgroup>
				<thead>
				<tr>
				<th>순번</th>
				<th>진단대상</th>
				</tr>
				</thead>
				<tbody>
				<c:set var="maxNum" value="0"></c:set>
				<c:forEach items="${dgnssMasterList}" var="dgnssMasterList" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${dgnssMasterList.dgnssTrgetNm}</td>
					<input type="hidden" name="sortOrderNm_${status.count}" value="${status.count}" />
					<c:set var="maxNum" value="${status.count}"></c:set>
				</tr>
				</c:forEach>
				</tbody>
			</table>
			
		</div>
		<div class="rightArea">
			<fieldset>
			<legend>진단대상등록/수정/삭제</legend>
				<table class="vblType1" summary="진단대상등록/수정/삭제 테이블입니다.">
					<colgroup>
						<col width="30%" />
						<col width="auto"/>
					</colgroup>
					<tr>
						<th><label for="write1">진단대상명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
						<td><form:input  path="dgnssTrgetNm"   cssStyle="width:200px"   maxlength="13" />
						<form:hidden path="dgnssTrgetId"  />
						</td>
					</tr>
					<tr>
						<th><label for="write2">사용상태<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
						<td>
					      <form:select path="dgnssTrgetSttusCode" cssClass="text" >
						      <form:option value="U" label="사용중"/>
						      <form:option value="T" label="임시"/>
					      </form:select>
						</td>
					</tr>
					<tr>
						<th><label for="write3">조회순번<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
						<td>
							<form:input path="sortOrdr" cssClass="text" onblur="onlyNum(this)" cssStyle="width:100px" maxlength="2"  />
						</td>
					</tr>
					<tr>
						<th><label for="write4">설명</label></th>
						<td>
							<form:textarea path="dgnssTrgetDc" cssClass="textarea" rows="10" cols="35"  />
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
	<input type="hidden" name="oldSortOrdr" value="${diagnosisLevelMng.sortOrdr}" />	
	<input type="hidden" name="orderUpChk" />
	<input type="hidden" name="maxNum" value="${maxNum}" />	
	<input type="hidden" name="dgnssTrgetLevel" value="1" />
</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
