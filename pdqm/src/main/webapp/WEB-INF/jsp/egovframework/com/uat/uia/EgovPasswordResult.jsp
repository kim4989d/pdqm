<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : EgovPasswordResult.jsp / find_pw2.jsp
  * @Description :  비밀번호 재발송 화면
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
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb10.jsp" %>

<!-- contents영역시작 -->

<div class="bg_login">
	<div class="title">
		<div class="location">Home > 아이디/비밀번호 찾기 > <em>비밀번호 재발송</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/member/h3_find_pw2.gif'/>" alt="비밀번호 재발송" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/member/h3_join2_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터 방문을 환영합니다. 공공정보 품질관리 지원센터 홈페이지의 아이디와 비밀번호를 찾을 수 있습니다." /></p>
	</div>

	<div class="boxB"><div class="boxT">
		<c:if test="${result == true}">
			<p class="ta_c"><img src="<c:url value='/images/pdqm/common/member/txt_find_1.gif'/>" alt="회원가입시 등록한 메일 주소로 새 비밀번호가 재발송 되었습니다." /></p>
		</c:if>
		<c:if test="${result != true}">
			<p class="ta_c"><img src="<c:url value='/images/pdqm/common/member/txt_find_4.gif'/>" alt="회원가입시 등록한 메일 주소를 찾을 수 없습니다." /></p>
		</c:if>
		<div class="box2">메일 주소 : ${resultInfo}</div>
		<p class="ta_c"><img src="<c:url value='/images/pdqm/common/member/txt_find_2.gif'/>" alt="새로운 비밀번호로 로그한 뒤, 반드시 마이페이지에서 사용하고자 하는 비밀번호로 변경하여 이용에 착오 없으시길 바랍니다." /></p>
	</div></div>

	<!-- btn영역 -->
	<div class="btnArea ta_c tbSpace2">
		<a href="${pageContext.request.contextPath}/index.do"><img src="<c:url value='/images/pdqm/common/member/btn_ok.gif'/>" alt="확인" /></a>
	</div>
	<!--// btn영역 -->
</div>


<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

