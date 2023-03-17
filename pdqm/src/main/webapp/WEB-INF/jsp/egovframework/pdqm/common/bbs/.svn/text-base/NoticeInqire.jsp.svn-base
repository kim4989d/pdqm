<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
/**
 * @Class Name : NoticeInqire.jsp
 * @Description : 게시물 목록화면
 * @Modification Information
 * @
 * @  수정일      		수정자            	수정내용
 * @ -------      --------    ---------------------------
 * @ 2011.11.09		윤경한		최초생성
 *
 *  @author
 *  @since 2011.11.09
 *  @version 1.0
 *  @see
 *
 */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>공공정보 품질관리 지원센터 :: <c:out value='${result.bbsNm}'/> - 글조회</title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<c:if test="${anonymous == 'true'}"><c:set var="prefix" value="/anonymous"/></c:if>
<script type="text/javascript" src="<c:url value='/js/egovframework/pdqm/LinkToSNS.js' />"></script>
<script type="text/javascript">
	function onloading() {
		if ("<c:out value='${msg}'/>" != "") {
			alert("<c:out value='${msg}'/>");
		}
	}

// khyoon 2011.12.07 웹접근성을 위한 수정
	function fn_egov_delete_notice() {
// 		if ("<c:out value='${anonymous}'/>" == "true" && document.frm.password.value == '') {
// 			alert('등록시 사용한 패스워드를 입력해 주세요.');
// 			document.frm.password.focus();
// 			return;
// 		}

		if (confirm('<spring:message code="common.delete.msg" />')) {
			//document.frm.action = "<c:url value='/cop/bbs${prefix}/deleteBoardArticle.do'/>";
			//document.frm.submit();
			return true;
		}
		return false;
	}

	// khyoon 2011.11.02
	function fn_egov_select_notice(nttId) {
		document.frmList.nttId.value = nttId;
		document.frmList.action = "<c:url value='/cop/bbs/selectBoardArticle.do'/>";
		document.frmList.submit();
	}
	//~khyoon

/* khyoon 2011.12.07 웹접근성을 위한 수정
 	function fn_egov_select_noticeList(pageNo) {
		document.frm.pageIndex.value = pageNo;
		document.frm.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
		document.frm.submit();
	}

	function fn_egov_moveUpdt_notice() {
		if ("<c:out value='${anonymous}'/>" == "true" && document.frm.password.value == '') {
			alert('등록시 사용한 패스워드를 입력해 주세요.');
			document.frm.password.focus();
			return;
		}

		document.frm.action = "<c:url value='/cop/bbs${prefix}/forUpdateBoardArticle.do'/>";
		document.frm.submit();
	}

	function fn_egov_addReply() {
		document.frm.action = "<c:url value='/cop/bbs${prefix}/addReplyBoardArticle.do'/>";
		document.frm.submit();
	}
	*/
	//동영상 출력
	function jsMoviePlayer(file_path){
		document.write("<object id=\"Player\" width=\"320\" height=\"280\" classid=\"CLSID:22D6F312-B0F6-11D0-94AB-0080C74C7E95\" standby=\"Loading Windows Media Player components...\" type=\"application/x-oleobject\" >");
		document.write("	<param name=\"autostart\" value=\"1\" />");
		document.write("	<param name=\"filename\" value=\""+file_path+"\" />");
		document.write("	<embed type=\"application/x-mplayer2\" name=\"MediaPlayer\" width=\"320\" height=\"280\" autostart=\"true\" src=\""+file_path+"\"></embed>");
		document.write("</object>");
	}

</script>

<!-- 2009.06.29 : 2단계 기능 추가  -->
<c:if test="${useComment == 'true'}">
<c:import url="/cop/cmt/selectCommentList.do" charEncoding="utf-8">
	<c:param name="type" value="head" />
</c:import>
</c:if>
<c:if test="${useSatisfaction == 'true'}">
<c:import url="/cop/stf/selectSatisfactionList.do" charEncoding="utf-8">
	<c:param name="type" value="head" />
</c:import>
</c:if>
<c:if test="${useScrap == 'true'}">
<script type="text/javascript">
	function fn_egov_addScrap() {
		document.frm.action = "<c:url value='/cop/scp/addScrap.do'/>";
		document.frm.submit();
	}
</script>
</c:if>
</head>
<body onload="onloading();">
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
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000221' }">
<%@ include file="/html/pdqm/include/lnb4.jsp" %><!-- 동영상자료실  -->
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


	<!-- 게시판 타이틀 HTML -->
	<div class="title">${brdMstrVO.bbsIntrcn}</div>
	<!-- 소설사이트링크영역 -->
	<c:if test="${brdMstrVO.snsExportPosblAt == 'Y' }">
	<script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
	<div class="sns">
		<a href="http://www.facebook.com" target="_blank" title="새창으로 열림"
		onclick="fn_send_facebook('${result.nttSj}','http://pdqm.kr/pdqm/cop/bbs/selectBoardArticle.do?bbsId=${result.bbsId}&nttId=${result.nttId}'); return false;">
		<img src="<c:url value='/images/pdqm/common/icon/icon_facebook.gif' />" alt="페이스북" /></a>
		<a href="https://twitter.com" target="_blank"  title="새창으로 열림"
		onclick="fn_send_twitter('${result.nttSj}','http://pdqm.kr/pdqm/cop/bbs/selectBoardArticle.do?bbsId=${result.bbsId}&nttId=${result.nttId}'); return false;">
		<img src="<c:url value='/images/pdqm/common/icon/icon_twitter.gif' />" alt="트위터" /></a>
		<a href="http://me2day.net" target="_blank"  title="새창으로 열림"
		onclick="fn_send_me2day('${result.nttSj}','http://pdqm.kr/pdqm/cop/bbs/selectBoardArticle.do?bbsId=${result.bbsId}&nttId=${result.nttId}'); return false;">
		<img src="<c:url value='/images/pdqm/common/icon/icon_metoday.gif' />" alt="미투데이" /></a>
	</div>
	</c:if>

	<!-- 게시물영역 -->
	<table class="tbType1_view" summary="게시물 상세화면 입니다">
		<colgroup>
			<col width="15%">
			<col width="23%">
			<col width="12%">
			<col width="23%">
			<col width="12%">
			<col width="15%">
		</colgroup>
		<tr>
			<th scope="row" class="subject bgNone">제&nbsp;&nbsp;목</th>
			<td class="subject" colspan="5"><c:out value="${result.nttSj}" /></td>
		</tr>
		<c:if test="${brdMstrVO.nttClPosblAt == 'Y' }">
		<tr>
			<th scope="row" class="bgNone">분&nbsp;&nbsp;류</th>
			<td colspan="5"><c:out value="${result.nttClCodeNm}" /></td>
		</tr>
		</c:if>
		<c:if test="${brdMstrVO.bbsAttrbCode == 'BBSA04' }">
		<tr>
			<th scope="row" class="subject bgNone"><spring:message code="cop.pressNm" /></th>
			<td class="subject" colspan="5"><c:out value="${result.pressNm}" /></td>
		</tr>
		<tr>
			<th scope="row" class="subject bgNone"><spring:message code="cop.newsDay" /></th>
			<td class="subject" colspan="5">
				<fmt:formatDate value="${result.newsDay}" pattern="yyyy-mm-dd" />
			</td>
		</tr>
		<tr>
			<th scope="row" class="subject bgNone"><spring:message code="cop.sourceUrl" /></th>
			<td class="subject" colspan="5"><c:out value="${result.sourceUrl}" /></td>
		</tr>
		</c:if>
		<tr>
			<th scope="row" class="bgNone">등록자</th>
			<td><c:out value="${result.frstRegisterNm}" /></td>
			<th scope="row">등록일</th>
			<td><c:out value="${result.frstRegisterPnttm}" /></td>
			<th scope="row">조회수</th>
			<td><c:out value="${result.inqireCo}" /></td>
		</tr>
		<tr>
			<th scope="row" class="bgNone">글내용</th>
			<td colspan="5" class="con">
			<c:if test="${brdMstrVO.bbsAttrbCode == 'BBSA07' }"><!-- 동영상게시판 -->
				<script type="text/javascript">
					jsMoviePlayer("${result.sourceUrl}");
				</script>
			</c:if>
			<div id="bbs_cn">
				<c:out value="${result.nttCn}" escapeXml="false" />
			</div>
			</td>
		</tr>
		<c:if test="${brdMstrVO.bbsAttrbCode == 'BBSA07' }"><!-- 동영상게시판 -->
		<tr>
			<th scope="row" class="bgNone">동영상URL</th>
			<td colspan="5">${result.sourceUrl}</td>
		</tr>
		</c:if>
		<c:if test="${not empty result.atchFileId}">
		<tr>
			<th scope="row" class="bgNone">
			<c:choose>
				<c:when test="${brdMstrVO.bbsAttrbCode == 'BBSA07' }"><!-- 동영상게시판 -->
				썸네일이미지
				</c:when>
				<c:otherwise>
				첨부파일
				</c:otherwise>
			</c:choose>
			</th>
			<td colspan="5">
				<c:import url="/cmm/fms/selectFileInfs.do" charEncoding="utf-8">
					<c:param name="param_atchFileId" value="${result.atchFileId}" />
				</c:import>
			</td>
		</tr>
		</c:if>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea btn_ar">
		<c:if test="${user.mberType == 'A' || permission == 'M'}">
		<form name="frmUpdate" method="post" action="<c:url value='/cop/bbs/forUpdateBoardArticle.do'/>">
			<input type="hidden" class="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>" />
			<input type="hidden" class="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
			<input type="hidden" class="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" />
			<input type="hidden" class="hidden" name="parnts" value="<c:out value='${result.parnts}'/>" />
			<input type="hidden" class="hidden" name="sortOrdr" value="<c:out value='${result.sortOrdr}'/>" />
			<input type="hidden" class="hidden" name="replyLc" value="<c:out value='${result.replyLc}'/>" />
			<input type="hidden" class="hidden" name="nttSj" value="<c:out value='${result.nttSj}' />" />
			<input type="hidden" class="hidden" name="act" value="INQIRE"/>
			<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_modify.gif'/>" alt="수정" />
		</form>
		<form name="frmDelete" method="post" action="<c:url value='/cop/bbs/deleteBoardArticle.do'/>" onsubmit="return fn_egov_delete_notice();">
			<input type="hidden" class="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>" />
			<input type="hidden" class="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
			<input type="hidden" class="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" />
			<input type="hidden" class="hidden" name="parnts" value="<c:out value='${result.parnts}'/>" />
			<input type="hidden" class="hidden" name="sortOrdr" value="<c:out value='${result.sortOrdr}'/>" />
			<input type="hidden" class="hidden" name="replyLc" value="<c:out value='${result.replyLc}'/>" />
			<input type="hidden" class="hidden" name="nttSj" value="" />
			<input type="hidden" class="hidden" name="act" value="INQIRE" />
			<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_del.gif'/>" alt="삭제" />
		</form>
		</c:if>
		<c:if test="${brdMstrVO.replyPosblAt == 'Y'}">
			<c:if test="${not empty user }">
			<form name="frmReply" method="post" action="<c:url value='/cop/bbs/addReplyBoardArticle.do'/>">
				<input type="hidden" class="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>" />
				<input type="hidden" class="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
				<input type="hidden" class="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" />
				<input type="hidden" class="hidden" name="parnts" value="<c:out value='${result.parnts}'/>" />
				<input type="hidden" class="hidden" name="sortOrdr" value="<c:out value='${result.sortOrdr}'/>" />
				<input type="hidden" class="hidden" name="replyLc" value="<c:out value='${result.replyLc}'/>" />
				<input type="hidden" class="hidden" name="nttSj" value="<c:out value='${result.nttSj}' />" />
				<input type="hidden" class="hidden" name="act" value="INQIRE" />
				<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_reply.gif'/>" alt="답글작성" />
			</form>
			</c:if>
		</c:if>
		<form name="frmList" method="post" action="<c:url value='/cop/bbs/selectBoardList.do'/>">
			<input type="hidden" class="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>" />
			<input type="hidden" class="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
			<input type="hidden" class="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" />
			<input type="hidden" class="hidden" name="parnts" value="<c:out value='${result.parnts}'/>" />
			<input type="hidden" class="hidden" name="sortOrdr" value="<c:out value='${result.sortOrdr}'/>" />
			<input type="hidden" class="hidden" name="replyLc" value="<c:out value='${result.replyLc}'/>" />
			<input type="hidden" class="hidden" name="nttSj" value="<c:out value='${result.nttSj}' />" />
			<input type="hidden" class="hidden" name="act" value="LIST" />
			<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_list.gif'/>" alt="목록" />
		</form>
	</div>
	<!--// 버튼영역 -->

	<!-- 2009.06.29 : 2단계 기능 추가  -->
	<c:if test="${useComment == 'true'}">
	<table>
	  <tr>
	    <td height="10"></td>
	  </tr>
	</table>

	<c:import url="/cop/cmt${prefix}/selectCommentList.do" charEncoding="utf-8">
		<c:param name="type" value="body" />
	</c:import>
	</c:if>

	<c:if test="${useSatisfaction == 'true'}">
	<table>
	  <tr>
	    <td height="10"></td>
	  </tr>
	</table>

	<c:import url="/cop/stf${prefix}/selectSatisfactionList.do" charEncoding="utf-8">
		<c:param name="type" value="body" />
	</c:import>
	</c:if>
	<!-- 2009.06.29 : 2단계 기능 추가  -->

	<!-- 이전글/다음글 -->
	<table class="viewType1" summary="이전글/다음글 목록입니다">
		<colgroup>
			<col width="15%">
			<col width="85%">
		</colgroup>
		<tr class="bg1">
			<th class="prev" scope="row">이전글</th>
			<td>
			<c:import url="/cop/bbs/selectNttInfo.do" charEncoding="utf-8">
				<c:param name="param_bbsId" value="${result.bbsId}" />
				<c:param name="param_nttNo" value="${result.nttNo}" />
				<c:param name="param_sortOrdr" value="${result.sortOrdr}" />
				<c:param name="param_act" value="PREVIOUS" />
			</c:import>
			</td>
		</tr>
		<tr>
			<th class="next" scope="row">다음글</th>
			<td>
			<c:import url="/cop/bbs/selectNttInfo.do" charEncoding="utf-8">
				<c:param name="param_bbsId" value="${result.bbsId}" />
				<c:param name="param_nttNo" value="${result.nttNo}" />
				<c:param name="param_sortOrdr" value="${result.sortOrdr}" />
				<c:param name="param_act" value="NEXT" />
			</c:import>
			</td>
		</tr>
	</table>
	<!--// 이전글/다음글 -->
</div>
<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
