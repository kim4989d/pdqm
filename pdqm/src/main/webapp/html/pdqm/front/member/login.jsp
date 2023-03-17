<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : login.jsp
  * @Description :  로그인 화면
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
		<div class="location">Home > 로그인 > <em>로그인</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/member/h3_login.gif'/>" alt="로그인" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/member/h3_login_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터 방문을 환영합니다. 공공정보 품질관리 지원센터 홈페이지의 원활한 이용을 위하여 로그인을 해 주시기 바랍니다." /></p>
	</div>

	<div class="loginBox">
		<fieldset>
			<legend>로그인</legend>
			<div class="login1">
				<h4><img src="<c:url value='/images/pdqm/common/member/h4_login_1.gif'/>" alt="MEMBER LOGIN - 홈페이지의 원활한 이용을 위하여 로그인을 해 주시기 바랍니다." /></h4>
				<!-- 일반로그인 -->
				<dl>
					<dt><label for="input_id"><img src="<c:url value='/images/pdqm/common/member/txt_id.gif'/>" alt="아이디" /></label></dt>
					<dd><input type="text" id="input_id" class="text" /></dd>
					<dt><label for="input_pwd"><img src="<c:url value='/images/pdqm/common/member/txt_pw.gif'/>" alt="비밀번호" /></label></dt>
					<dd><input type="password" id="input_pwd" class="text" /></dd>
				</dl>
				<a href="##"><img src="<c:url value='/images/pdqm/common/member/btn_login_1.gif'/>" alt="로그인" /></a>
				<!--// 일반로그인 -->
			</div>
		</fieldset>
		<ul>
			<li>
				<img src="<c:url value='/images/pdqm/common/member/txt_login_1.gif'/>" alt="본 홈페이지에 가입하시면 각종 기능 및 콘텐츠를 보다 원활하게 사용할 수 있습니다." />
				<a href="##"><img src="<c:url value='/images/pdqm/common/member/btn_join.gif'/>" alt="회원가입" /></a>
			</li>
			<li>
				<img src="<c:url value='/images/pdqm/common/member/txt_login_2.gif'/>" alt="아이디/비밀번호를 분실하셨나요?" />
				<a href="##"><img src="<c:url value='/images/pdqm/common/member/btn_find_idpw.gif'/>" alt="아이디/비밀번호 찾기" /></a>
			</li>
		</ul>
	</div>
</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
