<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : faq.jsp
  * @Description : 자주하는 질문
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
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb2.jsp" %>
<!-- contents영역시작 -->

<div class="bg_know">
	<div class="title">
		<div class="location">Home > 정보마당 > <em>자주하는질문</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/knowledge/h3_know5.gif'/>" alt="자주하는질문" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/knowledge/h3_know5_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터의 품질관리 FAQ입니다. 여러분이 자주 질문하는 질문에 대한 답변을 모았습니다. 이용에 많은 도움이 되시길 바랍니다." /></p>
	</div>

	<ul class="tabArea">
		<li><a href="##"><img src="<c:url value='/images/pdqm/common/tab/tab_faq1.gif'/>" alt="전체" /></a></li>
		<li><a href="##"><img src="<c:url value='/images/pdqm/common/tab/tab_faq2.gif'/>" alt="품질관리 일반" /></a></li>
		<li><a href="##"><img src="<c:url value='/images/pdqm/common/tab/tab_faq3.gif'/>" alt="지원창구" /></a></li>
		<li><a href="##"><img src="<c:url value='/images/pdqm/common/tab/tab_faq4.gif'/>" alt="교육" /></a></li>
		<li><a href="##"><img src="<c:url value='/images/pdqm/common/tab/tab_faq5.gif'/>" alt="홈페이지 일반" /></a></li>
	</ul>

	<ul class="faq" title="자주하는 질문 전체보기입니다.">
		<li>
			<dl>
				<dt><a href="##">[품질관리 일반] 공공정보 품질관리란 무엇인가요?</a></dt>
				<dd>
					국가 정보화의 기본 방향은 지속 가능한 지식정보사회의 실현에 이바지하고 국민의 삶의 질의 높이는 것이며, 이러한 정책 방향을 일관성 있게 추진하기 위한 국가 차원의 데이터 품질관리 정책 방향은 “지식정보자원의 표준화 및 효율적 관리를 통한 공공 정보의 활용 촉진”으로 요약됩니다.<br />
					데이터 품질관리는 크게 「국가 차원의 데이터 품질관리」와 「기관 차원의 데이터 품질관리」로 구분되는데, 「국가 차원의 데이터 품질관리」는 공공기관이 데이터에 대한 품질관리를 효과적으로 수행하도록 지원하기 위한 법·제도, 지침, 지원 인프라로 구성됩니다. <br />
					더 자세한 내용은 홈>공공정보품질관리 개요 페이지를 참고하세요.
				</dd>
			</dl>
		</li>
		<li>
			<dl>
				<dt><a href="##">[지원창구] 품질진단 개선 사업에 대해 알고 싶습니다.</a></dt>
				<dd>
					답변내용
				</dd>
			</dl>
		</li>
		<li>
			<dl>
				<dt><a href="##">[품질관리 일반] 데이터 품질이란 무엇인가요?</a></dt>
				<dd>
					답변내용
				</dd>
			</dl>
		</li>
		<li>
			<dl>
				<dt><a href="##">[홈페이지 이용] 교육동영상이 재생되지 않습니다.</a></dt>
				<dd>
					답변내용
				</dd>
			</dl>
		</li>
		<li>
			<dl>
				<dt><a href="##">[홈페이지 이용] I-PIN이 없는데, 회원가입은 어떻게 하나요?</a></dt>
				<dd>
					답변내용
				</dd>
			</dl>
		</li>
	</ul>
</div>


<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

