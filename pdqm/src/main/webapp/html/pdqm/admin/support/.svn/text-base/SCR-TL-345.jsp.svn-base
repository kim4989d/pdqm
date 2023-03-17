<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p50.jsp
  * @Description :  지표별 자가진단 조회/수정/삭제
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 조회/수정/삭제</div>
		<h2>지표별 자가진단 조회/수정/삭제</h2>
	</div>

	<fieldset>
	<legend>지표별 자가진단 조회/수정/삭제</legend>
		<table class="vblType1" summary="지표별 자가진단 조회/수정/삭제 테이블입니다.">
			<colgroup>
				<col width="30%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="write1">자가진단명</label></th>
				<td><input type="text" id="write1" name="write1" class="text" style="width:200px;" /></td>
			</tr>
			<tr>
				<th><label for="write5">데이터베이스유형</label></th>
				<td>
					<select id="write5" name="write5" class="text">
						<option>자체생성형</option>
						<option>수집형</option>
						<option>제공형</option>
						<option>복합형</option>
					</select>
				</td>
			</tr>
			<tr>
				<th><label for="write2">게시구분</label></th>
				<td>
					<select id="write2" name="write2" class="text">
						<option>미게시</option>
					</select>
				</td>
			</tr>
			<tr>
				<th><label for="write3">게시 시작일시</label></th>
				<td>
					<select id="write3" name="write3" class="text">
						<option>2011-11-11</option>
					</select>
				</td>
			</tr>
			<tr>
				<th><label for="write4">게시 종료일시</label></th>
				<td>
					<select id="write4" name="write4" class="text">
						<option>2011-11-11</option>
					</select>
				</td>
			</tr>
		</table>

		<!-- 버튼영역:등록화면 일 때 -->
		<div class="btnArea btn_taR">
			<span class="button"><input type="button" value="수정" /></span>
			<span class="button"><input type="button" value="삭제" /></span>
			<span class="button"><input type="button" value="목록" /></span>
		</div>
	</fieldset>


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
