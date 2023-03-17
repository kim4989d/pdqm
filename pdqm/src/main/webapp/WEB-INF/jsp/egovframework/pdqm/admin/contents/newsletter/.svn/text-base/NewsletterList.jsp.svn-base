<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="egovframework.com.utl.fcc.service.EgovDateUtil" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : NewsletterList.jsp
  * @Description : 뉴스레터관리 JSP
  * @Modification Information
  * @
  * @  수정일         	수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2011.11.23    윤경한          최초 생성
  *
  *  @author 윤경한
  *  @since 2011.11.23
  *  @version 1.0
  *  @see
  *
  */
%>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<script type="text/javascript">

	function press(event) {
		if (event.keyCode==13) {
			fn_egov_select_noticeList('1');
		}
	}

	function fn_egov_select_noticeList(pageNo) {
		document.frm.pageIndex.value = pageNo;
		document.frm.action = "<c:url value='/cop/bbs/selectBoardList.do'/>";
		document.frm.submit();
	}

	function fnAddNewsletter() {
		document.frm.action = "<c:url value='/cop/bbs/addBoardArticle.do'/>";
		document.frm.submit();
	}

	function fn_form_reset() {
		var oForm = document.frm;
		oForm.searchBgnDe.value = "";
		oForm.searchBgnDeView.value = "";
		oForm.searchEndDe.value = "";
		oForm.searchEndDeView.value = "";
		oForm.searchWrd.value = "";
	}

	function fn_egov_inqire_notice(formNm, bbsId, nttId) {
		var oForm = document.getElementsByName(formNm);
		oForm[0].bbsId.value = bbsId;
		oForm[0].nttId.value = nttId;
		oForm[0].action = "<c:url value='/cop/bbs/selectBoardArticle.do'/>";
		oForm[0].submit();
	}

</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

	<div class="title">
		<div class="locationMap">관리자홈 > 콘텐츠관리 > 뉴스레터관리</div>
		<h2>뉴스레터 관리</h2>
	</div>

	<!-- 검색박스 -->
	<fieldset>
	<form:form commandName="searchVO" name="frm" action ="<c:url value='/cop/bbs/selectBoardList.do'/>" method="post">
		<input type="hidden" name="bbsId" 			value="<c:out value='${boardVO.bbsId}'/>" />
		<input type="hidden" name="nttId"  			value="0" />
		<input type="hidden" name="bbsTyCode" 		value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
		<input type="hidden" name="bbsAttrbCode" 	value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
		<input type="hidden" name="authFlag" 		value="<c:out value='${brdMstrVO.authFlag}'/>" />
		<input type="hidden" name="pageIndex" 		value="<c:out value='${searchVO.pageIndex}'/>"/>
		<input type="hidden" name="searchCnd"		value="0" /><!-- 제목 -->
		<input type="hidden" name="cal_url" 		value="<c:url value='/sym/cal/callCalPopup.do'/>" />
		<input type="hidden" name="newsletterForm"	value="general" />

		<legend>뉴스레터 검색폼</legend>
		<table class="vblType1" summary="검색조건 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="80%" />
			</colgroup>
			<!--tr>
				<th><label for="searchMberType">그&nbsp;&nbsp;룹</label></th>
				<td>
					<select name="searchMberType" id="searchMberType" class="text">
						<option selected="selected" value=''>--전체--</option>
						<c:forEach var="result"  items="${mberType_result}" varStatus="mberType">
							<option value='<c:out value="${result.code}"/>' <c:if test="${userSearchVO.searchMberType == result.code }">selected="selected"</c:if> >
							<c:out value="${result.codeNm}"/></option>
						</c:forEach>
					</select>
				</td>
			</tr-->
			<tr>
				<th>등록일자</th>
				<td>
					<input type="hidden" name="searchBgnDe" value="${searchVO.searchBgnDe}" /><input type="text" name="searchBgnDeView" size="10" readonly="true"
						<fmt:parseDate value="${searchVO.searchBgnDe}" var="searchBgnDeView" pattern="yyyymmdd" />
						value="<fmt:formatDate value='${searchBgnDeView}' pattern='yyyy-mm-dd' />"
						onclick="javascript:fn_egov_Calendar(document.frm, document.frm.searchBgnDe, document.frm.searchBgnDeView);" />
					<a href="#" onclick="fn_egov_Calendar(document.frm, document.frm.searchBgnDe, document.frm.searchBgnDeView);return false;"><img src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif' />" alt="달력보기" /></a>
					~
					<input type="hidden" name="searchEndDe" value="${searchVO.searchEndDe}" /><c:set var="searchEndDeView" value="${today_format}" />
					<input type="text" name="searchEndDeView" size="10" readonly="true"
						<fmt:parseDate value="${searchVO.searchEndDe}" var="searchEndDeView" pattern="yyyymmdd" />
							value='<fmt:formatDate value='${searchEndDeView}' pattern='yyyy-mm-dd' />'
						onclick="javascript:fn_egov_Calendar(document.frm, document.frm.searchEndDe, document.frm.searchEndDeView);" />
					<a href="#" onclick="fn_egov_Calendar(document.frm, document.frm.searchEndDe, document.frm.searchEndDeView);return false;"><img src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif' />" alt="달력보기" /></a>
				</td>
			</tr>
			<tr>
				<th><label for="searchWrd">제&nbsp;&nbsp;목</label></th>
				<td><input id="searchWrd" name="searchWrd" type="text" class="text" size="35" value='<c:out value="${searchVO.searchWrd}"/>' maxlength="35" onkeypress="press(event);" /></td>
			</tr>
		</table>
		<div class="btnArea">
			<span class="button"><input type="button" value="<spring:message code='button.search' />" onclick="fn_egov_select_noticeList('1'); return false;" /></span>
			<span class="button"><input type="button" onclick="fn_form_reset();" value="<spring:message code='button.reset' />" /></span>
		</div>
	</fieldset>
	</form:form>
	<!--// 검색박스 -->

		<table class="tblType1 tblSpace" summary="뉴스레터 테이블입니다.">
			<colgroup>
				<col width="7%" />
				<col width="auto" />
				<col width="15%"/>
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">뉴스레터 제목</th>
					<th scope="col">등록일자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="result" items="${resultList}" varStatus="status">
				<tr>
					<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
					<td class="ta_l">
						<form name="subForm${status.count}" method="post" action="<c:url value='/cop/bbs/selectBoardArticle.do'/>">
							<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
							<input type="hidden" name="nttId"  value="<c:out value='${result.nttId}'/>" />
							<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
							<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
							<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
							<input type="hidden" name="nttClCodeId" value="<c:out value='${brdMstrVO.nttClCodeId}'/>" />
							<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
							<input type="hidden" name="act" value="LIST"/>
							<a href="#" onclick="javascript:fn_egov_inqire_notice('subForm${status.count}','${result.bbsId}','${result.nttId}'); return false;" >
							<c:out value="${result.nttSj}" />
							</a>
						</form>
					</td>
					<td><c:out value="${result.frstRegisterPnttm}"/></td>
				</tr>
				</c:forEach>
				<c:if test="${fn:length(resultList) == 0}">
				<tr>
					<td colspan="3" class="ta_c"><spring:message code="common.nodata.msg" /></td>
				</tr>
				</c:if>
			</tbody>
		</table>

		<!--  page start -->
		<div class="paging">
			<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fnLinkPage" />
		</div>
		<div class="btnArea">
			<div class="rightBtn">
				<span class="button"><a href="<c:url value='/cop/bbs/addBoardArticle.do'/>" onclick="javascript:fnAddNewsletter();return false;"><spring:message code="button.create" /></a></span>
			</div>
		</div>
		<!--  page end -->
	<!-- content end -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
