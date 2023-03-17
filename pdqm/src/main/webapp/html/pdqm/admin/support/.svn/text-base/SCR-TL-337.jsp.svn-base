<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p42.jsp
  * @Description :  지표별 자가진단 결과 점수 관리
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 결과 점수 관리</div>
		<h2>지표별 자가진단 결과 점수 관리</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="17%" />
				<col width="20%"/>
				<col width="12%" />
				<col width="20%"/>
				<col width="12%" />
				<col width="auto"/>
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
				<th><label for="search2">지표</label></th>
				<td>
					<select id="search2" name="search2" class="text">
						<option value="0" selected="selected">전체</option>
						<option>등록된 지표</option>
					</select>
				</td>
				<th><label for="search3">결과</label></th>
				<td>
					<select id="search3" name="search3" class="text">
						<option value="0" selected="selected">전체</option>
						<option value="1">적정</option>
						<option value="2">보통</option>
						<option value="3">미흡</option>
						<option value="4">적정</option>
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
	<table class="tblType1 tblSpace" summary="지표별 자가진단 결과 점수 관리 테이블입니다.">
		<colgroup>
			<col width="5%" />
			<col width="14%" />
			<col width="14%" />
			<col width="10%" />
			<col width="10%" />
			<col width="auto"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">No.</th>
				<th scope="col">데이터베이스유형</th>
				<th scope="col">지표</th>
				<th scope="col">Min</th>
				<th scope="col">결과</th>
				<th scope="col">Max</th>
			</tr>
		</thead>
		<tbody>
			<tr class="point">
				<td>1</td>
				<td><a href="##">자체생성형</a></td>
				<td>준비</td>
				<td>75</td>
				<td>적정</td>
				<td>100</td>
			</tr>
			<tr>
				<td>2</td>
				<td></td>
				<td></td>
				<td>75</td>
				<td>보통</td>
				<td>100</td>
			</tr>
			<tr>
				<td>3</td>
				<td></td>
				<td></td>
				<td>75</td>
				<td>미흡</td>
				<td>100</td>
			</tr>
			<tr>
				<td>4</td>
				<td></td>
				<td>완전성</td>
				<td>75</td>
				<td>적정</td>
				<td>75</td>
			</tr>
			<tr>
				<td>5</td>
				<td></td>
				<td></td>
				<td>60</td>
				<td>보통</td>
				<td>75</td>
			</tr>
			<tr>
				<td>6</td>
				<td></td>
				<td></td>
				<td>60</td>
				<td>미흡</td>
				<td>75</td>
			</tr>
		</tbody>
	</table>
	<!-- //listTable: End -->

	<!-- paging : Start -->
	<%@ include file="/html/pdqm/admin/include/paging.jsp" %>
	<!--// paging : End -->

	<!-- 버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="점수등록" /></span>
	</div>
	<!--// 버튼영역 -->


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
