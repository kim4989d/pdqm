<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%
 /**
  * @Class Name : MberSelectUpdtView.jsp
  * @Description :  개인정보수정 화면
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
	<validator:javascript formName="mberSelectUpdtVO" staticJavascript="false" xhtml="true" cdata="false"/>
	<script type="text/javascript" language="javascript" defer="defer">
	<!--

	function fnUpdate(){
		if(validateMberSelectUpdtVO(document.mberManageForm)){
			if(document.mberManageForm.password.value.length < 8 ){
	            alert("새비밀번호는 8자 이상입니다.");
	            return;
	        }
			if(document.mberManageForm.password.value != document.mberManageForm.password2.value){
	            alert("<spring:message code="fail.user.passwordUpdate2" />");
	            return;
	        }
			// 등록진행
			if(document.mberManageVO.newsletterYnView.checked){
				document.mberManageVO.newsletterYn.value = "Y";
			}

			document.mberManageVO.mberType.disabled = false;
			document.mberManageForm.action = "<c:url value='/uss/umt/MberSelectUpdt.do'/>";
	        document.mberManageForm.submit();
		}
	}


	//-->
	</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb11.jsp" %>

<!-- contents영역시작 -->
<form:form commandName="mberManageVO" name="mberManageForm"  method="post" >
<form:hidden path="mberId" />
<form:hidden path="mberNm"/>
<form:hidden path="mberGrp"/>
<form:hidden path="mberSttus" />
<!-- <form:hidden path="newsletterYn" value="N" /> -->
<input id="newsletterYn" name="newsletterYn" value="N" type="hidden" />
<form:hidden path="uniqId" />

<div class="bg_mypage">
	<div class="title">
		<div class="location">Home > <em>개인정보수정</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/member/h3_memEdit.gif'/>" alt="개인정보수정" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/member/h3_join3_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터 가입시 입력한 개인정보를 수정할 수 있습니다.  뉴스레터 수신 허용시 공공정보 품질관리 지원센터에서 발송하는 다양한 새소식과 컬럼, 이벤트 뉴스레터를 수신할 수 있습니다." /></p>
	</div>

	<fieldset>
		<legend>회원정보 수정폼</legend>
		<table class="memTable"  summary="회원정보 수정폼입니다.">
			<colgroup>
				<col width="20%"><col width="30%">
				<col width="20%"><col width="auto">
			<colgroup>
			<tr>
				<th scope="row">성명 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></th>
				<td colspan="3"><strong>${mberManageVO.mberNm}</strong></td>
			</tr>
			<tr>
				<th scope="row">아이디 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></th>
				<td colspan="3">${mberManageVO.mberId}</td>
			</tr>
			<tr>
				<th scope="row"><label for="oldPassword">비밀번호 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td colspan="3">
					<input type="password" id="oldPassword" name="oldPassword" class="text" style="width:170px;ime-mode: disabled;" />
					<span class="fs_1">(영문과 숫자를 혼함하여 8자이상~12자 이내로 작성해 주세요.)</span>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="password">새 비밀번호 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td colspan="3"><input type="password" id="password" name="password" class="text" style="width:170px;ime-mode: disabled;" /></td>
			</tr>
			<tr>
				<th scope="row"><label for="password2">새 비밀번호 확인 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td colspan="3"><input type="password" id="password2" name="password2" class="text" style="width:170px;ime-mode: disabled;" /></td>
			</tr>
			<tr>
				<th scope="row" class="mberType">회원구분 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></th>
				<td colspan="3">
				<form:select path="mberType" disabled ="true" style="width:170px;">
					<form:option value="" label="--선택하세요--"/>
					<form:options items="${mberType_result}" itemValue="code" itemLabel="codeNm"/>
				</form:select>
				<form:errors path="mberType" cssClass="error"/>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="mberEmailAdres">이메일<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td colspan="3">
					<form:input path="mberEmailAdres" size="30" maxlength="50" class="text" style="width:170px;" />
					<form:errors path="mberEmailAdres" cssClass="error" />
					<input type="checkbox" id="newsletterYnView" name="newsletterYnView" <c:if test="${mberManageVO.newsletterYn=='Y'}">checked="true"</c:if> />
					<label for="newsletterYn">뉴스레터 수신동의</label>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="companyName">회사명/기관명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:input path="companyName"  size="50" maxlength="50" class="text" style="width:170px;" />
					<form:errors path="companyName" cssClass="error" />
				</td>
				<th scope="row"><label for="departmentName">부서명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:input path="departmentName" size="50" maxlength="50" class="text" style="width:170px;" />
					<form:errors path="departmentName" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="areaNo">전화번호<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td colspan="3">
					<select name="areaNo" id="areaNo" title="지역번호">
						<option value="02" <c:if test="${mberManageVO.areaNo == '02'}">selected</c:if> >02</option>
						<option value="031" <c:if test="${mberManageVO.areaNo == '031'}">selected</c:if> >031</option>
						<option value="032" <c:if test="${mberManageVO.areaNo == '032'}">selected</c:if> >032</option>
						<option value="033" <c:if test="${mberManageVO.areaNo == '033'}">selected</c:if> >033</option>
						<option value="041" <c:if test="${mberManageVO.areaNo == '041'}">selected</c:if> >041</option>
						<option value="042" <c:if test="${mberManageVO.areaNo == '042'}">selected</c:if> >042</option>
						<option value="043" <c:if test="${mberManageVO.areaNo == '043'}">selected</c:if> >043</option>
						<option value="051" <c:if test="${mberManageVO.areaNo == '051'}">selected</c:if> >051</option>
						<option value="052" <c:if test="${mberManageVO.areaNo == '052'}">selected</c:if> >052</option>
						<option value="053" <c:if test="${mberManageVO.areaNo == '053'}">selected</c:if> >053</option>
						<option value="054" <c:if test="${mberManageVO.areaNo == '054'}">selected</c:if> >054</option>
						<option value="055" <c:if test="${mberManageVO.areaNo == '055'}">selected</c:if> >055</option>
						<option value="061" <c:if test="${mberManageVO.areaNo == '061'}">selected</c:if> >061</option>
						<option value="062" <c:if test="${mberManageVO.areaNo == '062'}">selected</c:if> >062</option>
						<option value="063" <c:if test="${mberManageVO.areaNo == '063'}">selected</c:if> >063</option>
						<option value="070" <c:if test="${mberManageVO.areaNo == '070'}">selected</c:if> >070</option>
						<option value="010" <c:if test="${mberManageVO.areaNo == '010'}">selected</c:if> >010</option>
						<option value="011" <c:if test="${mberManageVO.areaNo == '011'}">selected</c:if> >011</option>
						<option value="016" <c:if test="${mberManageVO.areaNo == '016'}">selected</c:if> >016</option>
						<option value="017" <c:if test="${mberManageVO.areaNo == '017'}">selected</c:if> >017</option>
						<option value="018" <c:if test="${mberManageVO.areaNo == '018'}">selected</c:if> >018</option>
						<option value="019" <c:if test="${mberManageVO.areaNo == '019'}">selected</c:if> >019</option>
					</select>
					- <form:input path="middleTelno" size="4" maxlength="4" title="전화번호2" class="text" style="width:60px;" />
					- <form:input path="endTelno" size="4" maxlength="4" title="전화번호3" class="text" style="width:60px;"/>
					<form:errors path="areaNo" cssClass="error" />
					<form:errors path="middleTelno" cssClass="error" />
					<form:errors path="endTelno" cssClass="error" />

				</td>
			</tr>
		</table>

		<!-- btn영역 -->
		<div class="btnArea ta_r">
			<a href="##" onclick="fnUpdate();return false;"><img src="<c:url value='/images/pdqm/common/btn/btn_ok.gif'/>" alt="확인" /></a>
			<a href="${pageContext.request.contextPath}/index.do"><img src="<c:url value='/images/pdqm/common/btn/btn_cancel.gif'/>" alt="취소" /></a>
		</div>
		<!--// btn영역 -->
	</fieldset>
</div>

</form:form>
	<script type="text/javascript" language="javascript" defer="defer">
	<!--
	<!-- 기존패스워드와 다를때 -->
	
	<c:if test="${errorCode == '1'}"> alert("${resultMsg}");</c:if>
	<c:if test="${errorCode == '0'}">
		<c:if test="${!empty resultMsg}"> 
			alert("${resultMsg}");
			document.mberManageForm.action = "<c:url value='/index.do'/>";
			document.mberManageForm.submit();
		</c:if>
	</c:if>
	//-->
	</script>

		<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
