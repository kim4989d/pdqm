<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : EgovIdDplctCnfirm.jsp
  * @Description : 아이디중복확인
  * @Modification Information
  * @
  * @  수정일         수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2009.03.03    조재영          최초 생성
  *
  *  @author 공통서비스 개발팀 박지욱
  *  @since 2009.03.23
  *  @version 1.0
  *  @see
  *  
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<base target="_self" >	
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>

<script type="text/javaScript" language="javascript">
<!--
function fnCheckId(){
	
	if(fnCheckNotKorean(document.checkForm.checkId.value)){
		document.checkForm.submit();
		
    }else{
    	alert("한글은 사용할 수 없습니다.");
        return;
    }
}
function fnReturnId(){
	
	var retVal="";
    if (document.checkForm.usedCnt.value == 0){
	    retVal = document.checkForm.resultId.value;
	    window.returnValue = retVal; 
        window.close();
    }else if (document.checkForm.usedCnt.value == 1){
        alert("이미사용중인 아이디입니다.");
        return;
    }else{
    	alert("먼저 중복확인을 실행하십시오");
        return;
    }
}
function fnClose(){
    var retVal="";
    window.returnValue = retVal; 
    window.close();
}
function fnCheckNotKorean(koreanStr){                  
    for(var i=0;i<koreanStr.length;i++){
        var koreanChar = koreanStr.charCodeAt(i);
        if( !( 0xAC00 <= koreanChar && koreanChar <= 0xD7A3 ) && !( 0x3131 <= koreanChar && koreanChar <= 0x318E ) ) { 
        }else{
            //hangul finding....
            return false;
        }
    }
    return true;
}
//-->
</script>
</head>

<body id="popWrap">
	<form name="checkForm" action ="<c:url value='/uss/umt/EgovIdDplctCnfirm.do'/>">
	
	<div class="popArea">
		<h2><img src="<c:url value='/images/pdqm/common/member/pop_h2_idcheck.gif'/>" alt="아이디 중복확인" /></h2>

		<div class="pop_con">
			<p class="txt_result">입력하신 아이디
				<c:choose>
                <c:when test="${usedCnt eq -1}">
                    &nbsp;중복확인을 실행하십시오
                </c:when>
                <c:when test="${usedCnt eq 0}">
                     <em>${checkId}</em> 는 사용 할 수 있습니다.
                </c:when>
                <c:otherwise>
                     <em>${checkId}</em> 는 사용 할 수 없는 아이디입니다.
                </c:otherwise>
                </c:choose>
			</p>

			<div class="popBox1">
				<dl>
					<dt><label for="label_id"><img src="<c:url value='/images/pdqm/common/member/pop_txt1.gif'/>" alt="다른 아이디 검색" /></label></dt>
					<dd>
						<input type="hidden" name="resultId" value="<c:out value="${checkId}"/>" />
			            <input type="hidden" name="usedCnt" value="<c:out value="${usedCnt}"/>" />
			            <input type="text" name="checkId" value="<c:out value="${checkId}"/>" maxlength="20" tabindex="1" style="ime-mode:disabled;" />
						<a href="#" onclick="javascript:fnCheckId();"><img src="<c:url value='/images/pdqm/common/btn/btn_idcheck.gif'/>" alt="중복확인" /></a>
					</dd>
				</dl>
				<p class="fs_1">* 영문과 숫자를 혼합하여 5자이상~10자 이내로 작성해 주세요.</p>
			</div>

			<div class="btnArea">
				<a href="#" onclick="javascript:fnReturnId();"><img src="<c:url value='/images/pdqm/common/btn/btn_ok.gif'/>" alt="확인" /></a>			
				<a href="#" onclick="javascript:fnClose();"><img src="<c:url value='/images/pdqm/common/btn/btn_cancel.gif'/>" alt="취소" /></a>
			</div>
		</div>

	</div>
	</form>	
</body>
</html>



