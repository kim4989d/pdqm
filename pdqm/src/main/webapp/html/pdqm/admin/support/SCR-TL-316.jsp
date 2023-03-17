<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p20.jsp
  * @Description : 관리수준 자가진단 결과 설명 조회/수정
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">경로넣기</div>
		<h2>관리수준 자가진단 결과 설명 조회/수정</h2>
	</div>

	<!-- search -->
	<table class="searchType1" summary="검색조건 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="auto"/>
		</colgroup>
		<tr>
			<th>진단대상</th>
			<td>
				<select id="search1" name="search1" class="text">
					<option value="0">전체</option>
					<option value="1" selected="selected">값</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>진단관점</th>
			<td>
				<select id="search2" name="search2" class="text">
					<option value="0">전체</option>
					<option value="1" selected="selected">활용</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>결과상태</th>
			<td>
				<select id="search2" name="search2" class="text">
					<option value="0">전체</option>
					<option value="1" selected="selected">적정</option>
					<option value="1">보통</option>
					<option value="1">미흡</option>
				</select>
			</td>
		</tr>
	</table>
	<!--// search -->

	<!-- listTable: Start -->
	<table class="vblType1 tblSpace" summary="입력 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="auto" />
		</colgroup>
		<tr>
			<th><label for="label_1">결과설명</label></th>
			<td>
				<textarea class="text" cols="50" rows="10">
활용측면에서...
				</textarea>
			</td>
		</tr>
	</table>
	<!-- //listTable: End -->


	<!-- 버튼영역 -->
	<div class="btnArea">
		<span class="button"><input type="button" value="수정" /></span>
		<span class="button"><input type="button" value="취소" /></span>
	</div>
	<!--// 버튼영역 -->


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
