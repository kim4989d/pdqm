<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<% 

/**
  * @Class Name : EgovNoticeInfo.jsp
  * @Description : 다음글/이전글 제목 및 링크 정보
  * @Modification Information
  * @
  * @  수정일   		수정자		수정내용
  * @ ----------	------		---------------------------
  * @ 2011.11.02	윤경한		최초생성
  * @ 2011.11.21	윤경한		쿼리 및 로직 수정
  *
  *  @author 윤경한
  *  @since 2011.11.02
  *  @version 1.0 
  *  @see
  *  
  */
%>   
<c:choose>
<c:when test="${result.nttId > 0}">
	<c:if test="${result.replyLc!=0}">
		<c:forEach begin="0" end="${result.replyLc}" step="1">
			&nbsp;
		</c:forEach>
		<img src="<c:url value='/images/egovframework/com/cmm/icon/reply_arrow.gif'/>" alt="reply arrow">
	</c:if>
	<a href="javascript:fn_egov_select_notice(<c:out value='${result.nttId}'/>);"><c:out value="${result.nttSj}"/></a>
</c:when>
<c:otherwise>
	<c:out value="${result.nttSj}"/><!-- 다음글/이전글이 없습니다 메세지 표시 -->
</c:otherwise>
</c:choose>
