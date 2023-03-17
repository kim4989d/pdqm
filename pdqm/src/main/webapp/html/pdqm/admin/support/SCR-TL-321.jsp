<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p26.jsp
  * @Description : 관리수준 자가진단 구성 복사
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 구성 복사</div>
		<h2>관리수준 자가진단 구성 복사</h2>
	</div>


	<table class="tblType1" summary="자가진단 구성 복사 테이블입니다.">
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
							<td>
								<select id="write1" name="write1" class="text">
									<option>자가진단 상위</option>
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
