<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support1.jsp
  * @Description : 지원창구 > 품질진단사업안내
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
		<div class="location">Home > 지원창구 > <em>품질진단사업안내</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup1.gif'/>" alt="품질진단사업안내" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup1_desc.png'/>" class="png24" alt="행정안전부와 한국정보화진흥원에서 실시하는 공공정보 품질진단사업에 대한 안내입니다. 품질진단사업의 개요와 수행 방법, 결과물 활용 방안 등을 설명합니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup1_1.gif'/>" alt="품질진단사업은 누가, 왜 실시하나요 ?" /></h4>
		<div class="depth1_con">
			<p>품질진단사업은 공공기관이 보유하고 있는 공공정보의 품질을 진단하여 개선방향을 제시함으로써 국가 주요 공공정보의 품질을 높이기 위해 실시합니다.</p>
			<p>행정안전부와 품질관리 지원센터(한국정보화진흥원)가 매년 실시하고 있습니다.</p>
			<ul class="liType5 mt_10">
				<li>2010년 16개 기관 31개 DB 품질진단 실시</li>
				<li>2011년 8개 기관 8개 DB 품질진단 실시</li>
			</ul>
		</div>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup1_2.gif'/>" alt="품질진단사업 신청 대상DB와 신청 방법은 어떻게 되나요 ?" /></h4>
		<div class="depth1_con">
			공공정보 품질진단사업의 대상DB는 공공기관이 생성∙보유∙관리하고 있는 DB입니다.<br />
			품질진단 수요조사 공지 후, 품질진단 수요조사 신청서를 제출하게 되면, 선정기준에 따라 품질진단 대상DB를 선정하여 통지하고, 품질진단사업을 실시합니다.
		</div>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup1_4.gif'/>" alt="품질진단은 어떤 방법으로 수행하나요 ?" /></h4>
		<div class="depth1_con">
			<p>공공정보 품질진단은 주로 아래 세 가지 진단 방법을 사용합니다.</p>

			<h5 class="bult">값∙구조(프로파일링) 진단</h5>
			<p class="h5_bult_con">데이터베이스의 값과 구조적 측면 문제점을 프로파일링도구를 사용하여 진단합니다.  데이터베이스 분석 만으로 바로 진단을 실시하므로, 비교적 짧은 기간에 많은 데이터를 진단할 수 있습니다.</p>

			<h5 class="bult">업무규칙(BR : Business Rule) 진단</h5>
			<p class="h5_bult_con">업무처리 관련 지침, 규정 등으로부터 핵심 업무규칙을 도출하여 데이터 값∙구조∙흐름을 진단합니다.  업무규칙 기반으로 데이터 오류를 진단할 수 있는 반면, 진단 기간이 프로파일링 진단에 비해 다소 많이 걸립니다.</p>

			<h5 class="bult">품질관리 수준 진단</h5>
			<p class="h5_bult_con">데이터 품질 및 품질관리 수준을 진단 체크리스트를 이용하여 진단합니다. DB품질, 품질관리 정책∙조직∙활동 등을 진단하게 되며, 설문, 인터뷰, 조사 등의 방법을 사용합니다.</p>
		</div>

		<p class="depth1_con mt_10">공공정보 품질진단의 주요 수행절차는 아래와 같습니다.</p>
		<p class="mt_10"><img src="<c:url value='/images/pdqm/front/support/img_sup1_1.gif'/>" alt="" /></p>
		<p class="mt_10">※ 품질진단 상세 절차에 대해서는 “공공정보 품질관리 - 법∙지침∙매뉴얼”의 매뉴얼 참조</p>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup1_5.gif'/>" alt="품질진단 기간은 어느 정도 소요되며, 결과물은 어떤 것을 제공하나요 ?" /></h4>
		<p class="depth1_con">품질진단 기간은 대상DB의 특성 및 진단 환경에 영향을 받으나, 대개 3개월~4개월 정도가 소요됩니다. </p>

		<p class="depth1_con mt_10">품질진단 수행 후 아래 내용의 “품질진단 결과보고서”를 제공합니다. </p>
		<table class="conTable1 mt_10" summary="품질진단 결과물 항목 및 내용이 있는 테이블입니다.">
			<colgroup>
				<col width="15%"><col width="auto">
			</colgroup>
			<thead>
				<tr>
					<th colspan="2">품질진단 결과보고서</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>현황분석</th>
					<td class="br_l">
						<ul class="liType1">
							<li>업무 현황</li>
							<li>정보화 현황</li>
							<li>진단 기관 요구사항</li>
							<li>품질 현안 및 요건</li>
							<li>진단 방향</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th>결과분석</th>
					<td class="br_l">
						<ul class="liType1">
							<li>품질 진단 결과요약</li>
							<li>품질 지표별 품질진단 결과</li>
							<li>품질 현상별 품질 문제 정의</li>
							<li>품질 문제 원인분석</li>
							<li>업무 영향 분석</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th>개선권고</th>
					<td class="br_l">
						<ul class="liType1">
							<li>오류 원인별 중, 단기 개선 수립</li>
							<li>개선 권고 우선 순위 도출</li>
							<li>개선 권고 효과 제시</li>
						</ul>
					</td>
				</tr>
			</tbody>
		</table>
		<p>※ 품질진단 컨설팅 결과보고서는 대상 기관의 승인없이 외부에 유출하지 않습니다.</p>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup1_2.gif'/>" alt="품질진단 결과는 어떻게 활용하면 되나요 ?" /></h4>
		<p class="depth1_con">품질진단 결과보고서의 결과분석 내용 및 개선권고안을 참고하여, 기관의 품질개선 계획 수립 시 활용하며, 공공정보 품질관리지원센터의 품질개선사업 신청 시 근거자료로 활용할 수 있습니다.</p>


	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
