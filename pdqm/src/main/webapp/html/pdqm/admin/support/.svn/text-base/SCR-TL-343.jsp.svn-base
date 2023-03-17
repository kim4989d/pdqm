<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p48.jsp
  * @Description : 지표별 자가진단 관리
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 관리</div>
		<h2>지표별 자가진단 관리</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="30%"/>
				<col width="20%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search1">게시구분</label></th>
				<td>
					<select id="search1" name="search1" class="text">
						<option value="0" selected="selected">전체</option>
						<option value="1">진행중</option>
						<option value="1">게시예정</option>
						<option value="1">미게시</option>
						<option value="1">완료</option>
					</select>
				</td>
				<th><label for="search2">자가진단명</label></th>
				<td><input id="search2" name="search2" type="text" class="text" style="width:100px;" /></td>
			</tr>
			<tr>
				<th><label for="search3">게시 시작일시</label></th>
				<td colspan="3">
					<select id="search3" name="search3" class="text" title="시작일">
						<option>2011-11-11</option>
					</select> ~
					<select class="text" title="마감일" >
						<option>2011-11-11</option>
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
	<table class="tblType1 tblSpace" summary="지표별 자가진단 관리 테이블입니다.">
		<colgroup>
			<col width="5%" />
			<col width="15%" />
			<col width="10%" />
			<col width="10%" />
			<col width="10%" />
			<col width="10%" />
			<col width="10%" />
			<col width="10%" />
			<col width="auto"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">No.</th>
				<th scope="col">자가진단명</th>
				<th scope="col">데이터베이스 유형</th>
				<th scope="col">게시구분</th>
				<th scope="col">게시일시</th>
				<th scope="col">종료일시</th>
				<th scope="col">문항수</th>
				<th scope="col">응답자수</th>
				<th scope="col">구성</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>10</td>
				<td class="subject"><a href="##">자가진단 기본</a></td>
				<td>자체생성형</td>
				<td>진행중</td>
				<td>2011-11-11</td>
				<td>2011-11-11</td>
				<td>40</td>
				<td>2</td>
				<td>
					<span class="button small"><input type="button" value="구성" /></span>
					<span class="button small"><input type="button" value="구성복사" /></span>
				</td>
			</tr>
			<tr>
				<td>|</td>
				<td class="subject"><a href="##">자가진단 기본</a></td>
				<td>수집형</td>
				<td>진행중</td>
				<td>2011-11-11</td>
				<td>2011-11-11</td>
				<td>40</td>
				<td>2</td>
				<td>
					<span class="button small"><input type="button" value="구성" /></span>
					<span class="button small"><input type="button" value="구성복사" /></span>
				</td>
			</tr>
			<tr>
				<td>1</td>
				<td class="subject"><a href="##">자가진단 기본</a></td>
				<td>제공형</td>
				<td>진행중</td>
				<td>2011-11-11</td>
				<td>2011-11-11</td>
				<td>40</td>
				<td>2</td>
				<td>
					<span class="button small"><input type="button" value="구성" /></span>
					<span class="button small"><input type="button" value="구성복사" /></span>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- //listTable: End -->

	<!-- paging : Start -->
	<%@ include file="/html/pdqm/admin/include/paging.jsp" %>
	<!--// paging : End -->

	<!-- 버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="등록" /></span>
	</div>
	<!--// 버튼영역 -->


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
