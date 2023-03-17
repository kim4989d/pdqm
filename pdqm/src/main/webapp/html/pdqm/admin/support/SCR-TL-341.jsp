<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p46.jsp
  * @Description : 지표별 자가진단 결과 설명 등록
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 결과 설명 등록</div>
		<h2>지표별 자가진단 결과 설명 등록</h2>
	</div>

	<table class="vblType1" summary="등록 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="auto" />
		</colgroup>
		<tr>
			<th><label for="search1">데이터베이스유형</label></th>
			<td>
				<select id="search1" name="search1" class="text">
					<option value="0" selected="selected">전체</option>
					<option>자체생성형</option>
					<option>수집형</option>
					<option>제공형</option>
					<option>복합형</option>
				</select>
			</td>
		</tr>
		<tr>
			<th><label for="label4">지표</label></th>
			<td>
				<select class="text" id="label4" name="label4">
					<option>준비</option>
					<option>완전성</option>
					<option>유효성</option>
					<option>적시성</option>
					<option>유용성</option>
				</select>
			</td>
		</tr>
		<tr>
			<th><label for="label5">결과</label></th>
			<td>
				<select class="text" id="label5" name="label5">
					<option>적정</option>
					<option>보통</option>
					<option>미흡</option>
				</select>
			</td>
		</tr>
		<tr>
			<th><label for="label_2">중점 관리<br />지표 설명</label></th>
			<td>
				<textarea id="label_2" class="text" cols="70" rows="10" style="width:550px;">
				</textarea>
			</td>
		</tr>
		<tr>
			<th><label for="label_3">지표 설명</label></th>
			<td>
				<textarea id="label_3" class="text" cols="70" rows="10" style="width:550px;">
				</textarea>
			</td>
		</tr>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea">
		<span class="button"><input type="button" value="등록" /></span>
		<span class="button"><input type="button" value="취소" /></span>
	</div>
	<!--// 버튼영역 -->


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
