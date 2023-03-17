<%
 /**
  * @Class Name  : EgovCalendar.jsp
  * @Description : EgovCalendar 화면
  * @Modification Information
  * @
  * @  수정일             	수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2009.10.13   	이중호              최초 생성
  * @ 2011.11.15   	윤경한		이미지 수정
  * @ 2011.11.25   	윤경한		현재일자  BOLD 처리  
  *
  *  @author 공통서비스팀
  *  @since 2009.10.13
  *  @version 1.0
  *  @see
  *
  */
%>

<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="egovframework.com.utl.fcc.service.EgovDateUtil" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>달력</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/pdqm/common/base.css' />">
<script type="text/javaScript" language="javascript">
<!--

/* ********************************************************
 * 초기화
 ******************************************************** */
function fnInit(){
	var varParam        = window.dialogArguments;
	var varForm			= document.all["Form"];
	var pForm			= parent.document.all["pForm"];
	if (varParam.sDate) {
		var sDate = varParam.sDate;
		if(sDate.length == 10) {
			if(pForm.init.value != "OK") {
				pForm.init.value  = "OK";
				varForm.action      = "<c:url value='/sym/cal/callCal.do'/>";
				varForm.year.value  = sDate.substr(0,4);
				varForm.month.value = sDate.substr(5,2);
				varForm.submit();
			}
		}
	}
}

/* ********************************************************
 * 연월변경
 ******************************************************** */
function fnChangeCalendar(year, month){
	var varForm			= document.all["Form"];
	varForm.action      = "<c:url value='/sym/cal/callCal.do'/>";
	varForm.year.value  = year;
	varForm.month.value = month;
	varForm.submit();
}

/* ********************************************************
 * 결과연월일 반환
 ******************************************************** */
function fnReturnDay(day){
	var retVal   = new Object();
	var sYear    = "0000"+document.Form.year.value;
	var sMonth   = "00"+document.Form.month.value;
	var sDay     = "00"+day;
	retVal.year  = sYear.substr(sYear.length-4,4);
	retVal.month = sMonth.substr(sMonth.length-2,2);
	retVal.day   = sDay.substr(sDay.length-2,2);
	retVal.sDate = retVal.year + retVal.month + retVal.day;
	retVal.vDate = retVal.year + "-" + retVal.month + "-" + retVal.day;
	parent.window.returnValue = retVal;
	parent.window.close();
}
-->
</script>
</head>

<!--
<body onLoad=javascript:fnInit();>
 -->

<body>
<form name="Form" action ="<c:url value='/sym/cal/callCal.do'/>" method="post">
<input type="hidden" name="init" value="${init}" />
<input type="hidden" name="year" value="${resultList[0].year}" />
<input type="hidden" name="month" value="${resultList[0].month}" />
<input type="hidden" name="day" />

<div class="calendarCNT" id="calendarCNT">
	<div class="month">
		<a href="#" onclick="javascript:fnChangeCalendar(${resultList[0].year-1},${resultList[0].month});"><!-- style="selector-dummy:expression(this.hideFocus=false);"> --><img src="<c:url value='/images/pdqm/common/btn/calendar_yprev.gif' />" alt="이전년도"></a>

		<a href="#" onclick="javascript:fnChangeCalendar(${resultList[0].year},${resultList[0].month-1});"><!-- style="selector-dummy:expression(this.hideFocus=false);"> --><img src="<c:url value='/images/pdqm/common/btn/calendar_mprev.gif' />" alt="이전달"></a>
		<strong>${resultList[0].year}년${resultList[0].month}월</strong>
		<a href="#" onclick="javascript:fnChangeCalendar(${resultList[0].year},${resultList[0].month+1});"><!-- style="selector-dummy:expression(this.hideFocus=false);"> --><img src="<c:url value='/images/pdqm/common/btn/calendar_mnext.gif' />" alt="다음달"></a>

		<a href="#" onclick="javascript:fnChangeCalendar(${resultList[0].year+1},${resultList[0].month});"><!-- style="selector-dummy:expression(this.hideFocus=false);"> --><img src="<c:url value='/images/pdqm/common/btn/calendar_ynext.gif' />" alt="다음년도"></a>
	</div>
	<!-- khyoon 2011.11.25 -->
	<fmt:parseDate value="<%=EgovDateUtil.getToday()%>" var="today" pattern="yyyymmdd" />
	<fmt:formatDate value="${today}" var="year" pattern="yyyy" />
	<fmt:formatDate value="${today}" var="month" pattern="mm" />
	<fmt:formatDate value="${today}" var="day" pattern="dd" />
	<!-- ~khyoon -->

	<table summary="달력보기">
		<colgroup>
			<col /><col width="14%" /><col width="14%" /><col width="14%" /><col width="14%" /><col width="14%" /><col width="14%" />
		</colgroup>
		<thead>
			<tr>
				<th title="일요일">일</th>
				<th>월</th>
				<th>화</th>
				<th>수</th>
				<th>목</th>
				<th>금</th>
				<th title="토요일">토</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<c:forEach var="result" items="${resultList}" varStatus="status">
					<c:choose>
					<c:when test='${result.day == ""}'>
						<c:choose>
						<c:when test='${result.weeks != 6}'>
							<td></td>
						</c:when>
						</c:choose>
					</c:when>
					<c:otherwise>
						<c:choose>
						<c:when test='${result.restAt == "Y" }'><!-- 일요일 -->
							<td>
								<a href="#" onclick="javascript:fnReturnDay(${result.day});">${result.day}</a>
							</td>
						</c:when>
						<c:otherwise>
							<td>
								<!-- khyoon 2011.11.25 -->
								<a href="#" onclick="javascript:fnReturnDay(${result.day});">
								<c:if test="${year == resultList[0].year && month == resultList[0].month && day == result.day}">
									<b></c:if>
									${result.day}
								<c:if test="${year == resultList[0].year && month == resultList[0].month && day == result.day}">
									</b></c:if>
								</a>
								<!-- ~khyoon -->
							</td>
						</c:otherwise>
						</c:choose>
						<c:choose>
						<c:when test='${result.week == 7}'>
							<c:out value="</tr>" escapeXml="false"/>
							<c:out value="<tr>" escapeXml="false"/>
						</c:when>
						</c:choose>
					</c:otherwise>
					</c:choose>
				</c:forEach>
			</tr>
		</tbody>
	</table>
	
	<p class="btnArea ta_c"><a href="#" onclick="self.close();"><img src="<c:url value='/images/pdqm/common/btn/btn_close.gif'/>" alt="닫기" /></a></p>
</div>

</form>
</body>
</html>
