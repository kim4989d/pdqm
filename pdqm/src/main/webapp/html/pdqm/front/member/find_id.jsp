<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : find_id.jsp
  * @Description :  아이디 찾기 화면
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
<%@ include file="/html/pdqm/include/lnb10.jsp" %>

<!-- contents영역시작 -->

<div class="bg_login">
	<div class="title">
		<div class="location">Home > 로그인 > <em>아이디/비밀번호 찾기</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/member/h3_find_idpw.gif'/>" alt="아이디/비밀번호 찾기" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/member/h3_login_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터 방문을 환영합니다. 공공정보 품질관리 지원센터 홈페이지의 원활한 이용을 위하여 로그인을 해 주시기 바랍니다." /></p>
	</div>

	<div class="boxB"><div class="boxT">
		<div class="find_box">
			<dl>
				<dt><label for="input_name"><img src="<c:url value='/images/pdqm/common/member/txt_name.gif'/>" alt="이름" /></label></dt>
				<dd><input type="text" id="input_name" class="text" style="width:175px;" /></dd>
				<dt><label for="input_email"><img src="<c:url value='/images/pdqm/common/member/txt_email2.gif'/>" alt="이메일" /></label></dt>
				<dd><input type="text" id="input_email" class="text" style="width:175px;" /></dd>
			</dl>
			<a href="##"><img src="<c:url value='/images/pdqm/common/member/btn_email.gif'/>" alt="E-Mail 인증" /></a>
			<img src="<c:url value='/images/pdqm/common/member/txt_find_3.gif'/>" class="mt_5" alt="가입시 입력하였던 이름,이메일을 입력하시기 바랍니다." />
		</div>
	</div></div>

</div>


<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

