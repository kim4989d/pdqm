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
		<div class="location">Home > 지원창구 > 품질수준 자가진단 > <em>품질지표 결과 조회(2단계)</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup4_6.gif'/>" alt="품질지표 결과 조회(2단계)" /></h3>
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

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup4_6_1.gif'/>" alt="총평" /></h4>
		<div class="review">
			귀 기관은 데이터베이스 유형이 "<strong class="fc_orange">복합형</strong>"에 해당하므로 <strong>"일관성", "정확성", "유효성", "보안성", "적시성", "유용성"을 보다 중점적으로 관리</strong>하셔야 합니다. 수집된 데이터에 대한 품질 점검 활동 및 수집된 데이터와 가공된 데이터의 데이터 정합성 검증에 대한 활동이 지속적으로 이루어져야 하며 특히, 외부 기관의 데이터 제공 시 제공하는 데이터에 대한 사전 품질 점검 활동 강화를 통해 상효 연계되는 데이터에 대한 신뢰를 높여야 합니다. 데이터 수집과 제공되는연계 데이터의 구조관리를 통해 내, 외부적인 데이터에 대한 변경 영향 분석을 통해 신속한 데이터의 수집 및 제공을 할 수 있습니다.
		</div>


		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup4_4_2.gif'/>" alt="진단결과" /></h4>
		<p class="remarks">
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_100.gif'/>" alt="범례 적정" />
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_200.gif'/>" alt="보통" />
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_300.gif'/>" alt="미흡" />
		</p>
		<table class="conTable1" summary="품질진단 결과물 항목 및 내용이 있는 테이블입니다.">
			<colgroup>
				<col width="auto"><col width="11%"><col width="11%"><col width="11%"><col width="11%"><col width="11%"><col width="11%"><col width="11%"><col width="11%">
			</colgroup>
			<thead>
				<tr>
					<th>지표</th>
					<th>준비</th>
					<th>완전성</th>
					<th>일관성</th>
					<th>정확성</th>
					<th>유효성</th>
					<th>보안성</th>
					<th>적시성</th>
					<th>유용성</th>
				</tr>
			</thead>
			<tbody>
				<tr class="ta_c">
					<th>적정</th>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_100.gif'/>" alt="적정" /></td>
					<td></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_100.gif'/>" alt="적정" /></td>
					<td></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_100.gif'/>" alt="적정" /></td>
					<td></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_100.gif'/>" alt="적정" /></td>
					<td></td>
				</tr>
				<tr class="ta_c">
					<th>보통</th>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_200.gif'/>" alt="보통" /></td>
					<td></td>
					<td></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_200.gif'/>" alt="보통" /></td>
					<td></td>
					<td></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_200.gif'/>" alt="보통" /></td>
					<td></td>
				</tr>
				<tr class="ta_c">
					<th>미흡</th>
					<td></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_300.gif'/>" alt="미흡" /></td>
					<td></td>
					<td></td>
					<td><img src="<c:url value='/images/pdqm/front/support/icon_insuff_300.gif'/>" alt="미흡" /></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup4_6_2.gif'/>" alt="지표별 결과 설명" /></h4>
		<table class="conTable1 brL" summary="기본정보 테이블입니다.">
			<colgroup>
				<col width="12%"><col width="11%"><col width="auto">
			</colgroup>
			<thead>
				<tr>
					<th>지표</th>
					<th>결과</th>
					<th>설명</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>준비</th>
					<td class="bd_r ta_c"><img src="<c:url value='/images/pdqm/front/support/icon_insuff_100.gif'/>" alt="적정" /></td>
					<td>고품질의 데이터 관리를 위해서는 데이터품질관리 기본 구성 요소를 먼저 갖추어야 합니다. 준비한 기본 구성 요소에 최신의 내용을 충실하게 반영하여 데이터 품질관리의 기반을 구축하여야 합니다. 데이터 베이스 품질관리에 대한 규정, 지침, 절차, 기본문서 구비 측면에서 좀더 보완이 필요한 상태이며, 기본 문서를 현행화 하여 지속적인 관리가 필요합니다.</td>
				</tr>
				<tr>
					<th>완전성</th>
					<td class="bd_r ta_c"><img src="<c:url value='/images/pdqm/front/support/icon_insuff_200.gif'/>" alt="보통" /></td>
					<td>논리데이터 모델은 기관의 업무에 따라 보유하는 데이터의 관계를 보이는 청사진입니다. 완성도 높은 논리데이터 모델을 기반으로 데이터를 저장하는 DB의 물리구조 완성도를 높여야 합니다. 논리 데이터 모델의 엔터티 정규화 수준, 식별자, 필수 속성, 관계 등에 있어서 미흡한 상태를 나타냅니다 .또한 논리 모델과 물리모델과의 일관성이 결여되었음을 나타내고 있습니다. 그러므로 이러한 데이터베이스 구조적인 측면에서 개선을 지속적으로 추진하여야 합니다.</td>
				</tr>
				<tr>
					<th>일관성</th>
					<td class="bd_r ta_c"><img src="<c:url value='/images/pdqm/front/support/icon_insuff_300.gif'/>" alt="미흡" /></td>
					<td>데이터베이스에서 사용되는 속성은 동일한 형식과 의미를 가져야 합니다. 이러한 속성은 표준용어, 표준 도메인 관리를 통해 일관되게 유지될 수 있습니다. 이와 같은 표준에 대한 준수가 잘 이루어지고 있으며 지속적으로 준수되도록 노력해주시기 바랍니다.</td>
				</tr>
			</tbody>
		</table>

		<div class="mt_25">
			<strong class="fc_blue1">※ 참고사항</strong><br />
			<p class="ml_15">본 자가진단은 질문응답에 따라 그 결과를 일정한 기준에 따라 평가한 것입니다. 그러므로 반드시 현재의 기관 상황과 일치하지 않을 수 있습니다. 공공기관의 데이터베이스에 대한 품질관리는 “공공정보품질관리-법·지침·제도”메뉴에서 <strong class="fc_blue1">공공기관 데이터 베이스 품질관리 지침</strong>과 <strong class="fc_blue1">공공기관 품질관리 매뉴얼</strong>을 참조하여 기본적인 관리 체계를 갖추는 것이 요합니다. 해당 메뉴의 자료를 활용하여 주시기 바랍니다.</p>
		</div>

		<p class="btnArea ta_c mt_30">
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_result_print.gif'/>" alt="결과보고서 출력" /></a>
		</p>
	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

