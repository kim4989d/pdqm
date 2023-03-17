<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : DbTypeList.jsp
 * @Description : 데이타베이스유형  관리
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
	document.listForm.action = "<c:url value='/support/diagnosis/idx/selectIdxDbTypeList.do'/>";
   	document.listForm.submit();
}

/* ********************************************************
 * 등록 처리 함수 
 ******************************************************** */
 
//유형등록
function fn_Mng_Regist(databaseTyId){
	location.href = "<c:url value='/support/diagnosis/idx/wghtval/WghtvalIdxMngRegist.do' />";
}


/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(databaseTyId){
	var varForm				 = document.listForm;
	
	if(databaseTyId !="all"){
	varForm.HDATABASETYID.value=databaseTyId;
	}
	varForm.action           = "<c:url value='/support/diagnosis/idx/wghtval/WghtvalIdxMngRegist.do'/>";
		
	varForm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action = "<c:url value=''/>";
   	document.listForm.submit();
}


-->
</script>
<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
	<form:form commandName="searchVO" name="listForm"  method="post">

	<!-- hidden  -->
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
	<input name="HDATABASETYID" type="hidden" value=""/>
	
	
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단>지표별 자가진단  >가중치 관리</div>
		<h2>가중치 관리</h2>
	</div>

<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
	
	</fieldset>
	<!--// search -->



	<!-- listTable: Start -->
	<table class="tblType1 tblSpace" summary="지표 및 특성 관리 테이블입니다.">
		<colgroup>
			<col width="7%" />
			<col width="auto%" />
			<col width="20%" />
			<col width="20%"/>
			<col width="30%" />
	
			
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">데이타베이스유형</th>
				<th scope="col">가중치 등록 여부</th>
				<th scope="col">등록자</th>
				<th scope="col">등록일자</th>
			
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${resultList}" var="resultList" varStatus="status">
			<tr>
				<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
				<td><a href="javascript:fnDetail('${resultList.DATABASETYID}');" >${resultList.DATABASETYNM }</a></td>
				<td>${resultList.REGISTNM }</td>
				<td abbr="left">관리자</td>
				<td>${resultList.LASTUPDTPNTTM }</td>
			</tr>
		</c:forEach>
		
					
		<c:if test="${fn:length(resultList) == 0}">
			<tr> 
				<td  colspan="6" class="ta_c">
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
	<!--// 버튼영역 -->

</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>