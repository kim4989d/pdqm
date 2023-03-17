<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : EgovFaqListInqire.jsp
  * @Description : EgovFaqListInqire 화면
  * @Modification Information
  * @
  * @  수정일   	수정자		수정내용
  * @ ----------	------		--------------------------------------------------------------
  * @ 2009.02.01	박정규		최초 생성
  *  @author 공통서비스팀
  *  @since 2009.02.01
  *  @version 1.0
  *  @see
  *
  **/
%>

<script type="text/javaScript" language="javascript" defer="defer">

/*********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_initl_faqlist(){

	// 첫 입력란에 포커스..
	document.FaqListForm.searchKeyword.focus();

}

/*********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function fn_egov_select_linkPage(pageNo){

	document.FaqListForm.pageIndex.value = pageNo;
	document.FaqListForm.action = "<c:url value='/uss/olh/faq/FaqListInqire.do'/>";
   	document.FaqListForm.submit();

}

/*********************************************************
 * 조회 처리 함수
 ******************************************************** */
function fn_egov_search_faq(){

	document.FaqListForm.pageIndex.value = 1;
	document.FaqListForm.submit();

}

/*********************************************************
 * 등록 처리 함수
 ******************************************************** */
function fn_egov_regist_faq(){

	document.FaqListForm.action = "<c:url value='/uss/olh/faq/FaqCnRegistView.do'/>";
	document.FaqListForm.submit();

}

/*********************************************************
 * 수정 처리 함수
 ******************************************************** */
function fn_egov_updt_faqlist(){

	document.FaqListForm.action = "<c:url value='/uss/olh/faq/FaqCnUpdtView.do'/>";
	document.FaqListForm.submit();

}
/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fn_egov_inquire_faqlistdetail(faqId) {

	// Faqid
	document.FaqListForm.faqId.value = faqId;
//  document.FaqListForm.action = "<c:url value='/uss/olh/faq/FaqListDetailInqire.do'/>";
  	document.FaqListForm.action = "<c:url value='/uss/olh/faq/FaqInqireCoUpdt.do'/>";
  	document.FaqListForm.submit();

}


</script>
</head>
<body onLoad="fn_egov_initl_faqlist();">

<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

	<!-- content start -->

	<form name="FaqListForm" action="<c:url value='/uss/olh/faq/FaqListInqire.do'/>" method="post">
	<input name="faqId" type="hidden" value="" />
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>" />
	<div class="title">
		<div class="locationMap">관리자홈 > 콘텐츠관리 > 자주하는질문관리</div>
		<h2>자주하는질문 </h2>
	</div>

		<fieldset>
		<legend>검색조건</legend>
			<table class="vblType1" summary="검색조건 테이블입니다.">
				<caption>자주하는질문 검색</caption>
				<colgroup>
					<col width="20%" />
					<col width="80%" />
				</colgroup>
				<tr>
					<th><label for="searchFaqCategory">분류</label></th>
					<td>
						<select name="searchFaqCategory" id="searchFaqCategory" class="text">
							<option selected="selected" value=''>--전체--</option>
							<c:forEach var="result"  items="${faqCategory_result}" varStatus="faqCategory">
								<option value='<c:out value="${result.code}"/>' <c:if test="${searchVO.searchFaqCategory == result.code }">selected="selected"</c:if> >
							<c:out value="${result.codeNm}"/></option>
						</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th><label for="searchKeyword">검색어</label></th>
					<td>
						<select name="searchCondition" class="text" title="조회조건 선택">
							<option selected="selected" value=''>--선택하세요--</option>
						   	<option value="qestnSj"  <c:if test="${searchVO.searchCondition == 'qestnSj'}">selected="selected"</c:if> >질문제목</option>
						</select>
    					<input name="searchKeyword" type="text" class="text" size="35" value='<c:out value="${searchVO.searchKeyword}"/>'  maxlength="35" title="검색어 입력" />
					</td>
				</tr>
			</table>
			<div class="btnArea">
				<span class="button"><input type="submit" value="검색" onclick="fn_egov_search_faq(); return false;"></span><!-- 검색 -->
			</div>
		</fieldset>

		<table summary="목록 테이블입니다." class="tblType1 tblSpace">
			<caption>자주하는질문 목록</caption>
			<colgroup>
				<col width="7%" />
				<col width="20%" />
				<col width="auto" />
				<col width="10%" />
				<col width="15%" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">분류</th>
					<th scope="col">질문제목</th>
					<th scope="col">조회수</th>
					<th scope="col">등록일자</th>
				</tr>
			</thead>
			<tbody>
				<%-- 데이터를 없을때 화면에 메세지를 출력해준다 --%>
				<c:if test="${fn:length(resultList) == 0}">
				<tr>
					<td class="ta_c" colspan="5"><spring:message code="common.nodata.msg" /></td>
				</tr>
				</c:if>
				<c:forEach items="${resultList}" var="resultInfo" varStatus="status">
				<tr>
					<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
					<td class="ta_l">
			            <c:forEach var="faqCategory_result" items="${faqCategory_result}" varStatus="faqCategory">
			                <c:if test="${resultInfo.faqCategory == faqCategory_result.code}"><c:out value="${faqCategory_result.codeNm}"/></c:if>
			            </c:forEach>
					</td>
					<td class="ta_l">
						<!--
						<form name="subForm" method="post" action="<c:url value='/uss/olh/faq/FaqInqireCoUpdt.do'/>">
				    	<input name="faqId" type="hidden" value="${resultInfo.faqId}">
						<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>">
				    	<span class="link"><input type="submit"  value="<c:out value="${resultInfo.qestnSj}"/>" onclick="fn_egov_inquire_faqlistdetail('<c:out value="${resultInfo.faqId}"/>'); return false;"></span>
				    	</form>
  						-->
						<a href="<c:url value='/uss/olh/faq/FaqInqireCoUpdt.do'/>" onclick="fn_egov_inquire_faqlistdetail('<c:out value='${resultInfo.faqId}'/>'); return false;" ><c:out value="${resultInfo.qestnSj}"/></a>
					</td>
				    <td><c:out value="${resultInfo.inqireCo}"/></td>
				    <td><c:out value="${resultInfo.lastUpdusrPnttm}"/></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>

		<!--  page start -->
		<c:if test="${!empty resultInfo.pageIndex }">
		<div>
			<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_select_linkPage" />
		</div>
		</c:if>
		<!--  page end -->

		<div class="btnArea"><!-- 등록 -->
			<span class="button"><a href="<c:url value='/uss/olh/faq/FaqCnRegistView.do'/>" onclick="fn_egov_regist_faq(); return false;"><spring:message code="button.create" /></a></span>
		</div>
	</form>

<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
