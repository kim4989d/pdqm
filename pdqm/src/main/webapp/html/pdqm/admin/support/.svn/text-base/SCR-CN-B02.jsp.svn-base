<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : SCR-CN-B02.jsp
  * @Description :  사업신청내역 화면
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">진단관리 > 지원사업 수요조사 관리 > 사업신청내역</div>
		<h2>사업신청내역</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="45%"/>
				<col width="45%"/>
				<col width="10%"/>
			</colgroup>
			<tr>
				<th class="ta_l">
					<select id="search1" class="text">
						<option selected="selected">전체</option>
					</select>
					<input type="text" class="text" style="width:150px;" title="검색어입력" />
				</th>
				<th>
					<label for="search2">신청일자</label>
					<input type="text" id="search2" class="text" style="width:80px;" title="시작일" />
						<input type="image" onclick="##" src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif'/>" title="달력보기" /> ~
					<input type="text" id="search2_2" class="text" style="width:80px;" title="마감일" />
						<input type="image" onclick="##" src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif'/>" title="달력보기" />
				</th>
				<th><span class="button"><input type="button" value="조회" /></span></th>
			</tr>
		</table>
	</fieldset>
	<!--// search -->

	<!-- listTable: Start -->
	<table class="tblType1 tblSpace2" summary="자가진단(진단대상) 점수관리 테이블입니다.">
		<colgroup>
			<col width="7%" />
			<col width="15%" />
			<col width="10%" />
			<col width="17%" />
			<col width="17%" />
			<col width="15%" />
			<col width="auto"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">신청일자</th>
				<th scope="col">성명</th>
				<th scope="col">소속기관</th>
				<th scope="col">DB명</th>
				<th scope="col">DB유형</th>
				<th scope="col">정보수요자</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>10</td>
				<td>2011-12-02</td>
				<td>홍길동</td>
				<td>정보화진흥원</td>
				<td>XXDB(예)</td>
				<td>자체 생성형</td>
				<td>기관내부사용자</td>
			</tr>
			<tr>
				<td colspan="7" class="ta_c">등록하신 내역이 없습니다.</td>
			</tr>
		</tbody>
	</table>
	<!-- //listTable: End -->

	<!-- paging : Start -->
	<%@ include file="/html/pdqm/admin/include/paging.jsp" %>
	<!--// paging : End -->

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
