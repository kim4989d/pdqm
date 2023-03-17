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
  * @Class Name : NoticeList.jsp
  * @Description : 게시물 목록화면
  * @Modification Information
  * @
  * @  수정일	  		수정자				수정내용
  * @ -------	  --------	---------------------------
  * @ 2011.11.09	윤경한		최초생성
  *
  *  @author
  *  @since 2011.11.09
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
		document.frm.action = "<c:url value='/cop/bbs${prefix}/addBoardArticle.do'/>";
		document.frm.submit();
	}

	function fn_egov_select_noticeList(pageNo) {
		document.frm.pageIndex.value = pageNo;
		document.frm.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
		document.frm.submit();
	}

	// khyoon 2011.12.09
	function fn_egov_inqire_notice(formNm, bbsId, nttId) {
		var oForm = document.getElementsByName(formNm);
		oForm[0].bbsId.value = bbsId;
		oForm[0].nttId.value = nttId;
		oForm[0].action = "<c:url value='/cop/bbs/selectBoardArticle.do'/>";
		oForm[0].submit();
	}
	//~khyoon

	fn_sub_str_wrap = function() {
		
		$("table.boardlist tbody td").find("span.substr").each(function() {	
			var tdWidth = $(this).closest("td").outerWidth()-3;	// padding값 2			
			var strTmp = $(this).text();
			var postFix = "...";

			if (tdWidth < $(this).outerWidth()) {
				while (tdWidth < $(this).outerWidth()) {
					$(this).text((strTmp = strTmp.substr(0, strTmp.length-1))+postFix);
				}
				$(this).text(strTmp+postFix);
			}
		});
		
	};	
	
//-->
</script>
</c:otherwise>
</c:choose>
</head>
<body>
<!-- Top Menu -->
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<!-- Left Menu -->
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000121' }">
<%@ include file="/html/pdqm/include/lnb7.jsp" %><!-- 공지사항  -->
<div class="bg_notice">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000131' }">
<%@ include file="/html/pdqm/include/lnb8.jsp" %><!-- 묻고답하기  -->
<div class="bg_qna">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000141' }">
<%@ include file="/html/pdqm/include/lnb2.jsp" %><!-- 지식자료실  -->
<div class="bg_know">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000142'}">
<%@ include file="/html/pdqm/include/lnb4.jsp" %><!-- 교육공지  -->
<div class="bg_edu">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000143' }">
<%@ include file="/html/pdqm/include/lnb4.jsp" %><!-- 교육자료실  -->
<div class="bg_edu">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000151' }">
<%@ include file="/html/pdqm/include/lnb5.jsp" %><!-- 커뮤니티게시판  -->
<div class="bg_com">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000152' }">
<%@ include file="/html/pdqm/include/lnb5.jsp" %><!-- 커뮤니티-자료실  -->
<div class="bg_com">
</c:if>
<!-- ~Menu -->
<!-- contents영역시작 -->
	<!-- 게시판 타이틀 HTML -->
	<div class="title">${brdMstrVO.bbsIntrcn}</div>

	<table class="tbType1" summary="번호, 제목, 등록자, 작성일, 첨부, 조회수 입니다">
		<colgroup>
			<c:if test="${brdMstrVO.noColPosblAt == 'Y' }">
			<col width="7%">
			</c:if>
			<c:if test="${brdMstrVO.nttClPosblAt == 'Y' }">
			<col width="16%"><!-- 분류 -->
			</c:if>
			<col width="*"><!-- 제목 -->
			<c:if test="${brdMstrVO.regiColPosblAt == 'Y' }">
			<col width="10%"><!-- 등록자 -->
			</c:if>
			<col width="10%"><!-- 작성일 -->
			<col width="7%"><!-- 첨부 -->
			<col width="8%"><!-- 조회수 -->
		</colgroup>
		<thead>
			<tr>
				<c:if test="${brdMstrVO.noColPosblAt == 'Y' }">
				<th scope="col">번호</th>
				</c:if>
				<c:if test="${brdMstrVO.nttClPosblAt == 'Y' }">
				<th scope="col">분류</th>
				</c:if>
				<th scope="col">제목</th>
				<c:if test="${brdMstrVO.regiColPosblAt == 'Y' }">
				<th scope="col">등록자</th>
				</c:if>
				<th scope="col">작성일</th>
				<th scope="col">첨부</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>
		<c:set var="today" value="<%=EgovDateUtil.getToday()%>" />
		<c:set var="markNewNttBaseDate" value='<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"MARK_NEW_NTT_BASE_DATE")%>' />
		<tbody>
		<c:forEach var="result" items="${resultList}" varStatus="status">
			<tr>
				<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
				<c:if test="${brdMstrVO.nttClPosblAt == 'Y' }">
				<td class="ta_left"><c:out value="${result.nttClCodeNm}"/></td>
				</c:if>
				<td class="ta_left">
				<c:choose>
					<c:when test="${result.isExpired=='Y' || result.useAt == 'N'}">
						<c:if test="${result.replyLc!=0}">
							<c:forEach begin="0" end="${result.replyLc}" step="1">
								&nbsp;
							</c:forEach>
							<img src="<c:url value='/images/egovframework/com/cmm/icon/reply_arrow.gif'/>" alt="답글" />
						</c:if>
						<c:out value="${result.nttSj}" />
					</c:when>
					<c:otherwise>
						<form name="subForm${status.count}" method="post" action="<c:url value='/cop/bbs${prefix}/selectBoardArticle.do'/>">
							<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
							<input type="hidden" name="nttId"  value="<c:out value='${result.nttId}'/>" />
							<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
							<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
							<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
							<!-- khyoon 게시물분류코드ID 2011.11.01 -->
							<input type="hidden" name="nttClCodeId" value="<c:out value='${brdMstrVO.nttClCodeId}'/>" />
							<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
							<!-- khyoon 2011-11-18 -->
							<input type="hidden" name="act" value="LIST"/>
							<!-- a href="<c:url value='/cop/bbs/selectBoardArticle.do'/>" onclick="javascript:fn_egov_inqire_notice('subForm${status.count}','${result.bbsId}','${result.nttId}'); return false;" -->
							<c:if test="${result.replyLc!=0}">
								<c:forEach begin="0" end="${result.replyLc}" step="1">
									&nbsp;
								</c:forEach>
								<img src="<c:url value='/images/egovframework/com/cmm/icon/reply_arrow.gif'/>" alt="답글" />
							</c:if>
							<c:choose>
							<c:when test="${brdMstrVO.nttClPosblAt == 'Y' }">
								<input type="submit" class="submit" value="${result.autoAbbrNttSj80}" />
							</c:when>
							<c:otherwise>
								<input type="submit" class="submit" value="${result.autoAbbrNttSj92}" />
							</c:otherwise>
							</c:choose>
							<!-- khyoon 2011.11.18 게시글 등록일 기준 최근 3일 이내 게시글 New 아이콘 표시 -->
							<fmt:parseDate value="${result.frstRegisterPnttm}" var="regipnttm" pattern="yyyy-mm-dd" />
							<fmt:formatDate value="${regipnttm}" var="regiday" pattern="yyyymmdd" />
							<c:if test="${(today-regiday) <= markNewNttBaseDate}" >
								<img src="<c:url value='/images/pdqm/common/icon/icon_new.gif'/>" alt="새글" />
							</c:if>
							<!--/a-->
							<!-- ~khyoon -->
						</form>
					</c:otherwise>
				</c:choose>
				</td>
				<c:if test="${brdMstrVO.regiColPosblAt == 'Y' }">
				<td><c:out value="${result.frstRegisterNm}"/></td>
				</c:if>
				<td><c:out value="${result.frstRegisterPnttm}"/></td>
				<td>
				<c:if test="${not empty result.atchFileId}">
					<c:import url="/cop/bbs/selectFileIconInfo.do" charEncoding="utf-8">
						<c:param name="firstAtchFileId" value="${result.atchFileId}" />
					</c:import>
				</c:if>
				</td>
				<td><c:out value="${result.inqireCo}"/></td>
			</tr>
			</c:forEach>
			<c:if test="${fn:length(resultList) == 0}">
			<tr>
			<c:choose>
				<c:when test="${brdMstrVO.bbsAttrbCode == 'BBSA01'}">
					<td colspan="7" >
						<spring:message code="common.nodata.msg" />
					</td>
				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${anonymous == 'true'}">
							<td colspan="4" >
								<spring:message code="common.nodata.msg" />
							</td>
						</c:when>
						<c:otherwise>
							<td colspan="11" >
								<spring:message code="common.nodata.msg" />
							</td>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>
			</tr>
		</c:if>
		</tbody>
	</table>

	<!-- pading_Btn -->
	<div class="pagenate_btn">
		<div class="paging">
			<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_noticeList" />
		</div>
		<!-- 관리자 또는 글쓰기 권한에 따라 가능 -->
		<c:if test="${not empty user}">
			<c:if test="${user.mberType == 'A' || permission == 'W'}">
			<div class="btn_pr">
				<a href="<c:url value='/cop/bbs${prefix}/addBoardArticle.do'/>"  onclick="fn_egov_addNotice();return false;">
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
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
