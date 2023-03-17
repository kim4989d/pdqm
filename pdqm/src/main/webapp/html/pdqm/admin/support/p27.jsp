<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p27.jsp
  * @Description :  지표 및 특성 관리
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">지표 및 특성 관리</div>
		<h2>지표 및 특성 관리</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search1">상태구분</label></th>
				<td>
					<select id="search1" name="search1" class="text">
						<option value="0" selected="selected">전체</option>
						<option value="1">사용중</option>
						<option value="2">임시</option>
						<option value="3">삭제</option>
					</select>
				</td>
			</tr>
			<tr>
				<th><label for="search2">진단대상</label></th>
				<td><input type="text" id="search2" name="search2" class="text" style="width:200px;" /></td>
			</tr>
		</table>
		<div class="btnArea">
			<span class="button"><input type="button" value="조회" /></span>
		</div>
	</fieldset>
	<!--// search -->

	<!-- listTable: Start -->
	<table class="tblType1 tblSpace" summary="지표 및 특성 관리 테이블입니다.">
		<colgroup>
			<col width="5%" />
			<col width="10%" />
			<col width="10%" />
			<col width="auto"/>
			<col width="13%" />
			<col width="10%" />
			<col width="7%" />
			<col width="10%" />
			<col width="10%" />
			<col width="10%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">No.</th>
				<th scope="col">지표명</th>
				<th scope="col">가중치</th>
				<th scope="col">특성명</th>
				<th scope="col">특성가중치</th>
				<th scope="col">상태구분</th>
				<th scope="col">문항수</th>
				<th scope="col">등록자</th>
				<th scope="col">등록일시</th>
				<th scope="col">삭제</th>
			</tr>
		</thead>
		<tbody>
			<tr class="point">
				<td>1</td>
				<td><a href="##">준비</a></td>
				<td>10</td>
				<td></td>
				<td></td>
				<td>사용중</td>
				<td>7</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
				<td><span class="button small"><input type="button" value="삭제" /></span></td>
			</tr>
			<tr>
				<td>2</td>
				<td></td>
				<td></td>
				<td><a href="##">관리요소</a></td>
				<td>40</td>
				<td>사용중</td>
				<td>3</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
				<td><span class="button small"><input type="button" value="삭제" /></span></td>
			</tr>
			<tr>
				<td>3</td>
				<td></td>
				<td></td>
				<td><a href="##">내용충실</a></td>
				<td>60</td>
				<td>사용중</td>
				<td>4</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
				<td><span class="button small"><input type="button" value="삭제" /></span></td>
			</tr>
			<tr class="point">
				<td>4</td>
				<td><a href="##">완전성</a></td>
				<td>10</td>
				<td></td>
				<td></td>
				<td>사용중</td>
				<td>7</td>
				<td>홍길동</td>
				<td>2011-11-09</td>
				<td></td>
			</tr>
			<tr>
				<td>5</td>
				<td></td>
				<td></td>
				<td><a href="##">논리모델</a></td>
				<td>40</td>
				<td>사용중</td>
				<td></td>
				<td>홍길동</td>
				<td>2011-11-09</td>
				<td><span class="button small"><input type="button" value="삭제" /></span></td>
			</tr>
			<tr>
				<td>6</td>
				<td></td>
				<td></td>
				<td><a href="##">식별자</a></td>
				<td>40</td>
				<td>사용중</td>
				<td></td>
				<td>홍길동</td>
				<td>2011-11-09</td>
				<td><span class="button small"><input type="button" value="삭제" /></span></td>
			</tr>
			<tr>
				<td>7</td>
				<td></td>
				<td></td>
				<td><a href="##">물리구조</a></td>
				<td>40</td>
				<td>사용중</td>
				<td></td>
				<td>홍길동</td>
				<td>2011-11-09</td>
				<td><span class="button small"><input type="button" value="삭제" /></span></td>
			</tr>
			<tr>
				<td>8</td>
				<td></td>
				<td></td>
				<td><a href="##">속성의미</a></td>
				<td>40</td>
				<td>사용중</td>
				<td></td>
				<td>홍길동</td>
				<td>2011-11-09</td>
				<td><span class="button small"><input type="button" value="삭제" /></span></td>
			</tr>
			<tr>
				<td>9</td>
				<td></td>
				<td></td>
				<td><a href="##">물리구조</a></td>
				<td>40</td>
				<td>사용중</td>
				<td></td>
				<td>홍길동</td>
				<td>2011-11-09</td>
				<td><span class="button small"><input type="button" value="삭제" /></span></td>
			</tr>
			<tr>
				<td>10</td>
				<td></td>
				<td></td>
				<td><a href="##">속성의미</a></td>
				<td>40</td>
				<td>사용중</td>
				<td></td>
				<td>홍길동</td>
				<td>2011-11-09</td>
				<td><span class="button small"><input type="button" value="삭제" /></span></td>
			</tr>
		</tbody>
	</table>
	<!-- //listTable: End -->

	<!-- paging : Start -->
	<%@ include file="/html/pdqm/admin/include/paging.jsp" %>
	<!--// paging : End -->

	<!-- 버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="지표등록" /></span>
		<span class="button"><input type="button" value="특성등록" /></span>
	</div>
	<!--// 버튼영역 -->


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
