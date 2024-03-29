<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : bbs1_list.jsp
  * @Description : 지식자료실, 교육/공지안내, 교육자료실, 협의회 커뮤니티, 공지사항, 묻고답하기 목록화면
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
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb2.jsp" %>

<!-- contents영역시작 -->

<div class="bg_know">
	<div class="title">
		<div class="location">Home > 정보마당 > <em>지식자료실</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/knowledge/h3_know4.gif'/>" alt="지식자료실" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/knowledge/h3_know4_desc.png'/>" class="png24" alt="행사, 세미나, 워크샵 등에서 발표한 자료 및 전문가들의 품질관리 전문자료, 품질관리 일반 지식 등을 모은 자료실입니다. 데이터통합, 데이터아키텍처, 데이터품질진단·개선, 메타데이터관리, DB일반기술(DBMS, SQL, 개발자기술) 의 분류로 제공됩니다." /></p>
	</div>

	<table class="tbType1" summary="번호, 제목, 게시시작일, 게시종료일, 작성자, 작성일, 조회수 입니다">
		<caption>지식자료실 목록</caption>
		<colgroup>
			<col width="7%">
			<col width="auto">
			<col width="12%">
			<col width="12%">
			<col width="8%">
			<col width="8%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">등록자</th>
				<th scope="col">작성일</th>
				<th scope="col">첨부</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>10</td>
				<td class="ta_l"><a href="/pdqm/html/pdqm/front/knowledge/bbs1_view.jsp">글제목이 들어가는 자리</a> <img src="<c:url value='/images/pdqm/common/icon/icon_new.gif'/>" alt="새글" /></td>
				<td>더미사용자</td>
				<td>2011.10.24</td>
				<td><img src="<c:url value='/images/pdqm/common/icon/icon_file.gif'/>" alt="첨부파일명넣기" /></td>
				<td>1</td>
			</tr>
			<tr>
				<td>|</td>
				<td class="ta_l"><a href="/pdqm/html/pdqm/front/knowledge/bbs1_view.jsp">글제목이 들어가는 자리</a></td>
				<td>더미사용자</td>
				<td>2011.10.24</td>
				<td><img src="<c:url value='/images/pdqm/common/icon/icon_file.gif'/>" alt="첨부파일명넣기" /></td>
				<td>1</td>
			</tr>
			<tr>
				<td>1</td>
				<td class="ta_l"><a href="/pdqm/html/pdqm/front/knowledge/bbs1_view.jsp">글제목이 들어가는 자리</a></td>
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
			<a href="/pdqm/html/pdqm/front/knowledge/bbs1_write.jsp"><img src="<c:url value='/images/pdqm/common/btn/btn_write.gif'/>" alt="글쓰기" /></a>
		</div>
	</div>
	<!--// pading_Btn -->

	<!-- 검색박스 -->
	<fieldset class="searchBox">
		<legend>게시물검색폼</legend>
		<select class="text" title="분류 선택">
			<option value="0" selected="selected">전체</option>
			<option value="1">데이터통합(DI, ETL, MDM)</option>
			<option value="2">데이터아키텍처(데이터모델링)</option>
			<option value="3">데이터품질진단·개선</option>
			<option value="4">메타데이터관리</option>
			<option value="5">DB일반기술(DBMS, SQL, 개발자기술)</option>
		</select>
		<select class="text" title="검색 조건선택">
			<option value="0">제목</option>
			<option value="1">내용</option>
		</select>
		<input type="text" class="text" size="35" maxlength="35" style="width:155px;" title="검색어 입력" />
		<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_search.gif'/>" class="btn" title="검색" />
	</fieldset>
	<!--// 검색박스 -->
</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

