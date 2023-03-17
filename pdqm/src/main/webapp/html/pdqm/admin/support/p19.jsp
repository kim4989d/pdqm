<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p19.jsp
  * @Description : 관리수준 자가진단 결과 설명 관리 화면
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 결과 설명 관리</div>
		<h2>관리수준 자가진단 결과 설명 관리</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="12%" />
				<col width="20%"/>
				<col width="12%" />
				<col width="20%"/>
				<col width="12%" />
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
				<th><label for="search2">진단관점</label></th>
				<td>
					<select id="search2" name="search2" class="text">
						<option value="0" selected="selected">전체</option>
						<option value="1">등록된 진단관점</option>
					</select>
				</td>
				<th><label for="search3">결과</label></th>
				<td>
					<select id="search3" name="search3" class="text">
						<option value="0" selected="selected">전체</option>
						<option value="1">적정</option>
						<option value="2">보통</option>
						<option value="3">미흡</option>
						<option value="1">적정</option>
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
	<table class="tblType1 tblSpace" summary="관리수준 자가진단 결과 설명 관리 목록 테이블입니다.">
		<colgroup>
			<col width="5%" />
			<col width="15%" />
			<col width="auto" />
			<col width="15%" />
			<col width="15%" />
			<col width="10%" />
			<col width="15%"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">진단대상</th>
				<th scope="col">진단관점</th>
				<th scope="col">결과</th>
				<th scope="col">설명등록여부</th>
				<th scope="col">등록자</th>
				<th scope="col">등록일시</th>
			</tr>
		</thead>
		<tbody>
			<tr class="point">
				<td>1</td>
				<td>값</td>
				<td>활용</td>
				<td><a href="##">적정</a></td>
				<td>등록</td>
				<td>홍길도</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>2</td>
				<td></td>
				<td></td>
				<td><a href="##">보통</a></td>
				<td>미등록</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>3</td>
				<td></td>
				<td></td>
				<td><a href="##">미흡</a></td>
				<td>미등록</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>4</td>
				<td></td>
				<td>관리프로세스</td>
				<td><a href="##">적정</a></td>
				<td>등록</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>5</td>
				<td></td>
				<td></td>
				<td><a href="##">보통</a></td>
				<td>미등록</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>6</td>
				<td></td>
				<td></td>
				<td><a href="##">미흡</a></td>
				<td>미등록</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>7</td>
				<td></td>
				<td>지원도구</td>
				<td><a href="##">적정</a></td>
				<td>등록</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>8</td>
				<td></td>
				<td></td>
				<td><a href="##">보통</a></td>
				<td>미등록</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>9</td>
				<td></td>
				<td></td>
				<td><a href="##">미흡</a></td>
				<td>미등록</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>10</td>
				<td></td>
				<td>저장내용</td>
				<td><a href="##">적정</a></td>
				<td>등록</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="7" class="ta_c">조회내용이 없습니다.</td>
			</tr>
		</tbody>
	</table>
	<!-- //listTable: End -->

	<!-- paging : Start -->
	<%@ include file="/html/pdqm/admin/include/paging.jsp" %>
	<!--// paging : End -->

	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="등록" /></span>
	</div>


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
