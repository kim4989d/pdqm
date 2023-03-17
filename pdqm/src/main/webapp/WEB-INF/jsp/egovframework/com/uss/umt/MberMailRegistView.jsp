<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="egovframework.com.utl.fcc.service.EgovStringUtil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
 /**
  * @Class Name : MberMailRegistView.jsp
  * @Description :  메일등록 화면
  *
  */
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<base target="_self" />
<script type="text/javascript">
_editor_area = "emailCn";
_editor_url = "<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/'/>";
</script>
<script type="text/javascript" src="<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/htmlarea.js'/>"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
<!-- <script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovWebEditor.js'/>"></script>-->

<%
	String strMail = "";
	strMail = EgovStringUtil.isNullToString(request.getParameter("checkMail"));
%>
<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 등록 처리 함수
 ******************************************************** */
function insertSndngMail(form) {

	document.sndngMailVO.onsubmit();
	if(document.sndngMailVO.sj.value==""){
	   alert("제목을 입력해 주세요");
	   return false;
	}

	if(confirm('메일 발송 하시겠습니까?')){

		form.action = "<c:url value='/uss/umt/MberInsertSndngMail.do'/>";
		form.submit();
	}

}

/* ********************************************************
 * 닫기 처리 함수
 ******************************************************** */
function fnClose(){
	window.close();
}
/* ********************************************************
 * 초기화
 ******************************************************** */

</script>

<!-- 메시지 출력 -->
<script type="text/javascript" language="javascript" defer="defer">
<!--
<c:if test="${!empty message}"> alert("${message}");
	window.close();
</c:if>
//-->
</script>
<noscript class="noScriptTitle">자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>

</head>

<!-- <body id="popWrap"> -->
<body id="popWrap" onload="HTMLArea.init(); HTMLArea.onload = initEditorHideToolbar;">
	<div class="popArea">
		<h2>메일전송</h2>

		<div class="pop_con">
		<form:form name="sndngMailVO" method="post" enctype="multipart/form-data">
			<input type="hidden" name="posblAtchFileNumber" value="10" />
			<input type="hidden" name="link" value="${resultInfo.link}" />
			<input type="hidden" name="closeYn" value="${closeYn}" />
	  	  
		<table class="registTable tblSpace3" summary="메일전송 입력폼입니다.">
			<colgroup>
				<col width="15%"><col>
				
			<colgroup>
			<tr>
			  <th scope="row" width="100" height="23" class="required_text" nowrap ><label for="recptnPerson">받는사람</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="필수입력표시"></th>
			  <td width="600" nowrap>
			    <input name="recptnPerson" id="recptnPerson" type="text" size="74" value="<%=strMail%>"  maxlength="60" style="ime-mode: disabled;" tabindex="1" title="<spring:message code="sym.ems.receiver" />" readonly="readonly" />
			  </td>
			</tr>		
			<tr>
				<th scope="row"><label for="sj">제목</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="필수입력표시"></th>
				<td>
					<input name="sj" id="sj" type="text" class="text" size="60" value="" maxlength="60" style="width:550px;" /><form:errors path="sj" />
				</td>
			</tr>
		</table>
		<textarea id="emailCn" name="emailCn" cols="75" rows="10" style="width:100%;height:670px;border:0;">
			<%@ include file="mailForm.jsp" %>
		</textarea>
		<!-- 버튼영역 -->
		<div class="btnArea">
			<span class="button"><input type="button" onclick="fnClose(); return false;" value="닫기" /></span>
			<span class="button"><input type="button" onclick="insertSndngMail(document.sndngMailVO); return false;" value="발송" /></span>
		</div>
		<!--// 버튼영역 -->
  	</form:form>
</body>
</html>


