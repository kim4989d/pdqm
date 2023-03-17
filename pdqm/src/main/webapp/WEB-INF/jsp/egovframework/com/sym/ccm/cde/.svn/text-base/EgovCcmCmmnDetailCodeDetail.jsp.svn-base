<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>

<%
 /**
  * @Class Name  : EgovCcmCmmnDetailCodeDetail.jsp
  * @Description : EgovCcmCmmnDetailCodeDetail 화면
  * @Modification Information
  * @
  * @  수정일             수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2011.11.15   신은영     
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
 * 초기화
 ******************************************************** */
function fnInit(){
}
/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fnList(){
	location.href = "<c:url value='/sym/ccm/cde/EgovCcmCmmnDetailCodeList.do' />";
}
/* ********************************************************
 * 수정화면으로  바로가기
 ******************************************************** */
function fnModify(){
	var varForm				 = document.all["Form"];
	varForm.action           = "<c:url value='/sym/ccm/cde/EgovCcmCmmnDetailCodeModify.do'/>";
	varForm.codeId.value     = "${result.codeId}";
	varForm.code.value       = "${result.code}";
	varForm.submit();
}
/* ********************************************************
 * 삭제 처리 함수
 ******************************************************** */
function fnDelete(){
	if (confirm("<spring:message code='common.delete.msg'/>")) {
		var varForm				 = document.all["Form"];
		varForm.action           = "<c:url value='/sym/ccm/cde/EgovCcmCmmnDetailCodeRemove.do'/>";
		varForm.codeId.value     = "${result.codeId}";
		varForm.code.value       = "${result.code}";
		varForm.submit();
	}
}
//-->
</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- content start -->
  <div class="title">
	<div class="locationMap">공통코드관리 > 공통상세코드 상세조회</div>
	<h2> 공통상세코드 상세조회 </h2>
</div>

<table class="viewType1" summary="">
  <tr> 
    <th width="20%" scope="row" >코드ID명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>
    <td>${result.codeIdNm}</td>
  </tr>
  <tr>
    <th width="20%" scope="row">코드<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>          
    <td>${result.code}</td>    
  </tr> 
  <tr>
    <th width="20%" scope="row" >코드명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>          
    <td>${result.codeNm}</td>    
  </tr> 
  <tr> 
    <th scope="row" ><label for="codeDc">코드설명</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>
    <td><textarea class="textarea"  cols="75" rows="14"  style="width:450px;" disabled id="codeDc">${result.codeDc}</textarea></td>
  </tr> 
  <tr> 
    <th width="20%" scope="row" ><label for="useAt">사용여부</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>
    <td>
		<select name="useAt" disabled id="useAt">
			<option value="Y" <c:if test="${result.useAt == 'Y'}">selected="selected"</c:if> >Yes</option>
			<option value="N" <c:if test="${result.useAt == 'N'}">selected="selected"</c:if> >No</option>				
		</select>
    </td>    
  </tr>     
</table>
<div class="btnArea btn_taR">
			<!-- 수정 -->
			<span class="button"><input type="submit" value="수정" onclick="fnModify(); return false;"/></span>
			<!-- 삭제 -->
			<span class="button"><input type="submit" value="삭제" onclick="fnDelete(); return false;"/></span>
			<!-- 목록 -->
			<span class="button"><input type="submit" value="목록" onclick="fnList(); return false;"/></span>
</div>
<form name="Form" method="post" action="#">
	<input type=hidden name="codeId"/>
	<input type=hidden name="code"/>
	<input type="submit" id="invisible" class="invisible"/>
</form>
<!-- content end -->

<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>

