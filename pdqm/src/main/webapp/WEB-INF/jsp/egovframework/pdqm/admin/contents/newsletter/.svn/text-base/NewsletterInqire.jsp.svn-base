<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : NewsletterInqire.jsp
 * @Description : 뉴스레터 내용화면
 * @Modification Information
 * @
 * @  수정일      		수정자            	수정내용
 * @ -------      --------    ---------------------------
 * @ 2011.11.24		윤경한		최초생성
 *
 *  @author
 *  @since 2011.11.24
 *  @version 1.0
 *  @see
 *
 */
%>

<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<script type="text/javascript">
	function onloading() {
		if ("<c:out value='${msg}'/>" != "") {
			alert("<c:out value='${msg}'/>");
		}
	}

	function fn_egov_select_noticeList(pageNo) {
		document.frm.pageIndex.value = pageNo;
		document.frm.action = "<c:url value='/cop/bbs/selectBoardList.do'/>";
		document.frm.submit();
	}

	function fn_egov_delete_notice() {
		if (confirm('<spring:message code="common.delete.msg" />')) {
			document.frm.action = "<c:url value='/cop/bbs/deleteBoardArticle.do'/>";
			document.frm.submit();
		}
	}

	function fn_egov_moveUpdt_notice() {
		document.frm.action = "<c:url value='/cop/bbs/forUpdateBoardArticle.do'/>";
		document.frm.submit();
	}

	function fn_send_newsletter() {
		if(confirm("뉴스레터 발송 시 대상자수와 이메일서버의 상태에 따라 수초에서 수십분까지 시간이 소요될 수 있습니다.\n지금 발송하시겠습니까?\n[현재 뉴스레터 수신 대상자 ${newsletterTargetCnt} 명]")) {
			document.frm.action = "<c:url value='/cop/bbs/sendNewsletter.do'/>";
			document.frm.submit();
		}
	}

</script>

</head>
<body onload="onloading();">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

	<div class="title">
		<div class="locationMap">관리자홈 > 콘텐츠관리 > 뉴스레터관리 > 내용보기</div>
		<h2>뉴스레터 내용보기</h2>
	</div>

<form name="frm" method="post" action="" >
<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>" />
<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
<input type="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" />
<input type="hidden" name="parnts" value="<c:out value='${result.parnts}'/>" />
<input type="hidden" name="sortOrdr" value="<c:out value='${result.sortOrdr}'/>" />
<input type="hidden" name="replyLc" value="<c:out value='${result.replyLc}'/>" />
<input type="hidden" name="nttSj" value="<c:out value='${result.nttSj}'/>" />
<input type="hidden" name="act" value="INQIRE" />
</form>

<form:form commandName="bdMstr" name="BoardMaster" >
	<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}' />" />
</form:form>

	<!-- 게시물영역 -->
	<table class="registTable tblSpace3" summary="뉴스레터 상세화면 입니다">
		<colgroup>
			<col width="15%">
			<col width="85%">
		</colgroup>
		<tr>
			<th scope="row" class="subject bgNone">제목</th>
			<td class="subject"><c:out value="${result.nttSj}" /></td>
		</tr>
	</table>
	<c:out value="${result.nttCn}" escapeXml="false" />

	<!-- 버튼영역 -->
	<div class="btnArea br_t">
		<span class="button" >
			<a href="<c:url value='/cop/bbs/selectBoardList.do'/>" onclick="javascript:fn_egov_select_noticeList(<c:out value='${searchVO.pageIndex}'/>); return false;">
				<spring:message code="button.list" /></a></span>
		<span class="button" >
			<a href="<c:url value='/cop/bbs/forUpdateBoardArticle.do'/>" onclick="javascript:fn_egov_moveUpdt_notice(); return false;">
				<spring:message code="button.update" /></a></span>
		<span class="button" >
			<a href="<c:url value='/cop/bbs/deleteBoardArticle.do'/>" onclick="javascript:fn_egov_delete_notice(); return false;">
				<spring:message code="button.delete" /></a></span>
		<span class="button" >
			<a href="#" onclick="javascript:fn_send_newsletter()">
				E-mail 발송</a></span>
	</div>
	<!--// 버튼영역 -->


</div>
<!--// contents영역끝 -->
	<!-- content end -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
