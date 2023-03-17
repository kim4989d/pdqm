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
  * @Class Name  : EgovCcmCmmnClCodeRegist.jsp
  * @Description : EgovCcmCmmnClCodeRegist 화면
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
<validator:javascript formName="cmmnClCode" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_egov_list_CmmnClCode(){
	location.href = "<c:url value='/sym/ccm/ccc/EgovCcmCmmnClCodeList.do' />";
}
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
 function fn_egov_regist_CmmnClCode(form){
	if(confirm("<spring:message code="common.save.msg" />")){
		if(!validateCmmnClCode(form)){ 			
			return;
		}else{
			form.submit();
		}
	}
}
function fncShowMessg(){
    if("<c:out value='${message}'/>" != ''){
    alert("<c:out value='${message}'/>");
    }
}
</script>
</head>
<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- content start -->
<form:form commandName="cmmnClCode" name="cmmnClCode" method="post">

<div class="title">
	<div class="locationMap">공통코드관리 > 공통분류코드 등록</div>
	<h2> 공통분류코드 등록</h2>
</div>


<table class="viewType1" summary="">
  <tr>
    <th width="20%" scope="row" ><label for="clCode">분류코드</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>          
    <td width="80%" nowrap >
      <form:input  path="clCode" size="3" maxlength="3" id="clCode"/>
      <form:errors path="clCode"/>
    </td>
  </tr> 
  <tr>
    <th width="20%" scope="row"><label for="clCodeNm">분류코드명</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>          
    <td width="80%" >
      <form:input  path="clCodeNm" size="60" maxlength="60" id="clCodeNm"/>
      <form:errors path="clCodeNm"/>
    </td>    
  </tr> 
  <tr> 
    <th scope="row" ><label for="clCodeDc">분류코드설명</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>
    <td>
      <form:textarea path="clCodeDc" rows="3" cols="60" id="clCodeDc"/>
      <form:errors   path="clCodeDc"/>
    </td>
  </tr> 
  <tr> 
    <th width="20%"  scope="row"><label for="useAt">사용여부</label><img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수"  width="15" height="15"></th>
    <td width="30%" colspan="3">
      <form:select path="useAt">
	      <form:option value="Y" label="Yes"/>
	      <form:option value="N" label="No"/>
      </form:select>
    </td>    
  </tr>     
</table>

<div class="btnArea btn_taR">
 <span class="button"><input type="submit" value="저장" onclick="fn_egov_regist_CmmnClCode(document.cmmnClCode); return false;"/></span>
  <span class="button"><input type="submit" value="목록" onclick="fn_egov_list_CmmnClCode(); return false;"/></span>
</div>

  <!--   
  <td><img src="<c:url value='/images/egovframework/com/cmm/btn/bu2_left.gif' />" alt="저장" width="8" height="20"></td>
  <td style="background-image:URL(<c:url value='/images/egovframework/com/cmm/btn/bu2_bg.gif'/>);" class="text_left" nowrap><a href="JavaScript:javascript:fn_egov_regist_CmmnClCode(document.cmmnClCode);">저장</a></td>
  <td><img src="<c:url value='/images/egovframework/com/cmm/btn/bu2_right.gif' />" alt="저장" width="8" height="20"></td>  
  -->  

<input name="cmd" type="hidden" value="<c:out value='save'/>"/>
</form:form>
<!-- content end -->

<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>

