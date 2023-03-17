<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : bbs1_view.jsp
  * @Description : 지식자료실, 교육/공지안내, 교육자료실, 협의회 커뮤니티, 공지사항, 묻고답하기 상세보기화면
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

	<!-- 소설사이트링크영역 -->
	<div class="sns">
		<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_facebook.gif'/>" alt="페이스북" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_twitter.gif'/>" alt="트위터" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_metoday.gif'/>" alt="미투데이" /></a>
	</div>

	<!-- 게시물영역 -->
	<table class="tbType1_view" summary="게시물 상세화면 입니다">
		<caption>지식자료실 상세화면</caption>
		<colgroup>
			<col width="10%">
			<col width="25%">
			<col width="10%">
			<col width="25%">
			<col width="10%">
			<col width="20%">
		</colgroup>
		<tr>
			<th scope="row" class="subject bgNone">제&nbsp;&nbsp;목</th>
			<td class="subject" colspan="5">PDF파일첨부</td>
		</tr>
		<tr>
			<th scope="row" class="bgNone">등록자</th>
			<td>더미사용자</td>
			<th scope="row">등록일</th>
			<td>2011-10-24</td>
			<th scope="row">조회수</th>
			<td>2</td>
		</tr>
		<tr>
			<th scope="row" class="bgNone">글내용</th>
			<td colspan="5" class="con">
				<div id="bbs_cn">
				<p>움헤헤헤</p>
				</div>
			</td>
		</tr>
		<tr>
			<th scope="row" class="bgNone">첨부파일</th>
			<td colspan="5">
				<ul class="file">
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf 파일" /> E-Book_Final.pdf</a>(용량 : 1411860&nbsp;byte / 다운로드 : <em>100</em>회 )</li>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_xls.gif'/>" alt="엑셀파일" /> E-Book_Final.xls</a>(용량 : 1411860&nbsp;byte / 다운로드 : <em>100</em>회 )</li>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_doc.gif'/>" alt="워드파일" /> E-Book_Final.doc</a>(용량 : 1411860&nbsp;byte / 다운로드 : <em>100</em>회 )</li>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_hwp.gif'/>" alt="한글파일" /> E-Book_Final.hwp</a>(용량 : 1411860&nbsp;byte / 다운로드 : <em>100</em>회 )</li>
					<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_file.gif'/>" alt="기타파일" /> E-Book_Final.jpg</a>(용량 : 1411860&nbsp;byte / 다운로드 : <em>100</em>회 )</li>
				</ul>
			</td>
		</tr>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea btn_ar">
		<a href="/pdqm/html/pdqm/front/knowledge/bbs1_write.jsp"><img src="<c:url value='/images/pdqm/common/btn/btn_modify.gif'/>" alt="수정" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_del.gif'/>" alt="삭제" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_reply.gif'/>" alt="답변" /></a>
		<a href="/pdqm/html/pdqm/front/knowledge/bbs1_list.jsp"><img src="<c:url value='/images/pdqm/common/btn/btn_list.gif'/>" alt="목록" /></a>
	</div>
	<!--// 버튼영역 -->

	<!-- 이전글/다음글 -->
	<table class="viewType1" summary="이전글/다음글 목록입니다">
		<caption>이전글/다음글</caption>
		<colgroup>
			<col width="10%">
			<col width="90%">
		</colgroup>
		<tr class="bg1">
			<th class="prev" scope="row">이전글</th>
			<td><a href="##">PDF파일첨부</a></td>
		</tr>
		<tr>
			<th class="next" scope="row">다음글</th>
			<td><a href="##">PDF파일첨부</a></td>
		</tr>
	</table>
	<!--// 이전글/다음글 -->
</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

