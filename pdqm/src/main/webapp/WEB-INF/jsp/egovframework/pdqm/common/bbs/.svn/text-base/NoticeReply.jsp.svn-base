<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%
/**
 * @Class Name : NoticeReply.jsp
 * @Description : 게시물 답글등록화면
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
	<title>공공정보 품질관리 지원센터 :: <c:out value="${bdMstr.bbsNm}"/> - 답변하기</title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>

<script type="text/javascript">
_editor_area = "nttCn";
_editor_url = "<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/'/>";
</script>
<script type="text/javascript" src="<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/htmlarea.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<!-- script type="text/javascript" src="<c:url value='/html/egovframework/com/cmm/utl/htmlarea/EgovWebEditor.js'/>" ></script-->
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/fms/EgovMultiFile.js'/>" ></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="board" staticJavascript="false" xhtml="true" cdata="false"/>
<c:if test="${anonymous == 'true'}"><c:set var="prefix" value="/anonymous"/></c:if>
<script type="text/javascript">

	function fn_egov_validateForm(obj) {
		return true;
	}

	function fn_egov_regist_notice() {
		document.board.onsubmit();

		if (!validateBoard(document.board)){
			return;
		}

		if (confirm('<spring:message code="common.regist.msg" />')) {
			document.board.action = "<c:url value='/cop/bbs${prefix}/replyBoardArticle.do'/>";
			document.board.submit();
		}
	}

	function fn_egov_select_noticeList() {
		document.board.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
		document.board.submit();
	}
</script>
<style type="text/css">
.noStyle {background:ButtonFace; BORDER-TOP:0px; BORDER-bottom:0px; BORDER-left:0px; BORDER-right:0px;}
  .noStyle th{background:ButtonFace; padding-left:0px;padding-right:0px}
  .noStyle td{background:ButtonFace; padding-left:0px;padding-right:0px}
</style>
</head>

<!-- body onload="javascript:editor_generate('nttCn');"-->
<body onLoad="HTMLArea.init(); HTMLArea.onload = initEditor; document.board.nttCn.focus();">
<!-- Top Menu -->
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<!-- Left Menu -->
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000131' }">
<%@ include file="/html/pdqm/include/lnb8.jsp" %><!-- 묻고답하기  -->
<div class="bg_qna">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000151' }">
<%@ include file="/html/pdqm/include/lnb5.jsp" %><!-- 커뮤니티게시판  -->
<div class="bg_com">
</c:if>
<!-- ~Menu -->

<form:form commandName="board" name="board" method="post" enctype="multipart/form-data" >
<input type="hidden" name="replyAt" value="Y" />
<input type="hidden" name="pageIndex"  value="<c:out value='${searchVO.pageIndex}'/>"/>
<input type="hidden" name="nttId" value="<c:out value='${searchVO.nttId}'/>" />
<input type="hidden" name="parnts" value="<c:out value='${searchVO.parnts}'/>" />
<input type="hidden" name="sortOrdr" value="<c:out value='${searchVO.sortOrdr}'/>" />
<input type="hidden" name="replyLc" value="<c:out value='${searchVO.replyLc}'/>" />

<input type="hidden" name="bbsId" value="<c:out value='${bdMstr.bbsId}'/>" />
<input type="hidden" name="bbsAttrbCode" value="<c:out value='${bdMstr.bbsAttrbCode}'/>" />
<input type="hidden" name="bbsTyCode" value="<c:out value='${bdMstr.bbsTyCode}'/>" />
<input type="hidden" name="replyPosblAt" value="<c:out value='${bdMstr.replyPosblAt}'/>" />
<input type="hidden" name="fileAtchPosblAt" value="<c:out value='${bdMstr.fileAtchPosblAt}'/>" />
<input type="hidden" name="posblAtchFileNumber" value="<c:out value='${bdMstr.posblAtchFileNumber}'/>" />
<input type="hidden" name="posblAtchFileSize" value="<c:out value='${bdMstr.posblAtchFileSize}'/>" />
<input type="hidden" name="tmplatId" value="<c:out value='${bdMstr.tmplatId}'/>" />

<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/EgovNormalCalPopup.do'/>" />

<c:if test="${anonymous != 'true'}">
<input type="hidden" name="ntcrNm" value="dummy">	<!-- validator 처리를 위해 지정 -->
<input type="hidden" name="password" value="dummy">	<!-- validator 처리를 위해 지정 -->
</c:if>

<c:if test="${bdMstr.bbsAttrbCode != 'BBSA01'}">
   <input name="ntceBgnde" type="hidden" value="10000101">
   <input name="ntceEndde" type="hidden" value="99991231">
</c:if>

	<!-- contents영역시작 -->

	<!-- 게시판 타이틀 HTML -->
	<div class="title">${brdMstrVO.bbsIntrcn}</div>

	<table class="registTable" summary="게시글 입력폼입니다.">
	<colgroup>
		<col width="15%"><col>
	<colgroup>
	<tr>
		<th scope="row"><label for="nttSj">제목</label></th>
		<td>
			<input name="nttSj" id="nttSj" type="text" class="text" size="60" value="RE: <c:out value='${result.nttSj}'/>" maxlength="60" style="width:600px;" />
			<br/><form:errors path="nttSj" />
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="nttCn">내용</label></th>
		<td>
			<!-- 에디터 들어가는 자리 -->
			<textarea id="nttCn" name="nttCn" class="text" cols="75" rows="50" style="width:600px;height:450px;"></textarea>
			<form:errors path="nttCn" />
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="egovComFileUploader">첨부파일</label></th>
		<td>
			<input name="egovComFileUploader" type="file" class="text" size="50" id="egovComFileUploader" />
			<div id="egovComFileList"></div>
			 <script type="text/javascript">
			 var maxFileNum = document.board.posblAtchFileNumber.value;
			 if (maxFileNum==null || maxFileNum=="") {
				 maxFileNum = 3;
			 }
			 var multi_selector = new MultiSelector( document.getElementById( 'egovComFileList' ), maxFileNum );
			 multi_selector.addElement( document.getElementById( 'egovComFileUploader' ) );
			 </script>
		</td>
	</tr>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea btn_ar">
		<a href="<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>" onclick="fn_egov_select_noticeList();return false;">
			<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_list.gif'/>" alt="목록" /></a>
		<a href="<c:url value='/cop/bbs${prefix}/insertBoardArticle.do'/>" onclick="fn_egov_regist_notice();return false;">
			<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_regist.gif'/>" alt="등록" /></a>		
	</div>
	<!--// 버튼영역 -->
</form:form>

</div>
<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
