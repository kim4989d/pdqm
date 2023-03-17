<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : ResultExplainList.jsp
 * @Description : 관리수준 자가진단 결과 설명 관리 화면
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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/pdqm/common-ajax.js'/>" ></script>
<script type="text/javaScript" language="javascript" defer="defer">
<!--

/* ********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function linkPage(pageNo){
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/support/diagnosis/level/selectResultExplainList.do'/>";
   	document.listForm.submit();
}


/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(dgnssTrgetId,code){
	var varForm				 	= document.listForm;
	varForm.dgnssTrgetId.value  = dgnssTrgetId;
	varForm.code.value          = code;
	varForm.action           = "<c:url value='/support/diagnosis/level/updateResultExplainView.do'/>";

	varForm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action =  "<c:url value='/support/diagnosis/level/selectResultExplainList.do'/>";
   	document.listForm.submit();
}

/* ********************************************************
 * 엑셀 다운
 ******************************************************** */
function fn_excel(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action =  "<c:url value='/support/diagnosis/level/selectResultExplainExcel.do'/>";
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
	<input type=hidden name="code">
	
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
	
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 결과 설명 관리</div>
		<h2>결과 설명 관리</h2>
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
				<th><label for="search2">진단관점</label></th>
				<td>
					<form:select path="searchViewPoint" cssClass="text">
					    <form:option value="" label="-----전체 -----" />
						<form:options items ="${viewPointCodeList}" itemValue="dgnssTrgetId" itemLabel="dgnssTrgetNm"/>
					</form:select>	
				</td>
			</tr>

			<tr>
				<th><label for="search3">진단결과</label></th>
				<td>
                    <form:select path="searchCode" cssClass="text">
                    	<form:option value="" label="전체" />
                    	<form:option value="LR100" label="적정" />
                    	<form:option value="LR200" label="보통" />
                    	<form:option value="LR300" label="미흡" />
                    </form:select>
				</td>
				<th><label for="search3">등록여부</label></th>
				<td>
                    <form:select path="searchRegist" cssClass="text">
                    	<form:option value="" label="전체" />
                    	<form:option value="Y" label="등록" />
                    	<form:option value="N" label="미등록" />
                    </form:select>
				</td>				
			</tr>
						
		</table>
		<div class="btnArea">
			<span class="button"><input type="button" value="조회" onclick="fn_search(); return false;" /></span>
			<span class="button"><input type="button" value="엑셀" onclick="fn_excel(); return false;" /></span>
		</div>
	</fieldset>
	<!-- search -->

	<!-- tbl Start -->
	<table class="tblType1 tblSpace" summary="자가진단(진단대상) 점수관리 테이블입니다.">
		<colgroup>
			<col width="8%" />
			<col width="15%" />
			<col width="auto" />
			<col width="15%" />
			<col width="15%" />
			<col width="10%" />
			<col width="15%"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">진단대상</th>
				<th scope="col">진단관점</th>
				<th scope="col">결과</th>
				<th scope="col">설명등록여부</th>
				<th scope="col">등록자</th>
				<th scope="col">등록일자</th>
			</tr>
		</thead>
		
		<tbody> 
			<c:forEach items="${resultList}" var="resultList" varStatus="status">
				<tr >
					<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
					<td>${resultList.upperDgnssTrgetNm }</td>
					<td><a href="javascript:fnDetail('${resultList.dgnssTrgetId}','${resultList.code }' );" >${resultList.dgnssTrgetNm }</a></td>
					<td>${resultList.codeNm }</td>
					<td>${resultList.resultDc }</td>
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
	<div class="btnArea btn_taR">
	</div>
</form:form>
<script type="text/javascript">
	fn_ajax_select('searchDgnssTrger', 'searchViewPoint', '<c:url value="/support/diagnosis/level/selectViewPointCode.do" />', $('#searchDgnssTrger') , '${searchVO.searchViewPoint}');

	$(document).ready(function(){
		$('#searchDgnssTrger').trigger("change");

	})	
</script>
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
