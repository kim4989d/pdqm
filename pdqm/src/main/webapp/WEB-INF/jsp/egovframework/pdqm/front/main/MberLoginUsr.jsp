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
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>


<script type="text/javascript">

function checkLogin(userSe) {
    // 일반회원
    if (userSe == "GNR") {
        document.loginForm.rdoSlctUsr[0].checked = true;
        document.loginForm.rdoSlctUsr[1].checked = false;
        document.loginForm.rdoSlctUsr[2].checked = false;
        document.loginForm.userSe.value = "GNR";
    // 기업회원
    } else if (userSe == "ENT") {
        document.loginForm.rdoSlctUsr[0].checked = false;
        document.loginForm.rdoSlctUsr[1].checked = true;
        document.loginForm.rdoSlctUsr[2].checked = false;
        document.loginForm.userSe.value = "ENT";
    // 업무사용자
    } else if (userSe == "USR") {
        document.loginForm.rdoSlctUsr[0].checked = false;
        document.loginForm.rdoSlctUsr[1].checked = false;
        document.loginForm.rdoSlctUsr[2].checked = true;
        document.loginForm.userSe.value = "USR";
    }
}

function actionLogin() {

    if (document.loginForm.id.value =="") {
        alert("아이디를 입력하세요");
        document.loginForm.id.focus();
        return;
    } else if(document.loginForm.password.value.length < 8 ){
         alert("비밀번호는 8자 이상입니다.");
         document.loginForm.password.focus();
         return;
    } else {
        document.loginForm.action="<c:url value='/uat/uia/actionLogin.do'/>";
        //document.loginForm.j_username.value = document.loginForm.userSe.value + document.loginForm.username.value;
        //document.loginForm.action="<c:url value='/j_spring_security_check'/>";
        document.loginForm.submit();
    }
}

function actionCrtfctLogin() {
    document.defaultForm.action="<c:url value='/uat/uia/actionCrtfctLogin.do'/>";
    document.defaultForm.submit();
}

function goFindId() {
	document.loginForm.action="<c:url value='/uat/uia/egovIdSearch.do'/>";
    document.loginForm.submit();
}

function goRegiUsr() {

	var useMemberManage = '${useMemberManage}';

	if(useMemberManage != 'true'){
		alert("사용자 관리 컴포넌트가 설치되어 있지 않습니다. \n관리자에게 문의하세요.");
		return false;
	}

    var userSe = document.loginForm.userSe.value;
    // 일반회원
    if (userSe == "GNR") {
        document.loginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmMber.do'/>";
        document.loginForm.submit();
    // 기업회원
    } else if (userSe == "ENT") {
        document.loginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmEntrprs.do'/>";
        document.loginForm.submit();
    // 업무사용자
    } else if (userSe == "USR") {
        alert("업무사용자는 별도의 회원가입이 필요하지 않습니다.");
    }
}

function goGpkiIssu() {
    document.defaultForm.action="<c:url value='/uat/uia/egovGpkiIssu.do'/>";
    document.defaultForm.submit();
}

function setCookie (name, value, expires) {
    document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
}

function getCookie(Name) {
    var search = Name + "="
    if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
        offset = document.cookie.indexOf(search)
        if (offset != -1) { // 쿠키가 존재하면
            offset += search.length
            // set index of beginning of value
            end = document.cookie.indexOf(";", offset)
            // 쿠키 값의 마지막 위치 인덱스 번호 설정
            if (end == -1)
                end = document.cookie.length
            return unescape(document.cookie.substring(offset, end))
        }
    }
    return "";
}

function saveid(form) {
    var expdate = new Date();
    // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
    if (form.checkId.checked)
        expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
    else
        expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
    setCookie("saveid", form.id.value, expdate);
}

function getid(form) {
    //form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
}

function fnInit() {
    var message = document.loginForm.message.value;
    if (message != "") {
        alert(message);
    }

    //getid(document.loginForm);
    // 포커스
    document.loginForm.id.focus();
}

</script>
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

	<form name="loginForm" action ="<c:url value='/uat/uia/actionLogin.do'/>" method="post">
		<div class="hidden">
			<input name="iptSubmit1" type="submit" value="전송" title="전송" />
			<input type="radio" name="rdoSlctUsr" value="radio" checked="checked" onclick="checkLogin('GNR');" />
		</div>
		<input type="hidden" name="message" value="${message}" />
		<input type="hidden" name="userSe" value="GNR"/>
		<input type="hidden" name="j_username"/>

		<div class="loginBox">
			<fieldset>
				<legend>로그인</legend>
				<div class="login1">
					<h4><img src="<c:url value='/images/pdqm/common/member/h4_login_1.gif'/>" alt="홈페이지의 원활한 이용을 위하여 로그인을 해 주시기 바랍니다." /></h4>
					<!-- 일반로그인 -->
					<dl>
						<dt><label for="id"><img src="<c:url value='/images/pdqm/common/member/txt_id.gif'/>" alt="아이디" /></label></dt>
						<dd><input type="text" name="id" id="id" class="text" style="ime-mode:disabled;" maxlength="20" /></dd>
						<dt><label for="password"><img src="<c:url value='/images/pdqm/common/member/txt_pw.gif'/>" alt="비밀번호" /></label></dt>
						<dd><input type="password" name="password" id="password" class="text" style="ime-mode:disabled;" maxlength="12" onKeyDown="javascript:if (event.keyCode == 13) { actionLogin(); }"/></dd>
					</dl>
					<a href="<c:url value='/uat/uia/actionLogin.do'/>" onclick="actionLogin();return false;"><img src="<c:url value='/images/pdqm/common/member/btn_login_1.gif'/>" alt="로그인" /></a>
					<!--// 일반로그인 -->
				</div>
			</fieldset>
			<ul>
				<li>
					<img src="<c:url value='/images/pdqm/common/member/txt_login_1.gif'/>" alt="본 홈페이지에 가입하시면 각종 기능 및 콘텐츠를 보다 원활하게 사용할 수 있습니다." />
					<a href="${pageContext.request.contextPath}/uss/umt/MberTypeView.do" ><img src="<c:url value='/images/pdqm/common/member/btn_join.gif'/>" alt="회원가입" /></a>
				</li>
				<li>
					<img src="<c:url value='/images/pdqm/common/member/txt_login_2.gif'/>" alt="아이디/비밀번호를 분실하셨나요?" />
					<a href="<c:url value='/uat/uia/egovIdSearch.do'/>" onClick="goFindId();return false;"><img src="<c:url value='/images/pdqm/common/member/btn_find_idpw.gif'/>" alt="아이디/비밀번호 찾기" /></a>
				</li>
			</ul>
		</div>
	</form>

	<!-- 팝업 폼
	<form name="defaultForm" action ="<c:url value='/uat/uia/egovGpkiIssu.do'/>" method="post" target="_blank" title="새창으로 열림">
		<div class="hidden">
		<input name="iptSubmit3" type="submit" value="전송" title="전송" />
	</div>
	</form>-->

</div>
<!--// contents영역끝 -->
<!-- 메시지 출력 -->
<script type="text/javascript" language="javascript" defer="defer">
<!--
<c:if test="${!empty message}"> alert("${message}"); </c:if>
//-->
</script>
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>







