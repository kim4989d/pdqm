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
	String tmenu = request.getParameter("faqCategory");
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
	function faq_tab_menu(tab){

		var tab = document.getElementById(tab);
		var contAll = document.getElementsByName("contAll");


		if(tab.style.display!="none"){
			tab.style.display ="none";
		}else{
			for(var i=1; i< contAll.length+1; i++){

				document.getElementById("cont_"+i).style.display="none";
			}
				tab.style.display="block";
		}
	}

</script>
</head>


<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb2.jsp" %>
<!-- contents영역시작 -->

<div class="bg_know">
	<div class="title">
		<div class="location">Home > 지식마당 > <em>자주하는질문</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/knowledge/h3_know5.gif'/>" alt="자주하는질문" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/knowledge/h3_know5_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터의 품질관리 FAQ입니다. 여러분이 자주 질문하는 질문에 대한 답변을 모았습니다. 이용에 많은 도움이 되시길 바랍니다." /></p>
	</div>

		<ul class="tabArea" id="tabImg">
			<li><a href="${pageContext.request.contextPath}/uss/olh/faq/Faq.do?faqCategory=0" onclick="liTab('tabImg',<%=tmenu%>);"><img src="<c:url value='/images/pdqm/common/tab/tab_faq1.gif'/>" alt="전체" /></a></li>
			<li><a href="${pageContext.request.contextPath}/uss/olh/faq/Faq.do?faqCategory=1" onclick="liTab('tabImg',<%=tmenu%>);"><img src="<c:url value='/images/pdqm/common/tab/tab_faq2.gif'/>" alt="품질관리 일반" /></a></li>
			<li><a href="${pageContext.request.contextPath}/uss/olh/faq/Faq.do?faqCategory=2" onclick="liTab('tabImg',<%=tmenu%>);"><img src="<c:url value='/images/pdqm/common/tab/tab_faq3.gif'/>" alt="지원창구" /></a></li>
			<li><a href="${pageContext.request.contextPath}/uss/olh/faq/Faq.do?faqCategory=3" onclick="liTab('tabImg',<%=tmenu%>);"><img src="<c:url value='/images/pdqm/common/tab/tab_faq4.gif'/>" alt="교육" /></a></li>
			<li><a href="${pageContext.request.contextPath}/uss/olh/faq/Faq.do?faqCategory=4" onclick="liTab('tabImg',<%=tmenu%>);"><img src="<c:url value='/images/pdqm/common/tab/tab_faq5.gif'/>" alt="홈페이지 일반" /></a></li>
		</ul>
		<script type="text/javascript">liTab('tabImg',<%=tmenu%>);</script>

		<ul class="faq">
			<li>
				<dl>
					<c:forEach items="${result}" var="result" varStatus="status">
					<dt><a id="root_${status.index}" href="#" onclick="faq_tab_menu('cont_${status.index+1}');return false;"><input type="hidden" name="contAll" /><c:out value="${result.qestnSj}"/></a></dt>
					<dd id="cont_${status.index+1}" style="display:none">
							<c:out value="${result.answerCn}"/>
					</dd>
					</c:forEach>
				</dl>
			</li>
		</ul>
</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
