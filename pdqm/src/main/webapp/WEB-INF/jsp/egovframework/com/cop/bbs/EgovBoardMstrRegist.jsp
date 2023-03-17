<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%
 /**
  * @Class Name : EgovBoardMstrRegist.jsp
  * @Description : 게시판 생성 화면
  * @Modification Information
  * @
  * @  수정일      수정자            수정내용
  * @ -------        --------    ---------------------------
  * @ 2009.03.12   이삼섭          최초 생성
  * @ 2009.06.26   한성곤          2단계 기능 추가 (댓글관리, 만족도조사)
  *   2011.09.15   서준식          2단계 기능 추가 (댓글관리, 만족도조사) 적용 방법 변경
  *  @author 공통서비스 개발팀 이삼섭
  *  @since 2009.03.12
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
<link href="<c:url value='/css/egovframework/com/cmm/button.css' />" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="boardMaster" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javascript">
	function fn_egov_regist_brdMstr(){
		if (!validateBoardMaster(document.boardMaster)){
			return;
		}

		//----------------------------
		// 2009.06.26 : 2단계 기능 추가
		//----------------------------
		var theForm = document.boardMaster;
		if (theForm.bbsTyCode.options[theForm.bbsTyCode.selectedIndex].value == 'BBST04' &&
				theForm.option.options[theForm.option.selectedIndex].value != '') {
			alert('방명록의 경우는 추가 선택사항을 지원하지 않습니다.');
			theForm.option.focus();
			return;
		}
		////--------------------------

		if (confirm('<spring:message code="common.regist.msg" />')) {
			form = document.boardMaster;
			form.action = "<c:url value='/cop/bbs/insertBBSMasterInf.do'/>";
			form.submit();
		}
	}

	function fn_egov_select_brdMstrList(){
		form = document.boardMaster;
		form.action = "<c:url value='/cop/bbs/SelectBBSMasterInfs.do'/>";
		form.submit();
	}

	function fn_egov_inqire_tmplatInqire(){
		form = document.boardMaster;
		var retVal;
		var url = "<c:url value='/cop/com/openPopup.do?requestUrl=/cop/tpl/selectTemplateInfsPop.do&typeFlag=BBS&width=850&height=360'/>";
		var openParam = "dialogWidth: 850px; dialogHeight: 360px; resizable: 0, scroll: 1, center: 1";

		retVal = window.showModalDialog(url,"p_tmplatInqire", openParam);
		if(retVal != null){
			var tmp = retVal.split("|");
			form.tmplatId.value = tmp[0];
			form.tmplatNm.value = tmp[1];
		}
	}

</script>

<title>게시판 생성</title>

<style type="text/css">
	h1 {font-size:12px;}
	caption {visibility:hidden; font-size:0; height:0; margin:0; padding:0; line-height:0;}
</style>


</head>
<body>
<noscript class="noScriptTitle">자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>
<form:form commandName="boardMaster" name="boardMaster" method="post" action="${pageContext.request.contextPath}/cop/bbs/SelectBBSMasterInfs.do">

<input type="hidden" name="pageIndex"  value="<c:out value='${searchVO.pageIndex}'/>"/>

<div id="border" style="width:730px">

	<table width="100%" cellpadding="8" class="table-search" border="0">
	 <tr>
	  <td width="100%"class="title_left">
	  	<h1>
	  		<img src="<c:url value='/images/egovframework/com/cmm/icon/tit_icon.gif' />" width="16" height="16" hspace="3" align="middle" alt="">&nbsp;게시판 생성
	  	</h1>
	  </td>
	 </tr>
	</table>
	<table width="100%" border="0" cellpadding="0" cellspacing="1" class="table-register" summary="게시판명,게시판소개,게시판 유형,게시판 속성,답장가능여부,파일첨부가능여부, ..  입니다">
	  <tr>
	    <th width="20%" height="23" class="required_text" nowrap >
	    	<label for="bbsNm">
	    		<spring:message code="cop.bbsNm" />
	    	</label>
	    <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required"></th>
	    <td width="80%" nowrap colspan="3">
	    	<form:input title="게시판명입력" path="bbsNm" size="60" cssStyle="width:100%" />
	    	<br/><form:errors path="bbsNm" />
	    </td>
	  </tr>
	  <tr>
	    <th height="23" class="required_text" >
	    	<label for="bbsIntrcn">
	    		<spring:message code="cop.bbsIntrcn" />
	    	</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td colspan="3">
	       <form:textarea title="게시판소개입력" path="bbsIntrcn" cols="75" rows="4" cssStyle="width:100%" />
	       <br/><form:errors path="bbsIntrcn" />
	    </td>
	  </tr>
	  <tr>
	    <th width="20%" height="23" class="required_text" nowrap >
	    	<label for="bbsTyCode">
	    		<spring:message code="cop.bbsTyCode" />
	    	</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="24%" nowrap>
	        <form:select path="bbsTyCode" title="게시판유형선택">
    	  		<form:option value='' label="--선택하세요--" />
	      		<form:options items="${typeList}" itemValue="code" itemLabel="codeNm"/>
      		</form:select>
	  	   <br/><form:errors path="bbsTyCode" />
	    </td>

	    <th width="21%" height="23" class="required_text" nowrap >
	    	<label for="bbsAttrbCode">
	    		<spring:message code="cop.bbsAttrbCode" />
	    	</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="30%" nowrap>
	        <form:select path="bbsAttrbCode" title="게시판속성선택">
    	  		<form:option value='' label="--선택하세요--" />
	      		<form:options items="${attrbList}" itemValue="code" itemLabel="codeNm"/>
      		</form:select>
	  	    <br/><form:errors path="bbsAttrbCode" />
	    </td>
	  </tr>

	  <tr>
	    <th width="20%" height="23" class="required_text" >
	    	<label for="replyPosblAt">
	    		<spring:message code="cop.replyPosblAt" />
	    	</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="24%" nowrap>
	     	<spring:message code="button.possible" /> : <form:radiobutton path="replyPosblAt"  value="Y" />&nbsp;
	     	<spring:message code="button.impossible" /> : <form:radiobutton path="replyPosblAt"  value="N"  />
	     	 <br/><form:errors path="replyPosblAt" />
	    </td>
		<!-- khyoon 게시물분류가능여부 옵션 추가 2011.10.25 -->
	    <th width="21%" height="23" class="required_text" >
	    	<label for="nttClPosblAt">
	    		게시물분류가능여부
	    	</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="30%" nowrap>
	     	<spring:message code="button.possible" /> : <form:radiobutton path="nttClPosblAt"  value="Y" />&nbsp;
	     	<spring:message code="button.impossible" /> : <form:radiobutton path="nttClPosblAt"  value="N"  />
	     	 <form:errors path="nttClPosblAt" />
	     	 <!-- khyoon 게시물분류코드 선택 추가 2011.10.26 -->
	        <form:select path="nttClCodeId" title="게시물분류코드 선택">
    	  		<form:option value='' label="--선택하세요--" />
	      		<form:options items="${clList}" itemValue="codeId" itemLabel="codeIdNm"/>
      		</form:select>
	  	    <br/><form:errors path="nttClCodeId" />	     	 
	    </td>
	    <!-- ~khyoon -->
	  </tr>
	  <tr>
	    <th width="20%" height="23" class="required_text" >
	    	<label for="fileAtchPosblAt">
	    		<spring:message code="cop.fileAtchPosblAt" />
	    	</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="24%" nowrap>
	     	<spring:message code="button.possible" /> : <form:radiobutton path="fileAtchPosblAt"  value="Y" />&nbsp;
	     	<spring:message code="button.impossible" /> : <form:radiobutton path="fileAtchPosblAt"  value="N"  />
	     	 <br/><form:errors path="fileAtchPosblAt" />
	    </td>	  
	    <th width="21%" height="23" class="required_text"  >
	    	<label for="posblAtchFileNumber">
	    		<spring:message code="cop.posblAtchFileNumber" />
	    	</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="30%" nowrap>
	     	<form:select path="posblAtchFileNumber" title="첨부가능파일 숫자선택"	>
	  		   <form:option value="0"  label="---선택하세요--" />
	  		   <form:option value='1'>1개</form:option>
	  		   <form:option value='2'>2개</form:option>
	  		   <form:option value='3'>3개</form:option>
	  	   </form:select>
	  	   <br/><form:errors path="posblAtchFileNumber" />
	    </td>
	  </tr>
	  <!-- khyoon NO/등록자 컬럼 사용여부 옵션 추가 2011.11.14 -->
	  <tr>
	    <th width="20%" height="23" class="required_text" >
	    	<label for="noColPosblAt">NO컬럼 사용여부</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="24%" nowrap>
	     	<spring:message code="button.possible" /> : <form:radiobutton path="noColPosblAt"  value="Y" />&nbsp;
	     	<spring:message code="button.impossible" /> : <form:radiobutton path="noColPosblAt"  value="N"  />
	     	 <br/><form:errors path="noColPosblAt" />
	    </td>	  	
	    <th width="21%" height="23" class="required_text" >
	    	<label for="noColPosblAt">등록자컬럼 사용여부</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="30%" nowrap>
	     	<spring:message code="button.possible" /> : <form:radiobutton path="regiColPosblAt"  value="Y" />&nbsp;
	     	<spring:message code="button.impossible" /> : <form:radiobutton path="regiColPosblAt"  value="N"  />
	     	 <br/><form:errors path="noColPosblAt" />
	    </td>	    
	  </tr>
	  <!-- khyoon 내용과목록함께보기/상세목록보기 가능여부 옵션 추가 2011.11.14 -->
	  <tr>
	    <th width="20%" height="23" class="required_text" >
	    	<label for="noColPosblAt">내용과목록함께보기 가능여부</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="24%" nowrap>
	     	<spring:message code="button.possible" /> : <form:radiobutton path="cnWithListPosblAt"  value="Y" />&nbsp;
	     	<spring:message code="button.impossible" /> : <form:radiobutton path="cnWithListPosblAt"  value="N"  />
	     	 <br/><form:errors path="cnWithListPosblAt" />
	    </td>	  	
	    <th width="21%" height="23" class="required_text" >
	    	<label for="noColPosblAt">상세목록보기 가능여부</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="30%" nowrap>
	     	<spring:message code="button.possible" /> : <form:radiobutton path="detailListPosblAt"  value="Y" />&nbsp;
	     	<spring:message code="button.impossible" /> : <form:radiobutton path="detailListPosblAt"  value="N"  />
	     	 <br/><form:errors path="detailListPosblAt" />
	    </td>	    
	  </tr>	  
	  <!-- ~khyoon -->
	  <tr>
	    <th width="20%" height="23" class="required_text" >
	    	<label for="tmplatNm">
	    		<spring:message code="cop.tmplatId" />
	    	</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="24%" nowrap>
	     <form:input path="tmplatNm" size="20" readonly="true" title="템플릿정보입력"/>
	     <form:hidden path="tmplatId"  />
	     &nbsp;<a href="#LINK" onclick="fn_egov_inqire_tmplatInqire(); return false;" style="selector-dummy: expression(this.hideFocus=false);"><img src="<c:url value='/images/egovframework/com/cmm/icon/search.gif' />"
	     			width="15" height="15" align="middle" alt="새창" /></a>
		 <br/><form:errors path="tmplatId" />
	    </td>
		<!-- khyoon SNS내보내기가능여부 옵션 추가 2011.10.25 -->
	    <th width="21%" height="23" class="required_text" >
	    	<label for="snsExportPosblAt">
	    		SNS내보내기가능여부
	    	</label>
	    	<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required">
	    </th>
	    <td width="30%" nowrap>
	     	<spring:message code="button.possible" /> : <form:radiobutton path="snsExportPosblAt"  value="Y" />&nbsp;
	     	<spring:message code="button.impossible" /> : <form:radiobutton path="snsExportPosblAt"  value="N"  />
	     	 <br/><form:errors path="snsExportPosblAt" />
	    </td>
	    <!-- ~khyoon -->	    
	  </tr>

		
		<!-- 2011.09.15 : 2단계 기능 추가 방법 변경  -->
		<c:if test="${useComment == 'true' || useSatisfaction == 'true'}">
		  <tr>
		    <th width="20%" height="23" class="required_text"><label for="option">추가 선택사항&nbsp;&nbsp;&nbsp;&nbsp;</label></th>
		    <td width="30%" nowrap colspan="3" >
		     	<form:select path="option" title="추가선택사항선택" >
		  		   <form:option value=""  label="미선택" />
		  		   <c:if test="${useComment == 'true'}">
		  		   	 <form:option value='comment'>댓글</form:option>
		  		   </c:if>		   
		  		   <c:if test="${useSatisfaction == 'true'}">
		  		   	<form:option value='stsfdg'>만족도조사</form:option>
		  		   </c:if>
		  	   </form:select>
		    </td>
		  </tr>
		</c:if>
		<!-- 2009.06.26 : 2단계 기능 추가 방법 변경 -->
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td height="10"></td>
	  </tr>
	</table>

	<div align="center">
	<table border="0" cellspacing="0" cellpadding="0" align="center">
	<tr>
	  <td><span class="button"><input type="button" value="<spring:message code="button.create"/>" onclick="javascript:fn_egov_regist_brdMstr(); return false;" ></span>
      </td>
      <td>&nbsp;&nbsp;</td>
      <td><span class="button"><input type="submit" value="<spring:message code="button.list" />" onclick="fn_egov_select_brdMstrList(); return false;"></span></td>
	</tr>
	</table>
	</div>
</div>
</form:form>
</body>
</html>
