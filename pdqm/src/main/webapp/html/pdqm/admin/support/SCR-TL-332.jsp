<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p37.jsp
  * @Description :  가중치 관리
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">가중치 관리</div>
		<h2>가중치 관리</h2>
	</div>

	<!-- listTable: Start -->
	<table class="tblType1 tblSpace" summary="가중치 관리 테이블입니다.">
		<colgroup>
			<col width="5%" />
			<col width="20%" />
			<col width="auto"/>
			<col width="20%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">No.</th>
				<th scope="col">데이터베이스 유형</th>
				<th scope="col">가중치 등록 여부</th>
				<th scope="col">등록자</th>
				<th scope="col">등록일시</th>
			</tr>
		</thead>
		<tbody>
			<tr class="point">
				<td>1</td>
				<td><a href="##">자체생성형</a></td>
				<td>미등록</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>2</td>
				<td><a href="##">수집형</a></td>
				<td>미등록</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>3</td>
				<td><a href="##">제공형</a></td>
				<td>미등록</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>4</td>
				<td><a href="##">복합형</a></td>
				<td>미등록</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>5</td>
				<td></td>
				<td>미등록</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>6</td>
				<td></td>
				<td>미등록</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>7</td>
				<td></td>
				<td>미등록</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>8</td>
				<td></td>
				<td>미등록</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>9</td>
				<td></td>
				<td>미등록</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
			</tr>
			<tr>
				<td>10</td>
				<td></td>
				<td>미등록</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
			</tr>
		</tbody>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="등록" /></span>
	</div>
	<!--// 버튼영역 -->


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
