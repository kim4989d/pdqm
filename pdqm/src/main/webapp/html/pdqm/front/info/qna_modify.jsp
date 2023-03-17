<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : qna_modify.jsp
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

	<table class="registTable" summary="게시글 입력폼입니다.">
		<colgroup>
			<col width="15%"><col>
		<colgroup>
		<tr>
			<th scope="row" class="emphasisRight"><label for="nttSj">제목</label></th>
			<td>
				<input name="nttSj" id="nttSj" type="text" class="text" size="60" value="RE : 2011년 공공정보 보유정보 품질진단 개선사업 사업추진 자료
				" maxlength="60" style="width:600px;" />
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="label_1">분야</label></th>
			<td>
				<select title="분류 선택" class="text">
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
			<th scope="row" class="emphasisRight"><label for="nttCn">내용</label></th>
			<td>
				<!-- 에디터 들어가는 자리 -->
				<textarea id="nttCn" name="nttCn" class="text" cols="75" rows="28" style="width:600px;height:200px;"></textarea>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="egovComFileUploader">첨부파일</label></th>
			<td>
				<input name="egovComFileUploader" type="file" size="30" id="egovComFileUploader" />
				<ul class="file">
					<li>2011년 품질진단·개선 사업 우수사례.pdf <button type="submit" class="sbtn_close">삭제</button></li>
					<li>2011년 품질진단·개선 사업 우수사례.pdf <button type="submit" class="sbtn_close">삭제</button></li>
				</ul>
			</td>
		</tr>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea btn_ar">
		<a href="/pdqm/html/pdqm/front/info/qna.jsp"><img src="<c:url value='/images/pdqm/common/btn/btn_cancel.gif'/>" alt="취소" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_regist.gif'/>" alt="등록" /></a>
	</div>
	<!--// 버튼영역 -->


</div>


<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

