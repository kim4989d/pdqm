<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : bbs3_write.jsp
  * @Description : 뉴스와동향, 보도자료 수정화면
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
		<div class="location">Home > 정보마당 > <em>뉴스와동향</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/knowledge/h3_know1.gif'/>" alt="뉴스와동향" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/knowledge/h3_know1_desc.png'/>" class="png24" alt="공공정보 품질관리의 뉴스와 동향입니다. 기사는 데이터품질 문제사례, 데이터품질 개선사례, 시장동향 및 기술동향, 전문가컬럼, 솔루션 소개, 공공정책보도 분야별로 제공됩니다. 원문보기 또는 출처의 링크를 클릭하시면 해당 기사를 제공한 언론사의 보도 원문을 볼 수 있습니다." /></p>
	</div>

	<table class="registTable" summary="게시글 수정폼입니다.">
		<caption>게시물 수정폼</caption>
		<colgroup>
			<col width="15%">
			<col width="85%">
		<colgroup>
		<tr>
			<th scope="row"><label for="nttSj">제목</label></th>
			<td>
				<input id="nttSj" type="text" size="60" value="공공정보 품질관리의 우수사례 선정" maxlength="60" style="width:500px;" />
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="label_1">분야</label></th>
			<td>
				<select id="label_1" class="select_part text">
					<option value="0">전체</option>
					<option value="1" selected="selected">데이터품질(피해) 문제사례</option>
					<option value="2">데이터품질 개선사례(우수사례)</option>
					<option value="3">시장동향</option>
					<option value="4">기술동향</option>
					<option value="5">전문가컬럼</option>
					<option value="6">솔루션소개</option>
					<option value="7">공공정책보도</option>
				</select>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="label_2">언론사</label></th>
			<td>
				<input id="label_2" type="text" class="text" size="40" value="디지털타임스" style="width:400px;" />
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="label_3">보도일자</label></th>
			<td>
				<input id="label_3" type="text" class="text" size="10" value="20111201" style="width:100px;" />
				<input type="button" class="calendar" value="레이어달력보기" />
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="label_4">출처</label></th>
			<td>
				<input id="label_4" type="text" class="text" size="40" value="http://www.dt.co.kr/2098472.html" style="width:400px;" />
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="nttCn">내용</label></th>
			<td>
				<!-- 에디터 들어가는 자리 -->
				<textarea id="nttCn" class="text" cols="75" rows="28" style="width:580px;height:200px;"></textarea>
			</td>
		</tr>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea btn_ar">
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_cancel.gif'/>" alt="취소" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_regist.gif'/>" alt="등록" /></a>
	</div>
</div>


<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

