<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : ScoreDgnssTrgetList.jsp
 * @Description : 자가진단(진단대상) 점수관리
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
	document.listForm.action = "<c:url value='/support/diagnosis/level/selectScoreDgnssTrgetList.do'/>";
   	document.listForm.submit();
}

/* ********************************************************
 * 등록 처리 함수 
 ******************************************************** */
 
//점수등록
function fn_Mng_Regist(){
	location.href = "<c:url value='/support/diagnosis/level/insertScoreDgnssTrgetView.do' />";
}

/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(dgnssTrgetId,dgnssTrgetNm){
	var varForm				 = document.listForm;
	varForm.dgnssTrgetId.value     = dgnssTrgetId;
	varForm.dgnssTrgetNm.value     = dgnssTrgetNm;
	varForm.action           = "<c:url value='/support/diagnosis/level/updateScoreDgnssTrgetView.do'/>";

	varForm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action = "<c:url value='/support/diagnosis/level/selectScoreDgnssTrgetList.do'/>";
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
	<input type=hidden name="dgnssTrgetNm">
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
	
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 결과(진단대상) 점수 관리</div>
		<h2>결과(진단대상) 점수 관리</h2>
	</div>

			<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="22%" />
				<col width="26%"/>
				<col width="22%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search1">진단대상</label></th>
				<td>
					<form:select path="searchDgnssTrger" cssClass="text">
					    <form:option value="" label="-----전체 -----" />
						<form:options items ="${dgnssMasterList}" itemValue="dgnssTrgetId" itemLabel="dgnssTrgetNm"/>
					</form:select>	
										
				</td>

				<th><label for="search3">진단결과</label></th>
				<td>

                    <form:select path="searchCode" cssClass="text">
                    	<form:option value="" label="전체" />
                    	<form:option value="LR100" label="적정" />
                    	<form:option value="LR200" label="보통" />
                    	<form:option value="LR300" label="미흡" />
                    </form:select>

				</td>
			</tr>
		</table>
		<div class="btnArea">
			<span class="button"><input type="button" value="조회" onclick="fn_search(); return false;" /></span>
		</div>
	</fieldset>
	<!-- search -->

	<!-- tbl Start -->
	<table class="tblType1 tblSpace" summary="자가진단(진단대상) 점수관리 테이블입니다.">
		<colgroup>
			<col width="8%" />
			<col width="14%" />
			<col width="14%" />
			<col width="14%" />
			<col width="10%" />
			<col width="10%" />
			<col width="auto"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">진단대상</th>
				<th scope="col">최소값</th>
				<th scope="col">결과</th>
				<th scope="col">최대값</th>
				<th scope="col">등록자</th>
				<th scope="col">등록일자</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${resultList}" var="resultList" varStatus="status">
				<tr >
					<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
					<td><a href="javascript:fnDetail('${resultList.dgnssTrgetId}','${resultList.dgnssTrgetNm }');" >${resultList.dgnssTrgetNm }</a></td>
					<td>${resultList.mumm }</td>
					<td>${resultList.codeNm }</td>
					<td>${resultList.mxmm }</td>
					<td>${resultList.mberNm }</td>
					<td>${resultList.frstRegistPnttm }</td>
				</tr>
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

</form:form>
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
