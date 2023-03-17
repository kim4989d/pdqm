<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : find_id.jsp
  * @Description :  아이디/비밀번호 찾기 화면
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


<script type="text/javascript">

function fnCheckUsrId(userSe) {
	// 일반회원
	if (userSe == "GNR") {
		document.idForm.rdoSlctUsr[0].checked = true;
		document.idForm.rdoSlctUsr[1].checked = false;
		document.idForm.rdoSlctUsr[2].checked = false;
		document.idForm.userSe.value = "GNR";
	// 기업회원
	} else if (userSe == "ENT") {
		document.idForm.rdoSlctUsr[0].checked = false;
		document.idForm.rdoSlctUsr[1].checked = true;
		document.idForm.rdoSlctUsr[2].checked = false;
		document.idForm.userSe.value = "ENT";
	// 업무사용자
	} else if (userSe == "USR") {
		document.idForm.rdoSlctUsr[0].checked = false;
		document.idForm.rdoSlctUsr[1].checked = false;
		document.idForm.rdoSlctUsr[2].checked = true;
		document.idForm.userSe.value = "USR";
	}
}

function fnCheckUsrPassword(userSe) {
	// 일반회원
	if (userSe == "GNR") {
		document.passwordForm.rdoSlctUsr[0].checked = true;
		document.passwordForm.rdoSlctUsr[1].checked = false;
		document.passwordForm.rdoSlctUsr[2].checked = false;
		document.passwordForm.userSe.value = "GNR";
	// 기업회원
	} else if (userSe == "ENT") {
		document.passwordForm.rdoSlctUsr[0].checked = false;
		document.passwordForm.rdoSlctUsr[1].checked = true;
		document.passwordForm.rdoSlctUsr[2].checked = false;
		document.passwordForm.userSe.value = "ENT";
	// 업무사용자
	} else if (userSe == "USR") {
		document.passwordForm.rdoSlctUsr[0].checked = false;
		document.passwordForm.rdoSlctUsr[1].checked = false;
		document.passwordForm.rdoSlctUsr[2].checked = true;
		document.passwordForm.userSe.value = "USR";
	}
}

function fnSearchId() {
	if (document.idForm.name.value =="") {
		alert("이름을 입력하세요");
	} else if (document.idForm.email.value =="") {
		alert("가입시 이메일주소를 입력하세요");
	} else {
		//window.open("<c:url value='/cmm/uat/uia/searchId.do' />?id=");
		//document.idForm.target = "_blank";
		document.idForm.action = "<c:url value='/uat/uia/searchId.do'/>";
		document.idForm.submit();
	}
}

function fnSearchPassword() {
	if (document.passwordForm.id.value =="") {
		alert("아이디를 입력하세요");
	} else if (document.passwordForm.name.value =="") {
		alert("이름을 입력하세요");
	} else if (document.passwordForm.email.value =="") {
		alert("가입시 이메일주소를 입력하세요");
	} else if (document.passwordForm.passwordHint.value =="") {
		alert("비밀번호 힌트를 선택하세요");
	} else if (document.passwordForm.passwordCnsr.value =="") {
		alert("비밀번호 정답을 입력하세요");
	} else {
		document.passwordForm.target = "_blank";
		document.passwordForm.submit();
	}
}

</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb10.jsp" %>


<!--아이디찾기 테이블 시작-->
<form name="idForm" method="post" action="#">
<input type="radio" name="rdoSlctUsr" value="radio" checked="checked" onclick="fnCheckUsrId('GNR');" style="display:none" />
<input name="userSe" type="hidden" value="GNR" />

<div class="bg_login">
	<div class="title">
		<div class="location">Home > 로그인 > <em>아이디/비밀번호 찾기</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/member/h3_find_idpw.gif'/>" alt="아이디/비밀번호 찾기" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/member/h3_login_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터 방문을 환영합니다. 공공정보 품질관리 지원센터 홈페이지의 원활한 이용을 위하여 로그인을 해 주시기 바랍니다." /></p>
	</div>

	<div class="boxB"><div class="boxT">
		<div class="find_box">
			<dl>
				<dt><label for="name"><img src="<c:url value='/images/pdqm/common/member/txt_name.gif'/>" alt="이름" /></label></dt>
				<dd><input type="text" id="name" name="name" maxlength="20" class="text" style="width:175px;" value="${loginVO.name }" /></dd>
				<dt><label for="email"><img src="<c:url value='/images/pdqm/common/member/txt_email2.gif'/>" alt="이메일" /></label></dt>
				<dd><input type="text" id="email" name="email" maxlength="30" class="text" style="width:175px;ime-mode:disabled;" value="${loginVO.email }" /></dd>
			</dl>
			<a href="<c:url value='/uat/uia/searchId.do'/>" onclick="fnSearchId();return false;"><img src="<c:url value='/images/pdqm/common/member/btn_email.gif'/>" alt="E-Mail 인증" /></a>
			<img src="<c:url value='/images/pdqm/common/member/txt_find_3.gif'/>" class="mt_5" alt="가입시 입력하였던 이름,이메일을 입력하시기 바랍니다." />
		</div>
	</div></div>
</div>
</form>



<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
<!-- 메시지 출력 -->
<script type="text/javascript" language="javascript" defer="defer">
<!--
<c:if test="${!empty resultInfo}"> alert("${resultInfo}"); </c:if>
//-->
</script>
