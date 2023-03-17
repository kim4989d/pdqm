<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%
/**
 * @Class Name : PdqmApplyInfo.jsp
 * @Description : 사업안내
 * @Modification Information
 * @
 * @  수정일                    수정자                수정내용
 * @ ---------     --------    ---------------------------
 * @ 2011.11.09    김정훈         최초 생성
 *
 *  @author 김정훈
 *  @since 2011.11.09
 *  @version 1.0
 *  @see
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
	<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
	<validator:javascript formName="pdqmApply" staticJavascript="false" xhtml="true" cdata="false"/>

<script type="text/javaScript" language="javascript" defer="defer">
	<!--
	function fn_regist(){
		location.href =  "<c:url value='/support/apply/selectPdqmApply.do'/>";
	}

	function fnGoLogin() {

		if (confirm('로그인 하시겠습니까?')) {
			location.href = "<c:url value='/front/main/egovLoginUsr.do'/>";
		}

	}	
	//-->
	</script>
	
			
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > <em>수요조사안내</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup3_1.gif'/>" alt="수요조사안내" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup3_desc.png'/>" class="png24" alt="공공정보 품질관리 및 개선을 위하여 품질관리 지원사업 수요 조사에 대해 알려드리며, 사업 신청 기간내 사업 신청서를 작성할 수 있습니다.  국가차원에서 품질진단 및 개선을 지원할 예정이오니 많은 참여 부탁드립니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup3_1.gif'/>" alt="개요" /></h4>
		<p class="depth1_con">공공기관이 보유한 DB 중 데이터 고품질 확보가 필요한 DB를 선정하여 국가차원에서 품질 진단 및 개선 지원 예정</p>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup3_2.gif'/>" alt="품질 진단 사업" /></h4>
		<p class="depth1_con"><strong>공공기관의 데이터 품질 진단·개선 사업 대상DB 수요조사</strong>를 통해 국가차원 품질관리 필요성이 높은 DB를 파악하고, 선정 기준 및 원칙에 의해 매년 진단대상DB 확정, 진단 실시</p>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup3_3.gif'/>" alt="품질 개선 사업" /></h4>
		<p class="depth1_con">품질 진단 결과를 바탕으로 품질 개선이 시급하고 중요한 DB를 선정하여 품질 개선 지원 </p>
		<p class="depth1_con fc_blue1"><strong>※ 개선사업 대상 DB는 전년도 품질진단 DB를 우선 고려하여 선정</strong></p>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup3_3.gif'/>" alt="국가기관등의 데이터 품질 진단ㆍ개선 사업 수요조사" /></h4>
		<p class="depth1_con">본 수요조사는 11년 품질 진단 사업 대상DB 선정 뿐만 아니라 향후 품질 진단 및 개선이 필요한 대상DB 전체를 파악하기 위한 조사임 </p>
		<table class="conTable1" summary="국가기관 등의 데이터 품질 진단·개선 대상사업 선정 기준 내용이 있는 테이블입니다.">
			<colgroup>
				<col width="20%"/><col width="auto"/>
			</colgroup>
			<thead>
				<tr>
					<th colspan="2">국가기관 등의 데이터 품질 진단·개선 대상사업 선정 기준</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>정책 중요도</th>
					<td>지식정보자원의 활용 촉진을 위하여 기관 간 연계 활용이 많고 대국민에게 공개, 활용되는 정보
						<ul class="liType1">
							<li>마스터DB, 연계DB 등 정보 활용 상에 품질로 인한 문제발생 소지가 많은 DB
								<p>예시1) 행정정보공동이용센터 등을 통해 다양한 사용자에게 연계되는 정보</p>
								<p>예시2) 공유서비스, 공공정보 공개 등 정보의 활용 촉진에 기여하는 정보</p>
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th>서비스 중요도</th>
					<td>품질오류로 인해 행정업무 및 대국민 서비스에 중대한 차질이 예상되는 정보
						<ul class="liType1">
							<li>연계기관 수가 많거나 사용자 활용율이 높은 DB</li>
							<li>품질문제로 인한 업무영향, 경제적 피해가 클 수 있는 DB
								<p>예시1) 주민등록정보와 같이 타기관에서 기준정보로 삼는 DB</p>
								<p>예시2) 새주소정보와 같이 행정 및 일반국민 생활에 막대한 영향을 미치는 정보</p>
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th>경제성 원칙 </th>
					<td>
						한정된 자원의 투입으로 진단·개선 효과를 최대한 낼 수 있는 정보<br />
						예시) 품질 개선이 용이한 반면 개선 기대효과(경제성)가 큰 DB
					</td>
				</tr>
			</tbody>
		</table>
		<c:if test="${infoVo.reqstYn == 'Y'}">
			<c:if test="${applyVO.frstRegisterId != '' }">
			<p class="btnArea ta_c mt_30"><a href="javascript:fn_regist()"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_send.gif'/>" alt="사업 신청서 보내기" /></a></p>
			</c:if>
			<c:if test="${applyVO.frstRegisterId == '' }">
			<p class="btnArea ta_c mt_30"><a href="##" onclick="fnGoLogin();"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_send.gif'/>" alt="사업 신청서 보내기" /></a></p>
			</c:if>
		</c:if>
		<c:if test="${infoVo.reqstYn != 'Y'}">
		<p class="btnArea ta_c mt_30"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_not.gif'/>" alt="현재는 사업 신청기간이 아닙니다." /></p>
		</c:if>
	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

