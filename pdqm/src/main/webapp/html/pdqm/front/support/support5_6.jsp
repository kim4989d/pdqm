<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support5_6.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > 컬럼비교 상세
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
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<!-- contents영역시작 -->

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>컬럼비교 상세</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_6.gif'/>" alt="컬럼비교 상세" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_2_desc.png'/>" class="png24" alt="DB스키마(컬럼명, 데이터 Type, 길이)에 대한 비교가 가능하여연계시 표준 준수 및 자체 표준 준수에 활용 가능합니다." /></p>
	</div>

	<div id="conBox">

		<h4 class="first">비교기준 컬럼 상세</h4>
		<table class="conTable1 brN" summary="비교기준 컬럼 상세 게시판 입니다">
			<colgroup>
				<col width="5%">
				<col width="10%">
				<col width="20%">
				<col width="12%">
				<col width="10%">
				<col width="auto">
				<col width="10%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">NO</th>
					<th scope="col">기관명</th>
					<th scope="col">데이터베이스명</th>
					<th scope="col">테이블명</th>
					<th scope="col">컬럼명</th>
					<th scope="col">컬럼한글명</th>
					<th scope="col">데이터타입</th>
				</tr>
			</thead>
			<tbody>
				<tr class="ta_l">
					<td class="ta_c">1</td>
					<td>A기관</td>
					<td>인사관리시스템 DB</td>
					<td>IS_DWELLMGR</td>
					<td>EMERHYD_ID</td>
					<td>비상소화장치ID</td>
					<td>VARCHAR2(10)</td>
				</tr>
				<tr class="ta_l">
					<td class="ta_c">2</td>
					<td></td>
					<td>인사관리시스템 DB</td>
					<td>IS_DWELLMGR</td>
					<td>EMERHYD_ID</td>
					<td>비상소화장치ID</td>
					<td>VARCHAR2(10)</td>
				</tr>
				<tr class="ta_l">
					<td class="ta_c">|</td>
					<td>B기관</td>
					<td>관리자시스템 DB</td>
					<td>IS_DWELLMGR</td>
					<td>EMERHYD_ID</td>
					<td>비상소화장치ID</td>
					<td>VARCHAR2(10)</td>
				</tr>
				<tr class="ta_l">
					<td class="ta_c">10</td>
					<td></td>
					<td>관리자시스템 DB</td>
					<td>IS_DWELLMGR</td>
					<td>EMERHYD_ID</td>
					<td>비상소화장치ID</td>
					<td>VARCHAR2(10)</td>
				</tr>
			</tbody>
		</table>

		<h4>불일치 컬럼 상세</h4>
		<table class="conTable1 brN" summary="불일치 컬럼 상세 게시판 입니다">
			<colgroup>
				<col width="5%">
				<col width="10%">
				<col width="20%">
				<col width="12%">
				<col width="10%">
				<col width="auto">
				<col width="10%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">NO</th>
					<th scope="col">기관명</th>
					<th scope="col">데이터베이스명</th>
					<th scope="col">테이블명</th>
					<th scope="col">컬럼명</th>
					<th scope="col">컬럼한글명</th>
					<th scope="col">데이터타입</th>
				</tr>
			</thead>
			<tbody>
				<tr class="ta_l">
					<td class="ta_c">1</td>
					<td>A기관</td>
					<td>인사관리시스템 DB</td>
					<td>IS_DWELLMGR</td>
					<td>EMERHYD_ID</td>
					<td>비상소화장치ID</td>
					<td>VARCHAR2(10)</td>
				</tr>
				<tr class="ta_l">
					<td class="ta_c">2</td>
					<td></td>
					<td>인사관리시스템 DB</td>
					<td>IS_DWELLMGR</td>
					<td>EMERHYD_ID</td>
					<td>비상소화장치ID</td>
					<td>VARCHAR2(10)</td>
				</tr>
				<tr class="ta_l">
					<td class="ta_c">|</td>
					<td>B기관</td>
					<td>관리자시스템 DB</td>
					<td>IS_DWELLMGR</td>
					<td>EMERHYD_ID</td>
					<td>비상소화장치ID</td>
					<td>VARCHAR2(10)</td>
				</tr>
				<tr class="ta_l">
					<td class="ta_c">10</td>
					<td></td>
					<td>관리자시스템 DB</td>
					<td>IS_DWELLMGR</td>
					<td>EMERHYD_ID</td>
					<td>비상소화장치ID</td>
					<td>VARCHAR2(10)</td>
				</tr>
			</tbody>
		</table>


	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

