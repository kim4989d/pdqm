<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> 공공정보 품질관리 지원센터 </title>
<link href="<c:url value='/css/pdqm/admin/admin.css'/>" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/jquery-1.4.2.min.js' />" ></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>
<script type="text/javaScript" language="javascript">

</script>

</head>

<body>


<form:form commandName="searchVO" name="ifrForm" method="post">
	<table class="tblType1" summary="진단관점 목록 테이블입니다.">
		<colgroup>
			<col width="30%" />
			<col width="70%" />
		</colgroup>
		<thead>
			<tr>
				<th>순번</th>
				<th>진단관점</th>
			</tr>
		</thead>
		<tbody>
		<c:set var="maxNum" value="0"></c:set>
		<c:forEach items="${dgnssDetailList}" var="dgnssDetailList" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${dgnssDetailList.dgnssTrgetNm}</td>
				<input type="hidden" name="sortOrderNm_${status.count}" value="${status.count}" />
				<c:set var="maxNum" value="${status.count}"></c:set>
			</tr>
		</c:forEach>
				
		</tbody>
	</table>
	<input type="hidden" name="maxNum" value="${maxNum}" />
</form:form>
</body>
</html>
