<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>

<%
 /**
  * @Class Name  : EgovCcmCmmnDetailCodeRegist.jsp
  * @Description : EgovCcmCmmnDetailCodeRegist 화면
  * @Modification Information
  * @
  * @  수정일             수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2011.11.15   신은영    
  *
  *  @author 공통서비스팀 
  *  @since 2009.04.01
  *  @version 1.0
  *  @see
  *  
  */
%>

<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="cmmnDetailCode" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript">
<!--
/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_egov_list_CmmnDetailCode(){
	location.href = "<c:url value='/sym/ccm/cde/EgovCcmCmmnDetailCodeList.do' />";
}
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_egov_regist_CmmnDetailCode(form){
	if(confirm("<spring:message code='common.save.msg'/>")){
		if(!validateCmmnDetailCode(form)){ 			
			return;
		}else{
			form.cmd.value = "Regist";
			form.submit();
		}
	}
}
/* ********************************************************
 * CodeId 가져오기
 ******************************************************** */
function fn_egov_get_CodeId(form){
	form.cmd.value = "";
	form.submit();
}
/* ********************************************************
* 서버 처리 후 메세지 화면에 보여주기
******************************************************** */
function fncShowMessg(){
	if("<c:out value='${message}'/>" != ''){
	alert("<c:out value='${message}'/>");
	}
}
-->
</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- content start -->

<form:form commandName="cmmnDetailCode" name="cmmnDetailCode" method="post">
<input name="cmd" type="hidden" value="<c:out value='Regist'/>"/>

<div class="title">
	<div class="locationMap">공통코드관리 > 공통상세코드 등록</div>
	<h2> 공통상세코드 등록 </h2>
</div>

<!-- 등록  폼 영역  -->
<table class="viewType1">
  <tr>
    <th width="20%" scope="row"><label for="codeId">코드ID</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>          
    <td width="80%" nowrap >
		<select name="clCode" class="select" onChange="javascript:fn_egov_get_CodeId(document.cmmnDetailCode);" title="clCode">
			<c:forEach var="result" items="${cmmnClCodeList}" varStatus="status">
				<option value='<c:out value="${result.clCode}"/>' <c:if test="${result.clCode == cmmnCode.clCode}">selected="selected"</c:if>><c:out value="${result.clCodeNm}"/></option>
			</c:forEach>			  		   
		</select>
		<select name="codeId" class="select" id="codeId">
			<c:forEach var="result" items="${cmmnCodeList}" varStatus="status">
				<option value='<c:out value="${result.codeId}"/>' ><c:out value="${result.codeIdNm}"/></option>
			</c:forEach>			  		   
		</select>
    </td>
  </tr> 
  <tr> 
    <th width="20%" scope="row"><label for="code">코드</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>
    <td width="80%" nowrap>
      <form:input  path="code" size="15" maxlength="15" id="code"/>
      <form:errors path="code"/>
    </td>
  </tr>
  <tr>
    <th width="20%" scope="row"><label for="codeNm">코드명</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>          
    <td width="80%" nowrap>
      <form:input  path="codeNm" size="60" maxlength="60" id="codeNm"/>
      <form:errors path="codeNm"/>
    </td>    
  </tr> 
  <tr> 
    <th scope="row"><label for="codeDc">코드설명</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>
    <td>
      <form:textarea path="codeDc" rows="3" cols="60" id="codeDc"/>
      <form:errors   path="codeDc"/>
    </td>
  </tr> 
  <tr> 
    <th width="20%" scope="row"><label for="useAt">사용여부</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>
    <td width="30%" colspan="3">
      <form:select path="useAt" id="useAt">
	      <form:option value="Y" label="Yes"/>
	      <form:option value="N" label="No"/>
      </form:select>
    </td>    
  </tr>     
</table>

<div class="btnArea btn_taR">
  <span class="button"><input type="submit" value="목록" onclick="fn_egov_list_CmmnDetailCode(); return false;"/></span>
  <span class="button"><input type="submit" value="저장" onclick="fn_egov_regist_CmmnDetailCode(document.cmmnDetailCode); return false;"/></span>   
</div>

</form:form>
<!-- content end -->

<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
