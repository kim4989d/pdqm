<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : knowledge3.jsp
  * @Description : 품질관리 포럼·협회 화면
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb2.jsp" %>
<!-- contents영역시작 -->

<div class="bg_know">
	<div class="title">
		<div class="location">Home > 정보마당 > <em>품질관리 포럼·협회</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/knowledge/h3_know3.gif'/>" alt="품질관리 포럼·협회" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/knowledge/h3_know3_desc.png'/>" class="png24" alt="국내외 품질관리 관련기관·포럼·협회를 소개합니다. 공공정보 품질관리의 시장현황과 각 기관의 역할 등을 확인할 수 있습니다." /></p>
	</div>

	<div id="conBox">
		html 내용이 들어가는 자리
	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

