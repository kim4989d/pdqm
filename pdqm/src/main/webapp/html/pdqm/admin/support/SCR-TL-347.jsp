<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p52.jsp
  * @Description : 지표별 자가진단 구성 복사
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 구성 복사</div>
		<h2>지표별 자가진단 구성 복사</h2>
	</div>


	<p class="fc_orange"><input type="checkbox" id="check1" name="check1" checked="checked" /> <label for="check1">동일 자가진단에 다른 데이터베이스 유형으로 복사합니다.</label></p>
	<table class="tblType1" summary="지표별 자가진단 구성 복사 테이블입니다.">
		<colgroup>
			<col width="50%" />
			<col width="50%" />
		</colgroup>
		<thead>
			<tr>
				<th>복사한 구성 내역</th>
				<th>추가할 구성 내역</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<table class="viewType2" summary="복사한 구성 테이블입니다.">
						<colgroup>
							<col width="40%" />
							<col width="60%"/>
						</colgroup>
						<tr>
							<th>자가진단명</th>
							<td><input type="text" class="readonly" readonly="readonly" value="자가진단 기본" style="width:180px;" /></td>
						</tr>
						<tr class="last">
							<th>데이터베이스유형</th>
							<td>
								<select class="text" disabled="disabled">
									<option>자체생성형</option>
									<option>수집형</option>
									<option>제공형</option>
									<option>복합형</option>
								</select>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table class="viewType2" summary="추가할 구성 테이블입니다.">
						<colgroup>
							<col width="40%" />
							<col width="60%"/>
						</colgroup>
						<tr>
							<th><label for="write1">자가진단명</label></th>
							<td><input type="text" id="write1" name="write1" value="자가진단 상위" class="text" style="width:180px;" /></td>
						</tr>
						<tr>
							<th><label for="write5">데이터베이스유형</label></th>
							<td>
								<select id="write5" name="write5" class="text">
									<option>자체생성형</option>
									<option>수집형</option>
									<option>제공형</option>
									<option>복합형</option>
								</select>
							</td>
						</tr>
						<tr class="last">
							<th><label for="write2">게시구분</label></th>
							<td>
								<select id="write2" name="write2" class="text">
									<option>기본가중치A</option>
								</select>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</tbody>
	</table>

	<!-- 버튼영역:등록화면 일 때 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="복사" /></span>
		<span class="button"><input type="button" value="취소" /></span>
	</div>


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
