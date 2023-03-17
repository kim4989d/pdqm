<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support4.jsp
  * @Description : 지원창구 > 품질수준 자가진단 안내
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
		<div class="location">Home > 지원창구 > 품질수준 자가진단 > <em>자가진단 시작(1단계 품질관리체계)</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup4_2.gif'/>" alt="자가진단 시작(1단계 품질관리체계)" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup4_desc.png'/>" class="png24" alt="공공정보 품질수준을 자가진단하여 품질개선 향상에 도움을 줄 수 있는 창구입니다. 질문은 대략 30여개로 구성되어 있으며, 소요시간은 약 20분정도 소요됩니다. 기관 및 협의회의 많은 참여 바랍니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup4_1.gif'/>" alt="품질관리수준 자가진단 기본정보" /></h4>
		<table class="conTable2" summary="품질관리수준 자가진단 기본정보 선택 테이블입니다.">
			<colgroup>
				<col width="25%"><col width="auto">
			</colgroup>
			<tbody>
				<tr>
					<th><label for="db1">기관명</label></th>
					<td><input type="text" id="db1" name="db1" class="text" style="width:300px;"/></td>
				</tr>
				<tr>
					<th>기관구분</th>
					<td>
						<dl class="dlType2">
							<dt>행정기관</dt>
							<dd><input type="radio" id="db2_1" name="db2_1" /> <label for="db2_1">국가행정조직</label></dd>
							<dd><input type="radio" id="db2_2" name="db2_2" /> <label for="db2_2">자치행정조직</label></dd>
							<dd><input type="radio" id="db2_3" name="db2_3" /> <label for="db2_3">교육행정조직</label></dd>
							<dd><input type="radio" id="db2_4" name="db2_4" /> <label for="db2_4">입법조직</label></dd>
							<dd><input type="radio" id="db2_5" name="db2_5" /> <label for="db2_5">사법조직</label></dd>
							<dd><input type="radio" id="db2_6" name="db2_6" /> <label for="db2_6">헌법조직</label></dd>
							<dd><input type="radio" id="db2_7" name="db2_7" /> <label for="db2_7">국군조직</label></dd>
						</dl>
						<dl class="dlType2 wd_150">
							<dt>공공기관</dt>
							<dd><input type="radio" id="db2_8" name="db2_8" /> <label for="db2_8">정부투자기관 및 기타</label></dd>
							<dd><input type="radio" id="db2_9" name="db2_9" /> <label for="db2_9">산하기관</label></dd>
							<dd><input type="radio" id="db2_10" name="db2_10" /> <label for="db2_10">위원회</label></dd>
							<dd><input type="radio" id="db2_11" name="db2_11" /> <label for="db2_11">경제자유구역청(조합)</label></dd>
							<dd><input type="radio" id="db2_12" name="db2_12" /> <label for="db2_12">교육기관</label></dd>
							<dd><input type="radio" id="db2_13" name="db2_13" /> <label for="db2_13">금융기관</label></dd>
						</dl>
					</td>
				</tr>
				<tr>
					<th><label for="db3">데이터베이스명</label></th>
					<td><input type="text" id="db3" name="db3" class="text" style="width:300px;"/></td>
				</tr>
				<tr>
					<th>데이터베이스유형</th>
					<td>
						<ul class="liType3">
							<li><input type="radio" id="db4_1" name="db4_1" /> <label for="db4_1">자체생성형</label></li>
							<li><input type="radio" id="db4_2" name="db4_2" /> <label for="db4_2">수집형</label></li>
							<li><input type="radio" id="db4_3" name="db4_3" /> <label for="db4_3">제공형</label></li>
							<li><input type="radio" id="db4_4" name="db4_4" /> <label for="db4_4">복합형</label></li>
						</ul>
					</td>
				</tr>
				<tr>
					<th>데이터베이스사용자 규모</th>
					<td>
						<ul class="liType3">
							<li><input type="radio" id="db5_1" name="db5_1" /> <label for="db5_1">1,000명 미만</label></li>
							<li><input type="radio" id="db5_2" name="db5_2" /> <label for="db5_2">10,000명 미만</label></li>
							<li><input type="radio" id="db5_3" name="db5_3" /> <label for="db5_3">50,000명 미만</label></li>
							<li><input type="radio" id="db5_4" name="db5_4" /> <label for="db5_4">50,000 이상</label></li>
						</ul>
					</td>
				</tr>
			</tbody>
		</table>
		<p class="mtb_5"><strong class="fc_blue1">※ 공공기관 데이터베이스 유형 설명</strong></p>
		<ul class="depth1_con liType1">
			<li>자체 생성형 : 다른 데이터베이스와 연계 없이 자체적으로 정보 생성·활용하는 데이터베이스</li>
			<li>수집형 : 다른 데이터베이스로부터 연계를 통해 정보를 수집(가공)활용하는 데이터베이스</li>
			<li>제공형 : 생성 또는 수집된 정보를 통해 다른 데이터베이스에 제공하는 데이터베이스</li>
			<li>복합형 : 정보 생성,수집,제공이 복합적으로 구성되는 데이터베이스</li>
		</ul>

		<p class="btnArea ta_c mt_30"><a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_start1.gif'/>" alt="자가진단시작(1단계 품질관리수준)" /></a></p>
	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

