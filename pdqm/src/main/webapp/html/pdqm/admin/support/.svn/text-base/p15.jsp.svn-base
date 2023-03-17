<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p14.jsp
  * @Description : 관리수준 자가진단 진단대상 결과 점수 조회/수정
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">경로넣기</div>
		<h2>관리수준 자가진단 진단대상 결과 점수 조회/수정</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search1">진단대상</label></th>
				<td>
					<select id="search1" name="search1" class="text">
						<option value="0" selected="selected">전체</option>
						<option value="1">등록된 진단대상</option>
					</select>
				</td>
			</tr>
		</table>
		<div class="btnArea">
			<span class="button"><input type="button" value="조회" /></span>
		</div>
	</fieldset>
	<!--// search -->

	<!-- listTable: Start -->
	<table class="tblType1 tblSpace" summary="관리수준 자가진단 진단대상 결과 점수 조회/수정 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">Min</th>
				<th scope="col">부등호</th>
				<th scope="col">결과</th>
				<th scope="col">부등호</th>
				<th scope="col">Max</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="text" class="text" value="80" title="최소값 입력"/></td>
				<td>&lt;=</td>
				<td>적정</td>
				<td>&lt;=</td>
				<td><input type="text" class="text" value="100" title="최대값 입력"/></td>
			</tr>
			<tr>
				<td><input type="text" class="text" value="60" title="최소값 입력"/></td>
				<td>&lt;=</td>
				<td>보통</td>
				<td>&lt;</td>
				<td><input type="text" class="text" value="80" title="최대값 입력"/></td>
			</tr>
			<tr>
				<td><input type="text" class="text" value="0" title="최소값 입력"/></td>
				<td>&lt;=</td>
				<td>미흡</td>
				<td>&lt;</td>
				<td><input type="text" class="text" value="60" title="최대값 입력"/></td>
			</tr>
		</tbody>
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
