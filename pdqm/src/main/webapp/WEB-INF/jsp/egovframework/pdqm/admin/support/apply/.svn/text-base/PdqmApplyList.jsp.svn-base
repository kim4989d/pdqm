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
 * @Class Name : PdqmApplyList.jsp
 * @Description : 사업신청내역
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
<script type="text/javaScript" language="javascript" defer="defer">


/* ********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function linkPage(pageNo){
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/support/apply/selectApplyList.do'/>";
   	document.listForm.submit();
}


/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fn_Detail(sn){
	var varForm				 = document.listForm;
	varForm.sn.value     = sn;
	varForm.action           = "<c:url value='/support/apply/selectApplyDetailView.do'/>";		
	varForm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){

	if(document.listForm.startDt.value > document.listForm.endDt.value){
		alert("날짜 입력이 잘못 되었습니다.");
		return;
	}
	document.listForm.pageIndex.value = 1;
	document.listForm.action = "<c:url value='/support/apply/selectApplyList.do'/>";
   	document.listForm.submit();
}
</script>

<body>

<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="searchVO" name="listForm"  method="post">
<!-- hidden  -->
<input name="sn" type="hidden"  />
<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/callCalPopup.do'/>" />
	
<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">진단관리 > 지원사업 수요조사 관리 > 사업신청내역</div>
		<h2>사업신청내역</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="45%"/>
				<col width="45%"/>
				<col width="10%"/>
			</colgroup>
			<tr>
				<th class="ta_l">

                   <form:select path="searchCnd" cssClass="text">
                   	<form:option value="ALL" label="전체" />
                   	<form:option value="1" label="성명" />
                   	<form:option value="2" label="소속기관" />
                   </form:select>
                   <form:input path="searchWrd" cssClass="text" cssStyle="width:150px" title="검색어입력"  />			

				</th>
				<th>
					<label for="search2">신청일자</label>
					<form:hidden path="startDt" cssClass="text" cssStyle="width:100px" maxlength="50" />
					<fmt:parseDate value="${searchVO.startDt}" var="dateFmt" pattern="yyyymmdd"/>
					<input  name="ntceBeginDtView" cass="text" value="<fmt:formatDate value="${dateFmt}" pattern="yyyy-mm-dd"/>" style="width:80px"   maxlength="50" readOnly/>
					<input type="image"  src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif'/>" title="달력보기"
						onClick="javascript:fn_egov_Calendar(document.listForm, document.listForm.startDt, document.listForm.ntceBeginDtView);" /> ~
					<form:hidden path="endDt" cssClass="text" cssStyle="width:100px" maxlength="50" />
					<fmt:parseDate value="${searchVO.endDt}" var="dateFmt" pattern="yyyymmdd"/>
					<input  name="ntceEndDtView" cass="text" value="<fmt:formatDate value="${dateFmt}" pattern="yyyy-mm-dd"/>"  style="width:80px"   maxlength="50" readOnly/>
					<input type="image"  src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif'/>" title="달력보기" 
						onClick="javascript:fn_egov_Calendar(document.listForm, document.listForm.endDt, document.listForm.ntceEndDtView);"/>
				</th>
				<th><span class="button"><input type="button" value="조회" onclick="fn_search(); return false;" /></span></th>
			</tr>
		</table>
	</fieldset>
	<!--// search -->

	<!-- listTable: Start -->
	<table class="tblType1 tblSpace2" summary="자가진단(진단대상) 점수관리 테이블입니다.">
		<colgroup>
			<col width="9%" />			
			<col width="15%" />			
			<col width="12%" />
			<col width="9%" />
			<col width="13%" />
			<col width="13%" />
			<col width="13%" />
			<col width="auto"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">수요조사명</th>				
				<th scope="col">신청일자</th>				
				<th scope="col">성명</th>
				<th scope="col">소속기관</th>
				<th scope="col">부서</th>
				<th scope="col">연락처</th>
				<th scope="col">DB명</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${resultList}" var="resultList" varStatus="status">
				<tr>
					<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
					<td>${resultList.dmandExaminNm}</td>
					<td>
		              <fmt:parseDate value="${resultList.reqstDe}" var="dateFmt" pattern="yyyymmdd"/>
		              <fmt:formatDate value="${dateFmt}" pattern="yyyy-mm-dd"/>						
					</td>
					<td><a href="javascript:fn_Detail('${resultList.sn}');">${resultList.name }</a></td>
					<td>${resultList.pstinst }</td>
					<td>${resultList.dept} </td>
					<td>${resultList.offmCttpc}</td>
					<td>${resultList.dbmsNm}</td>
				</tr>
			</c:forEach>

			<c:if test="${fn:length(resultList) == 0}">
				<tr> 
					<td  colspan="8" class="ta_c">
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
	<!-- paging : End -->
</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
