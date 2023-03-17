<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="egovframework.com.cmm.service.EgovProperties" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="ImgUrl" value="/images/egovframework/com/cop/bbs/"/>
<%
 /**
  * @Class Name : DetailNoticeList.jsp
  * @Description : 게시물 상세뷰타입 목록화면
  * @Modification Information
  * @
  * @  수정일      		수정자            	수정내용
  * @ -------      --------    ---------------------------
  * @ 2011.11.15	윤경한		최초생성
  *
  *  @author
  *  @since 2011.11.15
  *  @version 1.0
  *  @see
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>공공정보 품질관리 지원센터 :: <c:out value="${brdMstrVO.bbsNm}"/></title>
<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<c:if test="${anonymous == 'true'}"><c:set var="prefix" value="/anonymous"/></c:if>
<c:choose>
<c:when test="${preview == 'true'}">
<script type="text/javascript">
<!--
	function press(event) {
	}

	function fn_egov_addNotice() {
	}

	function fn_egov_select_noticeList(pageNo) {
	}

	function fn_egov_inqire_notice(nttId, bbsId) {
	}
//-->
</script>
</c:when>
<c:otherwise>
<script type="text/javascript">
<!--
	function press(event) {
		if (event.keyCode==13) {
			fn_egov_select_noticeList('1');
		}
	}

	function fn_egov_addNotice() {
		document.frm.action = "<c:url value='/cop/bbs/addBoardArticle.do'/>";
		document.frm.submit();
	}

	function fn_egov_select_noticeList(pageNo) {
		document.frm.pageIndex.value = pageNo;
		document.frm.action = "<c:url value='/cop/bbs/selectBoardList.do'/>";
		document.frm.submit();
	}
/* khyoon 2011.12.07 웹접근성을 위한 수정
	function fn_egov_moveUpdt_notice(nttId,parnts,sortOrdr,replyLc) {
		document.frmContent.nttId.value = nttId;
		document.frmContent.parnts.value = parnts;
		document.frmContent.sortOrdr.value = sortOrdr;
		document.frmContent.replyLc.value = replyLc;
		document.frmContent.action = "<c:url value='/cop/bbs/forUpdateBoardArticle.do'/>";
		document.frmContent.submit();
	}
*/
	function fn_egov_delete_notice() {
		// khyoon 2011.12.07 웹접근성을 위한 수정
		if (confirm('<spring:message code="common.delete.msg" />')) {
			return true;
		}
		return false;
		//~khyoon
	}
//-->
</script>
</c:otherwise>
</c:choose>
</head>
<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000181' }">
<%@ include file="/html/pdqm/include/lnb2.jsp" %><!-- 뉴스와동향  -->
<div class="bg_know">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000191' }">
<%@ include file="/html/pdqm/include/lnb6.jsp" %><!-- 보도자료  -->
<div class="bg_intro">
</c:if>
<!-- contents영역시작 -->
	<!-- 게시판 타이틀 HTML -->
	<div class="title">${brdMstrVO.bbsIntrcn}</div>

	<!-- 검색영역 -->
	<div class="type3Search">
		<form:form commandName="searchVO" name="frm" action ="<c:url value='/cop/bbs/selectBoardList.do'/>" method="post">
		<input type="hidden" name="bbsId" value="<c:out value='${boardVO.bbsId}'/>" />
		<input type="hidden" name="nttId" value="0" />
		<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
		<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
		<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
		<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>

		<c:if test="${brdMstrVO.nttClPosblAt == 'Y' }">
		<!-- khyoon 2011.12.16 
			<form:select path="searchNttClCode" class="select_part text" title="뉴스분류 선택">
				<form:option value='' label="--선택하세요--" />
				<form:options items="${codeList}" itemValue="code" itemLabel="codeNm"/>
			</form:select>
			<form:errors path="searchNttClCode" />
		 -->
		</c:if>
		<select name="searchCnd" class="text" title="검색조건 선택">
			<option value="0" <c:if test="${searchVO.searchCnd == '0'}">selected="selected"</c:if> >제목</option>
			<option value="1" <c:if test="${searchVO.searchCnd == '1'}">selected="selected"</c:if> >내용</option>
			<option value="3" <c:if test="${searchVO.searchCnd == '3'}">selected="selected"</c:if> >보도처</option>
		</select>
		<input name="searchWrd" type="text" class="text" value='<c:out value="${searchVO.searchWrd}"/>' onkeypress="press(event);" title="검색어 입력" />
		<a href="<c:url value='/cop/bbs/selectBoardList.do'/>" onclick="fn_egov_select_noticeList('1');return false;">
			<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_search.gif'/>" alt="검색" />
		</a>
		</form:form>
	</div>
	<!--// 검색영역 -->

	<div class="tbType3">
	<c:forEach var="result" items="${resultList}" varStatus="status">
		<dl>
			<dt>
				<strong><c:out value="${result.nttSj}" /></strong>
				<c:if test="${user.mberType == 'A'}">
				<form name="frmUpdate" method="post" action="<c:url value='/cop/bbs/forUpdateBoardArticle.do'/>">
				  <input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>">
				  <input type="hidden" name="bbsId" value="<c:out value='${boardVO.bbsId}'/>" >
				  <input type="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" >
				  <input type="hidden" name="parnts" value="<c:out value='${result.parnts}'/>" >
				  <input type="hidden" name="sortOrdr" value="<c:out value='${result.sortOrdr}'/>" >
				  <input type="hidden" name="replyLc" value="<c:out value='${result.replyLc}'/>" >
				  <input type="hidden" name="nttSj" value="" />
				  <input type="hidden" name="act" value="LIST"/>				
	   			  <input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_modify.gif'/>" alt="수정" />
 				</form>				
				<form name="frmDelete" method="post" action="<c:url value='/cop/bbs/deleteBoardArticle.do'/>" onsubmit="return fn_egov_delete_notice();">
				  <input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>">
				  <input type="hidden" name="bbsId" value="<c:out value='${boardVO.bbsId}'/>" >
				  <input type="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" >
				  <input type="hidden" name="parnts" value="<c:out value='${result.parnts}'/>" >
				  <input type="hidden" name="sortOrdr" value="<c:out value='${result.sortOrdr}'/>" >
				  <input type="hidden" name="replyLc" value="<c:out value='${result.replyLc}'/>" >
				  <input type="hidden" name="nttSj" value="" />
				  <input type="hidden" name="act" value="LIST"/>				
	   			  <input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_del.gif'/>" alt="삭제" />
 				</form>				
				</c:if>
				<em><c:out value="${result.pressNm}" /> | <fmt:parseDate value="${result.newsDay}" var="dateFmt" pattern="yyyymmdd"/><fmt:formatDate pattern="yyyy/mm/dd" value="${dateFmt}"/></em>
			</dt>
			<dd class="con">
				<div>
					<c:out value="${result.nttCn}" escapeXml="false" />
				</div>
			</dd>
			<dd>
				<ul class="part">
					<c:if test="${brdMstrVO.nttClPosblAt == 'Y' }">
					<!-- khyoon 2011.12.16
					<li class="wd_300">
						<img src="<c:url value='/images/pdqm/common/icon/icon_part.gif'/>" alt="분야" />
						<c:out value="${result.nttClCodeNm}" />
					</li>
					-->			
					</c:if>
					<c:if test="${not empty result.sourceUrl}">
					<li><a href="${result.sourceUrl}" target="_blank" title="새창으로 열림" class="url">[출처] <c:out value="${result.sourceUrl}" /></a></li>
					<li class="ori">
						<a href="${result.sourceUrl}" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/btn/btn_s_original.gif'/>" alt="원문보기" /></a>
						<a href="#wrapper"><img src="<c:url value='/images/pdqm/common/btn/btn_s_top.gif'/>" alt="맨위로 가기" /></a>
					</li>
					</c:if>
				</ul>
			</dd>
			<c:if test="${not empty result.atchFileId}">
			<dd>첨부파일 :
				<c:import url="/cmm/fms/selectFileInfs.do" charEncoding="utf-8">
					<c:param name="param_atchFileId" value="${result.atchFileId}" />
				</c:import>
			</dd>
			</c:if>
		</dl>
	</c:forEach>
	</div>

	<!-- pading_Btn -->
	<div class="pagenate_btn tbSpace2">
		<div class="paging">
			<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_noticeList" />
		</div>
		<!-- 관리자 글쓰기 가능 -->
		<c:if test="${user.mberType == 'A'}">
		<div class="btn_pr">
			<a href="<c:url value='/cop/bbs/addBoardArticle.do'/>" onclick="fn_egov_addNotice();return false;"> <img src="<c:url value='/images/pdqm/common/btn/btn_write.gif'/>" alt="글쓰기" /></a>
		</div>
		</c:if>
	</div>
	<!--// pading_Btn -->

</div>
<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
