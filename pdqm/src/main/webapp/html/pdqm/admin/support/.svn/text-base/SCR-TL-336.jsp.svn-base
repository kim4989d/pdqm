<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p41.jsp
  * @Description :  지표별 자가진단 문항 등록
  *
  */
%>

<script type="text/javascript">
function resizeFrame(frm) {
	frm.style.height = "auto";
	contentHeight = frm.contentWindow.document.documentElement.scrollHeight;
	frm.style.height = contentHeight + 4 + "px";
}
window.onload = function () {
	resizeFrame(document.getElementById("answer_iframe"));
}
</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 지표별 자가진단 문항 등록</div>
		<h2>지표별 자가진단 문항 등록</h2>
	</div>

	<div id="right">
		<table class="vblType1" summary="설문등록 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search1">지표</label></th>
				<td>
					<select id="search1" name="search1" class="text" title="지표 선택">
						<option>완전성</option>
					</select>
					<select class="text" title="특성 선택">
						<option>논리모델</option>
					</select>
				</td>
			</tr>
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
				<th colspan="2" >답변항목</th>
			</tr>
			<tr>
				<td colspan="2">
					<iframe src="<c:url value='/html/pdqm/admin/support/test.jsp'/>" id="answer_iframe" name="answer_iframe" width="100%" marginwidth="0" marginheight="0" frameborder="0" scrolling="no"></iframe>
				</td>
			</tr>
			<!--// 다중선택형 일 경우만 보여짐 -->
		</table>
	</div>


	<!-- 하단버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="저장" /></span>
		<span class="button"><input type="button" value="닫기" /></span>
	</div>
	<!--/ 하단버튼영역 -->

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
