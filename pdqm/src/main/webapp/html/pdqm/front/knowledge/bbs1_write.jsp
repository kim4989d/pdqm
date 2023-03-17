<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : bbs1_write.jsp
  * @Description : 지식자료실, 교육/공지안내, 교육자료실, 협의회 커뮤니티, 공지사항, 묻고답하기 글쓰기화면
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

	<table class="registTable" summary="게시글 입력폼입니다.">
		<caption>지식자료실 입력폼</caption>
		<colgroup>
			<col width="15%">
			<col width="85%">
		<colgroup>
		<tr>
			<th scope="row"><label for="nttSj">제&nbsp;&nbsp;목</label></th>
			<td>
				<input id="nttSj" type="text" class="text" size="60" maxlength="60" style="width:500px;" />
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="label_1">분&nbsp;&nbsp;야</label></th>
			<td>
				<select id="label_1">
					<option value="0" selected="selected">전체</option>
					<option value="1">데이터통합(DI, ETL, MDM)</option>
					<option value="2">데이터아키텍처(데이터모델링)</option>
					<option value="3">데이터품질진단·개선</option>
					<option value="4">메타데이터관리</option>
					<option value="5">DB일반기술(DBMS, SQL, 개발자기술)</option>
				</select>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="nttCn">내&nbsp;&nbsp;용</label></th>
			<td>
				<!-- 에디터 들어가는 자리 -->
				<textarea id="nttCn" class="text" cols="75" rows="28" style="width:580px;height:200px;"></textarea>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="egovComFileUploader">첨부파일</label></th>
			<td>
				<p><input id="egovComFileUploader" type="file" class="text" title="첨부파일명" /></p>
				<ul class="file">
					<li>2011년 품질진단·개선 사업 우수사례.pdf <button type="submit" class="sbtn_close">삭제</button></li>
					<li>2011년 품질진단·개선 사업 우수사례.pdf <button type="submit" class="sbtn_close">삭제</button></li>
				</ul>
			</td>
		</tr>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea btn_ar">
		<a href="/pdqm/html/pdqm/front/knowledge/bbs1_list.jsp"><img src="<c:url value='/images/pdqm/common/btn/btn_list.gif'/>" alt="목록" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_cancel.gif'/>" alt="취소" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_regist.gif'/>" alt="등록" /></a>
	</div>
	<!--// 버튼영역 -->
</div>


<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

