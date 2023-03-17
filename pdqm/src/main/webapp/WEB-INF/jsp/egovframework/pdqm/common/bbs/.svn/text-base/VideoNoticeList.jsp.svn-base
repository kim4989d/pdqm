<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="egovframework.com.cmm.service.EgovProperties" %>
<%@ page import="egovframework.com.utl.fcc.service.EgovDateUtil" %>
<%@ page import="egovframework.com.cmm.service.Globals" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="ImgUrl" value="/images/egovframework/com/cop/bbs/"/>
<%
 /**
  * @Class Name : VideoNoticeList.jsp
  * @Description : 동영상 게시물 목록화면
  * @Modification Information
  * @
  * @  수정일	  		수정자				수정내용
  * @ -------	  --------	---------------------------
  * @ 2011.11.29	윤경한		최초생성
  *
  *  @author
  *  @since 2011.11.29
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
	/*
	function fn_egov_inqire_notice(i, nttId, bbsId) {
		document.subForm.nttId.value = nttId;
		document.subForm.bbsId.value = bbsId;
		document.subForm.action = "<c:url value='/cop/bbs/selectBoardArticle.do'/>";
		document.subForm.submit();
	}
	*/
//-->
</script>
</c:otherwise>
</c:choose>
</head>

<body>
<!-- Top Menu -->
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<!-- Left Menu -->
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000221' }">
<%@ include file="/html/pdqm/include/lnb4.jsp" %><!-- 동영상자료실  -->

<div class="bg_edu">
</c:if>
<!-- ~Menu -->
<!-- contents영역시작 -->
	<!-- 게시판 타이틀 HTML -->
	<div class="title">${brdMstrVO.bbsIntrcn}</div>

		<!-- 동영상 분류 탭메뉴 -->
		<!-- khyoon 2011.12.01 고객 요구할때까지 중지
		<ul class="tabArea">
			<li>
				<a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=${brdMstrVO.bbsId}' />">
				<img src="<c:url value='/images/pdqm/common/tab/edu5_tab1on.gif'/>" alt="전체" />
				</a>
			</li>
			<c:forEach items="${codeList}" var="tab" varStatus="status">
			<li>
				<a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=${brdMstrVO.bbsId}&searchNttClCode=${tab.code}' />">
					<img src="<c:url value='/images/pdqm/common/tab/edu5_tab${status.count+1}.gif'/>" alt="${tab.codeNm}"/></a>
			</li>
			</c:forEach>
		</ul>
		 -->

		<ul class="edu_mov">
		<c:forEach var="result" items="${resultList}" varStatus="status">
			<c:choose>
			<c:when test="${status.count ==1 || status.count%3 == 1}">
			<li class="first">
			</c:when>
			<c:otherwise>
			<li>
			</c:otherwise>
			</c:choose>
				<dl>
					<dt><a href="<c:url value='/cop/bbs/selectBoardArticle.do?bbsId=${result.bbsId}&nttId=${result.nttId}&bbsTyCode=${brdMstrVO.bbsTyCode}&bbsAttrbCode=${brdMstrVO.bbsAttrbCode}&nttClCodeId=${brdMstrVO.nttClCodeId}&pageIndex=${searchVO.pageIndex}&act=LIST'/>">
						<img class="photo" src="<c:url value='/cmm/fms/getImage.do'/>?atchFileId=<c:out value='${result.atchFileId}'/>&fileSn=" alt="<c:out value='${result.nttSj}' />" /></a></dt>
					<dd class="subject"><c:out value="${result.summaryNttSj}" /></dd>
					<dd><a href="<c:url value='/cop/bbs/selectBoardArticle.do?bbsId=${result.bbsId}&nttId=${result.nttId}&bbsTyCode=${brdMstrVO.bbsTyCode}&bbsAttrbCode=${brdMstrVO.bbsAttrbCode}&nttClCodeId=${brdMstrVO.nttClCodeId}&pageIndex=${searchVO.pageIndex}&act=LIST'/>">
						<img src="<c:url value='/images/pdqm/front/education/btn_mov_view.gif'/>" alt="동영상 보러가기" /></a></dd>
				</dl>
			</li>
		</c:forEach>
		</ul>

		<!-- pading_Btn -->
		<div class="pagenate_btn">
			<div class="paging">
				<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_noticeList" />
			</div>
			<!-- 관리자 또는 글쓰기 권한에 따라 가능 -->
			<c:if test="${not empty user}">
				<c:if test="${user.mberType == 'A' || permission == 'W'}">
				<div class="btn_pr">
					<a href="<c:url value='/cop/bbs/addBoardArticle.do'/>"  onClick="javascript:fn_egov_addNotice(); return false;">
						<img src="<c:url value='/images/pdqm/common/btn/btn_write.gif'/>" alt="글쓰기" /></a>
				</div>
				</c:if>
			</c:if>
		</div>
		<!--// pading_Btn -->

	<!-- 검색박스 -->
	<form:form commandName="searchVO" name="frm" action ="<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>" method="post">
	<fieldset class="searchBox">
		<legend>게시물검색폼</legend>
		<input type="hidden" name="bbsId" value="<c:out value='${boardVO.bbsId}'/>" />
		<input type="hidden" name="nttId"  value="0" />
		<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
		<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
		<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
		<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>

		<!-- khyoon 게시물분류가능 게시판인 경우 해당 분류코드 조건선택 활성화 2011.10.27 -->
		<c:if test="${brdMstrVO.nttClPosblAt == 'Y' }">
			<form:select path="searchNttClCode" title="게시물분류코드 선택">
				<form:option value='' label="--선택하세요--" />
				<form:options items="${codeList}" itemValue="code" itemLabel="codeNm"/>
			</form:select>
			<form:errors path="searchNttClCode" />
		</c:if>
		<!-- ~khyoon -->
		<select name="searchCnd" title="검색조건 선택">
				<option value="0" <c:if test="${searchVO.searchCnd == '0'}">selected="selected"</c:if> >제목</option>
				<option value="1" <c:if test="${searchVO.searchCnd == '1'}">selected="selected"</c:if> >내용</option>
		</select>
		<input name="searchWrd" type="text" class="text" size="35" value='<c:out value="${searchVO.searchWrd}"/>' maxlength="35" onkeypress="press(event);" title="검색어 입력" />
		<a href="<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>" onclick="fn_egov_select_noticeList('1');return false;">
			<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_search.gif'/>" alt="검색" />
		</a>
	</fieldset>
	</form:form>
	<!--// 검색박스 -->

</div>
<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" alt="" class="png24" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
