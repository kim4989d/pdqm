<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p30.jsp
  * @Description : 특성 등록
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">특성 조회/수정/삭제</div>
		<h2>특성 조회/수정/삭제</h2>
	</div>

	<div class="ov_h">
		<div class="leftArea">
			<table class="tblType1" summary="특성 조회/수정/삭제 테이블입니다.">
				<colgroup>
					<col width="30%" />
					<col width="auto"/>
				</colgroup>
				<thead>
					<tr>
						<th>특성</th>
						<th>가중치</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>합</th>
						<td>90</td>
					</tr>
				</tfoot>
				<tbody>
					<tr>
						<th><label for="no1">논리모델</label></th>
						<td><input type="text" id="no1" name="no1" value="10" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no2">식별자</label></th>
						<td><input type="text" id="no2" name="no2" value="20" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no3">물리구조</label></th>
						<td><input type="text" id="no3" name="no3" value="20" class="text" style="width:100px;" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="rightArea">
			<fieldset>
			<legend>특성 조회/수정/삭제</legend>
				<table class="vblType1" summary="특성 조회/수정/삭제 테이블입니다.">
					<colgroup>
						<col width="30%" />
						<col width="auto"/>
					</colgroup>
					<tr>
						<th><label for="no7">지표명</label></th>
						<td><input type="text" id="no7" name="no7" value="완전성" class="readonly" readonly="readonly" style="width:320px;" /></td>
					</tr>
					<tr>
						<th><label for="no8">특성명</label></th>
						<td><input type="text" id="no8" name="no8" value="속성의미" class="text" style="width:320px;" /></td>
					</tr>
					<tr>
						<th><label for="no9">가중치</label></th>
						<td><input type="text" id="no9" name="no9" value="10" class="text" style="width:320px;" /></td>
					</tr>
					<tr>
						<th><label for="no10">사용상태</label></th>
						<td>
							<select id="no10" name="no10" class="text">
								<option value="0">전체</option>
								<option value="1">사용중</option>
								<option value="2" selected="selected">임시</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><label for="no11">조회순번</label></th>
						<td><input type="text" id="no11" name="no11" value="특성 조회 순서" class="text" style="width:320px;" /></td>
					</tr>
					<tr>
						<th><label for="no12">설명</label></th>
						<td>
							<textarea id="no12" name="no12" class="textarea" cols="50" rows="10">
속성의미란...
							</textarea>
						</td>
					</tr>
				</table>
			</fieldset>
		</div>
	</div>

	<div class="btnArea tblSpace">
		<span class="button"><input type="button" value="수정" /></span>
		<span class="button"><input type="button" value="삭제" /></span>
		<span class="button"><input type="button" value="목록" /></span>
	</div>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
