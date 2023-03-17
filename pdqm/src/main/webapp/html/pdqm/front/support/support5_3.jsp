<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support5_3.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > 데이터베이스 정보 등록
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
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<!-- contents영역시작 -->

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>데이터베이스 정보 등록</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_3.gif'/>" alt="데이터베이스 정보 등록" /></h3>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_3_1.gif'/>" alt="데이터베이스 정보 수정/삭제" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_2_desc.png'/>" class="png24" alt="DB스키마(컬럼명, 데이터 Type, 길이)에 대한 비교가 가능하여연계시 표준 준수 및 자체 표준 준수에 활용 가능합니다." /></p>
	</div>

	<div id="conBox">
		<table class="conTable2" summary="데이터베이스 정보 등록 테이블입니다.">
			<colgroup>
				<col width="20%">
				<col width="80%">
			<colgroup>
			<tr>
				<th scope="row"><label for="input_1">기관명</label></th>
				<td><input type="text" id="input_1" class="text" style="width:400px;" /></td>
			</tr>
			<tr>
				<th scope="row"><label for="input_2">데이터베이스명</label></th>
				<td><input type="text" id="input_2" class="text" style="width:400px;" /></td>
			</tr>
			<tr>
				<th scope="row" ><label for="textarea_1">설명</label></th>
				<td>
					<textarea id="textarea_1" class="text" cols="75" rows="28" style="width:500px;height:150px;"></textarea>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="input_3">파일 등록</label></th>
				<td><input type="file" id="input_3" class="text" style="width:400px;" /></td>
			</tr>
		</table>
		<p>※ 템플릿 양식을 준수하여 테이블, 컬럼 등의 정보를 등록해주시기 바랍니다.</p>

		<!-- btnArea -->
		<div class="btnArea_c">
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_regist.gif'/>" alt="등록" /></a>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_cancel.gif'/>" alt="취소" /></a>
		</div>
		<!--// btnArea -->
	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

