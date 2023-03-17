<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : NewsletterRegist.jsp
 * @Description : 뉴스레터 등록/발송 화면
 * @Modification Information
 * @
 * @  수정일      		수정자            	수정내용
 * @ -------      --------    ---------------------------
 * @ 2011.11.23		윤경한		최초생성
 *
 *  @author
 *  @since 2011.11.23
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
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/jquery-1.4.2.min.js' />" ></script>
<validator:javascript formName="board" staticJavascript="false" xhtml="true" cdata="false"/>

<script type="text/javascript">
	function fn_egov_validateForm(obj) {
		return true;
	}

	function fn_egov_regist_notice() {
		document.board.onsubmit();

		if (!validateBoard(document.board)){
			return;
		}

		if (confirm("뉴스레터는 저장 후 서식 변경이 안됩니다! 저장하시겠습니까?")) {
			document.board.action = "<c:url value='/cop/bbs/insertBoardArticle.do'/>";
			document.board.submit();
		}
	}

	function fn_egov_select_noticeList() {
		document.board.action = "<c:url value='/cop/bbs/selectBoardList.do'/>";
		document.board.submit();
	}

	var selectedForm = "<c:out value='${board.newsletterForm}'/>";
	function fnChangeForm(obj) {
		if(selectedForm != obj.value) {
			var bConfirmed = confirm("기존에 작성하신 내용이 사라집니다. 서식을 변경하시겠습니까?");
			if(bConfirmed) {
				//selectedForm = obj.value;
				//var oContent = document.getElementById("nttCn");
				//var oForm = document.getElementById(obj.value);
				document.board.action = "<c:url value='/cop/bbs/addBoardArticle.do'/>";
				document.board.submit();
				// JQuery -_-;
				//$('#'+obj.value).clone().appendTo('#contents');
				//alert($('#nttCn').html());
				//~JQuery
			}
			else {
				var oRadio = document.board.newsletterForm;
				for(var i=0; i<oRadio.length; i++)
				{
					if(oRadio[i].value == selectedForm) {
						oRadio[i].checked = true;
						return;
					}
				}
			}
		}
	}


</script>

<body onload="HTMLArea.init(); HTMLArea.onload = initEditorHideToolbar; document.board.nttSj.focus();">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

	<div class="title">
		<div class="locationMap">콘텐츠관리 > 뉴스레터관리</div>
		<h2>뉴스레터 등록</h2>
	</div>

<form:form commandName="board" name="board" method="post" enctype="multipart/form-data" >

<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
<input type="hidden" name="bbsId" value="<c:out value='${bdMstr.bbsId}'/>" />
<input type="hidden" name="bbsAttrbCode" value="<c:out value='${bdMstr.bbsAttrbCode}'/>" />
<input type="hidden" name="bbsTyCode" value="<c:out value='${bdMstr.bbsTyCode}'/>" />
<input type="hidden" name="replyPosblAt" value="<c:out value='${bdMstr.replyPosblAt}'/>" />
<input type="hidden" name="fileAtchPosblAt" value="<c:out value='${bdMstr.fileAtchPosblAt}'/>" />
<input type="hidden" name="posblAtchFileNumber" value="<c:out value='${bdMstr.posblAtchFileNumber}'/>" />
<input type="hidden" name="posblAtchFileSize" value="<c:out value='${bdMstr.posblAtchFileSize}'/>" />
<input type="hidden" name="tmplatId" value="<c:out value='${bdMstr.tmplatId}'/>" />
<input type="hidden" name="authFlag" value="<c:out value='${bdMstr.authFlag}'/>" />

<c:if test="${anonymous != 'true'}">
<input type="hidden" name="ntcrNm" value="dummy">	<!-- validator 처리를 위해 지정 -->
<input type="hidden" name="password" value="dummy">	<!-- validator 처리를 위해 지정 -->
</c:if>

<c:if test="${bdMstr.bbsAttrbCode != 'BBSA01'}">
   <input id="ntceBgnde" name="ntceBgnde" type="hidden" value="10000101">
   <input id="ntceEndde" name="ntceEndde" type="hidden" value="99991231">
</c:if>

	<!-- contents영역시작 -->
<div id="cntArea">

	<table class="registTable tblSpace3" summary="뉴스레터 입력폼입니다.">
		<colgroup>
			<col width="15%"><col>
		<colgroup>
		<tr>
			<th scope="row"><label for="nttSj">서식</label></th>
			<td>
				<form:radiobutton path="newsletterForm" onclick="fnChangeForm(this)" value="general" label="일반형" />&nbsp;
				<form:radiobutton path="newsletterForm" onclick="fnChangeForm(this)" value="column" label="칼럼형" />&nbsp;
				<form:radiobutton path="newsletterForm" onclick="fnChangeForm(this)" value="event" label="이벤트형"/>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="nttSj">제목</label></th>
			<td>
				<input name="nttSj" id="nttSj" type="text" class="text" size="60" value="" maxlength="60" style="width:600px;" />
				<br/><form:errors path="nttSj" />
			</td>
		</tr>
	</table>

	<textarea id="nttCn" name="nttCn" cols="75" rows="28" style="width:100%;height:1100px;border:0;">
	<c:if test="${board.newsletterForm == 'general' }">
		<%@ include file="formGeneral.jsp" %>
	</c:if>
	<c:if test="${board.newsletterForm == 'column' }">
		<%@ include file="formColumn.jsp" %>
	</c:if>
	<c:if test="${board.newsletterForm == 'event' }">
		<%@ include file="formEvent.jsp" %>
	</c:if>
	</textarea>

	<!-- 버튼영역 -->
	<div class="btnArea br_t">
		<span class="button" >
			<a href="<c:url value='/cop/bbs/selectBoardList.do'/>" onclick="javascript:fn_egov_select_noticeList(); return false;">
				<spring:message code="button.list" /></a></span>
		<span class="button" >
			<a href="<c:url value='/cop/bbs/insertBoardArticle.do'/>" onclick="javascript:fn_egov_regist_notice(); return false;">
				<spring:message code="button.save" /></a></span>
	</div>
	<!--// 버튼영역 -->
</form:form>

</div>
	<!-- content end -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>