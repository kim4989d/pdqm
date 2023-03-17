<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="org.springframework.ui.ModelMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>

<script type="text/javaScript" language="javascript" defer="defer">

var arrInsttNM = new Array() ;
var arrDBNM = new Array() ;
var p = 0 ;

<c:forEach var="list" items="${dbInfolist}">
	arrInsttNM[ p++ ] = "<c:out value="${list.instt_nm}"/>" ;
	arrDBNM[ p++ ] = "<c:out value="${list.database_nm}"/>" ;
</c:forEach>

function init_DBInfo()
{
	document.listForm.action = "<c:url value='/support/matching/searchAllDBInfo.do'/>";
   	document.listForm.submit();
}
function srch_DBInfo()
{
	
	document.listForm.action = "<c:url value='/support/matching/searchDBInfo.do'/>";
   	document.listForm.submit();
}

</script>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="dbInfoVO" name="listForm"  method="post">
<input type="hidden" name="user_id" value = ${LoginVO.id}/>
<input type="hidden" name="database_id" /><!-- DB ID -->
<input type="hidden" name="database_nm" /><!-- DB 명 -->
<input type="hidden" name="database_dc" /><!-- DB 설명 -->
<input type="hidden" name="instt_nm" /><!-- 기관명  -->
<input type="hidden" name="file_nm" /><!-- 파일명 -->
<input type="hidden" name="regist_pnttm" /><!-- 등록일자 -->
<input type="hidden" name="register_id" /><!-- 등록자 -->

<table border="0" cellpadding="0" cellspacing="0" width="100%">
<col width="30%"><col width="*">
<table border = "1">
<tr>
	<td width = "100">
		데이터 베이스 명
	</td>
	<td>
		<input type="text" name="user_id_view" value = "<c:out value="${LoginVO.id}"/>">
		<input type="text" id="searchDBNm" name="searchDBNm" value="" style="width:200px; height:15px;">
	</td>
	<td width = "100">
		<input type="button" value="조회" onclick="javascript:srch_DBInfo();"/>
	</td>
</tr>
</table>
<table border = "1">
<tr>
	<td colspan ="3">데이터베이스정보</td>
</tr>
<tr>
	<td colspan="3" >
		<c:forEach var="dbInfo" items="${dbInfolist}">
			<tr>
			<td colspan ="3">
			<input type="text" id="instt_nm" name="instt_nm" value="<c:out value="${dbInfo.instt_nm}"/>" style="width:110px; height:15px;">
			<input type="text" id="database_nm" name="database_nm" value="<c:out value="${dbInfo.database_nm}"/>" style="width:110px; height:15px;">
			</td>
			</tr>
		</c:forEach>
	</td>	
</tr>
</table>
<table>
<tr>
	<td colspan="3">이게 뭔 뻘짓이야...ㅡ,.ㅡ;;;</td>
</tr>
</table>

</form:form>

<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
