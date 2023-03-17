<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%
 /**
  * @Class Name : join4.jsp
  * @Description : 회원가입>회원정보등록 화면
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
	<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
	<validator:javascript formName="mberManageVO" staticJavascript="false" xhtml="true" cdata="false"/>
	<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/ccm/zip/EgovZipPopup.js' />" ></script>
	<script type="text/javaScript" language="javascript" defer="defer">
	<!--
	function fnIdCheck(){
	    var retVal;
	    var url = "<c:url value='/uss/umt/EgovIdDplctCnfirmView.do'/>";
	    var varParam = new Object();
	    varParam.checkId = document.mberManageForm.mberId.value;
	    var openParam = "dialogWidth:480px;dialogHeight:320px;scroll:no;status:no;center:yes;resizable:yes;";
	    retVal = window.showModalDialog(url, varParam, openParam);
	    if(retVal) {
	    	document.mberManageForm.mberId.value = retVal;
	    } //2011-12-01
	}

	function fnInsert(){
		if(validateMberManageVO(document.mberManageForm)){

			if(document.mberManageForm.password.value.length < 8 ){
	            alert("비밀번호는 8자 이상입니다.");
	            return;
	        }
			if(document.mberManageForm.password.value != document.mberManageVO.password2.value){
	            alert("<spring:message code="fail.user.passwordUpdate2" />");
	            return;
	        }
			// 등록진행
			if(document.mberManageVO.newsletterYnView.checked){
				document.mberManageVO.newsletterYn.value = "Y";
			}
			//alert(document.mberManageVO.newsletterYn.value);
			document.mberManageVO.mberType.disabled = false;
			document.mberManageForm.action = "<c:url value='/uss/umt/MberInsertResult.do'/>";
	        document.mberManageForm.submit();
	    }
	}

	function fnCancel(){
		if(confirm('회원가입을 취소 하시겠습니까?')){
			document.mberManageForm.action = "<c:url value='/index.do'/>";
	        document.mberManageForm.submit();
	    }
	}

	//-->
	</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb9.jsp" %>

<!-- contents영역시작 -->
<form:form commandName="mberManageVO" name="mberManageForm"  method="post" >
<form:hidden path="mberNm"/>
<form:hidden path="mberGrp"/>
<!-- <form:hidden path="mberSttus" value="P" />
<form:hidden path="newsletterYn" value="N" /> -->
<input id="mberSttus" name="mberSttus" value="P" type="hidden" />
<input id="newsletterYn" name="newsletterYn" value="N" type="hidden" />



<div class="bg_join">
	<div class="title">
		<div class="location">Home > 회원가입 > <em>회원정보등록</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/member/h3_join4.gif'/>" alt="회원정보등록" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/member/h3_join1_desc.png'/>" alt="공공정보 품질관리 지원센터 홈페이지의 원활한 이용을 위하여 회원가입 후 로그인을 해 주시기 바랍니다. 회원으로 가입하시면 더 많은 정보를 열람할 수 있으며 게시판 작성이 가능합니다." /></p>
	</div>

	<fieldset>
		<legend>회원정보등록 폼</legend>
		<table class="memTable" summary="회원정보등록 폼입니다.">
			<colgroup>
				<col width="20%"><col width="30%">
				<col width="20%"><col width="auto">
			<colgroup>
			<tr>
				<th scope="row">성명 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></th>
				<td colspan="3"><strong>${mberManageVO.mberNm}</strong></td>
			</tr>
			<tr>
				<th scope="row"><label for="mberId">아이디 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td colspan="3">
					<input type="text" id="mberId" name="mberId" onclick="fnIdCheck();return false;" class="readonly" style="width:170px;ime-mode:disabled;" size="20" maxlength="20" readonly="readonly" />
					<a href="<c:url value='/uss/umt/EgovIdDplctCnfirmView.do'/>" onclick="fnIdCheck();return false;"><img src="<c:url value='/images/pdqm/common/btn/btn_s_idcheck.gif'/>" alt="중복확인" /></a>
					<span class="fs_1">(영문과 숫자를 혼합하여 5자이상~10자 이내로 작성해 주세요.)</span>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="password">비밀번호 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td colspan="3">
					<input type="password" id="password" name="password" class="text" style="width:170px;ime-mode:disabled;" />
					<span class="fs_1">(영문과 숫자를 혼합하여 8자이상~12자 이내로 작성해 주세요.)</span>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="password2">비밀번호 확인 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td colspan="3"><input type="password" id="password2" name="password2" class="text" style="width:170px;ime-mode:disabled;" /></td>
			</tr>
			<tr>
				<th scope="row" class="ta_l">회원구분 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></th>
				<td colspan="3">
				<select id="mberType" name="mberType" style="width:170px;">
					<option value="" label="--선택하세요--"/>
					<c:forEach var="mberType_result" items="${mberType_result}" varStatus="status">
						<c:if test="${mberType_result.code != 'A'}">
							<option value="${mberType_result.code}" label="${mberType_result.codeNm}" />
						</c:if>
					</c:forEach>

				</td>
			</tr>
			<tr>
				<th scope="row"><label for="mberEmailAdres">이메일 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td colspan="3">${mberManageVO.mberEmailAdres}
					<form:hidden path="mberEmailAdres" size="30" maxlength="50" class="text" style="width:170px;" />
					<form:errors path="mberEmailAdres" cssClass="error" />
					<input type="checkbox" id="newsletterYnView" name="newsletterYnView" /> <label for="newsletterYnView" class="fs_8">뉴스레터 수신동의</label>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="companyName">기관명/회사명 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td><input type="text" id="companyName" name="companyName" class="text" style="width:170px;" /></td>
				<th scope="row" class="bdr_l"><label for="departmentName">부서명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td><input type="text" id="departmentName" name="departmentName" class="text" style="width:170px;" /></td>
			</tr>
			<tr>
				<th scope="row"><label for="areaNo">전화번호 <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
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
					-
					<input type="text" size="4" maxlength="4" name="middleTelno" id="middleTelno" class="text" style="width:60px;" /> -
					<input type="text" size="4" maxlength="4" name="endTelno" id="endTelno" class="text" style="width:60px;" />
				</td>
			</tr>
		</table>

		<!-- btn영역 -->
		<div class="btnArea_c">
			<a href="#" onclick="fnInsert();return false;"><img src="<c:url value='/images/pdqm/common/btn/btn_ok.gif'/>" alt="확인" /></a>
			<a href="<c:url value='/index.do'/>" onclick="fnCancel();return false;"><img src="<c:url value='/images/pdqm/common/btn/btn_cancel.gif'/>" alt="취소" /></a>
		</div>
		<!--// btn영역 -->
	</fieldset>
</div>
</form:form>

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

