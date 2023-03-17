<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : join2.jsp
  * @Description : 회원가입>본인인증 화면
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
		<div class="location">Home > 회원가입 > <em>본인인증</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/member/h3_join2.gif'/>" alt="본인인증" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/member/h3_join1_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터 홈페이지의 원활한 이용을 위하여 회원가입 후 로그인을 해 주시기 바랍니다. 회원으로 가입하시면 더 많은 정보를 열람할 수 있으며 게시판 작성이 가능합니다." /></p>
	</div>

	<div class="realname">
		<div class="nameBox">
			<h4><img src="<c:url value='/images/pdqm/common/member/h4_join2_1.gif'/>" alt="실명 인증" /></h4>
				<dl>
					<dt><label for="input_name1"><img src="<c:url value='/images/pdqm/common/member/txt_name.gif'/>" alt="이름" /></label></dt>
					<dd><input type="text" id="input_name1" class="text" style="width:150px;" /></dd>

					<dt><label for="input_jumin"><img src="<c:url value='/images/pdqm/common/member/txt_jumin.gif'/>" alt="주민등록번호" /></label></dt>
					<dd>
						<input type="text" id="input_jumin" class="text" title="주민번호 앞자리" style="width:65px;" /> -
						<input type="text" class="text" title="주민번호 뒷자리" style="width:65px;" />
					</dd>
				</dl>
			<a href="##" class="btn"><img src="<c:url value='/images/pdqm/common/member/btn_namecheck.gif'/>" alt="확인" /></a>
		</div>
		<div class="nameBox">
			<h4><img src="<c:url value='/images/pdqm/common/member/h4_join2_2.gif'/>" alt="이메일 인증" /></h4>
			<div class="box3_b">
				<dl>
					<dt><label for="input_name"><img src="<c:url value='/images/pdqm/common/member/txt_name.gif'/>" alt="이름" /></label></dt>
					<dd><input type="text" id="input_name" class="text" style="width:150px;" /></dd>

					<dt><label for="input_email"><img src="<c:url value='/images/pdqm/common/member/txt_email2.gif'/>" alt="이메일" /></label></dt>
					<dd><input type="text" id="input_email" class="text" style="width:150px;" /></dd>

					<dt><label for="input_checkno"><img src="<c:url value='/images/pdqm/common/member/txt_checkno.gif'/>" alt="인증번호" /></label></dt>
					<dd>
						<input type="text" id="input_checkno" class="text" style="width:70px;" />
						<a href="##"><img src="<c:url value='/images/pdqm/common/member/btn_checkno.gif'/>" alt="인증번호 요청" /></a>
					</dd>
				</dl>
			</div>
			<a href="##" class="btn"><img src="<c:url value='/images/pdqm/common/member/btn_namecheck.gif'/>" alt="확인" /></a>
		</div>
	</div>

	<div class="cetri_box">
		<dl class="cetri_con1">
			<dt><img src="<c:url value='/images/pdqm/common/member/txt1_tit.gif'/>" alt="실명인증 가입안내" /></dt>
			<dd><img src="<c:url value='/images/pdqm/common/member/txt1_1.gif'/>" alt="공공정보 품질관리 지원센터는 2011년 9월 30일 시행하는 개인정보보호법을 준수하여 I-PIN사용을 권장하며 주민등록번호로 본인 인증 및 회원 가입을 지양하고 있습니다. " /></dd>
			<dd><img src="<c:url value='/images/pdqm/common/member/txt1_2.gif'/>" alt="주민등록번호는 실명확인시에만 사용되며 수집·보관하지 않으며, ‘주민등록법’에 의해 타인의 주민등록번호를 부정 사용하는 자는 3년 이하의 징역 또는 1천만원 이하의 벌금이 부과될 수 있습니다. (관련법률 : 관련법률: 주민등록법 제37조(벌칙) 제9호(시행일 2006.09.24)) 만약, 타인의 주민번호를 도용하여 온라인 회원 가입을 하신 이용자 분들은 지금 즉시 명의 도용을 중단하시길 바랍니다. " /></dd>
		</dl>
		<dl class="cetri_con2 space">
			<dt><img src="<c:url value='/images/pdqm/common/member/txt2_tit.gif'/>" alt="이메일인증 가입안내" /></dt>
			<dd><img src="<c:url value='/images/pdqm/common/member/txt2_1.gif'/>" alt="공공정보 품질관리 지원센터는 이름과 E-mail을 인증을 통하여 가입할 수 있습니다. 입력한 E-mail 로 인증번호가 발송되며, 수신한 인증번호를 입력하여 본인인증을 거칠 수 있습니다.  " /></dd>
		</dl>
	</div>

</div>


<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

