<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : PdqmApplyList.jsp
 * @Description : 사업신청내역
 * @Modification Information
 * @
 * @  수정일                    수정자                수정내용
 * @ ---------     --------    ---------------------------
 * @ 2011.11.09    김정훈         최초 생성
 *
 *  @author 김정훈
 *  @since 2011.11.09
 *  @version 1.0
 *  @see
 *
 */
%>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>


<body>

<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- hidden  -->
<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/callCalPopup.do'/>" />

<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">진단관리 > 지원사업 수요조사 관리 > 사업신청내역</div>
		<h2>사업신청내역</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="45%"/>
				<col width="45%"/>
				<col width="10%"/>
			</colgroup>
			<tr>
				<th class="ta_l">

					<select id="search1" name="search1" class="text">
						<option value="0" selected="selected">전체</option>
						<option value="1">성명</option>
						<option value="2">소속기관</option>
					</select>

                   <form:input path="searchWrd" cssClass="text" cssStyle="width:150px" title="검색어입력"  />

				</th>
				<th>
					<label for="search2">신청일자</label>
					<input type="text" id="search2" class="text" style="width:80px;" title="시작일" />
						<input type="image" onclick="##" src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif'/>" title="달력보기" /> ~
					<input type="text" id="search2_2" class="text" style="width:80px;" title="마감일" />
						<input type="image" onclick="##" src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif'/>" title="달력보기" />
				</th>
				<th><span class="button"><input type="button" value="조회" /></span></th>
			</tr>
		</table>
	</fieldset>
	<!--// search -->

	<!-- listTable: Start -->
	<table class="tblType1 tblSpace2" summary="자가진단(진단대상) 점수관리 테이블입니다.">
		<colgroup>
			<col width="7%" />
			<col width="15%" />
			<col width="10%" />
			<col width="17%" />
			<col width="17%" />
			<col width="15%" />
			<col width="auto"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">신청일자</th>
				<th scope="col">성명</th>
				<th scope="col">소속기관</th>
				<th scope="col">부서</th>
				<th scope="col">연락처</th>
				<th scope="col">DB명</th>
			</tr>
		</thead>
		<tbody>
				<tr>
					<td>1</td>
					<td>2011-01-01
					</td>
					<td><a href="##">홍길동</a></td>
					<td>소방방재청</td>
					<td>정보화기획 </td>
					<td>02-5697-8548</td>
					<td>DB명</td>
				</tr>
				<tr>
					<td>2</td>
					<td>2011-01-01
					</td>
					<td><a href="##">홍길동</a></td>
					<td>소방방재청</td>
					<td>정보화기획 </td>
					<td>02-5697-8548</td>
					<td>DB명</td>
				</tr>
				<tr>
					<td>3</td>
					<td>2011-01-01
					</td>
					<td><a href="##">홍길동</a></td>
					<td>소방방재청</td>
					<td>정보화기획 </td>
					<td>02-5697-8548</td>
					<td>DB명</td>
				</tr>
				<tr>
					<td>4</td>
					<td>2011-01-01
					</td>
					<td><a href="##">홍길동</a></td>
					<td>소방방재청</td>
					<td>정보화기획 </td>
					<td>02-5697-8548</td>
					<td>DB명</td>
				</tr>


		</tbody>
	</table>
	<!-- //listTable: End -->

	<!-- paging : Start -->
	<%@ include file="/html/pdqm/admin/include/paging.jsp" %>
	<!--// paging : End -->

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
