<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p47.jsp
  * @Description : 지표별 자가진단 결과 설명 조회/수정/삭제
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 결과 설명 조회/수정/삭제</div>
		<h2>지표별 자가진단 결과 설명 조회/수정/삭제</h2>
	</div>

	<table class="vblType1" summary="조회/수정/삭제 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="auto" />
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
		</tr>
		<tr>
			<th><label for="label4">지표</label></th>
			<td>
				<select class="text" id="label4" name="label4">
					<option>준비</option>
					<option>완전성</option>
					<option>유효성</option>
					<option>적시성</option>
					<option>유용성</option>
				</select>
			</td>
		</tr>
		<tr>
			<th><label for="label5">결과</label></th>
			<td>
				<select class="text" id="label5" name="label5">
					<option>적정</option>
					<option>보통</option>
					<option>미흡</option>
				</select>
			</td>
		</tr>
		<tr>
			<th><label for="label_2">중점 관리<br />지표 설명</label></th>
			<td>
				<textarea id="label_2" class="text" cols="70" rows="10" style="width:550px;">
논리데이터 모델은 기관의 업무에 따라 보유하는 데이터의 관계를 보이는 청사진입니다. 완성도 높은 논리데이터 모델을 기반으로 데이터를 저장하는 DB의 물리구조 완성도를 높여야 합니다.
논리 데이터 모델의 엔터티 정규화 수준, 식별자, 필수 속성, 관계 등에 있어서 미흡한 상태를 나타냅니다 .또한 논리 모델과 물리모델과의 일관성이 결여되었음을 나타내고 있습니다. 그러므로 이러한 데이터베이스 구조적인 측면에서 개선을 지속적으로 추진하여야 합니다.
				</textarea>
			</td>
		</tr>
		<tr>
			<th><label for="label_3">지표 설명</label></th>
			<td>
				<textarea id="label_3" class="text" cols="70" rows="10" style="width:550px;">
논리 데이터 모델의 엔터티 정규화 수준, 식별자, 필수 속성, 관계 등에 있어서 미흡한 상태를 나타냅니다 .또한 논리 모델과 물리모델과의 일관성이 결여되었음을 나타내고 있습니다. 그러므로 이러한 데이터베이스 구조적인 측면에서 개선을 지속적으로 추진하여야 합니다.
				</textarea>
			</td>
		</tr>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea">
		<span class="button"><input type="button" value="수정" /></span>
		<span class="button"><input type="button" value="삭제" /></span>
		<span class="button"><input type="button" value="목록" /></span>
	</div>
	<!--// 버튼영역 -->


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
