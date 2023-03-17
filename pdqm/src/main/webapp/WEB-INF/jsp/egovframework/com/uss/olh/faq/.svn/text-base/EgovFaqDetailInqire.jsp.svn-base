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
  * @Class Name : EgovFaqDetailInqure.jsp
  * @Description : EgovFaqDetailInqure 화면
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
<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_initl_faq(){



}

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_egov_inqire_faqlist() {

	document.FaqManageForm.action = "<c:url value='/uss/olh/faq/FaqListInqire.do'/>";
	document.FaqManageForm.submit();

}

/* ********************************************************
 * 수정처리화면
 ******************************************************** */
function fn_egov_updt_faq(faqId){

	// Update하기 위한 키값(faqId)을 셋팅
	document.FaqManageForm.faqId.value = faqId;
	document.FaqManageForm.action = "<c:url value='/uss/olh/faq/FaqCnUpdtView.do'/>";
	document.FaqManageForm.submit();

}


function fn_egov_delete_faq(faqId){

	if	(confirm("<spring:message code="common.delete.msg" />"))	{

		// Delete하기 위한 키값(faqId)을 셋팅
		document.FaqManageForm.faqId.value = faqId;
		document.FaqManageForm.action = "<c:url value='/uss/olh/faq/FaqCnDelete.do'/>";
		document.FaqManageForm.submit();

	}


}

</script>
</head>

<body onload="fn_egov_initl_faq();">

<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

	<form:form commandName="faqManageVO" name="FaqManageForm" action="<c:url value='/uss/olh/faq/FaqCnUpdtView.do'/>" method="post">
	<form:hidden path="faqId" />
	<!-- 조회조건 유지 -->
	<input id="searchFaqCategory" name="searchFaqCategory" type="hidden" value="<c:out value="${searchVO.searchFaqCategory}"/>"/>
	<input id="searchCondition" name="searchCondition" type="hidden" value="<c:out value="${searchVO.searchCondition}"/>"/>
	<input id="searchKeyword" name="searchKeyword" type="hidden" value="<c:out value="${searchVO.searchKeyword}"/>"/>


	<div class="title">
		<div class="locationMap">관리자홈 > 콘텐츠관리 > 자주하는질문관리 > 상세보기</div>
		<h2>자주하는질문 조회</h2>
	</div>

	<!-- content start -->
	<table class="vblType1" summary="자주하는질문 상세보기 테이블입니다.">
		<caption>자주하는질문 상세보기</caption>
		<colgroup>
			<col width="20%" />
			<col width="80%" />
		</colgroup>
		<tr>
			<th>
				<label for="faqCategory">분&nbsp;&nbsp;류<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
			</th>
			<td>
				<select name="faqCategory" id="faqCategory" disabled="true">
					<option selected="selected" value='0'>--선택하세요--</option>
				   	<c:forEach var="faqCategoryList"  items="${faqCategory_result}" varStatus="faqCategory">
						<option value='<c:out value="${faqCategoryList.code}"/>' <c:if test="${result.faqCategory == faqCategoryList.code }">selected="selected"</c:if> >
						<c:out value="${faqCategoryList.codeNm}"/></option>
				   	</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<th>
				<label for="qestnSj">질문제목<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
			</th>
			<td>
				<input path="qestnSj" id="qestnSj" class="text" size="70" maxlength="70" readonly="true" value="<c:out value='${result.qestnSj}'/>"/>
			</td>
		</tr>
		<tr>
			<th>
				<label for="answerCn">답변내용<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
			</th>
			<td>
				<textarea id="answerCn" name="answerCn" class="text" cols="80" rows="15" readonly="true" style="width:580px;">
<c:out value="${result.answerCn}"/>
      			</textarea>
			</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td><c:out value="${result.inqireCo}"/></td>
		</tr>
		<tr>
			<th>등록일자</th>
			<td><c:out value="${result.lastUpdusrPnttm}"/></td>
		</tr>


	</table>
	<div class="btnArea">
		<!-- 등록 -->
		<span class="button"><input type="submit" value="<spring:message code="button.update" />" onclick="fn_egov_updt_faq('<c:out value="${result.faqId}"/>'); return false;" /></span>
		<!-- 삭제 -->
		<span class="button"><a href="<c:url value='/uss/olh/faq/FaqCnDelete.do'/>?faqId=<c:out value='${result.faqId}'/>" onclick="fn_egov_delete_faq('<c:out value="${result.faqId}"/>'); return false;"><spring:message code="button.delete" /></a></span>
		<!-- 목록 -->
		<span class="button"><a href="<c:url value='/uss/olh/faq/FaqListInqire.do'/>" onclick="fn_egov_inqire_faqlist(); return false;"><spring:message code="button.list" /></a></span>
	</div>

	</form:form>
	<!-- content end -->

<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>


