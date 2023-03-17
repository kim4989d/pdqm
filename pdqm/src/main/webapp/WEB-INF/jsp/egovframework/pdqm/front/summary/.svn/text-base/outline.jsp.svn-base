<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : summary1.jsp
  * @Description : 공공정보품질관리 > 공공정보품질관리 개요 화면
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="Content-Script-Type" content="text/javascript">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js" charset="utf-8"></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" charset="utf-8"></script>
	<script type="text/javascript">
	<!--
jQuery(function($){
	// List Tab Navigation
	var tab_list = $('div.tab.con_list');
	var tab_list_i = tab_list.find('>ul>li');
	tab_list.removeClass('jx');
	tab_list_i.find('>div.tab_conTxt').hide();
	tab_list.find('>ul>li:first-child').find('>div.tab_conTxt').show();
	tab_list.css('height', tab_list.find('>ul>li:first-child>div.tab_conTxt').height()+40);

	tab_list.find('>ul>li:first-child').addClass('on');
	function listTabMenuToggle(event){
		var t = $(this);
		tab_list_i.find('>div.tab_conTxt').hide();
		t.next('div.tab_conTxt').show();

		tab_list_i.removeClass('on');
		t.parent('li').addClass('on');
		tab_list.css('height', t.next('div.tab_conTxt').height()+40);
		return false;
	}
	tab_list_i.find('>a[href=#header]').click(listTabMenuToggle).focus(listTabMenuToggle);
});
	//-->
	</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb1.jsp" %>

<!-- contents영역시작 -->

<div class="bg_com">
	<div class="title">
		<div class="location">Home > 공공정보품질관리 > <em>공공정보품질관리 개요</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/summary/h3_sum1.gif'/>" alt="공공정보품질관리 개요" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/summary/h3_sum1_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터에서 담당하고 있는 공공정보 품질관리의 개념에 대해 알려드립니다. 공공정보의 품질관리의 정의와 품질진단개선사업의 내용 및 동향을 확인할 수 있습니다." /></p>
	</div>

	<div id="conBox">
		<div class="tab con_list jx">
			<ul>
				<!-- tab1 -->
				<li><a href="#header" class="sum1_tab1">국가정보화 방향과 공공정보 품질관리</a>
					<div class="tab_conTxt">
						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum1_1.gif'/>" alt="공공정보 정의 및 범위" /></h4>
						<ul class="depth1_con liType1">
							<li>국가정보화기본법 제3조 7항에 따르면 <strong class="fc_blue1">공공정보</strong>는 국가적 보존 및 이용가치가 있는 자료로서, 공공기관이 디지털화하여 보유하고 있는 <strong class="fc_blue1">지식정보자원</strong>을 말함.</li>
							<li>정보는 <strong class="fc_blue1">Data + Information</strong>을 포괄하는 개념으로 정형화된 데이터베이스(DB)와 문서, 동영상 등의 비정형 형식으로 존재.</li>
						</ul>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum1_2.gif'/>" alt="공공정보 품질관리 필요성" /></h4>
						<ul class="depth1_con liType1">
							<li>공공정보의 품질관리는 전자정부 출현부터 축적되어 온 다양한 DB의 정비 및 복잡해진 DB의 효율적 관리를 위해 그 필요성이 부각되고 있음.</li>
							<li>중복되고 단절된 기존 정보화 문제를 해결하고, 융합과 소통을 요구에 따른 정보화 환경의 변화, ICT 기술 발전에 따른 여러 이슈로  08년 이후부터는 공공정보 공개·활용을 위한 정보 표준화 및 정보의 신뢰성 확보를 목표로 함.</li>
						</ul>
						<p class="mt_10">
							<img src="<c:url value='/images/pdqm/front/summary/img_sum1_tab1_1.gif'/>" longdesc="#img_sum1_tab1_1" alt="전자정부 구축으로 " />
							<span id="img_sum1_tab1_1" class="hide">축적된 공공정보 DB의 정비 및 복잡해진 DB의 효율적인 관리가 요구됨에 따라 정보표준화 및 정보의 신뢰성 확보가 주요 이슈로 떠오르고 있습니다. 이에 따라 오랜 기간 축적된 공공정보의 정비와 관리가 필요하며, 선진화된 공공정보서비스를 위한 품질 확보 및 국가차원의 공공정보 품질관리 지원이 필요합니다.</span>
						</p>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum1_3.gif'/>" alt="공공정보 품질관리 현황" /></h4>
						<ul class="depth1_con liType1">
							<li>공공정보 품질관리 체계 부재로 민간에 비해 공공정보 품질 및 관리수준이 저조한 것으로 파악되고 있으며, 민간 평균 오류율은 2.1%를 상회하고 있음.</li>
							<li>주요한 원인으로는 기관 간 마스터 정보 연계시 오류의 발생, 기관 간 원천정보 집계 시 오류의 발생, 구시스템 DB를 신시스템 DB로 전환 시 오류의 발생으로 정리할 수 있음.</li>
							<li>공공정보 품질관리 활동의 수준은 73%가 관리 수준이 낮다고 응답할 정도로 낮게 나타나고 있으며, 그 원인으로는 공공정보 품질 관리 정책과 제도의 부재, 품질관리 전담 인력이 부족함에 따른 외부 업체 전문가의 의존율이 높으며, 비효율적인 품질관리가 많이 나타나고 있기 때문으로 요약됨.</li>
						</ul>
						<p class="mt_10">
							<img src="<c:url value='/images/pdqm/front/summary/img_sum1_tab1_2.gif'/>" longdesc="#img_sum1_tab1_2" alt="공공정보 품질 지표별 오류율이 " />
							<span id="img_sum1_tab1_2" class="hide">민간 평균 오류율 2.1%를 상회하고 있습니다. 이의 주요 원인은 기관 간 마스터 정보 연계 시 오류 발생, 기관 간 원천정보 집계 시 오류 발생, 구시스템 DB로 전환 시 오류 발생 등이 있습니다. 공공정보 품질관리의 활동 수준은 73%가 품질관리수준이 낮다고 응답하였습니다. 수준이 저조한 원인으로는 공공정보 품질 관련 정책과 제도의 부재, 품질관리 전담 인력의 부족, 외부 업체 전문가 의존, 품질 관리체계 미확립으로 인한 일회성 정비 등 비효율적인 품질관리가 많은 것을 꼽을 수 있습니다.</span>
						</p>
					</div>
				</li>

				<!-- tab2 -->
				<li><a href="#header" class="sum1_tab2">공공정보 품질관리 방안</a>
					<div class="tab_conTxt">
						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum1_4.gif'/>" alt="공공정보 품질" /></h4>
						<ul class="depth1_con liType1">
							<li>품질 높은 데이터는‘사용하기에 적합한(Fit for use)’데이터를 수집·저장·활용할 수 있는 상태를 말하거나, 데이터를 활용하는 사용자의 다양한 활용 목적이나, 만족도를 지속적으로 충족시킬 수 있는 수준을 말함. </li>
							<li>품질수준의 측정은 일반적으로 지표기준으로 DB 값이 정확하고 유효한지, DB구조가 완전한지, 데이터 현행화가 적시에 되는 지로 평가하며, DB관리활동의 적합성은 설문과 실사로, 데이터 값의 정량적 측정은 진단 툴을 활용함.</li>
						</ul>
						<p class="mt_10"><img src="<c:url value='/images/pdqm/front/summary/img_sum1_tab2_1.gif'/>" alt="품질의 정의는 품질의 View가 값과 구조의 건전성에서 사용자 중심으로 확장되는 것을 말합니다." /></p>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum1_5.gif'/>" alt="공공정보 품질지표" /></h4>
						<p class="depth1_con mt_10">공공정보 품질의 지표는 준비, 완전성, 일관성, 정확성, 유효성, 보안성, 적시성, 유용성을 지표로 정의하며, 각 지표별 내용과 측정방법은 아래와 같이 나타냄.</p>
						<table class="conTable1 mt_10" summary=" 목차, 주요내용 입니다.">
							<caption>공공정보 품질지표</caption>
							<colgroup>
								<col width="15%"><col width="auto"><col width="25%">
							</colgroup>
							<thead>
								<tr>
									<th>지표</th>
									<th>주요내용(정의)</th>
									<th>측정방법</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="thbg1">준비</th>
									<td>DB의 품질관리를 위해 기본적으로 필요한 관리문서(ERD 등)을 실질적으로 관리하는 지 측정 </td>
									<td class="br_l">실사·설문</td>
								</tr>
								<tr>
									<th class="thbg1">완전성</th>
									<td>DB구축ㆍ운영단계에서 논리적/물리적 설계가 적정한지 측정 </td>
									<td class="br_l">실사·설문·프로파일링</td>
								</tr>
								<tr>
									<th class="thbg1">일관성</th>
									<td>DB↔DB, DB내 테이블 간의 표준준수(ex.도메인, 용어, 코드 등)등이 양호하여 데이터 변경 시 정합성이 확보되는지 측정 </td>
									<td class="br_l">실사·설문·프로파일링·BR</td>
								</tr>
								<tr>
									<th class="thbg1">정확성</th>
									<td>데이터 입력단계에 오류를 방지하기 위한 실제 값의 상태, 입력방법이나 로직 등의 적정한 지 측정 </td>
									<td class="br_l">실사·설문·프로파일링·BR</td>
								</tr>
								<tr>
									<th class="thbg1">유효성</th>
									<td>저장된 데이터가 정의된 기준에 맞게 유효한 정보의 범위와 형식(ex.문자, 숫자 등)으로 저장되는지를 측정 </td>
									<td class="br_l">실사·설문·프로파일링·BR</td>
								</tr>
								<tr>
									<th class="thbg1">보안성</th>
									<td>데이터 오너쉽, 접근관리를 체계적으로 하고 있는지 측정</td>
									<td class="br_l">실사·설문</td>
								</tr>
								<tr>
									<th class="thbg1">적시성</th>
									<td>사용자가 원하는 정보를 제공하기 위해 원하는 응답시간에 적절히 업데이트 된 정보를 보여주는 지를 측정 </td>
									<td class="br_l">실사·설문</td>
								</tr>
								<tr>
									<th class="thbg1">유용성</th>
									<td>사용자가 원하고 있는 정보를 충분히 제공하는지, 정보의 접근이 쉬운지 등 사용자만족도 관점에서 수준을 측정 </td>
									<td class="br_l">실사·설문</td>
								</tr>
							</tbody>
						</table>
						<p>※ 출처 : 공공기관의 데이터베이스 품질관리 매뉴얼(‘10년도 공공정보 품질제고 ISP)</p>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum1_6.gif'/>" alt="공공정보 품질관리 체계" /></h4>
						<p class="mt_10">
							<img src="<c:url value='/images/pdqm/front/summary/img_sum1_tab2_2.gif'/>" longdesc="#img_sum1_tab2_2" alt="국가 차원의 데이터 품질관리는 " />
							<span id="img_sum1_tab2_2" class="hide">법과 제도, 지침, 지원인프라를 근간으로 합니다. 기관 차원의 데이터 품질관리 활동은 계획단계 품질관리, 데이터 구축단계 품질관리, 데이터 운영단계 품질관리, 데이터 활용관계 품질관리의 4단계로 구분할 수 있습니다. 이러한 활동은 품질관리 인프라와 품질관리 정책 및 조직이 지원하게 됩니다. 일반국민과 유관기관은 품질오류 신고를 통하여 품질수준을 높이고, 연계기관은 데이터연계, 제공, 활용을 하고 있습니다. 이러한 체계로 국가와 기관의 비전과 목표에 도달할 수 있습니다.</span>
						</p>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum1_7.gif'/>" alt="공공정보 오류유형과 원인" /></h4>
						<p class="depth1_con">데이터 품질문제는 계획-설계-구축-운영 각 정보생명 주기별로, DB가 단일-연계-집계-통합 성숙단계별로 오류의 원인이 다양하게 존재하며, 관리 수준의 각 단계별로 아래와 같이 그 문제점과 대책을 정리할 수 있음.</p>
						<p class="mt_10">
							<img src="<c:url value='/images/pdqm/front/summary/img_sum1_tab2_3.gif'/>" longdesc="#img_sum1_tab2_3" alt="단일DB는 " />
							<span id="img_sum1_tab2_3" class="hide">데이터 정확성의 부족, 데이터 완전성 결여, 데이터 항목의 유일성 문제 등의 문제점을 가지고 있습니다. 이러한 문제의 원인으로는 입력자의 정보입력 미비, 수기입력, 삭제처리, 숙련인력 이직 및 퇴직등을 들 수 있습니다. 새주소DB가 좋은 사례이며 데이터 정비(프로파일링), 입력단계 AP개선, 문제사안에 따라 재개발, DB모델링 및 품질교육을 대책으로 삼을 수 있습니다. 연계DB는 연계정보 불일치 현상, 업무혼선 발생등의 문제점을 가지고 있습니다. 이러한 문제의 원인으로는 용어 및 코드 표준화 미비, 데이터 컨버젼 문제, 배치와 실시간 연계 미비 등을 들 수 있습니다. 재난정보 공동활용 DB가 좋은 사례이며, 시스템간 데이터 표준화, 용어 및 코드 표준화, 인터페이스 등 재구조화, 데이터 오너십 부여 등을 대책으로 삼을 수 있습니다. 집계DB는 잘못된 통계정보 유통, 정책정보 신뢰도의 저하등의 문제점을 가지고 있습니다. 이러한 문제의 원인으로는 업무규칙 관리부재, 마스터, 메타관리체계의 부재 등을 들 수 있습니다. 지방재정DB가 좋은 사례이며, 지속적인 모니터링, 품질진단 및 개선 실시, 마스터, 메타관리 구축 등을 대책으로 삼을 수 있습니다. 통합DB는 DB의 저품질 서비스 통합, 목표품질 달성 불가등의 문제점을 가지고 있습니다. 이러한 문제의 원인으로는 중장기 품질개선 목표 부재, 데이터 관리프로세스 미비, 현실 변경상황 미반영 등을 들 수 있습니다. 사회복지통합망(행복e음)이 좋은 사례이며, 품질관리 조직운영, 품질개선 전략수립, 데이터 거버넌스 체계 구축 등을 대책으로 삼을 수 있습니다.</span>
						</p>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

