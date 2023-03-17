<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p36.jsp
  * @Description : 데이터베이스유형별 중점 지표 등록/조회/수정
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">데이터베이스유형별 중점 지표 등록/조회/수정</div>
		<h2>데이터베이스유형별 중점 지표 등록/조회/수정</h2>
	</div>

	<table class="vblType1" summary="검색조건 테이블입니다.">
		<colgroup>
			<col width="20%"/>
			<col width="auto"/>
		</colgroup>
		<tr>
			<th>데이터베이스유형</th>
			<td>
				<select id="search1" name="search1" class="text">
					<option selected="selected">자체 생성형</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="multi_sel">
				<div>
					<h3>지표</h3>
					<select class="multiple" title="지표 선택" multiple="multiple">
						<option>준비</option>
						<option>완전성</option>
						<option>유효성</option>
						<option>적시성</option>
						<option>유용성</option>
					</select>
				</div>
				<div class="sel_btn">
					<span class="button"><input type="button" value="▶" title="중점관리대상 지표로 이동" /></span>
					<span class="button"><input type="button" value="◀" title="지표로 이동" /></span>
				</div>

				<div>
					<h3>중점관리대상 지표</h3>
					<select class="multiple" title="중점관리대상 지표 선택" multiple="multiple">
						<option>정확성</option>
						<option>보안성</option>
						<option>일관성</option>
					</select>
				</div>

			</td>
		</tr>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="등록" /></span>
		<span class="button"><input type="button" value="취소" /></span>
	</div>
	<!--// 버튼영역 -->


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
