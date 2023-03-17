<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : SelfDiagnosisList.jsp
 * @Description : 관리수준 자가진단 관리
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
<script type="text/javaScript" language="javascript" defer="defer">
<!--

/* ********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function linkPage(pageNo){
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/support/diagnosis/level/selectSelfDiagnosisList.do'/>";
   	document.listForm.submit();
}


/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(levelDgnssId){
	var varForm				 	= document.listForm;
	varForm.levelDgnssId.value  = levelDgnssId;
	varForm.action           = "<c:url value='/support/diagnosis/level/updateSelfDiagnosisView.do'/>";

	varForm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action =  "<c:url value='/support/diagnosis/level/selectSelfDiagnosisList.do'/>";
   	document.listForm.submit();
}

/* ********************************************************
 * 등록 처리 함수 
 ******************************************************** */
function fn_Regist(){
	location.href = "<c:url value='/support/diagnosis/level/insertSelfDiagnosisView.do' />";
}

/* ********************************************************
 * 구성복사
 ******************************************************** */
function fn_copy(levelDgnssId){
	var varForm				 	= document.listForm;
	varForm.levelDgnssId.value  = levelDgnssId;
	varForm.action           = "<c:url value='/support/diagnosis/level/compositionCopyView.do'/>";

	varForm.submit();
}
/* ********************************************************
 * 구성
 ******************************************************** */
function fn_composition(levelDgnssId){
	var varForm				 	= document.listForm;
	varForm.levelDgnssId.value  = levelDgnssId;
	varForm.action           = "<c:url value='/support/diagnosis/level/selectCompositionList.do'/>";

	varForm.submit();
}
	
-->
</script>
</head>
<body>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>

<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
<form:form commandName="searchVO" name="listForm"  method="post">

	<!-- hidden  -->
	<input type="hidden" name="levelDgnssId" />
	
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
	<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/callCalPopup.do'/>" />
	
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 자가진단 관리</div>
		<h2>자가진단 관리</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="30%"/>
				<col width="20%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search1">게시구분</label></th>
				<td>

                   <form:select path="searchNtceTyCode" cssClass="text">
                   	<form:option value="" label="전체" />
                   	<form:option value="S20" label="진행중" />
                   	<form:option value="S30" label="게시예정" />
                   	<form:option value="S40" label="미게시" />
                   	<form:option value="S50" label="완료" />
                   </form:select>
				</td>
				<th><label for="search2">자가진단명</label></th>
				<td>
					<form:input path="searchLevelDgnssNm" cssClass="text" cssStyle="width:100px" maxlength="50" />
				</td>
			</tr>
			<tr>
				<th><label for="search3">게시 시작일시</label></th>
				<td colspan="3">
					<form:hidden path="searchBeginDt" cssClass="text" cssStyle="width:100px" maxlength="50" />
					<fmt:parseDate value="${searchVO.searchBeginDt}" var="dateFmt" pattern="yyyymmdd"/>
					
					<input  name="ntceBeginDtView" cass="text" value="<fmt:formatDate value="${dateFmt}" pattern="yyyy-mm-dd"/>" style="width:100px"   maxlength="50" readOnly/>
					<img src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif' />"
			      		onClick="javascript:fn_egov_Calendar(document.listForm, document.listForm.searchBeginDt, document.listForm.ntceBeginDtView);"
			      		style="cursor:pointer"﻿
				    	width="18" height="20" alt="calendar">
					 ~
					<form:hidden path="searchEndDt" cssClass="text" cssStyle="width:100px" maxlength="50" />
					<fmt:parseDate value="${searchVO.searchEndDt}" var="dateFmt" pattern="yyyymmdd"/>
					
					
					<input  name="ntceEndDtView" cass="text" value="<fmt:formatDate value="${dateFmt}" pattern="yyyy-mm-dd"/>"  style="width:100px"   maxlength="50" readOnly/>
					<img src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif' />"
			      		onClick="javascript:fn_egov_Calendar(document.listForm, document.listForm.searchEndDt, document.listForm.ntceEndDtView);"
			      		style="cursor:pointer"﻿
				    	width="18" height="20" alt="calendar">
				</td>
			</tr>
		</table>
		<div class="btnArea">
			<span class="button"><input type="button" value="조회" onclick="fn_search(); return false;" /></span>
		</div>
	</fieldset>
	<!-- search -->

	<!-- tbl Start -->
	<table class="tblType1 tblSpace" summary="관리수준 자가진단 관리 테이블입니다.">
		<colgroup>
			<col width="8%" />
			<col width="17%" />
			<col width="12%" />
			<col width="12%" />
			<col width="12%" />
			<col width="10%" />
			<col width="10%" />
			<col width="auto"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">자가진단명</th>
				<th scope="col">게시구분</th>
				<th scope="col">게시일자</th>
				<th scope="col">종료일자</th>
				<th scope="col">문항수</th>
				<th scope="col">응답자수</th>
				<th scope="col">구성</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${resultList}" var="resultList" varStatus="status">
				<tr>
					<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
					<td class="subject"><a href="javascript:fnDetail('${resultList.levelDgnssId}');">${resultList.levelDgnssNm }</a></td>
					<td>${resultList.ntceTyCode2Nm }</td>
					<td>
		              <fmt:parseDate value="${resultList.ntceBeginDt}" var="dateFmt" pattern="yyyymmdd"/>
		              <fmt:formatDate value="${dateFmt}" pattern="yyyy-mm-dd"/>					
					</td>
					<td>
		              <fmt:parseDate value="${resultList.ntceEndDt}" var="dateFmt" pattern="yyyymmdd"/>
		              <fmt:formatDate value="${dateFmt}" pattern="yyyy-mm-dd"/>						
					</td>
					<td>${resultList.qesitmCo}</td>
					<td>${resultList.resultCo}</td>
					<td>
						<span class="button small"><input type="button" value="구성" onclick="fn_composition('${resultList.levelDgnssId}'); return false;" /></span>
						<span class="button small"><input type="button" value="구성복사" onclick="fn_copy('${resultList.levelDgnssId}'); return false;" /></span>
				
					</td>
				</tr>

			</c:forEach>
			

		</tbody>
	</table>
	<!-- //tbl End -->

	<!-- paging : Start -->
	<c:if test="${!empty searchVO.pageIndex }">		
		<div class="paging">
        <ui:pagination paginationInfo = "${paginationInfo}"
            type="image"
            jsFunction="linkPage"
            />
		</div>
	</c:if>
	
	<!-- paging : End -->

	<!-- 버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="등록" onclick="fn_Regist(); return false;" /></span>
	</div>

</form:form>
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
