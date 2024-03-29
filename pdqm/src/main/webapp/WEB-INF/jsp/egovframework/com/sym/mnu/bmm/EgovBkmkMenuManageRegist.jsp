<%@ page language="java" contentType ="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<% 
 /**
  * @Class Name : EgovBkmkMenuManageRegist.jsp
  * @Description : 바로가기메뉴관리 등록		
  * @Modification Information
  * @
  * @  수정일      수정자            수정내용
  * @ -------        --------    ---------------------------
  * @ 2009.09.25   윤성록          최초 생성
  *
  *  @author 공통컴포넌트팀 윤성록
  *  @since 2009.09.25
  *  @version 1.0
  *  @see
  *  
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<c:url value='/css/egovframework/com/cmm/com.css' />" rel="stylesheet" type="text/css">
<link href="<c:url value='/css/egovframework/com/cmm/button.css' />" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="bkmk" staticJavascript="false" xhtml="true" cdata="false"/>

<script type="text/javascript">
	function fn_egov_regist_bkmkInf(){
		
		if (!validateBkmk(document.bkmk)){
			return;
		}	
			
		if(confirm("등록하시겠습니까?")){
			document.bkmk.action = "<c:url value='/sym/mnu/bmm/registBkmkInf.do'/>";
			document.bkmk.submit();
			}
		}
	
	
	function fn_egov_select_bkmkInfs(){				
		document.bkmk.action = "<c:url value='/sym/mnu/bmm/selectBkmkMenuManageList.do'/>";
		document.bkmk.submit();		
	}

	
	function fn_egov_inqire_menu(){
		var retVal;
		var url = "<c:url value='/sym/mnu/bmm/openPopup.do?requestUrl=/sym/mnu/bmm/selectMenuList.do&width=850&height=360'/>";
		var openParam = "dialogWidth: 850px; dialogHeight: 360px; resizable: 0, scroll: 1, center: 1";

		retVal = window.showModalDialog(url,"p_userInqire", openParam);
		
		if(retVal != null){
		
			var tmp = retVal.split(",");
			
			document.bkmk.menuId.value = tmp[0];
			document.bkmk.menuNm.value = tmp[1];
			
			document.bkmk.action = "<c:url value='/sym/mnu/bmm/addBkmkInf.do'/>";
			document.bkmk.submit();			
		}			
	}		
	
	
</script>
<title>바로가기메뉴 등록</title>
</head>
<body>
<noscript class="noScriptTitle">자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>

<form  name="bkmk" method="post" action = "<c:url value='/sym/mnu/bmm/registBkmkInf.do'/>">
<input type = "hidden" name = "menuId" value = '<c:out value="${bkmkMenuManage.menuId}" />'>

<div id="border" style="width:730px">
	<table width="100%" cellpadding="8" class="table-search" border="0">
	 <tr>
	  <td width="25%"class="title_left" style="width: 173px">
	   <img src="<c:url value='/images/egovframework/com/cmm/icon/tit_icon.gif' />" width="16" height="16" hspace="3" alt="" >&nbsp;바로가기메뉴등록</td>
	   <th>
	   </th>
	     
	 </tr>
	</table>
	<table width="100%" border="0" cellpadding="0" cellspacing="1" class="table-register">
	  <tr> 
	    <th width="20%" height="23" class="required_text" nowrap > 메뉴명
	    <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required"></th>
	    <td width="80%" nowrap colspan="3">
	      <input name="menuNm" type="text" size="30"  value="<c:out value="${bkmkMenuManage.menuNm}" escapeXml="false" />" maxlength="60" style="width: 237px" readonly class="readOnlyClass">
	      <a href="javascript:fn_egov_inqire_menu();" style="selector-dummy: expression(this.hideFocus=false);"><img src="<c:url value='/images/egovframework/com/cmm/search2.gif' />"
	     			width="15" height="15" style="vertical-align: middle" alt="메뉴조회"></a>메뉴선택
	    </td>
	  </tr>	
	  <tr> 
	    <th width="20%" height="23" class="required_text" nowrap >메뉴 URL
	    <img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="required"></th>	    
	    <td width="80%" nowrap colspan="3">
	      <input name="progrmStrePath" type="text" size="30" value="<c:out value="${bkmkMenuManage.progrmStrePath}"/>"  maxlength="90" style="width: 235px" readonly class="readOnlyClass">	    
	    </td>    
	  </tr>	  
	</table>	

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr> 
	    <td height="10"></td>
	  </tr>
	</table>
	
<div align="center">
	   <table border="0" cellspacing="0" cellpadding="0">
	    <tr>	    
	      <td><span class="button"><input type="submit" value="저장" onclick="fn_egov_regist_bkmkInf(); return false;"></span></td>
	    	       <td>&nbsp;&nbsp;</td>
  		<td><span class="button"><a href="<c:url value='/sym/mnu/bmm/selectBkmkMenuManageList.do'/>?pageIndex=<c:out value='${searchVO.pageIndex}'/>" onclick="fn_egov_select_bkmkInfs(); return false;">목록</a></span></td> 
	    
        </tr>
	   </table>
	 </div> 
	 </div>
</form>
</body>
</html>
