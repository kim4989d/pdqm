<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p28.jsp
  * @Description : 지표 등록
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">지표 등록</div>
		<h2>지표 등록</h2>
	</div>

	<div class="ov_h">
		<div class="leftArea">
			<table class="tblType1" summary="지표 등록 테이블입니다.">
				<colgroup>
					<col width="30%" />
					<col width="auto"/>
				</colgroup>
				<thead>
					<tr>
						<th>지표</th>
						<th>가중치</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>합</th>
						<td>100</td>
					</tr>
				</tfoot>
				<tbody>
					<tr>
						<th><label for="no1">준비</label></th>
						<td><input type="text" id="no1" name="no1" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no2">완전성</label></th>
						<td><input type="text" id="no2" name="no2" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no3">일관성</label></th>
						<td><input type="text" id="no3" name="no3" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no4">정확성</label></th>
						<td><input type="text" id="no4" name="no4" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no5">유효성</label></th>
						<td><input type="text" id="no5" name="no5" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no6">보안성</label></th>
						<td><input type="text" id="no6" name="no6" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no7">적시성</label></th>
						<td><input type="text" id="no7" name="no7" class="text" style="width:100px;" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="rightArea">
			<fieldset>
			<legend>지표 등록</legend>
				<table class="vblType1" summary="지표 등록 테이블입니다.">
					<colgroup>
						<col width="30%" />
						<col width="auto"/>
					</colgroup>
					<tr>
						<th><label for="no8">지표명</label></th>
						<td><input type="text" id="no8" name="no8" class="text" style="width:200px;" /></td>
					</tr>
					<tr>
						<th><label for="no9">가중치</label></th>
						<td><input type="text" id="no9" name="no9" class="text" style="width:200px;" /></td>
					</tr>
					<tr>
						<th><label for="no10">사용상태</label></th>
						<td>
							<select id="no10" name="no10" class="text">
								<option value="0" selected="selected">전체</option>
								<option value="1">사용중</option>
								<option value="2">임시</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><label for="no11">조회순번</label></th>
						<td><input type="text" id="no11" name="no11" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no12">설명</label></th>
						<td>
							<textarea id="no12" name="no12" class="textarea" cols="35" rows="10"></textarea>
						</td>
					</tr>
				</table>

				<div class="btnArea">
					<span class="button"><input type="button" value="등록" /></span>
					<span class="button"><input type="button" value="취소" /></span>
				</div>
			</fieldset>
		</div>
	</div>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
