<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : summary2.jsp
  * @Description : 공공정보품질관리 > 법·지침·매뉴얼 화면
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
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
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

<div class="bg_sum">
	<div class="title">
		<div class="location">Home > 공공정보품질관리 > <em>법·지침·매뉴얼</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/summary/h3_sum2.gif'/>" alt="법·지침·매뉴얼" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/summary/h3_sum2_desc.png'/>" class="png24" alt="공공기관 데이터베이스 품질관리의 근간인 전자정부법 및 국가정보화기본법의 소개와 지침의 내용 및 매뉴얼과 그 해설서를 제공합니다. " /></p>
	</div>

	<div id="conBox">
		<div class="tab con_list jx">
			<ul>
				<!-- tab1 -->
				<li><a href="#header" class="sum2_tab1">관련 법</a>
					<div class="tab_conTxt">
						<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup3_1.gif'/>" alt="개요" /></h4>
						<ul class="depth1_con liType1">
							<li>국가 정보화의 기본 방향은 지속 가능한 지식정보사회의 실현에 이바지하고 국민의 삶의 질의 높임</li>
							<li>이러한 정책 방향을 일관성 있게 추진하기 위한 국가 차원의 데이터 품질관리 정책 방향은 “지식정보자원의 표준화 및 효율적 관리를 통한 공공 정보의 활용 촉진”으로 요약 가능함</li>
							<li>데이터 품질관리 정책은 데이터베이스를 포함하는 정보자원의 효율적 관리 및 표준화, 이를 통한 연계 및 활용의 촉진 등을 규정하는 「국가정보화 기본법」및「전자정부법」등에 근거를 둠</li>
						</ul>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum3_1.gif'/>" alt="내용" /></h4>
						<table class="conTable2" summary="품질관리수준 자가진단 기본정보 선택 테이블입니다.">
							<caption>관련 법 내용</caption>
							<colgroup>
								<col width="20%"><col width="auto"><col width="10%">
							</colgroup>
							<tbody>
								<tr>
									<th>전자정부법</th>
									<td class="bd_r">행정업무의 전자적 처리를 위한 기본원칙 등을 규정함으로써 전자정부의 구현을 위한 사업을 촉진시키고, 행정기관의 생산성·투명성 및 민주성을 높여 지식정보화 시대의 국민의 삶의 질을 향상시키기 위해 제정한 법<br />(제12차 (타)일부개정 2011.4.12 법률 제10580호)</td>
									<td><a href="http://likms.assembly.go.kr/law/jsp/law/LawThree.jsp?WORK_TYPE=LAW_THREE&amp;LAW_ID=A1730&amp;PROM_NO=10580&amp;PROM_DT=20110412" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/btn/btn_s_original.gif'/>" alt="원문보기" /></a></td>
								</tr>
								<tr>
									<th>국가정보화기본법</th>
									<td class="bd_r">국가정보화의 기본 방향과 관련 정책의 수립·추진에 필요한 사항을 규정함으로써 지속 가능한 지식정보사회의 실현에 이바지하고 국민의 삶의 질을 높이는 것을 목적으로 하는 법(제17차 (타)일부개정 2011.5.19 법률 제10629호)</td>
									<td><a href="http://likms.assembly.go.kr/law/jsp/law/LawThree.jsp?WORK_TYPE=LAW_THREE&amp;LAW_ID=A0025&amp;PROM_NO=10629&amp;PROM_DT=20110519" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/btn/btn_s_original.gif'/>" alt="원문보기" /></a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>

				<!-- tab2 -->
				<li><a href="#header" class="sum2_tab2">품질관리 지침</a>
					<div class="tab_conTxt">
						<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup3_1.gif'/>" alt="개요" /></h4>
						<table class="conTable2" summary="품질관리 지침 개요 입니다.">
							<caption>품질관리 지침 개요</caption>
							<colgroup>
								<col width="20%"><col width="auto">
							</colgroup>
							<tbody>
								<tr>
									<th>제정이유</th>
									<td>국가정보화를 추진하는 과정에서 생산·유통 또는 활용되는 데이터베이스 품질을 관리하기 위한 세부사항을 규정하여 정부의 신뢰도 향상은 물론 정보의 연계·융합·통합의 활성화를 통한 새로운 부가가치창출에 기여코자 함</td>
								</tr>
								<tr>
									<th>추진배경</th>
									<td>
										<dl class="dlType1">
											<dt>오랜 기간 축적된 데이터베이스 정비 및 관리 필요성 점차 부각</dt>
											<dd>공공기관 정보화가 양적 팽창에 치중하여 축적된 데이터베이스의 정확성, 유용성 등을 확보하기 위한 정책적 관심과 노력 미흡</dd>
											<dd>데이터베이스 오류 정비 및 복잡한 DB구조 개선에 대한 잠재수요는 점차 증가</dd>
											<dt>데이터베이스 연계·활용을 위해서는 연계 데이터의 품질 확보 및 유지가 필수 조건</dt>
											<dd>데이터베이스 연계가 보편화된 공공기관 정보화 환경에서 개별 기관만의 데이터베이스 품질개선 으로는 한계</dd>
											<dt>고품질 지식정보 대민서비스 확대로 국가 지식경쟁력 강화 필요</dt>
											<dd>공공기관의 데이터베이스 민간 활용 촉진을 위해서는 기업·국민의 높아진 정보 수요에 부합할 수 있고 신뢰할 수 있는 데이터베이스 품질 확보 필요</dd>
										</dl>
									</td>
								</tr>
								<tr>
									<th>추진경위</th>
									<td>
										<ul class="liType1">
											<li>공공정보 품질제고를 위한 전문용역 : ‘10. 9. 1~ '11. 3. 15</li>
											<li>공공기관의 데이터베이스 품질개선 관련 설명회 : ‘11. 4. 27</li>
											<li>품질관리 지침(안) 의견조회 및 행정예고 : ‘11. 5. 12~ 6. 7</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th>적용범위</th>
									<td>국가기관, 지방자치단체 및 국가정보화기본법 제3조10호에 따른 공공기관</td>
								</tr>
							</tbody>
						</table>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum3_1.gif'/>" alt="내용" /></h4>
						<table class="conTable2" summary="주요내용, 첨부파일 입니다.">
							<caption>품질관리 지침 내용</caption>
							<colgroup>
								<col width="20%"><col width="auto">
							</colgroup>
							<tbody>
								<tr>
									<th>주요내용</th>
									<td>
										<ul>
											<li>정보화계획 수립 시 데이터베이스 품질관리계획 포함 의무화</li>
											<li>각 기관에 국민, 기관 등 데이터베이스 수요자들로부터의 데이터오류 신고접수 및 처리체계 마련</li>
											<li>연계 데이터의 품질ㆍ표준화 요건에 대한 기준 제시</li>
											<li>범정부 차원의 데이터베이스 품질관리 정책ㆍ표준지원을 위한 품질관리지원센터 설치ㆍ운영 근거 마련</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td>
										<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf 파일" /> 20110704 품질관리지침(고시2011-25호).pdf</a> (용량 : 234KB)<br />
										<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf 파일" /> 공공정보 데이터베이스 품질관리 지침 해설서.pdf</a>  (용량 : 850KB)
									</td>
								</tr>
							</tbody>
						</table>
						<p class="mt_20">
							<img src="<c:url value='/images/pdqm/front/summary/img_sum2_tab2_1.gif'/>" alt="총칙은" longdesc="#img_sum2_tab2_1" />
							<span id="img_sum2_tab2_1" class="hide">제1조 목적과 제2조 정의로 구성되며, 제3조 공공기관의 데이터베이스 품질관리 계획의 수립, 제4조 공공기관의 데이터베이스 품질 오류신고 접수 및 처리, 제5조 공공기관의 데이터베이스 표준화, 제6조 연계데이터 품질관리, 제7조 품질관리지원센터로 구성됩니다.</span>
						</p>
					</div>
				</li>

				<!-- tab3 -->
				<li><a href="#header" class="sum2_tab3">품질관리 매뉴얼</a>
					<div class="tab_conTxt">
						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum2_1.gif'/>" alt="개요" /></h4>
						<ul class="depth1_con liType1">
							<li>“공공기관의 데이터베이스 품질관리 지침” 제정·고시(‘11.7.4)에 따른 개별 <strong class="fc_blue1">공공기관의 데이터 품질관리 실행을 위한 세부 매뉴얼 필요</strong></li>
							<li>공공기관 담당자 및 이해관계자가 <strong class="fc_blue1">데이터 품질관리를 효율적으로 수행토록 실무 차원의 내용으로 구성</strong></li>
						</ul>
						<p class="mt_10">
							<img src="<c:url value='/images/pdqm/front/summary/img_sum2_tab3_1.gif'/>" alt="공공기관 데이터베이스 품질관리 지침(11년 7월 4일 제정고시)" longdesc="#img_sum2_tab3_1"/>
							<span id="img_sum2_tab3_1" class="hide">1.추진배경: 공공기관 보유 데이터의 개방·공유, 연계·활용을 통한 서비스 확대, 국가정보화를 통해 축적된 데이터의 품질 확보가 필요 2.지침목적(제1조): 국가정보화기본법에 근거하여 공공기관이 정보화 과정에서 생산·유통 또는 활용되는 데이터베이스 품질을 관리하기 위한 세부사항을 규정 3.주요내용: 데이터베이스 품질관리 계획 수립 (제3조), 품질오류 신고 접수 및 처리 (제4조), 데이터베이스 표준화 (제5조), 연계데이터 품질관리 (제6조), 품질관리 지원센터 (제7조) 이러한 지침에 근거하여 품질관리 세부 실행 매뉴얼이 필요하게 되었습니다. 공공기관 데이터베이스 품질관리 매뉴얼 1.총론: 추진배경/목적, 매뉴얼 구성/활용, 데이터 품질관리  이해 2.데이터품질관리: 국가 차원의 데이터  품질관리, 기관 차원의 데이터 품질관리 3.데이터 품질 진단·개선: 데이터 품질 진단 및 개선 절차 정의, 절차 별 세부 수행방안  제시 4.붙임: 관련서식, 용어설명, 지침 조항 별 해설 등</span>
						</p>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum2_2.gif'/>" alt="주요내용" /></h4>
						<dl class="depth1_con dlType1">
							<dt class="bgNone">① 총론</dt>
							<dd class="bgNone">공공정보 품질관리 매뉴얼 개발의 배경과 목적, 매뉴얼의 구성 체계 및 활용 방안, 데이터 품질관리의 개념 및 주요 구성 요소에 대한 기본 지식을 제공</dd>
						</dl>
						<dl class="depth1_con dlType1">
							<dt class="bgNone">② 데이터 품질관리</dt>
							<dd>국가 차원의 데이터 품질관리와 기관 차원의 데이터 품질관리로 체계화</dd>
							<dd>국가 차원의 데이터 품질관리는 <strong>법·제도, 지침, 지원 인프라</strong>로 구성</dd>
							<dd>기관 차원의 데이터 품질관리는 기관의 비전과 목표를 지향하는 <strong>품질관리 정책·조직</strong>, 계획-구축-운영-활용의 <strong>단계별 품질관리 활동</strong> 및 이를 지원하는 <strong>품질관리 인프라</strong>로 구성 </dd>
						</dl>
						<p class="mt_10">
							<img src="<c:url value='/images/pdqm/front/summary/img_sum2_tab3_2.gif'/>" alt="국가 차원의 데이터 품질관리는" longdesc="#img_sum2_tab3_2"/>
							<span id="img_sum2_tab3_2" class="hide">법과 제도, 지침, 지원인프라를 근간으로 합니다. 기관 차원의 데이터 품질관리 활동은 계획단계 품질관리, 데이터 구축단계 품질관리, 데이터 운영단계 품질관리, 데이터 활용관계 품질관리의 4단계로 구분할 수 있습니다. 이러한 활동은 품질관리 인프라와 품질관리 정책 및 조직이 지원하게 됩니다. 일반국민과 유관기관은 품질오류 신고를 통하여 품질수준을 높이고, 연계기관은 데이터연계, 제공, 활용을 하고 있습니다. 이러한 체계로 국가와 기관의 비전과 목표에 도달할 수 있습니다.</span>
						</p>
						<dl class="depth1_con dlType1 mt_10">
							<dt class="bgNone">③ 데이터 품질관리 진단 및 개선</dt>
							<dd>공공정보 품질진단 및 개선사업 결과를 기반으로 데이터 품질 진단 및 개선 절차를 정의</dd>
							<dd>데이터 품질 진단 및 개선 절차는 <strong class="fc_blue1">1.진단정의 → 2.품질진단 →  3.결과분석 → 4.개선계획 → 5.개선실시 → 6.통제</strong>의 6 단계로 정의</dd>
						</dl>
						<p class="mt_10">
							<img src="<c:url value='/images/pdqm/front/summary/img_sum2_tab3_3.gif'/>" alt="데이터 품질 진단 및 개선:" longdesc="#img_sum2_tab3_3" />
							<span id="img_sum2_tab3_3" class="hide">1.진단정의, 2.품질진단, 3.결과분석, 4.개선계획, 5.개선실시, 6.통제. 단계를 거쳐 데이터 품질관리를 계획하고 데이터구축, 데이터베이스 생성과 저장, 활용이 가능합니다.</span>
						</p>
						<table class="conTable1 mt_10" summary=" 단계, 정의 입니다.">
							<caption>품질관리 매뉴얼 주요내용</caption>
							<colgroup>
								<col width="20%"><col width="auto">
							</colgroup>
							<thead>
								<tr>
									<th>단계</th>
									<th>정의</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="thbg1">1. 진단계획<br />(Define)</th>
									<td>품질 진단 대상 데이터에 대한 현황 및 주요 이슈 파악을 통해 진단 방향을 정립하고, 구체적인 품질 진단 계획을 수립</td>
								</tr>
								<tr>
									<th class="thbg1">2. 품질진단<br />(Measure)</th>
									<td>품질 진단 대상에 대하여 값·구조 진단, 업무규칙 진단, 품질 관리 체계 수준 진단 등 품질 진단을 실시</td>
								</tr>
								<tr>
									<th class="thbg1">3. 결과분석<br />(Analyze)</th>
									<td>품질 진단 결과에 따른 품질 오류 식별 및 원인을 분석하여 개선과제를 정의하여 품질 개선 계획으로 전환</td>
								</tr>
								<tr>
									<th class="thbg1">4. 개선계획<br />(Improvement Plan)</th>
									<td>결과 분석에 따른 개선 대상(데이터 값, 표준화, 응용 프로그램, 품질관리체계 등)을 식별하고 세부 개선 계획을 수립</td>
								</tr>
								<tr>
									<th class="thbg1">5. 개선실시<br />(Implement)</th>
									<td>개선 계획에 의거 데이터 품질 개선활동(품질 관리 체계 수립, 표준 수립, 데이터 보정, 비즈니스 로직 보정 등)을 실시</td>
								</tr>
								<tr>
									<th class="thbg1">6. 통제<br />(Control)</th>
									<td>품질 진단 및 개선활동에 대한 결과를 정리하여 최종 보고서를 작성하고, 관련 산출물을 정리</td>
								</tr>
							</tbody>
						</table>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum2_3.gif'/>" alt="목차" /></h4>
						<table class="conTable1" summary=" 목차, 주요내용 입니다.">
							<caption>품질관리 매뉴얼 목차</caption>
							<colgroup>
								<col width="20%"><col width="28%"><col width="auto">
							</colgroup>
							<thead>
								<tr>
									<th colspan="2">목차</th>
									<th>주요내용</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th rowspan="9" class="br_r">① 총 론<br /><a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_s_download.gif'/>" alt="pdf 다운로드" /></a></th>
									<td class="br_r">1. 추진배경 및 목적</td>
									<td>매뉴얼 개발의 추진 배경 및 목적을 설명</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">1.1 추진배경</span></td>
									<td>매뉴얼 개발의 추진 배경</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">1.2 목적</span></td>
									<td>매뉴얼 제작 의도 및 목적 </td>
								</tr>
								<tr>
									<td class="br_r">2. 매뉴얼의 구성 및 활용</td>
									<td>매뉴얼의 구성 체계 및 이해관계자별 활용 방안 설명</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">2.1 매뉴얼의 구성</span></td>
									<td>매뉴얼의 각 장에 대한 구성 및 내용 요약</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">2.2 매뉴얼의 활용</span></td>
									<td>기관 실무자 및 이해관계자별 매뉴얼 활용 방안</td>
								</tr>
								<tr>
									<td class="br_r">3. 데이터 품질관리 이해</td>
									<td>데이터 품질에 대한 기본 개념 및 관련 지식, 필요성 설명</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">3.1 데이터 품질관리 개념</span></td>
									<td>데이터 품질관리에 대한 용어 정의·개념·주요내용</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">3.2 데이터 품질관리 필요성</span></td>
									<td>데이터 품질관리의 필요성 및 중요성 설명</td>
								</tr>
								<tr>
									<th rowspan="7" class="br_r">② 데이터 품질관리<br /><a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_s_download.gif'/>" alt="pdf 다운로드" /></a></th>
									<td class="br_r">1. 개요</td>
									<td>공공기관 데이터 품질관리 체계(프레임워크) 정의</td>
								</tr>
								<tr>
									<td class="br_r">2. 국가 차원의 데이터 품질관리</td>
									<td>국가차원의 품질관리 정책(법·제도, 지침)과 지원인프라(기술, 도구) 설명</td>
								</tr>
								<tr>
									<td class="br_r">3. 기관 차원의 데이터 품질관리</td>
									<td>기관 차원의 품질관리 구성요소 정의 및 요약</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">3.1 계획단계 품질관리</span></td>
									<td>데이터 품질관리 계획 시 포함해야 할 주요 내용(품질관리 목표설정, 중점 품질관리대상 선정 등) 및 고려사항 설명</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">3.2 구축단계 품질관리</span></td>
									<td>구축단계 품질관리 활동(표준화, 산출물관리 등) 정의, 각 활동별 세부 내용, 추진 시 고려사항, 사례</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">3.3 운영단계 품질관리</span></td>
									<td>운영단계 품질관리 활동(품질 진단·개선 등) 정의, 각 활동별 세부 내용, 추진 시 고려사항, 사례</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">3.4 활용단계 품질관리</span></td>
									<td>활용단계 품질관리 활동(오류신고관리 등) 정의, 각 활동별 세부 내용, 추진 시 고려사항, 사례</td>
								</tr>
								<tr>
									<th rowspan="8" class="br_r">③ 데이터 품질<br />진단 및 개선<br /><a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_s_download.gif'/>" alt="pdf 다운로드" /></a></th>
									<td class="br_r">1. 개요</td>
									<td>데이터 품질 진단 및 개선 절차 (6단계) 정의 및 요약</td>
								</tr>
								<tr>
									<td class="br_r">2. 품질 진단 및 개선 절차</td>
									<td></td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">2.1 진단계획</span></td>
									<td>진단계획 단계의 세부 수행 절차, 입/출력물, 관련도구, 예시</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">2.2 품질진단</span></td>
									<td>품질진단 단계의 세부 수행 절차, 입/출력물, 관련도구, 예시</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">2.3 결과분석</span></td>
									<td>결과분석 단계의 세부 수행 절차, 입/출력물, 관련도구, 예시</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">2.4 개선계획</span></td>
									<td>개선계획 단계의 세부 수행 절차, 입/출력물, 관련도구, 예시</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">2.5 개선실시</span></td>
									<td>개선실시 단계의 세부 수행 절차, 입/출력물, 관련도구, 예시</td>
								</tr>
								<tr>
									<td class="br_r"><span class="ml_15">2.6 결과보고</span></td>
									<td>결과보고 단계의 세부 수행 절차, 입/출력물, 관련도구, 예시</td>
								</tr>
							</tbody>
						</table>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum2_4.gif'/>" alt="붙임" /></h4>
						<table class="conTable2" summary="첨부파일 테이블입니다.">
							<caption>품질관리 매뉴얼 첨부파일</caption>
							<colgroup>
								<col width="20%"><col width="auto">
							</colgroup>
							<tr>
								<th>첨부파일</th>
								<td>
									<ul>
										<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_hwp.gif'/>" alt="hwp 파일" /> [붙임1] 관련서식.hwp</a> (용량 : 234KB)</li>
										<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf 파일" /> [붙임2] 용어 정의.pdf</a>(용량 : 850KB)</li>
										<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf 파일" /> [붙임3] 지침 조문별 해설.pdf</a>(용량 : 850KB)</li>
										<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf 파일" /> [붙임4] 품질관리수준 체크리스트.pdf</a>(용량 : 850KB)</li>
										<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf 파일" /> [붙임5] 지표별 품질 체크리스트.pdf</a>(용량 : 850KB)</li>
										<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf 파일" /> [붙임6] 지표별 품질기준 및 측정방법.pdf</a>(용량 : 850KB)</li>
										<li><a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf 파일" /> [붙임7] 품질오류유형.pdf</a>(용량 : 850KB)</li>
									</ul>
								</td>
							</tr>
						</table>
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

