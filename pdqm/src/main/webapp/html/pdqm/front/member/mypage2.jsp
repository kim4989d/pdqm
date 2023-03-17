<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : mem_out.jsp
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
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb11.jsp" %>

<!-- contents영역시작 -->

<div class="bg_mypage">
	<div class="title">
		<div class="location">Home > 개인정보수정 > <em>회원탈퇴</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/member/h3_memOut.gif'/>" alt="회원탈퇴" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/member/h3_join4_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터를 탈퇴합니다. 탈퇴시 개인정보와 작성한 모든 게시물이 삭제되며, 사용한 아이디는 재사용이 불가능합니다." /></p>
	</div>

	<fieldset>
		<legend>회원탈퇴 폼</legend>
		<table class="memTable" summary="회원탈퇴 입력폼입니다.">
			<colgroup>
				<col width="20%"><col width="auto">
			<colgroup>
			<tr>
				<th scope="row">성명</th>
				<td><strong>홍길동</strong></td>
			</tr>
			<tr>
				<th scope="row">아이디</th>
				<td>abcd</td>
			</tr>
			<tr>
				<th scope="row"><label for="input_1">비밀번호</label></th>
				<td>
					<input type="text" id="input_1" name="input_1" class="text" style="width:170px;" />
				</td>
			</tr>
		</table>

		<!-- btn영역 -->
		<div class="btnArea_c">
			<a href="##"><img src="<c:url value='/images/pdqm/common/member/btn_out.gif'/>" alt="탈퇴" /></a>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_cancel.gif'/>" alt="취소" /></a>
		</div>
		<!--// btn영역 -->
	</fieldset>
</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

