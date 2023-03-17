<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : join4.jsp
  * @Description : 회원가입>가입완료 화면
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
<%@ include file="/html/pdqm/include/lnb9.jsp" %>

<!-- contents영역시작 -->

<div class="bg_join">
	<div class="title">
		<div class="location">Home > 회원가입 > <em>가입완료</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/member/h3_join5.gif'/>" alt="가입완료" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/member/h3_join1_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터 홈페이지의 원활한 이용을 위하여 회원가입 후 로그인을 해 주시기 바랍니다. 회원으로 가입하시면 더 많은 정보를 열람할 수 있으며 게시판 작성이 가능합니다." /></p>
	</div>

	<p><img src="<c:url value='/images/pdqm/common/member/memout_box.gif'/>" alt="공공정보 품질관리 지원센터 홈페이지 회원가입을 감사드립니다. 앞으로 많은 활동 부탁드립니다." /></p>
	<div class="btnArea_c">
		<a href="${pageContext.request.contextPath}/front/main/egovLoginUsr.do"><img src="<c:url value='/images/pdqm/common/member/btn_login_3.gif'/>" alt="로그인" /></a>
	</div>
</div>


<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

