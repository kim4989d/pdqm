<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%
 /**
  * @Class Name : EgovNoticeReply.jsp
  * @Description : 게시물 답글 생성 화면
  * @Modification Information
  * @
  * @  수정일      수정자            수정내용
  * @ -------        --------    ---------------------------
  * @ 2009.03.24   이삼섭          최초 생성
  *
  *  @author 공통서비스 개발팀 이삼섭
  *  @since 2009.03.24
  *  @version 1.0
  *  @see
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<c:url value='/css/egovframework/com/cmm/com.css' />" rel="stylesheet" type="text/css">
<link href="<c:url value='${brdMstrVO.tmplatCours}' />" rel="stylesheet" type="text/css">
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
<title><c:out value='${bdMstr.bbsNm}'/> - 답글쓰기</title>

<style type="text/css">
	h1 {font-size:12px;}
	caption {visibility:hidden; font-size:0; height:0; margin:0; padding:0; line-height:0;}
</style>

</head>
<!-- body onload="javascript:editor_generate('nttCn');"-->
<body onLoad="HTMLArea.init(); HTMLArea.onload = initEditor; document.board.nttSj.focus();">

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

<div id="border">

	<table width="100%" cellpadding="8" class="table-search" border="0">
	 <tr>
	  <td width="100%"class="title_left">
	   <img src="<c:url value='/images/egovframework/com/cmm/icon/tit_icon.gif' />" width="16" height="16" hspace="3" align="absmiddle" alt="">
	   &nbsp;<c:out value='${bdMstr.bbsNm}'/> - 답글쓰기</td>
	 </tr>
	</table>
	<table width="100%" border="0" cellpadding="0" cellspacing="1" class="generalTable">
	  <tr>
	    <th width="20%" height="23" class="emphasisRight" nowrap ><spring:message code="cop.nttSj" />
	    <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required"></th>
	    <td width="80%" nowrap colspan="3">
	      <input name="nttSj" type="text" size="60" value="RE: <c:out value='${result.nttSj}'/>"  maxlength="60" >
	      <br/><form:errors path="nttSj" />
	    </td>
	  </tr>
	  <tr>
	    <th height="23" class="emphasisRight" ><spring:message code="cop.nttCn" />
	    <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required"></th>
	    <td colspan="3">
	      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="noStyle">
	      <tr><td>
	      <textarea id="nttCn" name="nttCn" class="textarea"  cols="75" rows="28"  style="width:550px;"></textarea>
	      <form:errors path="nttCn" />
	      </td></tr>
	      </table>
	    </td>
	  </tr>
	  <c:if test="${bdMstr.bbsAttrbCode == 'BBSA01'}">
		  <tr>
		    <th height="23" class="emphasisRight"><spring:message code="cop.noticeTerm" />
		    <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required"></th>
		    <td colspan="3">
		      <input name="ntceBgnde" type="hidden" value="">
		      <input name="ntceBgndeView" type="text" size="10" value=""  readOnly
		      	onClick="javascript:fn_egov_NormalCalendar(document.board, document.board.ntceBgnde, document.board.ntceBgndeView);" >
		      <img src="<c:url value='/images/egovframework/com/cmm/icon/bu_icon_carlendar.gif' />"
		      	onClick="javascript:fn_egov_NormalCalendar(document.board, document.board.ntceBgnde, document.board.ntceBgndeView);"
			    width="15" height="15" alt="calendar">
		      ~
		      <input name="ntceEndde" type="hidden"  value="">
		      <input name="ntceEnddeView" type="text" size="10" value=""  readOnly
		      	onClick="javascript:fn_egov_NormalCalendar(document.board, document.board.ntceEndde, document.board.ntceEnddeView);"  >
		      <img src="<c:url value='/images/egovframework/com/cmm/icon/bu_icon_carlendar.gif' />"
		      	onClick="javascript:fn_egov_NormalCalendar(document.board, document.board.ntceEndde, document.board.ntceEnddeView);"
			    width="15" height="15" alt="calendar">
			    <br/><form:errors path="ntceBgndeView" />
			    <br/><form:errors path="ntceEnddeView" />
		    </td>
		  </tr>
	  </c:if>
	  <c:if test="${anonymous == 'true'}">
		  <tr>
		    <th height="23" class="emphasisRight">작성자
		    <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required"></th>
		    <td colspan="3">
		      <input name="ntcrNm" type="text" size="20" value=""  maxlength="10" >
		      <br/><form:errors path="ntcrNm" />
		    </td>
		  </tr>
		  <tr>
		    <th height="23" class="emphasisRight"><spring:message code="cop.password" />
		    <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required"></th>
		    <td colspan="3">
		      <input name="password" type="password" size="20" value="" maxlength="20" >
		    </td>
		  </tr>
	  </c:if>
	  <c:if test="${bdMstr.fileAtchPosblAt == 'Y'}">
	  <tr>
	    <th height="23">파일첨부</th>
	    <td colspan="3">
            <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center">
			    <tr>
			        <td><input name="file_1" id="egovComFileUploader" type="file" /></td>
			    </tr>
			    <tr>
			        <td>
			        	<div id="egovComFileList"></div>
			        </td>
			    </tr>
   	        </table>
	    </td>
	  </tr>
     <script type="text/javascript">
     var maxFileNum = document.board.posblAtchFileNumber.value;
     if (maxFileNum==null || maxFileNum=="") {
    	 maxFileNum = 3;
     }
	 var multi_selector = new MultiSelector( document.getElementById( 'egovComFileList' ), maxFileNum );
	 multi_selector.addElement( document.getElementById( 'egovComFileUploader' ) );
     </script>
	  </c:if>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td height="10"></td>
	  </tr>
	</table>
	<div align="center">
	<table border="0" cellspacing="0" cellpadding="0" align="center">
	<tr>
	 <c:if test="${bdMstr.authFlag == 'Y'}">
	      <td><img src="<c:url value='/images/egovframework/com/cmm/btn/bu2_left.gif'/>" width="8" height="20" alt="button left"></td>
	      <td background="<c:url value='/images/egovframework/com/cmm/btn/bu2_bg.gif'/>" class="text_left" nowrap>
	      <a href="javascript:fn_egov_regist_notice();"><spring:message code="button.create" /></a>
	      </td>
	      <td><img src="<c:url value='/images/egovframework/com/cmm/btn/bu2_right.gif'/>" width="8" height="20" alt="button right"></td>
	      <td width="10"></td>
      </c:if>
      <td><img src="<c:url value='/images/egovframework/com/cmm/btn/bu2_left.gif'/>" width="8" height="20" alt="button left"></td>
      <td background="<c:url value='/images/egovframework/com/cmm/btn/bu2_bg.gif'/>" class="text_left" nowrap>
      <a href="javascript:fn_egov_select_noticeList();"><spring:message code="button.list" /></a>
      </td>
      <td><img src="<c:url value='/images/egovframework/com/cmm/btn/bu2_right.gif'/>" width="8" height="20" alt="button right"></td>
	</tr>
	</table>
	</div>
</div>
</form:form>
</body>
</html>
