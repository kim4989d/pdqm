<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="org.springframework.ui.ModelMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<%
//이 페이지에서 뒤로가기 할 때 보여질 페이지의 스크립트에
//window.history.forward(1); 이 코드를 넣은 후,
//
//자바스크립트의 window.history.forward(0); 부분과 아래의 JSP코드를 같이 적용하면
//뒤로가기 클릭시 "웹 페이지 만료 어쩌구..." 하고 뜨고
//아래의 JSP코드는 적용하지 않고 자바스크립트만 적용하면
//뒤로가기 클릭시 뒤로가지 않고 현재 페이지를 유지한다.
//이때 어떠한 자바 액션을 다시 수행하지 않고 현재 페이지를 유지하므로
//뒤로가기를 막아야 할 경우 이렇게 처리하면 될 듯 하다.
//response.setHeader( "Cache-Control", "no-store" ) ; //HTTP 1.1
//response.setDateHeader( "Expires", 0 ) ;
%>

	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>

<script type="text/javaScript" language="javascript" defer="defer">

window.history.forward(0);

function lfn_report( reportxmlname )
{
	var leftcap = ( screen.width  - 900 ) / 2 ;
    var topcap  = ( screen.height - 900 ) / 2 ;

	var position = "width=900,height=900,top=" + topcap + ",left=" + leftcap ;
    var winset = ",resizable=yes,menubar=no,scrollbars=yes,status=yes,titlebar=yes,toolbar=no," + position ;

    var url = "<c:url value='/support/diagnosis/level/selfDiagReportView.do'/>?reportxmlname=" + reportxmlname ;

	window.open( url, "Report", winset ) ;
}

function lfn_startIdxDiag()
{
	document.listForm.action = "<c:url value='/support/diagnosis/idx/selectIdxDgnssTrgetListView.do'/>" ;
	document.listForm.submit() ;
}

function lfn_home()
{
	document.listForm.action = "<c:url value='/support/diagnosis/level/selectDgnssTrgetView.do'/>" ;
	document.listForm.submit();
}

//window.onbeforeunload = function (evt) {
function fn_onbeforeunload() {
    var message = 'Are you sure you want to leave?';
    if (typeof evt == 'undefined') {
    	alert( 1 ) ;
        evt = window.event;
    }
    if (evt) {
    	alert( 2 ) ;
        evt.returnValue = message;
    }
    return message;
}

</script>

</head>

<!-- body  onunLoad="window.location.replace(self.location)" -->
<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<!-- contents영역시작 -->

<form:form commandName="searchVO" name="listForm" action="/pdqm/support/diagnosis/idx/selectIdxDgnssTrgetListView.do"  method="post">
<input type="hidden" name="levelDgnssId" value="<c:out value="${answerpaper.levelDgnssId}"/>" /><!-- 수준진단ID -->
<input type="hidden" name="cntTotQuestion" value="<c:out value="${answerpaper.cntTotQuestion}"/>" />
<input type="hidden" name="cnt1Level" value="<c:out value="${answerpaper.cnt1Level}"/>" />

<input type="hidden" name="upperInsttSeCode" value="<c:out value="${answerpaper.upperInsttSeCode}"/>" />
<input type="hidden" name="insttSeCode" value="<c:out value="${answerpaper.insttSeCode}"/>" />
<input type="hidden" name="insttNm" value="<c:out value="${answerpaper.insttNm}"/>" />
<input type="hidden" name="databaseTyId" value="<c:out value="${answerpaper.databaseTyId}"/>" />
<input type="hidden" name="databaseNm" value="<c:out value="${answerpaper.databaseNm}"/>" />
<input type="hidden" name="databaseScaleCode" value="<c:out value="${answerpaper.databaseScaleCode}"/>" />

<div id="printlayer"><!-- start print layer -->

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 품질수준 자가진단 > <em>진단결과 조회(1단계)</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup4_4.gif'/>" alt="진단결과 조회(1단계)" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup4_desc.png'/>" alt="공공정보 품질수준을 자가진단하여 품질개선 향상에 도움을 줄 수 있는 창구입니다. 질문은 대략 30여개로 구성되어 있으며, 소요시간은 약 20분정도 소요됩니다. 기관 및 협의회의 많은 참여 바랍니다." /></p>
	</div>

	<div id="conBox">
		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup4_4_1.gif'/>" alt="기본정보" /></h4>

		<table class="conTable2" summary="기본정보 테이블입니다." width="100%">
			<colgroup>
				<col width="25%"/><col width="25%"/><col width="25%"/><col width="auto"/>
			</colgroup>
			<tbody>
				<tr>
					<th>기관명</th>
					<td class="bd_r"><c:out value="${basicinfo.insttNm}" /></td>
					<th>데이터베이스명</th>
					<td><c:out value="${basicinfo.databaseNm}" /></td>
				</tr>
				<tr>
					<th rowspan="2">기관구분</th>
					<td class="bd_r"><c:out value="${basicinfo.upperInsttSeCodeNm}" /></td>
					<th>데이터베이스 유형</th>
					<td><c:out value="${basicinfo.databaseTyNm}" /></td>
				</tr>
				<tr>
					<td class="bd_r"><c:out value="${basicinfo.insttSeCodeNm}" /></td>
					<th>데이터베이스 사용자규모</th>
					<td><c:out value="${basicinfo.databaseScaleCodeNm}" /></td>
				</tr>
			</tbody>
		</table>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup4_4_2.gif'/>" alt="진단결과" /></h4>
		<p class="remarks">
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_100.gif'/>" alt="범례 적정" />
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_200.gif'/>" alt="보통" />
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_300.gif'/>" alt="미흡" />
		</p>

		<c:set var="width"  value="${120*(cnt2Level + 2)}" />
		<c:set var="height"  value="${100*(cnt1Level + 1)}" />


		<table class="conTable1" summary="품질진단 결과물 항목 및 내용이 있는 테이블입니다.">
			<colgroup>
				<c:forEach var="tdcnt" begin='1' end='${cnt2Level + 2}' varStatus="rs">
					<!-- col width="<c:out value="${( width - 15 ) / ( cnt2Level + 2 )}" />px"/ -->
					<col width="<c:out value="${100 / ( cnt2Level + 2 )}" />%"/>
				</c:forEach>
			</colgroup>

			<thead>
				<tr>
					<th>구분</th>
					<th>진단결과 종합</th>

					<c:forEach var="list" items="${resultlist}" varStatus="rs">
						<c:if test="${rs.index >= 1 && rs.index <= cnt2Level}">
							<th><c:out value="${list.dgnssTrgetNm}" /></th>
						</c:if>
					</c:forEach>
				</tr>
			</thead>
			<tbody>
				<c:set var="tdcnt" value="${0}" />
				<c:set var="dgnssTrgetId" value="" />

				<c:forEach var="list" items="${resultlist}" varStatus="rs">
					<c:choose>
						<c:when test="${list.upperDgnssTrgetId eq 0}">
							<c:if test="${list.detailCnt > 0}">
								<c:set var="tdcnt" value="${2}" />
								<c:set var="dgnssTrgetId" value="${list.dgnssTrgetId}" />

								<tr class="ta_c">
									<th><strong><c:out value="${list.dgnssTrgetNm}" /></strong></th>
									<th>&nbsp;
										<c:forEach var="list2" items="${complist}" varStatus="rs2">
											<c:if test="${dgnssTrgetId eq list2.dgnssTrgetId}">
												<c:if test="${dgnssTrgetId eq list2.dgnssTrgetId && list2.dgnssResultClCode ne '' && list2.dgnssResultClCode ne null}">
													<img src="<c:url value='/images/pdqm/front/support/icon_insuff_'/><c:out value="${list2.dgnssResultClCode2}"/>.gif" alt="<c:out value="${list2.dgnssResultClCodeNm}" />" />
												</c:if>
											</c:if>
										</c:forEach>
									</th>
							</c:if>
						</c:when>
						<c:otherwise>
							<c:set var="tdcnt" value="${tdcnt + 1}" />

							<c:choose>
								<c:when test="${dgnssTrgetId eq list.upperDgnssTrgetId && list.dgnssResultClCode ne '' && list.dgnssResultClCode ne null}">
									<th><img src="<c:url value='/images/pdqm/front/support/icon_insuff_'/><c:out value="${list.dgnssResultClCode2}"/>.gif" alt="<c:out value="${list.dgnssResultClCodeNm}" />" /></th>
								</c:when>
								<c:otherwise>
									<th>&nbsp;</th>
								</c:otherwise>
							</c:choose>

							<c:if test="${tdcnt == ( cnt2Level + 2 )}">
								</tr>
							</c:if>
						</c:otherwise>
					</c:choose>
				</c:forEach>

			</tbody>
		</table>
		<!-- /div -->


		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup4_4_3.gif'/>" alt="진단결과 설명" /></h4>
		<table class="conTable2">
			<colgroup>
				<col width="10%"/><col width="15%"/><col width="*"/>
			</colgroup>
			<tbody>

				<c:forEach var="list" items="${resultlist}" varStatus="rs">
					<c:choose>
						<c:when test="${list.upperDgnssTrgetId eq 0 && list.detailCnt > 0}">
							<c:set var="tdcnt" value="${1}" />
							<c:set var="dgnssTrgetId" value="${list.dgnssTrgetId}" />

							<tr>
								<th rowspan="<c:out value="${list.detailCnt}" />"><c:out value="${list.dgnssTrgetNm}" /></th>
						</c:when>
						<c:otherwise>
							<c:if test="${dgnssTrgetId eq list.upperDgnssTrgetId}">
								<c:set var="tdcnt" value="${tdcnt + 1}" />

								<td class="thbg1"><c:out value="${list.dgnssTrgetNm}" /></td>
								<td><c:out value="${list.resultDc}" /></td>
								</tr>
							</c:if>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</tbody>
		</table>
		<p class="btnArea ta_c mt_10">
			<strong>데이터 품질지표 자가진단을 수행하시겠습니까? </strong>
			<img src="<c:url value='/images/pdqm/common/btn/btn_sup_start2.gif'/>" onclick="javascript:lfn_startIdxDiag();" alt="자가진단 시작(2단계 품질지표)" />
			<img src="<c:url value='/images/pdqm/common/btn/btn_result_print.gif'/>" onclick="javascript:lfn_report('<c:out value="${reportxmlname}"/>');" alt="결과보고서 출력" />
		</p>
	</div>

</div>

</div><!-- end print layer -->

</form:form>

<!--// contents영역끝 -->

		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

