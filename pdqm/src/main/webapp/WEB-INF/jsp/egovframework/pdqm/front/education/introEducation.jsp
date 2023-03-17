<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : education1.jsp
  * @Description : 품질관리교육 > 교육안내
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
		<div class="location">Home > 품질관리교육 > <em>교육 안내</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/education/h3_edu1.gif'/>" alt="교육 안내" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/education/h3_edu1_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터에서는 공공정보 품질관리에 대한 사용자의 이해를 높이고 사업에 대한 사회적 합의를 통하여, 공공정보의 품질을 개선하고자 교육 과정을 마련하였습니다.  적극적인 교육 참여를 부탁드리며 알찬 교육 과정을 마련하는데 최선을 다하고자 합니다." /></p>
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

