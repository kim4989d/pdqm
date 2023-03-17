<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : join4.jsp
  * @Description : 회원가입>회원정보등록 화면
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
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb9.jsp" %>

<!-- contents영역시작 -->

			<div class="bg_join">
				<div class="title">
					<div class="location">Home > 회원가입 > <em>회원정보등록</em></div>
					<h3><img src="<c:url value='/images/pdqm/common/member/h3_join4.gif'/>" alt="회원정보등록" /></h3>
					<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/member/h3_join1_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터 홈페이지의 원활한 이용을 위하여 회원가입 후 로그인을 해 주시기 바랍니다. 회원으로 가입하시면 더 많은 정보를 열람할 수 있으며 게시판 작성이 가능합니다." /></p>
				</div>

				<fieldset>
					<legend>회원정보등록 폼</legend>
					<table class="memTable" summary="회원정보등록 폼입니다.">
						<colgroup>
							<col width="20%"><col width="30%">
							<col width="20%"><col width="auto">
						<colgroup>
						<tr>
							<th scope="row">성명</th>
							<td colspan="3"><strong>홍길동</strong></td>
						</tr>
						<tr>
							<th scope="row"><label for="input1_1">아이디</label></th>
							<td colspan="3">
								<input type="text" id="input1_1" name="input1_1" class="text" style="width:170px;" />
								<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_s_idcheck.gif'/>" alt="중복확인" /></a>
								<span class="fs_1">(영문과 숫자를 혼합하여 5자이상~10자 이내로 작성해 주세요.)</span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="input_1">비밀번호</label></th>
							<td colspan="3">
								<input type="text" id="input_1" name="input_1" class="text" style="width:170px;" />
								<span class="fs_1">(영문과 숫자를 혼합하여 8자이상~14자 이내로 작성해 주세요.)</span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="input_3">비밀번호 확인</label></th>
							<td colspan="3"><input type="text" id="input_3" name="input_3" class="text" style="width:170px;" /></td>
						</tr>
						<tr>
							<th scope="row" class="ta_l">회원구분</th>
							<td colspan="3">일반회원</td>
						</tr>
						<tr>
							<th scope="row"><label for="input_4">이메일</label></th>
							<td colspan="3">
								<input type="text" id="input_4" name="input_4" class="text" style="width:170px;" />
								<!-- <span class="fs_1">(비밀번호 분실시 사용되므로 정확히 입력해 주세요.)</span> -->
								<input type="checkbox" id="input_7" name="input_7" /> <label for="input_7" class="fs_8">뉴스레터 수신동의</label>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="input_5">기관명/회사명</label></th>
							<td><input type="text" id="input_5" name="input_5" class="text" style="width:170px;" /></td>
							<th scope="row" class="bdr_l"><label for="input_6">부서명</label></th>
							<td><input type="text" id="input_6" name="input_6" class="text" style="width:170px;" /></td>
						</tr>
						<tr>
							<th scope="row"><label for="input_8">전화번호</label></th>
							<td colspan="3">
								<select title="분류 선택" >
									<option value="0" selected="selected">선택</option>
									<option value="1">02</option>
								</select> -
								<input type="text" class="text" style="width:60px;" /> -
								<input type="text" class="text" style="width:60px;" />
							</td>
						</tr>
					</table>

					<!-- btn영역 -->
					<div class="btnArea_c">
						<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_ok.gif'/>" alt="확인" /></a>
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

