<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : NewsletterUpdt.jsp
 * @Description : 뉴스레터 수정화면
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

<script type="text/javascript">
_editor_area = "nttCn";
_editor_url = "<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/'/>";
</script>
<script type="text/javascript" src="<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/htmlarea.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="board" staticJavascript="false" xhtml="true" cdata="false"/>

<script type="text/javascript">
	function fn_egov_validateForm(obj){
		return true;
	}

	function fn_egov_regist_notice(){
		document.board.onsubmit();


		var ntceBgnde = eval(document.getElementById("ntceBgnde").value);
		var ntceEndde = eval(document.getElementById("ntceEndde").value);


		if(ntceBgnde > ntceEndde){
			alert("게시기간 종료일이 시작일보다 빠릅니다.");
			return;
		}

		if (!validateBoard(document.board)){
			return;
		}

		if (confirm('<spring:message code="common.update.msg" />')) {
			document.board.action = "<c:url value='/cop/bbs${prefix}/updateBoardArticle.do'/>";
			document.board.submit();
		}
	}

	function fn_egov_select_noticeList() {
		document.board.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
		document.board.submit();
	}

	function fn_egov_check_file(flag) {
		if (flag=="Y") {
			document.getElementById('file_upload_posbl').style.display = "block";
			document.getElementById('file_upload_imposbl').style.display = "none";
		} else {
			document.getElementById('file_upload_posbl').style.display = "none";
			document.getElementById('file_upload_imposbl').style.display = "block";
		}
	}
</script>
<body onload="HTMLArea.init(); HTMLArea.onload = initEditorHideToolbar; document.board.nttSj.focus();">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
	<div class="title">
		<div class="locationMap">관리자홈 > 콘텐츠관리 > 뉴스레터관리 > 수정</div>
		<h2>뉴스레터 수정</h2>
	</div>

<div id="cntArea">
<form:form commandName="board" name="board" method="post" enctype="multipart/form-data" >
<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>
<input type="hidden" name="returnUrl" value="<c:url value='/cop/bbs/forUpdateBoardArticle.do'/>"/>

<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
<input type="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" />

<input type="hidden" name="bbsAttrbCode" value="<c:out value='${bdMstr.bbsAttrbCode}'/>" />
<input type="hidden" name="bbsTyCode" value="<c:out value='${bdMstr.bbsTyCode}'/>" />
<input type="hidden" name="replyPosblAt" value="<c:out value='${bdMstr.replyPosblAt}'/>" />
<input type="hidden" name="fileAtchPosblAt" value="<c:out value='${bdMstr.fileAtchPosblAt}'/>" />
<input type="hidden" name="posblAtchFileNumber" value="<c:out value='${bdMstr.posblAtchFileNumber}'/>" />
<input type="hidden" name="posblAtchFileSize" value="<c:out value='${bdMstr.posblAtchFileSize}'/>" />
<input type="hidden" name="tmplatId" value="<c:out value='${bdMstr.tmplatId}'/>" />

<c:if test="${anonymous != 'true'}">
<input type="hidden" name="ntcrNm" value="dummy"/>	<!-- validator 처리를 위해 지정 -->
<input type="hidden" name="password" value="dummy" />	<!-- validator 처리를 위해 지정 -->
</c:if>

<c:if test="${bdMstr.bbsAttrbCode != 'BBSA01'}">
   <input id="ntceBgnde" name="ntceBgnde" type="hidden" value="10000101" />
   <input id="ntceEndde" name="ntceEndde" type="hidden" value="99991231" />
</c:if>

	<table class="registTable tblSpace3" summary="게시글 입력폼입니다.">
		<colgroup>
			<col width="15%">
			<col width="85%">
		<colgroup>
		<tr>
			<th scope="row"><label for="nttSj">제목</label></th>
			<td>
				<input name="nttSj" id="nttSj" type="text" class="text" size="60"  value="<c:out value='${result.nttSj}' />" maxlength="60" style="width:600px;" /><form:errors path="nttSj" />
			</td>
		</tr>
	</table>
	<textarea id="nttCn" name="nttCn" cols="75" rows="28" style="width:100%;height:1100px;border:0;">
		<c:out value="${result.nttCn}" escapeXml="false" /><form:errors path="nttCn" />
	</textarea>

</form:form>
	<!-- 버튼영역 -->
	<div class="btnArea br_t">
		<span class="button" ><a href="<c:url value='/cop/bbs/selectBoardList.do'/>" onclick="javascript:fn_egov_select_noticeList(); return false;"><spring:message code="button.list" /></a></span><!-- 목록 -->
		<span class="button" ><a href="<c:url value='/cop/bbs/insertBoardArticle.do'/>" onclick="javascript:fn_egov_regist_notice(); return false;"><spring:message code="button.save" /></a></span><!-- 저장 -->
	</div>
	<!--// 버튼영역 -->

</div>
	<!-- content end -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>