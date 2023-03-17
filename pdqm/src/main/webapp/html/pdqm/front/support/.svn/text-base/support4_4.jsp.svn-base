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
		<div class="location">Home > 지원창구 > 품질수준 자가진단 > <em>진단결과 조회(1단계)</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup4_4.gif'/>" alt="진단결과 조회(1단계)" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup4_desc.png'/>" class="png24" alt="공공정보 품질수준을 자가진단하여 품질개선 향상에 도움을 줄 수 있는 창구입니다. 질문은 대략 30여개로 구성되어 있으며, 소요시간은 약 20분정도 소요됩니다. 기관 및 협의회의 많은 참여 바랍니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup4_4_1.gif'/>" alt="기본정보" /></h4>
		<table class="conTable2" summary="기본정보 테이블입니다.">
			<colgroup>
				<col width="25%"><col width="25%"><col width="25%"><col width="auto">
			</colgroup>
			<tbody>
				<tr>
					<th>기관명</th>
					<td class="bd_r">OO기관</td>
					<th>기관구분</th>
					<td>공공기관</td>
				</tr>
				<tr>
					<th>데이터베이스명</th>
					<td class="bd_r">OO시스템 DB</td>
					<th>데이터베이스 유형</th>
					<td>복합형</td>
				</tr>
				<tr>
					<th>데이터베이스 사용자규모</th>
					<td colspan="3">50명 미만</td>
				</tr>
			</tbody>
		</table>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup4_4_2.gif'/>" alt="진단결과" /></h4>
		<p class="remarks">
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_100.gif'/>" alt="범례 적정" />
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_200.gif'/>" alt="보통" />
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_300.gif'/>" alt="미흡" />
		</p>
		<table class="conTable1" summary="품질진단 결과물 항목 및 내용이 있는 테이블입니다.">
			<colgroup>
				<col width="25%"><col width="25%"><col width="25%"><col width="auto">
			</colgroup>
			<thead>
				<tr>
					<th>구분</th>
					<th>값</th>
					<th>표준</th>
					<th>구조</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>진단결과 종합</th>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_200.gif'/>" alt="보통" /></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_300.gif'/>" alt="미흡" /></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_200.gif'/>" alt="보통" /></td>
				</tr>
			</tfoot>
			<tbody>
				<tr class="ta_c">
					<th>활용(Service)</th>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_100.gif'/>" alt="적정" /></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_200.gif'/>" alt="보통" /></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_300.gif'/>" alt="미흡" /></td>
				</tr>
				<tr class="ta_c">
					<th>관리 프로세스(Process)</th>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_200.gif'/>" alt="보통" /></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_200.gif'/>" alt="보통" /></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_100.gif'/>" alt="적정" /></td>
				</tr>
				<tr class="ta_c">
					<th>지원도구(System)</th>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_100.gif'/>" alt="적정" /></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_100.gif'/>" alt="적정" /></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_100.gif'/>" alt="적정" /></td>
				</tr>
				<tr class="ta_c">
					<th>저장내용(Contents)</th>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_300.gif'/>" alt="미흡" /></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_300.gif'/>" alt="미흡" /></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_300.gif'/>" alt="미흡" /></td>
				</tr>
			</tbody>
		</table>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup4_4_3.gif'/>" alt="진단결과 설명" /></h4>
		<table class="conTable2" summary="기본정보 테이블입니다.">
			<colgroup>
				<col width="10%"><col width="15%"><col width="auto">
			</colgroup>
			<tbody>
				<tr>
					<th rowspan="4">값</th>
					<td class="thbg1">활용</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
				<tr>
					<td class="thbg1">관리 프로세스</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
				<tr>
					<td class="thbg1">지원도구</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
				<tr>
					<td class="thbg1">저장내용</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
				<tr>
					<th rowspan="4">표준</th>
					<td class="thbg1">활용</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
				<tr>
					<td class="thbg1">관리 프로세스</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
				<tr>
					<td class="thbg1">지원도구</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
				<tr>
					<td class="thbg1">저장내용</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
				<tr>
					<th rowspan="4">구조</th>
					<td class="thbg1">활용</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
				<tr>
					<td class="thbg1">관리 프로세스</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
				<tr>
					<td class="thbg1">지원도구</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
				<tr>
					<td class="thbg1">저장내용</td>
					<td>데이터 값에 대한 활용이 "적정"수준으로 원활하게 이루어지고 있습니다.</td>
				</tr>
			</tbody>
		</table>
		<p class="btnArea ta_c mt_10">
			<strong>데이터 품질지표 자가진단을 수행하시겠습니까? </strong>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_start2.gif'/>" alt="자가진단 시작(2단계 품질지표)" /></a>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_result_print.gif'/>" alt="결과보고서 출력" /></a>
		</p>
	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

