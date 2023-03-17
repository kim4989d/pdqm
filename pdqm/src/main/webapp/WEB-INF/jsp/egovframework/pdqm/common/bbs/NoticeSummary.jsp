<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="egovframework.com.cmm.service.EgovProperties" %>
<%@ page import="egovframework.com.utl.fcc.service.EgovDateUtil" %>
<%@ page import="egovframework.com.cmm.service.Globals" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%
 /**
  * @Class Name : NoticeSummary.jsp
  * @Description : 게시물 요약화면
  * @Modification Information
  * @
  * @  수정일      		수정자            	수정내용
  * @ -------      --------    ---------------------------
  * @ 2011.11.21	윤경한		최초생성
  *
  *  @author 
  *  @since 2011.11.21
  *  @version 1.0
  *  @see
  *
  */
%>

<c:set var="today" value="<%=EgovDateUtil.getToday()%>" />
<c:set var="markNewNttBaseDate" value='<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"MARK_NEW_NTT_BASE_DATE")%>' />
<c:forEach var="result" items="${resultList}" varStatus="status">
	<c:if test="${status.count == 1}">
		<fmt:parseDate value="${result.frstRegisterPnttm}" var="regipnttm" pattern="yyyy-mm-dd" />
		<fmt:formatDate value="${regipnttm}" var="regiday" pattern="yyyymmdd" />
  		<c:choose>
  		<c:when test="${(today-regiday) <= markNewNttBaseDate}" >
  			<li class="first new"></c:when>
  		<c:otherwise>
  			<li class="first"></c:otherwise>
  		</c:choose>	  		
   		<form name="noticeForm${status.count}" method="post" action="<c:url value='/cop/bbs/selectBoardArticle.do'/>">
			<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
			<input type="hidden" name="nttId"  value="<c:out value="${result.nttId}"/>" />
			<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
			<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
			<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
			<input type="hidden" name="nttClCodeId" value="<c:out value='${brdMstrVO.nttClCodeId}'/>" />	
			<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
			<input type="hidden" name="act" value="LIST" />
   			<input type="submit" class="submit" value="<c:out value='${result.summaryNttSj}'/>" >
   		</form>
 			<span><c:out value="${result.frstRegisterPnttm}"/></span>
 		</li>
 	</c:if>
 	<c:if test="${status.count > 1 && status.count < 5}">
		<fmt:parseDate value="${result.frstRegisterPnttm}" var="regipnttm" pattern="yyyy-mm-dd" />
		<fmt:formatDate value="${regipnttm}" var="regiday" pattern="yyyymmdd" />
  		<c:choose>
  		<c:when test="${(today-regiday) <= markNewNttBaseDate}" >
  			<li class="new"></c:when>
  		<c:otherwise>
  			<li></c:otherwise>
  		</c:choose>
   		<form name="noticeForm${status.count}" method="post" action="<c:url value='/cop/bbs/selectBoardArticle.do'/>">
			<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
			<input type="hidden" name="nttId"  value="<c:out value="${result.nttId}"/>" />
			<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
			<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
			<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
			<input type="hidden" name="nttClCodeId" value="<c:out value='${brdMstrVO.nttClCodeId}'/>" />	
			<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
			<input type="hidden" name="act" value="LIST"/>
			<input type="submit" class="submit" value="<c:out value='${result.summaryNttSj}'/>" >	  		
   		</form>
 			<span><c:out value="${result.frstRegisterPnttm}"/></span>
 		</li>
 	</c:if>
</c:forEach>	  	
 	



