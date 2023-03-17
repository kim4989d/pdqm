<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p38.jsp
  * @Description : 가중치 등록
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">가중치 등록</div>
		<h2>가중치 등록</h2>
	</div>

	<table class="searchType1" summary="데이터베이스유형 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="auto"/>
		</colgroup>
		<tr>
			<th>데이터베이스유형</th>
			<td>
				<select class="text">
					<option>자체 생성형</option>
				</select>
			</td>
		</tr>
	</table>

	<div class="ov_h tblSpace">
		<div class="leftArea" style="width:45%;">
			<table class="tblType1" summary="지표별 가중치 등록 테이블입니다.">
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
						<th><label for="no1"><a href="#">준비</a></label></th>
						<td><input type="text" id="no1" name="no1" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no2"><a href="#">완전성</a></label></th>
						<td><input type="text" id="no2" name="no2" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no3"><a href="#">일관성</a></label></th>
						<td><input type="text" id="no3" name="no3" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no4"><a href="#">정확성</a></label></th>
						<td><input type="text" id="no4" name="no4" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no5"><a href="#">유효성</a></label></th>
						<td><input type="text" id="no5" name="no5" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no6"><a href="#">보안성</a></label></th>
						<td><input type="text" id="no6" name="no6" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no7"><a href="#">적시성</a></label></th>
						<td><input type="text" id="no7" name="no7" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no8"><a href="#">유용성</a></label></th>
						<td><input type="text" id="no8" name="no8" class="text" style="width:100px;" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="rightArea" style="width:45%;">
			<table class="tblType1" summary="특성별 가중치 등록 테이블입니다.">
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
						<td>100</td>
					</tr>
				</tfoot>
				<tbody>
					<tr>
						<th><label for="no21">논리모델</label></th>
						<td><input type="text" id="no21" name="no21" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no22">식별자</label></th>
						<td><input type="text" id="no22" name="no22" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no23">물리구조</label></th>
						<td><input type="text" id="no23" name="no23" class="text" style="width:100px;" /></td>
					</tr>
					<tr>
						<th><label for="no24">속성의미</label></th>
						<td><input type="text" id="no24" name="no24" class="text" style="width:100px;" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="등록" /></span>
		<span class="button"><input type="button" value="취소" /></span>
	</div>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
