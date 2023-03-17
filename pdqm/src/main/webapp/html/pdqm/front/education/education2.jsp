<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : education1.jsp
  * @Description : 품질관리교육 > 교육공지
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
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb4.jsp" %>

<!-- contents영역시작 -->

<div class="bg_edu">
	<div class="title">
		<div class="location">Home > 품질관리교육 > <em>교육 공지</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/education/h3_edu2.gif'/>" alt="교육 공지" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/education/h3_edu2_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터에서 제공하는 교육 내용 공지와 안내 게시판입니다. 공공정보 품질관리 지원센터에서 제공하는 교육과정의 새소식 및 공지사항을 확인할 수 있습니다. " /></p>
	</div>


	type1(리스트 타입) 게시판이 들어갑니다.

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

