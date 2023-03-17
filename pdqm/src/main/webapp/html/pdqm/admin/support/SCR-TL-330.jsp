<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p35.jsp
  * @Description :  데이터베이스유형별 중점 지표 관리
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 데이터베이스유형별 중점 지표 관리</div>
		<h2>데이터베이스유형별 중점 지표 관리</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="30%" />
				<col width="20%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search1">데이터베이스유형</label></th>
				<td>
					<select id="search1" name="search1" class="text">
						<option value="0" selected="selected">전체</option>
						<option value="1">등록된 진단대상</option>
					</select>
				</td>
				<th><label for="search2">중점 지표</label></th>
				<td>
					<input type="text" id="search2" name="search2" class="text" style="width:200px;" />
				</td>
			</tr>
		</table>
		<div class="btnArea">
			<span class="button"><input type="button" value="조회" /></span>
		</div>
	</fieldset>
	<!--// search -->

	<!-- listTable: Start -->
	<table class="tblType1 tblSpace" summary="데이터베이스유형별 중점 지표 관리 테이블입니다.">
		<colgroup>
			<col width="5%" />
			<col width="20%" />
			<col width="20%" />
			<col width="10%" />
			<col width="auto"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">No.</th>
				<th scope="col">데이터베이스 유형</th>
				<th scope="col">중점지표</th>
				<th scope="col">등록자</th>
				<th scope="col">등록일시</th>
			</tr>
		</thead>
		<tbody>
			<!-- <tr class="point">
				<td>1</td>
				<td>자체생성형</td>
				<td>정확성</td>
				<td>홍길도</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>2</td>
				<td></td>
				<td>유효성</td>
				<td>홍길동</td>
				<td>2011-11-17</td>
			</tr>
			<tr>
				<td>3</td>
				<td></td>
				<td>적시성</td>
				<td>홍길동</td>
				<td>2011-11-17</td>
			</tr>
			<tr>
				<td>4</td>
				<td></td>
				<td>유용성</td>
				<td>홍길동</td>
				<td>2011-11-17</td>
			</tr>
			<tr>
				<td>5</td>
				<td>수집형</td>
				<td>일관성</td>
				<td>홍길도</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>6</td>
				<td></td>
				<td>유효성</td>
				<td>홍길동</td>
				<td>2011-11-17</td>
			</tr>
			<tr>
				<td>7</td>
				<td></td>
				<td>보안성</td>
				<td>홍길동</td>
				<td>2011-11-17</td>
			</tr>
			<tr>
				<td>8</td>
				<td></td>
				<td>적시성</td>
				<td>홍길동</td>
				<td>2011-11-17</td>
			</tr>
			<tr>
				<td>9</td>
				<td>수집형</td>
				<td>일관성</td>
				<td>홍길도</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>10</td>
				<td>수집형</td>
				<td>일관성</td>
				<td>홍길도</td>
				<td>2011-11-09</td>
			</tr> -->
			<tr>
				<td colspan="5" class="ta_c">데이타가 없습니다.</td>
			</tr>
		</tbody>
	</table>
	<!-- //listTable: End -->

	<!-- paging : Start -->
	<%@ include file="/html/pdqm/admin/include/paging.jsp" %>
	<!--// paging : End -->

	<!-- 버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="중점지표 등록" /></span>
	</div>
	<!--// 버튼영역 -->


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
