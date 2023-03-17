<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="egovframework.com.cmm.service.EgovProperties" %>
<%@ page import="egovframework.com.cmm.service.Globals" %>
<%@ page import="egovframework.com.utl.fcc.service.EgovDateUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="ImgUrl" value="/images/egovframework/com/cop/bbs/"/>
<%
 /**
  * @Class Name : ContentWithNoticeList.jsp
  * @Description : 게시물 내용보기와 목록 함께보기 화면
  * @Modification Information
  * @
  * @  수정일      		수정자            	수정내용
  * @ -------      --------    ---------------------------
  * @ 2011.11.14	윤경한		최초생성
  *
  *  @author
  *  @since 2011.11.14
  *  @version 1.0
  *  @see
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>공공정보 품질관리 지원센터 :: <c:out value="${brdMstrVO.bbsNm}"/> - 내용보기</title>
<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<c:if test="${anonymous == 'true'}"><c:set var="prefix" value="/anonymous"/></c:if>
<script type="text/javascript" src="<c:url value='/js/egovframework/pdqm/LinkToSNS.js'/>"></script>
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
		document.searchVO.action = "<c:url value='/cop/bbs/addBoardArticle.do'/>";
		document.searchVO.submit();
	}

	function fn_egov_select_noticeList(pageNo) {
		document.searchVO.pageIndex.value = pageNo;
		document.searchVO.action = "<c:url value='/cop/bbs/selectBoardList.do'/>";
		document.searchVO.submit();
	}

	function fn_egov_inqire_notice(i, nttId, bbsId) {
		document.subForm.nttId.value = nttId;
		document.subForm.bbsId.value = bbsId;
		document.subForm.action = "<c:url value='/cop/bbs/selectBoardArticle.do'/>";
		document.subForm.submit();
	}

	/* khyoon 2011.12.07 웹접근성을 위한 수정
	function fn_egov_moveUpdt_notice() {
		document.frmContent.action = "<c:url value='/cop/bbs/forUpdateBoardArticle.do'/>";
		document.frmContent.submit();
	}*/

	function fn_egov_delete_notice() {
		// khyoon 2011.12.07 웹접근성을 위한 수정
		if (confirm('<spring:message code="common.delete.msg" />')) {
			//document.frmContent.action = "<c:url value='/cop/bbs/deleteBoardArticle.do'/>";
			//document.frmContent.submit();
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
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000161' }">
<%@ include file="/html/pdqm/include/lnb2.jsp" %><!-- 우수사례공유  -->
<div class="bg_know">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000171' }">
<%@ include file="/html/pdqm/include/lnb5.jsp" %><!-- 전문가칼럼  -->
<div class="bg_com">
</c:if>

<!-- contents영역시작 -->
	<!-- 게시판 타이틀 HTML -->
	<div class="title">${brdMstrVO.bbsIntrcn}</div>

	<c:if test="${fn:length(resultList) > 0}">
	<dl class="tbType2">
		<dt>
			<strong><c:out value="${contentVO.nttSj}" /></strong>
			<c:if test="${user.mberType == 'A'}">
			<form name="frmUpdate" method="post" action="<c:url value='/cop/bbs/forUpdateBoardArticle.do'/>">
			  <input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>">
			  <input type="hidden" name="bbsId" value="<c:out value='${contentVO.bbsId}'/>" >
			  <input type="hidden" name="nttId" value="<c:out value='${contentVO.nttId}'/>" >
			  <input type="hidden" name="parnts" value="<c:out value='${contentVO.parnts}'/>" >
			  <input type="hidden" name="sortOrdr" value="<c:out value='${contentVO.sortOrdr}'/>" >
			  <input type="hidden" name="replyLc" value="<c:out value='${contentVO.replyLc}'/>" >
			  <input type="hidden" name="nttSj" value="" />
			  <input type="hidden" name="act" value="LIST"/>
   			  <input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_modify.gif'/>" alt="수정" />
			</form>
			<form name="frmDelete" method="post" action="<c:url value='/cop/bbs/deleteBoardArticle.do'/>" onsubmit="return fn_egov_delete_notice();">
			  <input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>">
			  <input type="hidden" name="bbsId" value="<c:out value='${contentVO.bbsId}'/>" >
			  <input type="hidden" name="nttId" value="<c:out value='${contentVO.nttId}'/>" >
			  <input type="hidden" name="parnts" value="<c:out value='${contentVO.parnts}'/>" >
			  <input type="hidden" name="sortOrdr" value="<c:out value='${contentVO.sortOrdr}'/>" >
			  <input type="hidden" name="replyLc" value="<c:out value='${contentVO.replyLc}'/>" >
			  <input type="hidden" name="nttSj" value="" />
			  <input type="hidden" name="act" value="LIST"/>
   			  <input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_del.gif'/>" alt="삭제" />
			</form>
			</c:if>
			<c:if test="${brdMstrVO.bbsAttrbCode == 'BBSA05' }"><!-- 전문가칼럼영역 -->
			<em>[${contentVO.pubYear}년 ${contentVO.pubMonth}월 발행]</em>
			</c:if>
		</dt>
		<!-- 전문가칼럼영역 -->
		<dd class="ta_r brBn">&nbsp;
		<c:if test="${brdMstrVO.snsExportPosblAt == 'Y' }">
			<a href="http://www.facebook.com" target="_blank" title="새창으로 열림"
			onclick="fn_send_facebook('${result.nttSj}','http://pdqm.kr/pdqm/cop/bbs/selectBoardArticle.do?bbsId=${contentVO.bbsId}&nttId=${result.nttId}'); return false;">
			<img src="<c:url value='/images/pdqm/common/icon/icon_facebook.gif' />" alt="페이스북" /></a>
			<a href="https://twitter.com" target="_blank" title="새창으로 열림"
			onclick="fn_send_twitter('${result.nttSj}','http://pdqm.kr/pdqm/cop/bbs/selectBoardArticle.do?bbsId=${contentVO.bbsId}&nttId=${result.nttId}'); return false;">
			<img src="<c:url value='/images/pdqm/common/icon/icon_twitter.gif' />" alt="트위터" /></a>
			<a href="http://me2day.net" target="_blank" title="새창으로 열림"
			onclick="fn_send_me2day('${result.nttSj}','http://pdqm.kr/pdqm/cop/bbs/selectBoardArticle.do?bbsId=${contentVO.bbsId}&nttId=${result.nttId}'); return false;">
			<img src="<c:url value='/images/pdqm/common/icon/icon_metoday.gif' />" alt="미투데이" /></a>
		</c:if>
		</dd>
		<!--// 전문가칼럼영역 -->
		<dd class="con">
			<div id="con1">
				<c:out value="${contentVO.nttCn}" escapeXml="false" />
				<c:if test="${brdMstrVO.bbsAttrbCode == 'BBSA05' }"><!-- 전문가칼럼영역 -->
				<p class="blog">
					<c:if test="${contentVO.blogUrl != null }">
					<a href="${contentVO.blogUrl}" target="_blank" title="새창으로 열림">${contentVO.blogUrl}</a>
					</c:if>

					<img src="<c:url value='/images/pdqm/common/bbs/txt_sns.gif'/>" class="mal_10" alt="SNS바로가기" />
					<c:if test="${contentVO.facebookUrl != null }">
					<a href="${contentVO.facebookUrl}" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/icon/icon_facebook2.gif'/>" alt="전문가의 페이스북 바로가기" /></a>
					</c:if>
					<c:if test="${contentVO.twitterUrl != null }">
					<a href="${contentVO.twitterUrl}" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/icon/icon_twitter2.gif'/>" alt="전문가의 트위터 바로가기" /></a>
					</c:if>
				</p>
				<p class="ta_r"><a href="#wrapper"><img src="<c:url value='/images/pdqm/common/btn/btn_s_top.gif'/>" alt="맨위로 가기" /></a></p>
				</c:if>
			</div>
		</dd>
		<c:if test="${not empty contentVO.atchFileId}">
		<dd>첨부파일 :
			<c:import url="/cmm/fms/selectFileInfs.do" charEncoding="utf-8">
				<c:param name="param_atchFileId" value="${contentVO.atchFileId}" />
			</c:import>
		</dd>
		</c:if>
	</dl>
	</c:if>

	<table class="tbType1 tbSpace1" summary="번호, 제목, 등록자, 작성일, 첨부, 조회수 입니다">
	<colgroup>
		<c:if test="${brdMstrVO.noColPosblAt == 'Y' }">
		<col width="7%">
		</c:if>
		<c:if test="${brdMstrVO.nttClPosblAt == 'Y' }">
		<col width="35%"><!-- 분류 -->
		</c:if>
		<col>
		<c:if test="${brdMstrVO.bbsNm != '지식자료실' }">
		<col width="12%">
		</c:if>
		<col width="12%">
		<col width="8%">
		<col width="9%">
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
		    		<img src="<c:url value='/images/egovframework/com/cmm/icon/reply_arrow.gif'/>" alt="reply arrow" />
		    	</c:if>
    			<c:out value="${result.nttSj}" />
    		</c:when>
    		<c:otherwise>
	    		<form name="subForm" method="post" action="<c:url value='/cop/bbs/selectBoardList.do'/>">
					<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
					<input type="hidden" name="nttId"  value="<c:out value="${result.nttId}"/>" />
					<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
					<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
					<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
					<input type="hidden" name="nttClCodeId" value="<c:out value='${brdMstrVO.nttClCodeId}'/>" />
					<input type="hidden" name="act" value="LIST"/>
					<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
			    	<c:if test="${result.replyLc!=0}">
			    		<c:forEach begin="0" end="${result.replyLc}" step="1">
			    			&nbsp;
			    		</c:forEach>
			    		<img src="<c:url value='/images/egovframework/com/cmm/icon/reply_arrow.gif'/>" alt="reply arrow" />
			    	</c:if>
	    			<input type="submit" class="submit" value="<c:out value="${result.nttSj}"/>" />
					<!-- khyoon 2011.11.18 게시글 등록일 기준 최근 3일 이내 게시글 New 아이콘 표시 -->
	    			<fmt:parseDate value="${result.frstRegisterPnttm}" var="regipnttm" pattern="yyyy-mm-dd" />
	    			<fmt:formatDate value="${regipnttm}" var="regiday" pattern="yyyymmdd" />
					<c:if test="${(today-regiday) <= markNewNttBaseDate}" >
	    				<img src="<c:url value='/images/pdqm/common/icon/icon_new.gif'/>" alt="New" />
	    			</c:if>
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
    			<td class="listCenter" colspan="7" >
    				<spring:message code="common.nodata.msg" />
    			</td>
    		</c:when>
    		<c:otherwise>
    			<c:choose>
    				<c:when test="${anonymous == 'true'}">
		    			<td class="listCenter" colspan="4" >
		    				<spring:message code="common.nodata.msg" />
		    			</td>
		    		</c:when>
		    		<c:otherwise>
		    			<td class="listCenter" colspan="11" >
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
			<ui:pagination 	paginationInfo="${paginationInfo}"
							type="image"
							jsFunction="fn_egov_select_noticeList" />
		</div>
		<!-- 관리자 또는 답변가능게시판(일반사용자도 가능) 글쓰기 가능 -->
		<c:if test="${user.mberType == 'A'}">
		<div class="btn_pr">
			<a href="<c:url value='/cop/bbs/addBoardArticle.do'/>"
				onClick="javascript:fn_egov_addNotice(); return false;">
				<img src="<c:url value='/images/pdqm/common/btn/btn_write.gif'/>" alt="글쓰기" /></a>
		</div>
		</c:if>
	</div>
	<!--// pading_Btn -->

	<!-- 검색박스 -->
	<form:form commandName="searchVO" name="searchVO" action ="<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>" method="post">
	<fieldset class="searchBox">
		<legend>게시물검색폼</legend>
		<input type="hidden" name="bbsId" value="<c:out value='${boardVO.bbsId}'/>" />
		<input type="hidden" name="nttId"  value="0" />
		<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
		<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
		<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
		<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>

	  	<!-- khyoon 게시물분류가능 게시판인 경우 해당 분류코드 조건선택 활성화 2011.10.27 -->
	  	<c:if test="${brdMstrVO.nttClPosblAt == 'Y' }">
 		    <form:select path="searchNttClCode" title="게시물분류코드 선택">
		  		<form:option value='' label="--선택하세요--" />
		   		<form:options items="${codeList}" itemValue="code" itemLabel="codeNm"/>
			</form:select>
			<form:errors path="searchNttClCode" />
	  	</c:if>
	  	<!-- ~khyoon -->
		<select name="searchCnd" class="text" title="검색조건 선택">
			   <option value="0" <c:if test="${searchVO.searchCnd == '0'}">selected="selected"</c:if> >제목</option>
			   <option value="1" <c:if test="${searchVO.searchCnd == '1'}">selected="selected"</c:if> >내용</option>
		</select>
	    <input name="searchWrd" type="text" class="text" size="35" value='<c:out value="${searchVO.searchWrd}"/>' maxlength="35" onkeypress="press(event);" title="검색어 입력">
		<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_search.gif'/>" class="btn" title="검색" alt="검색"
				onclick="fn_egov_select_noticeList('1'); return false;" />
	</fieldset>
	</form:form>
<!--// 검색박스 -->
</div>
<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
