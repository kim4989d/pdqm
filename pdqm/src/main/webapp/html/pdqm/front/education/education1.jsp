<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : education1.jsp
  * @Description : 품질관리교육 > 교육안내
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
<%@ include file="/html/pdqm/include/lnb4.jsp" %>

<!-- contents영역시작 -->

<div class="bg_edu">
	<div class="title">
		<div class="location">Home > 품질관리교육 > <em>교육 안내</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/education/h3_edu1.gif'/>" alt="교육 안내" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/education/h3_edu1_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터에서는 공공정보 품질관리에 대한 사용자의 이해를 높이고 사업에 대한 사회적 합의를 통하여, 공공정보의 품질을 개선하고자 교육 과정을 마련하였습니다.  적극적인 교육 참여를 부탁드리며 알찬 교육 과정을 마련하는데 최선을 다하고자 합니다." /></p>
	</div>

	<div id="conBox">
		<div class="tab con_list jx">
			<ul>
				<!-- tab1 -->
				<li><a href="#header" class="edu1_tab1">품질관리 교육</a>
					<div class="tab_conTxt">
						<h4><img src="<c:url value='/images/pdqm/front/education/h4_edu1_tab1_1.gif'/>" alt="품질관리 교육" /></h4>
						<p class="depth1_con">품질관리 교육은 DQ에 관한 정책소개와 수행방법론으로 구성되며, 이를 통하여 DQ에 관한 소양과 실행역량을 향상시켜 각 기관의 DQ수준을 향상시키고자 합니다.</p>
						<p class="mt_10">
							<img src="<c:url value='/images/pdqm/front/education/img_edu1_tab1_1.gif'/>" longdesc="#img_com_tab1_1" alt="공공정보 품질관리 지원센터 구성도" />
						</p>
					</div>
				</li>

				<!-- tab2 -->
				<li><a href="#header" class="edu1_tab2">교육과정</a>
					<div class="tab_conTxt">
						<h4><img src="<c:url value='/images/pdqm/front/education/h4_edu1_tab2_1.gif'/>" alt="품질정책 분과 커뮤니티" /></h4>
						<p class="mt_10">
							<img src="<c:url value='/images/pdqm/front/education/img_edu1_tab2_1.gif'/>" longdesc="#img_com_tab2_1" alt="공공정보 품질관리 지원센터의 품질정책" />
						</p>
						<h5 class="blue">범정부 차원의 데이터 품질 정책 수립을 위해 업계 및 기관, 학계전문가 공공정보 품질관리 지원센터의 정책담당자가 상호의사교환 및 소통 할 수 있는 장입니다.</h5>
						<h5 class="blue">핵심 주제</h5>
						<ul class="depth1_con1 liType4 mt_5">
							<li>범정부 차원에서 마련해야 할 새로운 데이터 품질에 관한 정책을 수립하기 위해 토론</li>
							<li>현재 마련되어 있는 데이터베이스 품질관리 지침의 개정에 관해 토론</li>
							<li>기타, 데이터 품질관리 및 데이터베이스 품질에 관한 정책 수립에 관한 토론</li>
						</ul>
					</div>
				</li>

				<!-- tab3 -->
				<li><a href="#header" class="edu1_tab3">교육코스</a>
					<div class="tab_conTxt">
						<h4><img src="<c:url value='/images/pdqm/front/education/h4_edu1_tab3_1.gif'/>" alt="품질정책 분과 커뮤니티" /></h4>
						<p class="mt_10">
							<img src="<c:url value='/images/pdqm/front/education/img_edu1_tab3_1.gif'/>" longdesc="#img_com_tab3_1" alt="공공정보 품질관리 지원센터의 품질진단" />
						</p>
						<h5 class="blue">기관차원에서 추진을 준비하거나, 추진 중에 있는 데이터 품질진단 활동에 대한 개선점 및 진단사례를 공유하여 품질 진단의 수준을 향상시키기 위한 장입니다.</h5>
						<h5 class="blue">핵심 주제</h5>
						<ul class="depth1_con1 liType4 mt_5">
							<li>기관의 업무 특성 및 데이터 유형에 맞는 값, 구조 진단 방법에 대한 토론</li>
							<li>기관의 업무 특성에 맞게 업무규칙(BR) 도출 및 업무규칙 작성을 위한 방안에 관한 토론</li>
							<li>데이터 아키텍처의 진단, 애플리케이션 영향도 분석 등의 수행을 위한 효과적 방법에 관한 토론</li>
							<li>진단결과의 해석 및 진단결과에 따른 개선 계획 수립 방법 등에 관한 토론</li>
						</ul>
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

