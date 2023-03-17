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
<script type="text/javaScript" language="javascript" defer="defer">
<!--

/* ********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function linkPage(pageNo){
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/support/diagnosis/selectDiagnosisLevelMngList.do'/>";
   	document.listForm.submit();
}

/* ********************************************************
 * 등록 처리 함수 
 ******************************************************** */
 
//진단대상등록
function fn_Mng_Regist(){
	location.href = "<c:url value='/support/diagnosis/insertDiagnosisLevelMngView.do' />";
}
//진단관점등록
function fn_ViewPoint_Regist(){
	location.href = "<c:url value='/support/diagnosis/insertDiagnosisLevelViewPointView.do' />";
}

/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(dgnssTrgetId,dgnssTrgetLevel){
	var varForm				 = document.listForm;
	varForm.dgnssTrgetId.value     = dgnssTrgetId;
	if(dgnssTrgetLevel == '1'){
		varForm.action           = "<c:url value='/support/diagnosis/updateDiagnosisLevelMngView.do'/>";
	}else{
		varForm.action           = "<c:url value='/support/diagnosis/updateDiagnosisLevelViewPointView.do'/>";
	}
		
	varForm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action = "<c:url value='/support/diagnosis/selectDiagnosisLevelMngList.do'/>";
   	document.listForm.submit();
}
-->
</script>
</head>
<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
	<form:form commandName="searchVO" name="listForm"  method="post">

	<!-- hidden  -->
	<input type=hidden name="dgnssTrgetId">
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>

	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 진단대상 및 관점 관리</div>
		<h2>진단대상 및 관점 관리</h2>
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
						<th><label for="search2">진단대상</label></th>
						<td>
						<form:input path="searchTrgetNm" cssClass="text" cssStyle="width:200px" maxlength="50" />
						</td>
					</tr>
				</table>
				<div class="btnArea">
					<span class="button"><input type="button" value="조회" onclick="fn_search(); return false;"  /></span>
				</div>
			</fieldset>
			<!-- search -->

			<!-- tbl Start -->
			<table class="tblType1 tblSpace" summary="목록 테이블입니다.">
				<colgroup>
					<col width="8%" />
					<col width="18%" />
					<col width="18%" />
					<col width="16%" />
					<col width="12%" />
					<col width="12%" />
					<col width="auto"/>
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">진단대상</th>
						<th scope="col">진단관점</th>
						<th scope="col">상태구분</th>
						<th scope="col">문항수</th>
						<th scope="col">등록자</th>
						<th scope="col">등록일자</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${resultList}" var="resultList" varStatus="status">
					
					<c:if test="${resultList.dgnssTrgetLevel==1}" >
						<tr class="point">
							<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
							<td><a href="javascript:fnDetail('${resultList.dgnssTrgetId}','${resultList.dgnssTrgetLevel}');">${resultList.dgnssTrgetNm}</a></td>
							<td></td>
							<td><c:if test="${resultList.dgnssTrgetSttusCode == 'U'}">사용중</c:if><c:if test="${resultList.dgnssTrgetSttusCode == 'T'}">임시</c:if></td>
							<td>${resultList.qesitmCount}</td>
							<td>${resultList.mberNm }</td>
							<td>${resultList.frstRegistPnttm} </td>
						</tr>
					</c:if>
					<c:if test="${resultList.dgnssTrgetLevel==2}" >
						<tr>
							<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
							<td></td>
							<td><a href="javascript:fnDetail('${resultList.dgnssTrgetId}','${resultList.dgnssTrgetLevel}');">${resultList.dgnssTrgetNm}</a></td>
							<td><c:if test="${resultList.dgnssTrgetSttusCode == 'U'}">사용중</c:if><c:if test="${resultList.dgnssTrgetSttusCode == 'T'}">임시</c:if></td>
							<td>${resultList.qesitmCount}</td>
							<td align="left">${resultList.mberNm }</td>
							<td>${resultList.frstRegistPnttm }</td>
						</tr>					
					</c:if>
					</c:forEach>
					
					<c:if test="${fn:length(resultList) == 0}">
						<tr> 
							<td  colspan="7" class="ta_c">
								<spring:message code="common.nodata.msg" />
							</td>
						</tr>   	          				 			   
					</c:if>

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
				<span class="button"><input type="button" value="진단대상등록" onclick="fn_Mng_Regist(); return false;" /></span>
				<span class="button"><input type="button" value="진단관점등록" onclick="fn_ViewPoint_Regist(); return false;" /></span>
			</div>
		</form:form>
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>