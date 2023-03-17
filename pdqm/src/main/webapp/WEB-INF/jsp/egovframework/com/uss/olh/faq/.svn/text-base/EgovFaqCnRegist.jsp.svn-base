<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : EgovFaqCnRegist.jsp
  * @Description : EgovFaqCnRegist 화면
  * @Modification Information
  * @
  * @  수정일             수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2009.02.01   박정규              최초 생성
  *
  *  @author 공통서비스팀
  *  @since 2009.02.01
  *  @version 1.0
  *  @see
  *
  */
%>

<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/fms/EgovMultiFile.js'/>" ></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="faqManageVO" staticJavascript="false" xhtml="true" cdata="false"/>

<script type="text/javaScript" language="javascript" defer="defer">

/* ********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_initl_faqcn(){

	// 첫 입력란에 포커스..
	faqManageVO.qestnSj.focus();

}

/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_egov_regist_faqcn(form){

	// 서버사이드 테스트용
	/*
		form.action = "<c:url value='/uss/olh/faq/FaqCnRegist.do'/>";
		form.submit();
		return;
	*/


	if (!validateFaqManageVO(form)) {

		return;

	} else {

		if	(confirm("등록하시겠습니까?"))	{

			form.action = "<c:url value='/uss/olh/faq/FaqCnRegist.do'/>";
			form.submit();

		}



	}

}

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_egov_inqire_faqcnlist() {

	faqManageVO.action = "<c:url value='/uss/olh/faq/FaqListInqire.do'/>";
	faqManageVO.submit();

}

</script>

</head>
<body onLoad="fn_egov_initl_faqcn();">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

	<!-- 상단타이틀(파일첨부를 위한 폼명 및 Enctype 설정 -->
	<form:form commandName="faqManageVO" action="${pageContext.request.contextPath}/uss/olh/faq/FaqCnRegist.do" method="post" enctype="multipart/form-data">
	<!-- 첨부파일을 위한 Hidden -->
	<input type="hidden" name="posblAtchFileNumber" id="posblAtchFileNumber" value="3" />
	<!-- 조회조건 유지 -->
	<input id="searchFaqCategory" name="searchFaqCategory" type="hidden" value="<c:out value="${searchVO.searchFaqCategory}"/>"/>
	<input id="searchCondition" name="searchCondition" type="hidden" value="<c:out value="${searchVO.searchCondition}"/>"/>
	<input id="searchKeyword" name="searchKeyword" type="hidden" value="<c:out value="${searchVO.searchKeyword}"/>"/>


	<div class="title">
		<div class="locationMap">관리자홈 > 콘텐츠관리 > 자주하는질문관리 > 등록</div>
		<h2>자주하는질문 등록</h2>
	</div>

	<table class="vblType1" summary="등록 테이블입니다.">
		<caption>자주하는질문 입력폼</caption>
		<colgroup>
			<col width="20%" />
			<col width="80%" />
		</colgroup>
		<tr>
			<th>
				<label for="faqCategory">분류<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
			</th>
			<td>
			    <form:select path="faqCategory" id="faqCategory" class="text">
			        <form:option value="" label="--선택하세요--"/>
			        <form:options items="${faqCategory_result}" itemValue="code" itemLabel="codeNm"/>
			    </form:select>
			    <div><form:errors path="faqCategory" cssClass="error"/></div>
			</td>
		</tr>
		<tr>
			<th>
				<label for="qestnSj">질문제목<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
			</th>
			<td>
			    <form:input path="qestnSj" id="qestnSj" size="70" maxlength="70" class="text"/>
    			<div><form:errors path="qestnSj"/></div>
			</td>
		</tr>
		<tr>
			<th>
				<label for="answerCn">답변내용<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
			</th>
			<td>
				<form:textarea path="answerCn" id="answerCn" cols="70" rows="15" class="text" style="width:580px" />
				<div><form:errors path="answerCn"/></div>
			</td>
		</tr>
	</table>

	<div class="btnArea">
		<!-- 등록 -->
		<span class="button"><input type="submit" value="<spring:message code="button.create" />" onclick="fn_egov_regist_faqcn(document.forms[0]); return false;" /></span>
		<!-- 목록 -->
		<span class="button"><a href="<c:url value='/uss/olh/faq/FaqListInqire.do'/>" onclick="fn_egov_inqire_faqcnlist(); return false;"><spring:message code="button.list" /></a></span>
		<!-- 취소 -->

	</div>


	</form:form>
	<!-- content end -->

<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>