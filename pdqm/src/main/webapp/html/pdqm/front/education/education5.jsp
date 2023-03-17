<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : education4.jsp
  * @Description : 품질관리교육 > 교육 동영상
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
<%@ include file="/html/pdqm/include/lnb4.jsp" %>

<!-- contents영역시작 -->

<div class="bg_edu">
	<div class="title">
		<div class="location">Home > 품질관리교육 > <em>교육 동영상</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/education/h3_edu5.gif'/>" alt="교육 동영상" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/education/h3_edu5_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터에서는 공공정보 품질관리에 도움이 되는 다양한 동영상 자료를 제공하고 있습니다. 공공정보 품질관리에 대한 이해도를 높이고자 준비한 동영상이오니 많은 도움이 되길 바랍니다." /></p>
	</div>

	<ul class="tabArea">
		<li><a href="##"><img src="<c:url value='/images/pdqm/common/tab/edu5_tab1on.gif'/>" alt="전체" /></a></li>
		<li><a href="##"><img src="<c:url value='/images/pdqm/common/tab/edu5_tab2.gif'/>" alt="교육홍보" /></a></li>
		<li><a href="##"><img src="<c:url value='/images/pdqm/common/tab/edu5_tab3.gif'/>" alt="품질매뉴얼" /></a></li>
		<li><a href="##"><img src="<c:url value='/images/pdqm/common/tab/edu5_tab4.gif'/>" alt="UCC" /></a></li>
		<li><a href="##"><img src="<c:url value='/images/pdqm/common/tab/edu5_tab5.gif'/>" alt="세미나" /></a></li>
	</ul>

	<ul class="edu_mov">
		<li class="first">
			<dl>
				<dt><a href="##"><img class="photo" src="<c:url value='/images/pdqm/front/education/img_edu4_1.gif'/>" alt="동영상 이미지" /></a></dt>
				<dd class="subject">동영상 제목</dd>
				<dd><a href="##"><img src="<c:url value='/images/pdqm/front/education/btn_mov_view.gif'/>" alt="동영상 보러가기" /></a></dd>
			</dl>
		</li>
		<li>
			<dl>
				<dt><a href="##"><img class="photo" src="<c:url value='/images/pdqm/front/education/img_edu4_1.gif'/>" alt="동영상 이미지" /></a></dt>
				<dd class="subject">동영상 제목동영상 제목동영상 제목동영상 제목동영상 ...</dd>
				<dd><a href="##"><img src="<c:url value='/images/pdqm/front/education/btn_mov_view.gif'/>" alt="동영상 보러가기" /></a></dd>
			</dl>
		</li>
		<li>
			<dl>
				<dt><a href="##"><img class="photo" src="<c:url value='/images/pdqm/front/education/img_edu4_1.gif'/>" alt="동영상 이미지" /></a></dt>
				<dd class="subject">동영상 제목</dd>
				<dd><a href="##"><img src="<c:url value='/images/pdqm/front/education/btn_mov_view.gif'/>" alt="동영상 보러가기" /></a></dd>
			</dl>
		</li>
		<li class="first">
			<dl>
				<dt><a href="##"><img class="photo" src="<c:url value='/images/pdqm/front/education/img_edu4_1.gif'/>" alt="동영상 이미지" /></a></dt>
				<dd class="subject">동영상 제목</dd>
				<dd><a href="##"><img src="<c:url value='/images/pdqm/front/education/btn_mov_view.gif'/>" alt="동영상 보러가기" /></a></dd>
			</dl>
		</li>
	</ul>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

