<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support2.jsp
  * @Description : 지원창구 > 품질개선사업안내
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
		<div class="location">Home > 지원창구 > <em>품질개선사업안내</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup2.gif'/>" alt="품질개선사업안내" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup2_desc.png'/>" class="png24" alt="행정안전부와 한국정보화진흥원에서 실시하는 공공정보 품질개선사업에 대한 안내입니다. 품질개선사업의 개요와 수행 방법, 개선 지원범위 등을 설명합니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup2_1.gif'/>" alt="품질개선사업의 목적과 주요 개선범위는 무엇입니까 ?" /></h4>
		<p class="depth1_con">품질개선사업은 국가 중요DB를 대상으로 품질개선을 지원함으로써, 기관이 품질개선의 체계적 방법을 지원받아, 지속적으로 품질을 개선∙유지하도록 하기 위해 실시합니다.</p>
		<ul class="depth1_con liType5 mt_10">
			<li>2011년 1개 DB 시범개선사업 추진</li>
		</ul>
		<div class="depth1_con mt_10">
			<p>품질개선의 주요 개선범위는 아래와 같습니다.</p>

			<h5 class="bult">품질관리체계 정립</h5>
			<p class="h5_bult_con">공공기관의 정보화 비젼∙미션에 따른 품질관리 목표 및 계획 수립 지원</p>

			<h5 class="bult">표준화 수립</h5>
			<p class="h5_bult_con">코드∙용어∙도메인 등에 대한 표준화 현황 분석 및 표준화 지침 수립 지원</p>

			<h5 class="bult">데이터 보정</h5>
			<p class="h5_bult_con">개선 대상DB의 값∙구조 측면 오류 진단 및 개선 또는 개선 방안 제시</p>
			<p class="h5_bult_con">연계데이터의 정합성, 표준화 준수현황을 파악하고, 품질이슈에 대한 개선 방안</p>
		</div>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup2_2.gif'/>" alt="품질개선사업 신청 대상DB 및 신청 방법은 어떻게 되나요 ?" /></h4>
		<p class="depth1_con">공공정보 품질개선사업의 대상DB는 공공기관이 생성∙보유∙관리하는 DB 중 국가 차원에서 품질을 중점관리할 필요성이 있다고 인식된 DB로 중점관리 후보DB를 선정하여 관리하게 됩니다. 중점관리 후보DB 중, 수요조사를 통해 개선대상DB를 선정하고, 품질개선을 실시합니다.</p>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup2_3.gif'/>" alt="품질개선은 어떤 방법으로 수행하나요 ?" /></h4>
		<p class="depth1_con">공공정보 품질개선의 주요 수행절차는 아래와 같습니다.</p>
		<p class="mt_10"><img src="<c:url value='/images/pdqm/front/support/img_sup2_1.gif'/>" alt="" /></p>
		<p class="mt_10">※ 품질개선 상세 절차에 대해서는 “공공정보 품질관리 - 법∙지침∙매뉴얼”의 매뉴얼 참조</p>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup1_5.gif'/>" alt="품질개선 기간은 어느 정도이며, 개선은 어디까지 지원해주나요 ?" /></h4>
		<p class="depth1_con">품질개선 기간은 품질개선 DB의 특성 및 개선 대상 범위에 따라 달라지나, 대개 4~5개월 정도가 소요됩니다.</p>
		<p class="depth1_con mt_10">품질개선 계획 수립 시 품질관리체계 수립, 표준화 수립, 데이터 보정 영역의 개선에 대한 지원 범위 및 품질개선지원팀과 개선대상기관과의 업무역할을 정의하여 진행합니다. 즉, 실제 개선을 지원하는 범위와 개선을 위한 가이드를 제공하는 범위를 정합니다.</p>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup1_5.gif'/>" alt="품질개선 후 지속적인 품질 향상 및 유지를 위해 어떤 활동을 해야 하나요 ?" /></h4>
		<p class="depth1_con">품질개선사업 완료 후 개선을 실시한 영역은 지속적 품질 유지를 위한 통제활동을 실시하여야 하며, 개선 가이드를 제공 받은 부분은 기관의 실정에 맞게 개선계획을 수립하여 향후 기관 자체 품질개선사업을 통해 개선을 추진하여야 합니다.</p>
		<p class="depth1_con mt_10">품질개선사업은 해당기관이 품질개선에 대한 전반적인 체계를 구축, 내재화하여 지속적으로 품질개선활동을 할 수 있게 지원해주는 사업입니다.</p>
	</div>
</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

