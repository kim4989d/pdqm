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
  * @Class Name  : EgovCcmCmmnCodeRegist.jsp
  * @Description : EgovCcmCmmnCodeRegist 화면
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

<link rel="stylesheet" href="<c:url value='/css/pdqm/admin/admin.css' />" type="text/css" />
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="cmmnCode" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript">
<!--
/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_egov_list_CmmnCode(){
	location.href = "<c:url value='/sym/ccm/cca/EgovCcmCmmnCodeList.do' />";
}
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
 function fn_egov_regist_CmmnCode(form){
	if(confirm("<spring:message code='common.save.msg'/>")){
		if(!validateCmmnCode(form)){ 			
			return;
		}else{
			form.submit();
		}
	}
}
//-->
</script>
</head>
<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- content start -->
<form:form commandName="cmmnCode" name="cmmnCode" method="post">
	<div class="title">
	<div class="locationMap">공통코드관리 > 공통코드 등록</div>
		<h2> 공통코드 등록 </h2>
	</div>

	<table class="viewType1" summary="">
		<tr>
		<th width="20%" scope="row"><label for="clCode">분류코드</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>          
			<td width="80%" nowrap >
			<select name="clCode" class="select" id="clCode">
				<c:forEach var="result" items="${cmmnClCode}" varStatus="status">
					<option value='<c:out value="${result.clCode}"/>'><c:out value="${result.clCodeNm}"/></option>
				</c:forEach>			  		   
			</select>
			</td>
		</tr> 
		<tr>
		<th width="20%" scope="row" ><label for="codeId">코드ID</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>          
			<td width="80%" nowrap>
				<form:input  path="codeId" size="6" maxlength="6" id="codeId"/>
				<form:errors path="codeId"/>
			</td>
		</tr> 
		<tr>
		<th width="20%"  scope="row"  ><label for="codeIdNm">코드ID명</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>          
			<td width="80%" nowrap>
				<form:input  path="codeIdNm" size="60" maxlength="60" id="codeIdNm"/>
				<form:errors path="codeIdNm"/>
			</td>    
		</tr> 
		<tr> 
		<th scope="row" ><label for="codeIdDc">코드ID설명</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>
			<td>
				<form:textarea path="codeIdDc" rows="3" cols="60" id="codeIdDc"/>
				<form:errors   path="codeIdDc"/>
			</td>
		</tr> 
		<tr> 
		<th width="20%" scope="row" ><label for="useAt">사용여부</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>
			<td width="30%">
				<form:select path="useAt" id="useAt">
					<form:option value="Y" label="Yes"/>
					<form:option value="N" label="No"/>
				</form:select>
			</td>    
		</tr>     
	</table>


	<div class="btnArea btn_taR">
		<span class="button"><input type="submit" value="목록" onclick="fn_egov_list_CmmnCode(); return false;" /></span>
		<span class="button"><input type="submit" value="저장" onclick="fn_egov_regist_CmmnCode(document.cmmnCode); return false;" /></span>   
	</div>

	<input name="cmd" type="hidden" value="<c:out value='save'/>"/>
	</form:form>
	<!-- content end -->
	
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>

