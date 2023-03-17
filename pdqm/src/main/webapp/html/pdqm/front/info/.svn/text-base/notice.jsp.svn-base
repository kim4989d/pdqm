<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : notice.jsp
  * @Description : 공지사항
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb7.jsp" %>

<!-- contents영역시작 -->

<div class="bg_notice">
	<div class="title">
		<div class="location">Home > <em>공지사항</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/etc/h3_notice.gif'/>" alt="공지사항" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/etc/h3_notice_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터의 공지사항입니다.  공공정보 품질관리 지원센터의 최근 소식과 공공정보 품질관리 지원센터 회원에게 알릴 공지 등을 모아 제공합니다." /></p>
	</div>

	<table class="tbType1" summary="번호, 제목, 게시시작일, 게시종료일, 작성자, 작성일, 조회수 입니다">
		<colgroup>
			<col width="7%">
			<col>
			<col width="12%">
			<col width="12%">
			<col width="8%">
			<col width="8%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">NO</th>
				<th scope="col">제목</th>
				<th scope="col">등록자</th>
				<th scope="col">등록일</th>
				<th scope="col">첨부</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>10</td>
				<td class="ta_l"><a href="/pdqm/html/pdqm/front/info/notice_view.jsp">글제목이 들어가는 자리</a> <img src="<c:url value='/images/pdqm/common/icon/icon_new.gif'/>" alt="new" /></td>
				<td>더미사용자</td>
				<td>2011.10.24</td>
				<td><img src="<c:url value='/images/pdqm/common/icon/icon_file.gif'/>" alt="첨부파일명넣기" /></td>
				<td>1</td>
			</tr>
			<tr>
				<td>|</td>
				<td class="ta_l"><a href="/pdqm/html/pdqm/front/info/notice_view.jsp">글제목이 들어가는 자리</a></td>
				<td>더미사용자</td>
				<td>2011.10.24</td>
				<td><img src="<c:url value='/images/pdqm/common/icon/icon_file.gif'/>" alt="첨부파일명넣기" /></td>
				<td>1</td>
			</tr>
			<tr>
				<td>1</td>
				<td class="ta_l"><a href="/pdqm/html/pdqm/front/info/notice_view.jsp">글제목이 들어가는 자리</a></td>
				<td>더미사용자</td>
				<td>2011.10.24</td>
				<td><img src="<c:url value='/images/pdqm/common/icon/icon_file.gif'/>" alt="첨부파일명넣기" /></td>
				<td>1</td>
			</tr>
		</tbody>
	</table>

	<!-- pading_Btn -->
	<div class="pagenate_btn">
		<div class="paging">
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_start.gif'/>" alt="처음목록으로 이동" /></a>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_prev.gif'/>" alt="이전목록으로 이동" /></a>
			<strong>1</strong>
			<a href="##">2</a>
			<a href="##">3</a>
			<a href="##">4</a>
			<a href="##">5</a>
			<a href="##">6</a>
			<a href="##">7</a>
			<a href="##">8</a>
			<a href="##">9</a>
			<a href="##">10</a>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_next.gif'/>" alt="다음목록으로 이동" /></a>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_end.gif'/>" alt="마지막목록으로 이동" /></a>
		</div>
		<div class="btn_pr">
			<a href="/pdqm/html/pdqm/front/info/notice_write.jsp"><img src="<c:url value='/images/pdqm/common/btn/btn_write.gif'/>" alt="글쓰기" /></a>
		</div>
	</div>
	<!--// pading_Btn -->

	<!-- 검색박스 -->
	<fieldset class="searchBox">
		<legend>게시물검색폼</legend>
		<select title="분류 선택">
			<option value="0" selected="selected">전체</option>
			<option value="1">데이터통합(DI, ETL, MDM)</option>
			<option value="2">데이터아키텍처(데이터모델링)</option>
			<option value="3">데이터품질진단·개선</option>
			<option value="4">메타데이터관리</option>
			<option value="5">DB일반기술(DBMS, SQL, 개발자기술)</option>
		</select>
		<select name="searchCnd" title="검색 조건선택">
			<option value="0">제목</option>
			<option value="1">내용</option>
		</select>
		<input name="searchWrd" type="text" class="text" size="35" value='' maxlength="35" style="width:155px;" title="검색어 입력" />
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_search.gif'/>" alt="검색" /></a>
	</fieldset>
	<!--// 검색박스 -->

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

