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
  * @Class Name : EgovFaqCnUpdt.jsp
  * @Description : EgovFaqCnUpdt 화면
  * @Modification Information
  * @
  * @ 수정일   		수정자		수정내용
  * @ ----------	------		---------------------------
  * @ 2009.02.01	박정규		최초 생성
  * @ 2011.07.18	옥찬우		경로수정( Line 161 : /com/cmm/fms/selectFileInfs.do -> /cmm/fms/selectFileInfs.do )
  * @ 2011.07.20	옥찬우		<Input> Tag id 속성추가( Line : 113 )
  * @							파일 첨부 갯수 제한기능을 위한 내용추가 ( Line : 200 ~ 206 )
  *
  *  @author 공통서비스팀
  *  @since 2009.02.01
  *  @version 1.0
  *  @see
  *
  **/
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
function fn_egov_updt_faqcn(form, faqId){

	// 서버사이드 테스트용
	/*
		form.action = "<c:url value='/uss/olh/faq/FaqCnUpdt.do'/>";
		form.submit();
		return;
	*/

	if (!validateFaqManageVO(form)) {

		return;

	} else {

		if	(confirm("수정하시겠습니까?"))	{

//			form.faqId.value = faqId; //주석처리

			form.action = "<c:url value='/uss/olh/faq/FaqCnUpdt.do'/>";
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

	<!-- 상단타이틀 파일첨부를 위한 폼명 및 Enctype 설정-->
	<form:form commandName="faqManageVO" action="${pageContext.request.contextPath}/uss/olh/faq/FaqCnUpdt.do" method="post"  enctype="multipart/form-data">

	<!-- FaqCnUpdtView.do Call을 위한 처리-->
	<input name="faqId" type="hidden" value="<c:out value='${result.faqId}'/>">

	<!-- 첨부파일을 위한 Hidden -->
	<input type="hidden" name="posblAtchFileNumber" id="posblAtchFileNumber" value="3">

	<!-- 첨부파일 삭제 후 리턴 URL -->
	<input type="hidden" name="returnUrl" id="returnUrl" value="<c:url value='/uss/olh/faq/FaqCnUpdtView.do'/>"/>
	<!-- 조회조건 유지 -->
	<input id="searchFaqCategory" name="searchFaqCategory" type="hidden" value="<c:out value="${searchVO.searchFaqCategory}"/>"/>
	<input id="searchCondition" name="searchCondition" type="hidden" value="<c:out value="${searchVO.searchCondition}"/>"/>
	<input id="searchKeyword" name="searchKeyword" type="hidden" value="<c:out value="${searchVO.searchKeyword}"/>"/>


	<div class="title">
		<div class="locationMap">관리자홈 > 콘텐츠관리 > 자주하는질문관리 > 수정</div>
		<h2>자주하는질문 수정 </h2>
	</div>
	<table class="vblType1" summary="수정 테이블입니다.">
		<caption>자주하는질문 수정폼</caption>
		<colgroup>
			<col width="20%" />
			<col width="80%" />
		</colgroup>
		<tr>
			<th><label for="faqCategory">분&nbsp;&nbsp;류<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
			<td>
				<select name="faqCategory" id="faqCategory" class="text">
			    	<option selected="selected" value='0'>--선택하세요--</option>
			        	<c:forEach var="faqCategoryList"  items="${faqCategory_result}" varStatus="faqCategory">
			            	<option value='<c:out value="${faqCategoryList.code}"/>' <c:if test="${result.faqCategory == faqCategoryList.code }">selected="selected"</c:if> >
			                <c:out value="${faqCategoryList.codeNm}"/></option>
			           	</c:forEach>
		        </select>
			</td>
		</tr>
		<tr>
			<th><label for="qestnSj">질문제목<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
			<td>
		        <form:input path="qestnSj" id="qestnSj" size="70" class="text" maxlength="70" />
		    	<div><form:errors path="qestnSj"/></div>
			</td>
		</tr>
		<tr>
			<th><label for="answerCn">답변내용<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
			<td>
		        <form:textarea path="answerCn" id="answerCn" cols="60" rows="15" cssClass="text"  style="width:580px"/>
      			<div><form:errors path="answerCn"/></div>
			</td>
		</tr>
	</table>

	<div class="btnArea">
		<!-- 수정 -->
		<span class="button"><input type="submit" value="<spring:message code="button.update" />" onclick="fn_egov_updt_faqcn(document.forms[0],'<c:out value="${result.faqId}"/>'); return false;" ></span>
		<!-- 삭제 -->

		<!-- 목록 -->
		<span class="button"><a href="<c:url value='/uss/olh/faq/FaqListInqire.do'/>" onclick="fn_egov_inqire_faqcnlist(); return false;"><spring:message code="button.list" /></a></span>
	</div>

	</form:form>
	<!-- content end -->

<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
