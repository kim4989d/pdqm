<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name  : EgovCcmCmmnCodeList.jsp
  * @Description : EgovCcmCmmnCodeList 화면
  * @Modification Information
  * @
  * @  수정일             수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2011.11.15   신은영    
  *
  *   
  * 
  *  
  * 
  *  
  */
%>
<link rel="stylesheet" href="<c:url value='/css/pdqm/admin/admin.css' />" type="text/css" />
<script type="text/javaScript" language="javascript">
<!--

function linkPage(pageNo){
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/sym/ccm/cca/EgovCcmCmmnCodeList.do'/>";
   	document.listForm.submit();
}
/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fnSearch(){
	document.listForm.pageIndex.value = 1;
   	document.listForm.submit();
}
/* ********************************************************
 * 등록 처리 함수 
 ******************************************************** */
function fnRegist(){
	location.href = "<c:url value='/sym/ccm/cca/EgovCcmCmmnCodeRegist.do' />";
}
/* ********************************************************
 * 수정 처리 함수
 ******************************************************** */
function fnModify(){
	location.href = "";
}
/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(codeId){
	var varForm				 = document.all["Form"];
	varForm.action           = "<c:url value='/sym/ccm/cca/EgovCcmCmmnCodeDetail.do'/>";
	varForm.codeId.value     = codeId;
	varForm.submit();
}
/* ********************************************************
 * 삭제 처리 함수
 ******************************************************** */
function fnDelete(){
	// 
}

//-->
</script>
<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

	<form name="listForm" action="<c:url value='/sym/ccm/cca/EgovCcmCmmnCodeList.do'/>" method="post">
		<div class="title">
			<div class="locationMap">공통코드관리 > 공통코드관리</div>
			<h2> 공통코드 목록 </h2>
		</div>

		<fieldset>
		<legend>검색조건</legend>
			<table class="viewType1" summary="">
				<colgroup>
					<col width="20%" />
					<col width="80%" />
				</colgroup>
				<tr>
					<th><label for="CommCodeType">구분</label></th>
					<td>
						<select name="searchCondition" id="searchCondition" title="조회조건">
		  					 <option selected value=''><label for="searchCondition">--선택하세요--</label></option>
		  					 <option value='1' <c:if test="${searchVO.searchCondition == '1'}">selected="selected"</c:if>><label for="searchCondition">코드ID</label></option>
		  					 <option value='2' <c:if test="${searchVO.searchCondition == '2'}">selected="selected"</c:if>><label for="searchCondition"></label>코드ID명</option>
	   					</select>
	   					
	   				
	   				<label for="searchKeyword"></label>
	   				<input name="searchKeyword" type ="text" value="${searchVO.searchKeyword}"  maxlength="35" id="searchCondition" />
	   				</td>

	   			
	  			 </tr>
	   		</table>
	   
	   <!--검색 -->
	   <div class="btnArea btn_taR">
		<span class="button"><input type="submit" value="조회" onclick="fnSearch(); return false;" /></span>
		</div>
		</fieldset>

		<table class="tblType1 tblSpace">
		<thead>
			<tr>
				<th width="10%" scope="col">순번</th>
				<th width="30%" scope="col">분류명</th>
				<th width="15%" scope="col">코드ID</th>
				<th width="30%" scope="col">코드ID명</th>
				<th width="15%" scope="col">사용여부</th>
			</tr>
		</thead>    
		<tbody>
		<c:forEach items="${resultList}" var="resultInfo" varStatus="status">
		<tr style="cursor:pointer;cursor:hand;" onclick="javascript:fnDetail('${resultInfo.codeId}');">
			<td><c:out value="${(searchVO.pageIndex - 1) * searchVO.pageSize + status.count}"/></td>
			<td class="ta_l">${resultInfo.clCodeNm}</td>
			<td>${resultInfo.codeId}</td>
			<td class="ta_l">${resultInfo.codeIdNm}</td>
			<td><c:if test="${resultInfo.useAt == 'Y'}">사용</c:if><c:if test="${resultInfo.useAt == 'N'}">미사용</c:if></td>
		</tr>   
		</c:forEach>

		<c:if test="${fn:length(resultList) == 0}">
			<tr> 
				<td colspan=5>
					<spring:message code="common.nodata.msg" />
				</td>
			</tr>   	          				 			   
		</c:if>
   	
   	
		</tbody>  
		</table>

	<!-- 페이징 -->
	<div class="pagenate_btn">
	<div class="paging">
		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="linkPage" />
	</div>
	</div>
	<!--// 페이징 -->
	<!-- 하단버튼 -->
	<div class="btnArea btn_taR">
	<span class="button"><input type="submit" value="등록" onclick="fnRegist(); return false;" /></span>
	</div>
	<!--// 하단버튼 -->



	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>

	</form>
	<form name="Form" method="post"  action="#">
		<input type=hidden name="codeId" />
		<input type="submit" id="invisible" class="invisible"/>
	</form>


<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
