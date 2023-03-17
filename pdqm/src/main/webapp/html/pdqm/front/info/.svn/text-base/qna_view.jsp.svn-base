<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : qna_view.jsp
  * @Description : 묻고답하기 화면
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
<%@ include file="/html/pdqm/include/lnb8.jsp" %>

<!-- contents영역시작 -->

<div class="bg_qna">
	<div class="title">
		<div class="location">Home > <em>묻고답하기</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/etc/h3_qna.gif'/>" alt="묻고답하기" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/etc/h3_qna_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터에서는 공공정보 품질관리 개선을 위한 서비스를 지원하고 있습니다. 그 일환으로 공공정보 품질진단 지원센터 묻고답하기 게시판에 궁금한 점을 올리시면 관리자나 품질관리 전문가가 답변을 해드립니다.  " /></p>
	</div>

	<!-- 소설사이트링크영역 -->
	<div class="sns">
		<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_facebook.gif'/>" alt="페이스북" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_twitter.gif'/>" alt="트위터" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_metoday.gif'/>" alt="미투데이" /></a>
	</div>

	<!-- 게시물영역 -->
	<table class="tbType1_view" summary="게시물 상세화면 입니다">
		<colgroup>
			<col width="10%">
			<col width="25%">
			<col width="10%">
			<col width="25%">
			<col width="10%">
			<col width="20%">
		</colgroup>
		<tr>
			<th scope="row" class="subject bgNone">제목</th>
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
		<a href="/pdqm/html/pdqm/front/info/qna_write.jsp"><img src="<c:url value='/images/pdqm/common/btn/btn_modify.gif'/>" alt="수정" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_del.gif'/>" alt="삭제" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_reply.gif'/>" alt="답변" /></a>
		<a href="/pdqm/html/pdqm/front/info/qna.jsp"><img src="<c:url value='/images/pdqm/common/btn/btn_list.gif'/>" alt="목록" /></a>
	</div>
	<!--// 버튼영역 -->

	<!-- 이전글/다음글 -->
	<table class="viewType1" summary="이전글/다음글 목록입니다">
		<colgroup>
			<col width="10%">
			<col>
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

