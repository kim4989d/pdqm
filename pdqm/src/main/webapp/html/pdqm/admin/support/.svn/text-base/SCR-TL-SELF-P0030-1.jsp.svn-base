<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : SCR-TL-SELF-P0030-1.jsp
  * @Description :  진단관점 수정/삭제 화면
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 진단대상관리</div>
		<h2>진단관점 수정/삭제</h2>
	</div>

	<fieldset>
		<legend>진단관점 수정/삭제</legend>

		<table class="vblType1" summary="진단대상 항목 테이블입니다.">
			<colgroup>
				<col width="30%" />
				<col width="70%"/>
			</colgroup>
			<tr>
				<th><label for="sel1">진단대상명</label></th>
				<td>
					<select id="sel1" class="text">
						<option value="0" selected="selected">전체</option>
						<option value="1">사용중</option>
						<option value="2">임시</option>
					</select>
				</td>
			</tr>
		</table>

		<div class="ov_h tblSpace">
			<div class="leftArea">
				<table class="tblType1" summary="진단관점 목록 테이블입니다.">
					<colgroup>
						<col width="30%" />
						<col width="70%"/>
					</colgroup>
					<thead>
						<tr>
							<th>순번</th>
							<th>진단관점</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td><a href="##">활용</a></td>
						</tr>
						<tr>
							<td>2</td>
							<td><a href="##">관리프로세스</a></td>
						</tr>
						<tr>
							<td>3</td>
							<td><a href="##">지원도구</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="rightArea">
				<table class="vblType1" summary="진단관점 수정/삭제 테이블입니다.">
					<colgroup>
						<col width="30%" />
						<col width="auto"/>
					</colgroup>
					<tr>
						<th><label for="write1">진단관점명</label></th>
						<td><input type="text" id="write1" name="write1" class="text" style="width:330px;" /></td>
					</tr>
					<tr>
						<th><label for="write2">사용상태</label></th>
						<td>
							<select id="write2" name="write2" class="text">
								<option value="0" selected="selected">전체</option>
								<option value="1">사용중</option>
								<option value="2">임시</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><label for="write3">조회순번</label></th>
						<td><input type="text" id="write3" name="write3" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="write4">설명</label></th>
						<td>
							<textarea id="write4" name="write4" class="textarea" cols="35" rows="5" style="width:330px;"></textarea>
						</td>
					</tr>
				</table>

				<!-- 버튼영역:수정화면 일 때 -->
				<div class="btnArea">
					<span class="button"><input type="button" value="삭제" /></span>
					<span class="button"><input type="button" value="수정" /></span>
					<span class="button"><input type="button" value="취소" /></span>
				</div>
			</div>
		</div>
	</fieldset>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
