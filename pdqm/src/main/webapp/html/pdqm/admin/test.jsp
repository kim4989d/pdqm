<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : test.jsp
  * @Description :  템플릿
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- contetns시작 -->

		<div class="title">
			<div class="locationMap">경로넣기</div>
			<h2>공지사항 관리</h2>
		</div>

		<!-- search -->
		<div class="adminSearch">
			<fieldset>
			<legend>검색</legend>
				<select class="text" style="width:100px;" title="항목선택">
					<option value="1" selected="selected">제목</option>
					<option value="2">내용</option>
					<option value="3">제목+내용</option>
				</select>
				<input type="text" class="text" style="width:140px;" title="검색어입력" />
				<span class="button"><a href="##">검색</a></span>
			</fieldset>
		</div>
		<!-- search -->

		<!-- tbl Start -->
		<table summary="" class="tblType1">
			<colgroup>
				<col width="7%" />
				<col width="15%" />
				<col width="auto"/>
				<col width="10%" />
				<col width="15%" />
				<col width="15%" />
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>구분</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일자</th>
					<th>첨부파일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>13</td>
					<td class="subject"><a href="##">wpahr</a></td>
					<td>홍길동</td>
					<td>2011-11-08</td>
					<td>143</td>
				</tr>
				<tr>
					<td colspan="6" class="noTxt">등록하신 내역이 없습니다.</td>
				</tr>
			</tbody>
		</table>
		<!-- //tbl End -->

		<!-- paging : Start -->
		<div class="paging">
		</div>
		<!-- paging : End -->

		<!-- btn -->
		<div class="btnArea">
			<span class="button"><a href="##">등록</a></span>
			<span class="button small"><a href="##">등록</a></span>
		</div>
		<!--// btn -->

<!-- contents끝 -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
