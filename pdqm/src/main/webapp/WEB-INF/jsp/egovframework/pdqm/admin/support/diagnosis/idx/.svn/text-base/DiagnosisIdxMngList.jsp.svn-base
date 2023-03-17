<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : DiagnosisIdxMngList.jsp
 * @Description : 지표 및 특성 관리
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
	document.listForm.action = "<c:url value='/support/diagnosis/selectDiagnosisIdxMngList.do'/>";
   	document.listForm.submit();
}

/* ********************************************************
 * 등록 처리 함수 
 ******************************************************** */
 
//지표대상등록
function fn_Mng_Regist(){
	location.href = "<c:url value='/support/diagnosis/insertDiagnosisIdxMngView.do' />";
}
//지표특성등록
function fn_Property_Regist(){
	location.href = "<c:url value='/support/diagnosis/insertDiagnosisIdxPropertyView.do' />";
}

/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(idxId,idxLevel){
	var varForm				 = document.listForm;
	varForm.idxId.value     = idxId;
	if(idxLevel == '1'){
		varForm.action           = "<c:url value='/support/diagnosis/updateDiagnosisIdxMngView.do'/>";
	}else{
		varForm.action           = "<c:url value='/support/diagnosis/updateDiagnosisIdxPropertyView.do'/>";
	}
		
	varForm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action = "<c:url value='/support/diagnosis/selectDiagnosisIdxMngList.do'/>";
   	document.listForm.submit();
}
-->
</script>
</head>
<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
	<form:form commandName="searchVO" name="listForm"  method="post">

	<!-- hidden  -->
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
	<input name="idxId" type="hidden" />
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 > 지표 및 특성 관리</div>
		<h2>지표 및 특성 관리</h2>
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
				<th><label for="search1">상태구분</label></th>
				<td>
                   <form:select path="searchSttusCode" cssClass="text">
                   	<form:option value="" label="전체" />
                   	<form:option value="U" label="사용중" />
                   	<form:option value="T" label="임시" />
                   </form:select>
				</td>
			</tr>
			<tr>
				<th><label for="search2">지표/특성명</label></th>
				<td><form:input path="searchIdxNm" cssClass="text" cssStyle="width:200px" maxlength="50" />
				</td>
			</tr>
		</table>
		<div class="btnArea">
			<span class="button"><input type="button" value="조회" onclick="fn_search(); return false;"  /></span>
		</div>
	</fieldset>
	<!--// search -->

	<!-- listTable: Start -->
	<table class="tblType1 tblSpace" summary="지표 및 특성 관리 테이블입니다.">
		<colgroup>
			<col width="8%" />
			<col width="14%" />
			<col width="11%" />
			<col width="auto"/>
			<col width="12%" />
			<col width="10%" />
			<col width="8%" />
			<col width="10%" />
			<col width="12%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">지표명</th>
				<th scope="col">가중치</th>
				<th scope="col">특성명</th>
				<th scope="col">특성가중치</th>
				<th scope="col">상태구분</th>
				<th scope="col">문항수</th>
				<th scope="col">등록자</th>
				<th scope="col">등록일자</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${resultList}" var="resultList" varStatus="status">
			<c:if test="${resultList.idxLevel==1}" >
				<tr class="point">
					<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
					<td><a  href="javascript:fnDetail('${resultList.idxId}','${resultList.idxLevel}');" >${resultList.idxNm}</a></td>
					<td>${resultList.wghtval}</td>
					<td></td>
					<td></td>
					<td><c:if test="${resultList.idxSttusCode == 'U'}">사용중</c:if><c:if test="${resultList.idxSttusCode == 'T'}">임시</c:if></td>
					<td>${resultList.qesitmCount}</td>
					<td>${resultList.mberNm }</td>
					<td>${resultList.frstRegistPnttm}</td>
				</tr>
			</c:if>
			<c:if test="${resultList.idxLevel==2}" >
				<tr>
					<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
					<td></td>
					<td></td>
					<td><a  href="javascript:fnDetail('${resultList.idxId}','${resultList.idxLevel}');" >${resultList.idxNm}</a></td>
					<td>${resultList.wghtval}</td>
					<td><c:if test="${resultList.idxSttusCode == 'U'}">사용중</c:if><c:if test="${resultList.idxSttusCode == 'T'}">임시</c:if></td>
					<td>${resultList.qesitmCount}</td>
					<td>${resultList.mberNm }</td>
					<td>${resultList.frstRegistPnttm}</td>
				</tr>
			</c:if>
		</c:forEach>
		
					
		<c:if test="${fn:length(resultList) == 0}">
			<tr> 
				<td  colspan="9" class="ta_c">
					<spring:message code="common.nodata.msg" />
				</td>
			</tr>   	          				 			   
		</c:if>		
		</tbody>
	</table>
	<!-- //listTable: End -->

	<!-- paging : Start -->
	<c:if test="${!empty searchVO.pageIndex }">		
		<div class="paging">
        <ui:pagination paginationInfo = "${paginationInfo}"
            type="image"
            jsFunction="linkPage"
            />
		</div>
	</c:if>
	<!--// paging : End -->

	<!-- 버튼영역 -->
	<div class="btnArea tblSpace">
		<span class="button"><input type="button" value="지표등록" onclick="fn_Mng_Regist(); return false;" /></span>
		<span class="button"><input type="button" value="특성등록" onclick="fn_Property_Regist(); return false;" /></span>
	</div>
	<!--// 버튼영역 -->

</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>