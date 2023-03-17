<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/admin/admin.css'/>" rel="stylesheet" type="text/css" />
</head>

<body>

<!-- topArea:Start -->
<div id="topArea">
	<div class="topWrap">
		<h1 class="logo"><a href="##"><img src="<c:url value='/images/pdqm/admin/logo.gif'/>" alt="공공정보 품질관리 지원센터" /></a></h1>
		<p class="topBtn">
			<a href="${pageContext.request.contextPath}/cop/com/selectBBSUseInfs.do" style="text-decoration:none;cursor:none;">&nbsp;&nbsp;&nbsp;&nbsp;</a>
			${loginVO.name }님 환영합니다. <a href="${pageContext.request.contextPath}/index.do" target="_parent">[공공정보 품질관리 지원센터 바로가기]</a>
			<a href="${pageContext.request.contextPath }/uat/uia/actionLogout.do" target="_parent">로그아웃</a></p>
	</div>
</div>
<hr />
<!-- topArea:End -->

</body>
</html>