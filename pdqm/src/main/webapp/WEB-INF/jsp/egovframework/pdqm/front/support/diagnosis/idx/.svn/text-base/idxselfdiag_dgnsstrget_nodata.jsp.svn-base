<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/html/pdqm/admin/include/top.jsp" %>


<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javaScript" language="javascript" defer="defer">

function lfn_onload()
{
		alert( "현재 진행중인 품질지표 자가진단이 없습니다.[<c:out value="${basicinfo.databaseTyId}"/>]\n\n자가진단 준비중이오니 다음에 진단해주시기 바랍니다." ) ;
		
		listForm.action = "<c:url value='/support/diagnosis/level/selectDgnssTrgetView.do'/>";
		listForm.submit();
}

</script>

<form:form commandName="searchVO" name="listForm"  method="post" onload="javascript:lfn_onload();">
</form:form>

<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
