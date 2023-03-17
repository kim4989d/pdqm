<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
/**
 * @Class Name : SelectUseView.java
 * @Description : 서비스통계
 * @Modification Information
 * @
 * @  수정일                    수정자                수정내용
 * @ ---------     --------    ---------------------------
 * @ 2011.11.09    psh         최초 생성
 *
 *  @author 박상호
 *  @since 2011.11.09
 *  @version 1.0
 *  @see
 *
 */
%>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
<!-- 렉스퍼트  관련 js -->
<script language="javascript" src="<c:url value='/RexServer30/rexscript/rexpert.js'/>" ></script>
<script language="javascript" src="<c:url value='/RexServer30/rexscript/rexpert_properties.js'/>" ></script>

<script type="text/javaScript" language="javascript" defer="defer">

<!--


// 검색
function fncSearch(){
	// 날짜 체크
	if (document.listForm.dateFrom.value == "" && document.listForm.dateTo.value == "") {
		alert("검색기간을 입력하세요.");
		return;
	} else if (document.listForm.dateFrom.value > document.listForm.dateTo.value){
		alert("검색기간의 범위가 잘못 되었습니다.");
		return;
	}


    //document.listForm.action = "<c:url value='/admin/stats/selectUseCount.do'/>";
    //document.listForm.submit();
    fnOpen();
}


function press() {

    if (event.keyCode==13) {
    	fncSearch();
    }
}

//--------------------------
//기본적인 사용 예
//--------------------------
function fnOpen() {
	// 필수 - 레포트 생성 객체

	var oReport = GetfnParamSet();
	oReport.rptname ="./pdqm/admin/selectUseCount";

	oReport.param("dateFrom").value = document.listForm.dateFrom.value;
	oReport.param("dateTo").value = document.listForm.dateTo.value;

	oReport.event.init = fnReportEvent;
	//필수 - 레포트 실행
	oReport.iframe(ifrmRexPreview1);
	//oReport.open();

}
function fnReportEvent(oRexCtl, sEvent, oArgs) {
	//alert(sEvent);

	if (sEvent == "init") {
		oRexCtl.SetCSS("appearance.toolbar.button.movecontent.visible=0");

 		oRexCtl.SetCSS("appearance.canvas.offsetx=0");
		oRexCtl.SetCSS("appearance.canvas.offsety=0");
		oRexCtl.SetCSS("appearance.pagemargin.visible=0");

		oRexCtl.UpdateCSS();
	} else if (sEvent == "finishdocument") {

	} else if (sEvent == "finishprint") {

	} else if (sEvent == "finishexport") {
		//alert(oArgs.filename);
	} else if (sEvent == "hyperlinkclicked") {
		//alert(oArgs.Path);
	}

	//window.close();
}
//-->
</script>

</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
	<form:form commandName="statisticsVO" name="listForm" method="post">
	<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/callCalPopup.do'/>" />
	<!-- content start -->
	<div class="title">
		<div class="locationMap">통계 > 서비스별 이용통계</div>
		<h2>서비스별 이용통계</h2>
	</div>

		<fieldset>
		<legend>검색조건</legend>
			<table class="vblType1" summary="검색조건 테이블입니다.">
				<colgroup>
					<col width="20%" />
					<col width="80%" />
				</colgroup>
				<tr>
					<th><label for="a1">검색기간</label></th>
					<td>

				      <form:input path="dateFrom" cssClass="text" cssStyle="width:45px" maxlength="7" onClick="fnYearMonthCalendar(document.listForm, document.listForm.dateFrom);" />
				      <img src="<c:url value='/images/egovframework/pdqm/admin/calendar.gif' />"
				      	onClick="fnYearMonthCalendar(document.listForm, document.listForm.dateFrom);"
					    width="15" height="15" alt="calendar">
						~
					  <form:input path="dateTo" cssClass="text" cssStyle="width:45px" maxlength="7" onClick="fnYearMonthCalendar(document.listForm, document.listForm.dateTo);" />
				      <img src="<c:url value='/images/egovframework/pdqm/admin/calendar.gif' />"
				      	onClick="fnYearMonthCalendar(document.listForm, document.listForm.dateTo);"
					    width="15" height="15" alt="calendar">
					</td>
				</tr>
			</table>
			<div class="btnArea">
				<span class="button"><input type="submit" value="<spring:message code='button.search' />" onclick="fncSearch(); return false;"></span><!-- 검색 -->
			</div>
		</fieldset>

		<div>
			<iframe name="ifrmRexPreview1" id="ifrmRexPreview1" width="755" height="600"></iframe>
		</div>

<%-- 		<table summary="통계결과 테이블입니다." class="tblType1 tblSpace">
			<colgroup>
				<col width="20%"/><col width="40%"/><col width="40%"/>
			</colgroup>
			<thead>
				<tr>
					<th scope="col" onclick="fnOpen();" >일자</th>
					<th scope="col">공공기관회원</th>
					<th scope="col">일반회원</th>
				</tr>
			</thead>
			<tbody>
				데이터를 없을때 화면에 메세지를 출력해준다
				<c:if test="${fn:length(statisticsList) == 0}">
				<tr>
				<td class="lt_text3" colspan="3">
					<spring:message code="common.nodata.msg" />
				</td>
				</tr>
				</c:if>
				데이터를 없을때 화면에 메세지를 출력해준다
				<c:set var="ordinary" value="0" />
				<c:set var="government" value="0" />
				<c:forEach var="statisticsList" items="${statisticsList}" varStatus="status">
				<c:set var="ordinary" value="${ordinary + statisticsList.ordinary}" />
				<c:set var="government" value="${government + statisticsList.government}" />
				<tr>
					<td><c:out value="${statisticsList.sbscrbDe}"/></td>
					<td><c:out value="${statisticsList.ordinary}"/></td>
					<td><c:out value="${statisticsList.government}"/></td>
				</tr>
				</c:forEach>
			</tbody>
			<c:if test="${fn:length(statisticsList) != 0}">
			<tfoot>
				<tr>
					<th>계</th>
					<td><c:out value="${ordinary}"/></td>
					<td><c:out value="${government}"/></td>
				</tr>
			</tfoot>
			</c:if>
		</table> --%>
	</form:form>
	<!-- content end -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
