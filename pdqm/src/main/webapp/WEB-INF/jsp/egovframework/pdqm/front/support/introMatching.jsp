<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support5.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > 연계정보 정합성 진단 안내
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
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>연계정보정합성 검증 안내</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5.gif'/>" alt="연계정보정합성 검증 안내" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_desc.png'/>" class="png24" alt="공공기관 보유정보 연계정보 정합성 검증 서비스에 대해 안내해 드립니다. 기관 상호간 연계정보 또는 기관 내부의 데이터베이스간 메타데이터 표준 준수와 마스터 코드 값의 정합성을 체크하여 연계품질을 향상 시킬 수 있습니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup3_1.gif'/>" alt="개요" /></h4>
		<div class="depth1_con">
			<p>본 서비스는 공공기관 보유정보 품질진단·개선 사업의 일환으로 개발된 연계정보정합성 검증 서비스 입니다.</p>
			<p class="mt_10">시스템간의 연계(마스터)정보를 대사하여 아래와 같은 <strong class="fc_blue1">구조 및 코드 불일치 항목을 체크할 수 있도록 지원</strong> 하는 검증 시스템입니다.</p>
			<ul class="liType1">
				<li>컬럼명 기준으로 컬럼 한글명, 데이터 Type, 길이의 불일치 결과 확인</li>
				<li>연계시 기준코드와 대상 연계코드의 검증 결과를 확인하여 코드값 오류를 파악</li>
			</ul>
		</div>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup5.gif'/>" alt="연계정보정합성 검증 절차(템플릿파일 작성방법 안내)" /></h4>
		<div class="box_supB"><div class="box_supT">
			<ol>
				<li><img src="<c:url value='/images/pdqm/front/support/h5_sup5_1.gif'/>" alt="1.컬럼표준 정합성 검증" />
					<ol class="txt_inline">
						<li><img src="<c:url value='/images/pdqm/front/support/txt_sup5_1_1.gif'/>" alt="1단계 논리데이터베이스 등록 - DB스키마 정보 비교 화면에서 관리하고자 하는 데이터베이스명 등록" /></li>
						<li><img src="<c:url value='/images/pdqm/front/support/txt_sup5_1_2.gif'/>" alt="2단계 템플릿파일 작성 - 테이블명/컬럼명(영문,한글)/Data Type/길이 등 스키마 정보로 템플릿 작성" /></li>
						<li><img src="<c:url value='/images/pdqm/front/support/txt_sup5_1_3.gif'/>" alt="3단계 파일 Loading - 포탈에 접속하여 템플릿 파일 Loading" /></li>
						<li><img src="<c:url value='/images/pdqm/front/support/txt_sup5_1_4.gif'/>" alt="4단계 검증 실행/결과 - 건수,불일치 컬럼 상세확인" /></li>
						<li><img src="<c:url value='/images/pdqm/front/support/txt_sup5_1_5.gif'/>" alt="종료" /></li>
					</ol>
				</li>
				<li><img src="<c:url value='/images/pdqm/front/support/h5_sup5_2.gif'/>" alt="2.코드 정합성 검증" />
					<ol class="txt_inline">
						<li><img src="<c:url value='/images/pdqm/front/support/txt_sup5_2_1.gif'/>" alt="1단계 논리코드 관리명 등록 -코드마스터 비교화면에서 관리하고자 하는 코드명 등록" /></li>
						<li><img src="<c:url value='/images/pdqm/front/support/txt_sup5_2_2.gif'/>" alt="2단계 템플릿파일 작성 - 기준코드의 값과 의미 정보, 연계 대상 컬럼의 코드값과 의미 정보로 템플릿 작성" /></li>
						<li><img src="<c:url value='/images/pdqm/front/support/txt_sup5_2_3.gif'/>" alt="3단계 파일 Loading - 포탈에 접속하여 템플릿 파일 Loading" /></li>
						<li><img src="<c:url value='/images/pdqm/front/support/txt_sup5_2_4.gif'/>" alt="4단계 검증 실행/결과 - 기준코드 vs 검증대상 코드 검증 결과 확인" /></li>
						<li><img src="<c:url value='/images/pdqm/front/support/txt_sup5_2_5.gif'/>" alt="종료" /></li>
					</ol>
				</li>
			</ol>
		</div></div>
	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

