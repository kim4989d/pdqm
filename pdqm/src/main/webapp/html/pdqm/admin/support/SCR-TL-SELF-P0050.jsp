<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : SCR-TL-SELF-M0050.jsp
  * @Description :  관리수준 자가진단 문항 등록 화면
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 관리수준 문항관리</div>
		<h2>관리수준 자가진단 문항 등록</h2>
	</div>

	<table class="vblType1" summary="설문등록 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="auto"/>
		</colgroup>
		<tr>
			<th><label for="label_q1">설문문항</label></th>
			<td><input type="text" id="label_q1" name="label_q1" class="text"style="width:550px;height:50px;" /></td>
		</tr>
		<tr>
			<th><label for="label_a1">답변유형</label></th>
			<td>
				<input type="radio" id="label_a1" name="label_a1" /><label for="label_a1">Y/N</label>
				<input type="radio" id="label_a2" name="label_a1" /><label for="label_a2">3점 척도</label>
				<input type="radio" id="label_a3" name="label_a1" /><label for="label_a3">4지 선다형</label>
				<input type="radio" id="label_a4" name="label_a1" /><label for="label_a4">5점 척도</label>
				<input type="radio" id="label_a5" name="label_a1" checked="checked" /><label for="label_a5">다중 선택형</label>
			</td>
		</tr>
		<!-- 다중선택형 일 경우만 보여짐 -->
		<tr>
			<th><label for="label_a6">답변항목</label></th>
			<th class="btn_taR">
				<span class="button small"><input type="button" value="추가" /></span>
				<span class="button small"><input type="button" value="삭제" /></span>
			</th>
		</tr>
		<tr>
			<td colspan="2">
				<table class="tblType1" summary="목록 테이블입니다.">
					<colgroup>
						<col width="8%" />
						<col width="20%" />
						<col width="auto" />
						<col width="20%" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col">순번</th>
							<th scope="col">답변</th>
							<th scope="col">답변기준</th>
							<th scope="col">배점</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td><input type="text" class="text" value="예" style="width:100px;" /></td>
							<td><input type="text" class="text" value="" style="width:350px;" /></td>
							<td><input type="text" class="text" value="" style="width:100px;" /></td>
						</tr>
						<tr>
							<td>2</td>
							<td><input type="text" class="text" value="아니요" style="width:100px;" /></td>
							<td><input type="text" class="text" value="" style="width:350px;" /></td>
							<td><input type="text" class="text" value="" style="width:100px;" /></td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<!--// 다중선택형 일 경우만 보여짐 -->
	</table>


	<!-- 하단버튼영역 -->
	<div class="btnArea tblSpace">
		<span class="button"><input type="button" value="저장" /></span>
		<span class="button"><input type="button" value="닫기" /></span>
	</div>
	<!--/ 하단버튼영역 -->

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
