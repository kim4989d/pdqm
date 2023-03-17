<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>

<%
 /**
  * @Class Name  : EgovCcmCmmnClCodeList.jsp
  * @Description : EgovCcmCmmnClCodeList 화면
  * @Modification Information
  * @
  * @  수정일             수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2011.12.05   신은영    
  *
  *  @author 공통서비스팀 
  *  @since 2009.04.01
  *  @version 1.0
  *  @see
  *  
  */
%>

<script type="text/javaScript" language="javascript">
<!--
/* ********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function linkPage(pageNo){
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/sym/ccm/ccc/EgovCcmCmmnClCodeList.do'/>";
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
	location.href = "<c:url value='/sym/ccm/ccc/EgovCcmCmmnClCodeRegist.do' />";
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
function fnDetail(clCode){
	var varForm				 = document.all["Form"];
	varForm.action           = "<c:url value='/sym/ccm/ccc/EgovCcmCmmnClCodeDetail.do'/>";
	varForm.clCode.value     = clCode;
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
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- content start -->

<form name="listForm" action="<c:url value='/sym/ccm/ccc/EgovCcmCmmnClCodeList.do'/>" method="post">

<div class="title">
	<div class="locationMap">공통코드관리 > 공통분류코드 목록</div>
	<h2> 공통분류코드 목록 </h2>
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
					<select name="searchCondition" id="searchCondition" title="">
	   					<option selected value=''>
	   					<label for="searchKeyword">--선택하세요--</label></option>
					   <option value='1' <c:if test="${searchVO.searchCondition == '1'}">selected="selected"</c:if>><label for="searchKeyword">분류코드</label></option>
					 <option value='2' <c:if test="${searchVO.searchCondition == '2'}">selected="selected"</c:if>><label for="searchKeyword">분류코드명</label></option>
					 </select>
					 <label for="searchKeyword"></label>
   				<input name="searchKeyword" type ="text" value="${searchVO.searchKeyword}"  maxlength="35" id="searchCondition" />
   				</td>
 
   				

  			 </tr>
   		</table>
   <div class="btnArea btn_taR">
   <!--검색 -->
	<span class="button"><input type="submit" value="조회" onclick="fnSearch(); return false;" /></span>
	</div>
</fieldset>

		<table>
		<tr>
			<td height="3px"></td>
		</tr>
		</table>
		
		<table class="tblType1 tblSpace" summary="">
		
		<thead>
		<tr>  
			<th width="10%" scope="col">순번</th>
			<th width="20%" scope="col">분류코드</th>
			<th width="50%" scope="col">분류코드명</th>
			<th width="20%" scope="col">사용여부</th>
		</tr>
		</thead>    
		<tbody>
		<c:forEach items="${resultList}" var="resultInfo" varStatus="status">
		<tr style="cursor:pointer;cursor:hand;" onclick="javascript:fnDetail('${resultInfo.clCode}');">
			<td><c:out value="${(searchVO.pageIndex - 1) * searchVO.pageSize + status.count}"/></td>
			<td>${resultInfo.clCode}</td>
			<td class="ta_l">${resultInfo.clCodeNm}</td>
			<td><c:if test="${resultInfo.useAt == 'Y'}">사용</c:if><c:if test="${resultInfo.useAt == 'N'}">미사용</c:if></td>
		</tr>   
		</c:forEach>
		
		<c:if test="${fn:length(resultList) == 0}">
			<tr> 
				<td colspan=4>
					<spring:message code="common.nodata.msg" />
				</td>
			</tr>   	          				 			   
		</c:if>
		    	
		    	
		</tbody>  
		</table>
		
		<!-- 페이징 -->
		<div class="paging">
			<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="linkPage" />
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
			<input type=hidden name="clCode"/>
			<input type="submit" id="invisible" class="invisible"/>
		</form>
		<!-- content end -->

<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>

