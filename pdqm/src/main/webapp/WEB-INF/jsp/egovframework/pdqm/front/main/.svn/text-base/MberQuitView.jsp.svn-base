<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%
 /**
  * @Class Name : MberQuitView.jsp
  * @Description :  회원탈퇴 화면
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
	<validator:javascript formName="mberQuitVO" staticJavascript="false" xhtml="true" cdata="false"/>

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
	<script type="text/javascript" language="javascript" defer="defer">
		<!--
		function fnQuit(){
			if(validateMberQuitVO(document.mberManageVO)){
				if(confirm('회원 탈퇴 하시겠습니까?')){
					document.mberManageVO.action = "<c:url value='/uss/umt/MberQuit.do'/>";
					document.mberManageVO.submit();
				}
			}
		}

	//-->
	</script>

</head>


<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb11.jsp" %>
<!-- contents영역시작 -->
	<form:form commandName="mberManageVO" name="mberManageVO"  method="post" >
			<div class="find_id">
				<div class="title">
					<div class="location">Home > 개인정보수정 > <em>회원탈퇴</em></div>
					<h3><img src="<c:url value='/images/pdqm/common/member/h3_memOut.gif'/>" alt="회원탈퇴" /></h3>
					<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/member/h3_memOut_desc.gif'/>" alt="공공정보 품질관리 지원센터를 탈퇴합니다. 탈퇴시 개인정보와 작성한 모든 게시물이 삭제되며, 사용한 아이디는 재사용이 불가능합니다." /></p>
				</div>

				<fieldset>
					<legend>회원탈퇴 폼</legend>
					<table class="registTable tb_thL" summary="회원탈퇴 입력폼입니다.">
						<colgroup>
							<col width="20%"><col width="auto">
						<colgroup>
						<tr>
							<th scope="row">성명</th>
							<td><strong>${mberManageVO.mberNm}</strong></td>
						</tr>
						<tr>
							<th scope="row">아이디</th>
							<td>${mberManageVO.mberId}<form:hidden path="uniqId" /></td>
						</tr>
						<tr>
							<th scope="row"><label for="password">비밀번호</label></th>
							<td>
								<input type="password" id="password" name="password" class="text" style="width:170px;ime-mode: disabled;" maxlength="20"/>
							</td>
						</tr>
					</table>

					<!-- btn영역 -->
					<div class="btnArea ta_r">
						<a href="<c:url value='/uss/umt/MberQuit.do'/>" onclick="fnQuit();return false;"><img src="<c:url value='/images/pdqm/common/member/btn_out.gif'/>" alt="탈퇴" /></a>
						<a href="${pageContext.request.contextPath}/index.do"><img src="<c:url value='/images/pdqm/common/btn/btn_cancel.gif'/>" alt="취소" /></a>
					</div>
					<!--// btn영역 -->
				</fieldset>
			</div>
	</form:form>

<!-- contents 영역끝 -->
<!-- 메시지 출력 -->
	<script type="text/javascript" language="javascript" defer="defer">
	<!--

		<c:if test="${!empty message}">
			alert("${message}");
			<c:if test="${ sucess == '1' }">
	 			document.mberManageVO.action = "<c:url value='/uat/uia/actionLogout.do'/>";
				document.mberManageVO.submit();
			</c:if>
		</c:if>
	//-->
	</script>
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
