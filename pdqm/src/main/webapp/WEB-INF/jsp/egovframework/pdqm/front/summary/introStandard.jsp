<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : summary3.jsp
  * @Description : 공공정보품질관리 > 품질관리표준 화면
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

<div class="bg_sum">
	<div class="title">
		<div class="location">Home > 공공정보품질관리 > <em>품질관리표준 </em></div>
		<h3><img src="<c:url value='/images/pdqm/front/summary/h3_sum3.gif'/>" alt="품질관리표준" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/summary/h3_sum3_desc.png'/>" class="png24" alt="공공정보 품질관리의 표준인 행정표준코드관리시스템, 행정데이터관리시스템을 소개합니다. 각 표준은 행정기관간 행정정보의 원활한 공동이용을 위하여 수립되었습니다. 더 상세한 내용은 행정표준코드 시스템 홈페이지(https://www.code.go.kr) 와 행정데이터관리 시스템 홈페이지(https://www.adams.go.kr)를 확인하세요." /></p>
	</div>

	<div id="conBox">

		<div class="tab con_list jx">
			<ul>
				<!-- tab1 -->
				<li><a href="#header" class="sum3_tab1">행정표준코드</a>
					<div class="tab_conTxt">
						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum3_1.gif'/>" alt="내용" /></h4>
						<table class="conTable2" summary="행정표준코드 내용 테이블입니다.">
							<colgroup>
								<col width="20%"><col width="auto">
							</colgroup>
							<tr>
								<th>정의</th>
								<td>행정기관간 행정정보의 원활한 공동이용을 도모하기 위하여 각급 기관의 행정업무에 필요한 행정코드를 표준화하여 정해진 절차에 따라 제정, 고시한 행정코드</td>
							</tr>
							<tr>
								<th>추진근거</th>
								<td>
									<dl class="dlType1">
										<dt>전자정부법 제 25조 및 동법 시행령 제33조(표준화)</dt>
										<dd class="bgNone">행정안전부장관은 법 제25조의 규정에 의하여 행정정보의 공동활용에 필요한 각종 행정코드에 대한 표준을 정하여 관보에 고시할 수 있음</dd>
										<dt>사무관리규정 제105조(기기 및 이용기술의 표준화)</dt>
										<dd class="bgNone">행정안전부장관은 사무자동화기기의 효율적 이용 및 사무처리의 표준화를 위하여 필요하다고 인정하는 경우에는 사무자동화기기 이용 기술을 지정할 수 있음</dd>
									</dl>
								</td>
							</tr>
							<tr>
								<th>총괄기관</th>
								<td>행정안전부 정보화전략실 정보기반정책관 정보표준과</td>
							</tr>
							<tr>
								<th>이용기관</th>
								<td>행정표준코드관리시스템에서 시스템 연계 및 다운로드를 통하여 행정표준코드정보를 제공받아 기관 내 시스템에 적용 및 활용</td>
							</tr>
							<tr>
								<th>행정표준코드<br />적용 기준 방침</th>
								<td>
									<ol class="olType1">
										<li>① 신규 정보화 업무 추진시, 행정표준코드를 반드시 사용하고, 행정표준코드 적용이 불가할 경우 사전에 행정자치부와 협의 후 사용
											<ul class="depth1_con liType2">
												<li>외주용역 추진시 제안요청서에 행정표준코드의 사용을 명시</li>
												<li>용역사업자가 임의의 행정코드를 사용하지 않도록 관리감독</li>
											</ul>
										</li>
										<li>② 기존 업무 중 행정표준코드를 미활용하고 있는 경우는 행정자치부와 협의 후 행정표준코드로 적극 전환하여 시스템 간의 상호운용성 제고</li>
										<li>③ 행정표준코드의 최신 자료는 행정표준코드관리시스템을 이용</li>
										<li>④ 행정기관이 공동으로 이용하는 정보화 업무, 기관 간 시스템 연계가 필요한 업무 중 행정표준코드를 활용하지 않은 경우는  행정표준코드의 전환계획을 수립하여 적극적인 전환 실시</li>
										<li>⑤ 행정표준코드가 제정되어 있지 않은 경우는 해당코드의 유사성, 공동활용성 등을 감안하여 해당업무의 소관부처와 협의하여 신규제정</li>
										<li>⑥ 국가기관에서 표준으로 확정·시행한 한국산업규격 또는 국제표준 등의 관련코드는 별도로 행정표준코드를 제정하지 않고도  업무에 적용 가능</li>
										<li>⑦ 표준화 대상코드의 소관부처가 불명확한 경우는 행정자치부가 표준화 추진</li>
									</ol>
								</td>
							</tr>
						</table>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum3_4.gif'/>" alt="절차" /></h4>
						<ul class="liType1 depth1_con">
							<li>주체 : 중앙행정기관 (대통령 및 국무총리 직속기관 포함) 및 그 소속기관, 지방자치단체</li>
							<li>추진방법 : 소관부처는 제·개정 코드에 관한 기술적 사항과 코드의 변경관리방법에 대하여 행정안전부와 사전 협의 후 제·개정 사항을 작성하여 행정안전부에 제출</li>
						</ul>
						<p><img src="<c:url value='/images/pdqm/front/summary/img_sum3_box1.gif'/>" alt="각급 행정기관에서 행정표준코드의 제·개정(안) 작성, 소관부처에서 행정표준코드의 제·개정(안) 접수 및 검토, 기술적 사항 및 코드변경관리방법 사전 협의, 행정표준코드의 제·개정(안)을 제출합니다." /></p>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum3_5.gif'/>" alt="기관별 역할" /></h4>
						<div class="box_supB"><div class="box_supT">
							<dl class="dl_chart">
								<dt><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_2_1.gif'/>" alt="각급 행정기관" /></dt>
								<dd><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_2_1_1.gif'/>" alt="행정정보화 시스템 구축·운영시 행정표준코드 이용" /></dd>
								<dd><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_2_1_2.gif'/>" alt="행정표준코드의 제·개정이 필요한 경우 행정표준코드 제·개정 제안서 및 행정표준코드 세부 코드표를 작성하여 소관부처에 의뢰" /></dd>
							</dl>
							<dl class="dl_chart">
								<dt class="second"><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_3_1.gif'/>" alt="행정표준코드 소관부처" /></dt>
								<dd><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_3_1_1.gif'/>" alt="행정표준코드 제·개정 제안서, 행정표준코드 세부코드 및 행정표준코드 변경관리방안을 최종 작성" /></dd>
								<dd><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_3_1_2.gif'/>" alt="유관기관이 있는 경우에는 관련기관 간 의견조정 협의결과 제출" /></dd>
								<dd><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_3_1_3.gif'/>" alt="공통 행정업무용 코드를 적극 발굴하여 행정표준코드 제정 추진" /></dd>
								<dd><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_3_1_4.gif'/>" alt="행정표준코드의 구성체계 변경 없이 세부코드를 추가·수정할 경우는 자체적으로 확정 후 행정 자치부에 문서로 통보" /></dd>
							</dl>
							<dl class="dl_chart">
								<dt class="second"><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_4_1.gif'/>" alt="행정안전부" /></dt>
								<dd><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_4_1_1.gif'/>" alt="행정표준코드의 소관부처와  제·개정 코드 구성체계 등의 기술적 협의" /></dd>
								<dd><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_4_1_2.gif'/>" alt="행정표준코드 제·개정  제안서, 세부 코드표 및 변경관리방안 및 의견조정 협의결과 등을 검토하고 표준화 과정을 거쳐 전자정부추진분과위원회에 상정" /></dd>
								<dd><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_4_1_3.gif'/>" alt="전자정부추진분과위원회 심의 후 확정·고시" /></dd>
								<dd><img src="<c:url value='/images/pdqm/front/summary/txt_sum3_4_1_4.gif'/>" alt="확정된 행정표준코드를 행정표준코드관리시스템에 등록 및 제공" /></dd>
							</dl>
						</div></div>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum3_6.gif'/>" alt="기대효과" /></h4>
						<ul class="depth1_con liType1">
							<li>행정표준코드 이용 활성화에 따른 정보의 공동활용 촉진 및 전자정부 구현을 위한 확고한 기반구축</li>
							<li>표준 적용을 통한 시스템 구축, 운영비용 감소 및 상호 운용성 증대</li>
						</ul>

						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum3_3.gif'/>" alt="첨부파일" /></h4>
						<table class="conTable2" summary="첨부파일 테이블입니다.">
							<colgroup>
								<col width="20%"><col width="auto">
							</colgroup>
							<tr>
								<th>첨부파일</th>
								<td>
									<c:import url="/cmm/fms/selectFileInfs.do" charEncoding="utf-8">
										<c:param name="param_atchFileId" value="FILE_000000000001531" />
									</c:import>

								</td>
							</tr>
						</table>
					</div>
				</li>

				<!-- tab2 -->
				<li><a href="#header" class="sum3_tab2">행정정보DB표준화</a>
					<div class="tab_conTxt">
						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum3_1.gif'/>" alt="내용" /></h4>
						<table class="conTable2" summary="내용 테이블입니다.">
							<colgroup>
								<col width="20%"><col width="auto">
							</colgroup>
							<tr>
								<th>정의</th>
								<td>행정 정보 DB의 구축과 관리, 활용에 관한 추진 체계. 행정 기관들이 보유한 자료를 수요자 중심으로 데이터베이스화를 추진하고   관리함으로써 공동 이용 활성화를 도모하고, 국민들의 행정 정보 수요에 대한 입체적 서비스를 제공하기 위한 표준화 시스템  </td>
							</tr>
							<tr>
								<th>추진근거</th>
								<td>
									<ul class="liType1">
										<li>행정DB 구축에 대한 표준화 및 구축된 행정DB 의 운영관리에 대한 표준 적용과 함께 데이터 품질관리, 데이터보안관리 방안을 확보하여 체계적이고 종합적인 행정 DB 관리체계를 구축함으로써 행정정보의 공동이용의 활성화에 기여함</li>
										<li>전자정부 지원사업 및 행정정보데이터베이스 구축사업 등에 있어 각종 행정정보데이터베이스 구축 시에 적용할 표준을 정함으로써 범정부적 차원에서 추진하고 있는 행정정보 공유 활성화에 기여함</li>
										<li>행정정보데이터베이스 구축 및 운영 시에 적용할 데이터 품질 및 보안관리 방안을 제시함으로써, 행정기관이 구축, 운영, 관리하는 행정정보의 품질을 관리하고 신뢰성을 확보하여 행정정보의 공유 활성화에 기여함</li>
									</ul>

								</td>
							</tr>
							<tr>
								<th>총괄기관</th>
								<td>행정안전부 정보화전략실 정보기반정책관 정보표준과</td>
							</tr>
							<tr>
								<th>이용기관</th>
								<td>행정데이터관리시스템에서 시스템 연계 및 다운로드를 통하여 행정정보DB표준화 정보를 제공받아 기관 내 시스템에 적용 및 활용</td>
							</tr>
							<tr>
								<th>구성내용</th>
								<td>행정정보데이터베이스의 구축 , 운영 , 관리를 위한 종합 DB 관리지침으로서 구축 · 운영관리에 대한 표준화지침 , 데이터 품질관리지침 , 데이터 보안관리지침으로 구성됨</td>
							</tr>
							<tr>
								<th>표준화 지침</th>
								<td>
									<ol class="olType1">
										<li>① <strong>지침</strong> : 행정 DB 의 구축 및 운영관리에 대한 업무 정의 및 추진체계와 각급 기관 담당자들의 업무 수행에 대한 전반적인 원칙을 규정</li>
										<li>② <strong>시행지침</strong> : 행정 DB 구축 및 운영관리에 참여하는 사업자를 위한 상세 수행 내용을 규정하여 사업자의 업무 수행과 각급 기관의 관리포인트를 규정</li>
									</ol>

								</td>
							</tr>
						</table>


						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum3_2.gif'/>" alt="구성" /></h4>
						<table class="conTable1" summary="구성, 구성, 내용입니다.">
							<colgroup>
								<col width="20%"><col width="20%"><col width="auto">
							</colgroup>
							<thead>
								<tr>
									<th>구분</th>
									<th>구성</th>
									<th>내용</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th rowspan="9" class="thbg1">지침</th>
									<td class="br_r">총칙</td>
									<td>지침의 제정 목적과 정의 , 적용범위를 규정 </td>
								</tr>
								<tr>
									<td class="br_r">추진체계</td>
									<td>행정 DB 의 구축 및 운영관리에 필요한 추진체계로서 역할과 임무를 규정</td>
								</tr>
								<tr>
									<td class="br_r">구축공정관리</td>
									<td>행정 DB 구축에 대한 공정을 정의하고 각 공정에서 수행하고 관리할 사항들을 규정</td>
								</tr>
								<tr>
									<td class="br_r">감리</td>
									<td>행정 DB 구축에 대한 감리를 규정</td>
								</tr>
								<tr>
									<td class="br_r">운영관리</td>
									<td>구축된 행정 DB 의 운영관리업무의 범위와 수행 내용 , 관리 항목들을 규정</td>
								</tr>
								<tr>
									<td class="br_r">운영아웃소싱</td>
									<td>운영관리 업무의 아웃소싱 시 운영관리자와 아웃소싱 사업자의 업무 수행내용과 관리항목들을 규정</td>
								</tr>
								<tr>
									<td class="br_r">품질 및 보안관리</td>
									<td>구축·운영 중인 행정 DB 의 품질 및 보안관리 의무에 대해 규정</td>
								</tr>
								<tr>
									<td class="br_r">정기점검 및 평가</td>
									<td>구축된 행정 DB 의 운영관리 , 품질 , 보안 업무 수행에 대한 점검 및 평가에 대한 사항을 규정</td>
								</tr>
								<tr>
									<td class="br_r">부록</td>
									<td>지침의 내용을 수행하는데 필요한 제반 서식과 명세규칙 , 참조할 별첨들을 정의</td>
								</tr>
								<tr>
									<th rowspan="4" class="thbg1">시행지침</th>
									<td class="br_r">총칙</td>
									<td>시행지침의 제정 목적과 정의를 규정 </td>
								</tr>
								<tr>
									<td class="br_r">구축공정관리</td>
									<td>행정 DB 의 구축 공정을 수행함에 있어서 사업자가 수행할 상세한 기술적·관리적 의무 사항들을 규정 </td>
								</tr>
								<tr>
									<td class="br_r">운영관리</td>
									<td>구축된 행정 DB 의 운영관리 업무를 수행하는데 있어서 운영관리자와 아웃소싱 사업자가 수행할 상세 내용과 관리항목들을 규정 </td>
								</tr>
								<tr>
									<td class="br_r">부록</td>
									<td>시행지침의 내용을 수행하는데 필요한 제반 서식과 명세규칙 , 참조할 별첨들을 정의 </td>
								</tr>
							</tbody>
						</table>


						<h4><img src="<c:url value='/images/pdqm/front/summary/h4_sum3_3.gif'/>" alt="첨부파일" /></h4>
						<table class="conTable2" summary="첨부파일 테이블입니다.">
							<colgroup>
								<col width="20%"><col width="auto">
							</colgroup>
							<tr>
								<th>첨부파일</th>
								<td>
									<c:import url="/cmm/fms/selectFileInfs.do" charEncoding="utf-8">
										<c:param name="param_atchFileId" value="FILE_000000000001532" />
									</c:import>
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

