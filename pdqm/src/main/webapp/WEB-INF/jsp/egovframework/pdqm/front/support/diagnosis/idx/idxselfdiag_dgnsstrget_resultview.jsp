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

    var url = "<c:url value='/support/diagnosis/idx/idxSelfDiagReportView.do'/>?reportxmlname=" + reportxmlname ;

	window.open( url, "Report", winset ) ;
}

function lfn_startIdxDiag()
{
	listForm.action = "<c:url value='/support/diagnosis/idx/selectIdxDgnssTrgetListView.do'/>" ;
	listForm.submit() ;
}

function lfn_home()
{
	listForm.action = "<c:url value='/support/diagnosis/idx/selectDgnssTrgetView.do'/>";
   	listForm.submit();
}

</script>
</head>

<!-- body  onunLoad="window.location.replace(self.location)" -->
<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<!-- contents영역시작 -->

<form:form commandName="searchVO" name="listForm"  method="post">
<input type="hidden" name="idxDgnssId" value="<c:out value="${answerpaper.idxDgnssId}"/>" /><!-- 수준진단ID -->
<input type="hidden" name="cntTotQuestion" value="<c:out value="${answerpaper.cntTotQuestion}"/>" />
<input type="hidden" name="cnt1Level" value="<c:out value="${cnt1Level}"/>" />

<input type="hidden" name="upperInsttSeCode" value="<c:out value="${answerpaper.upperInsttSeCode}"/>" />
<input type="hidden" name="insttSeCode" value="<c:out value="${answerpaper.insttSeCode}"/>" />
<input type="hidden" name="insttNm" value="<c:out value="${answerpaper.insttNm}"/>" />
<input type="hidden" name="databaseTyId" value="<c:out value="${answerpaper.databaseTyId}"/>" />
<input type="hidden" name="databaseNm" value="<c:out value="${answerpaper.databaseNm}"/>" />
<input type="hidden" name="databaseScaleCode" value="<c:out value="${answerpaper.databaseScaleCode}"/>" />


<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 품질수준 자가진단 > <em>품질지표 결과 조회(2단계)</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup4_6.gif'/>" alt="품질지표  결과 조회(2단계)" /></h3>
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



		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup4_6_1.gif'/>" alt="총평" /></h4>
		<div class="review"><c:if test="${compinfo ne null}"><c:out value="${compinfo.resultDc}" /></c:if></div>


		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup4_4_2.gif'/>" alt="진단결과" /></h4>
		<p class="remarks">
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_100.gif'/>" alt="범례 적정" />
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_200.gif'/>" alt="보통" />
			<img src="<c:url value='/images/pdqm/front/support/icon_legend_300.gif'/>" alt="미흡" />
		</p>


		<table class="conTable1" summary="품질진단 결과물 항목 및 내용이 있는 테이블입니다." width="100%">
		<tr>
		<td>

		<c:set var="height" value="${40*(cnt1Level + 1)}" />

		<div id="div_list" style="overflow-x:scroll;width:100%;padding:0px;background-color:transparency;">
			<table>
				<colgroup>
					<col width="*"/><col width="25%"/><col width="25%"/><col width="25%"/>
				</colgroup>
				<thead>
					<tr>
						<th>지표</th>
						<th>적정</th>
						<th>보통</th>
						<th>미흡</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${resultlist}" varStatus="rs">
						<c:if test="${list.upperIdxId eq 0 && list.dgnssResultClCode2 ne null}">
							<c:set var="idxId" value="${list.idxId}" />

							<tr>
								<th>&nbsp;<c:out value="${list.idxNm}" /></th>

								<c:choose>
									<c:when test="${list.dgnssResultClCode2 eq 100}">
										<th><img src="<c:url value='/images/pdqm/front/support/icon_insuff_100.gif'/>" alt="<c:out value="${list.dgnssResultClCodeNm}" />" /></th>
										<th>&nbsp;</th>
										<th>&nbsp;</th>
									</c:when>
									<c:when test="${list.dgnssResultClCode2 eq 200}">
										<th>&nbsp;</th>
										<th><img src="<c:url value='/images/pdqm/front/support/icon_insuff_200.gif'/>" alt="<c:out value="${list.dgnssResultClCodeNm}" />" /></th>
										<th>&nbsp;</th>
									</c:when>
									<c:otherwise>
										<th>&nbsp;</th>
										<th>&nbsp;</th>
										<th><img src="<c:url value='/images/pdqm/front/support/icon_insuff_300.gif'/>" alt="<c:out value="${list.dgnssResultClCodeNm}" />" /></th>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:if>
					</c:forEach>

				</tbody>
			</table>
		</div>
		</td>
		</tr>
		</table>


		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup4_6_2.gif'/>" alt="지표별 결과 설명" /></h4>
		<table class="conTable2" summary="기본정보 테이블입니다.">
			<colgroup>
				<col width="12%"/><col width="11%"/><col width="auto"/>
			</colgroup>
			<thead>
				<tr>
					<th>지표</th>
					<th>결과</th>
					<th>설명</th>
				</tr>
			</thead>
			<!-- tbody>
				<c:forEach var="list" items="${resultlist}" varStatus="rs">
					<tr>
						<th><c:out value="${list.idxNm}" /></th>
						<th>
							<c:choose>
								<c:when test="${list.dgnssResultClCode2 ne null}">
									<img src="<c:url value='/images/pdqm/front/support/icon_insuff_'/><c:out value="${list.dgnssResultClCode2}" />.gif" alt="<c:out value="${list.dgnssResultClCodeNm}" />" />
								</c:when>
								<c:otherwise>
									&nbsp;
								</c:otherwise>
							</c:choose>
						</th>
						<td>&nbsp;<c:out value="${list.resultDc}" /></td>
					</tr>
				</c:forEach>
			</tbody -->
			<tbody>
				<c:forEach var="list" items="${resultlist}" varStatus="rs">
					<c:if test="${list.dgnssResultClCode2 ne null}">
						<tr>
							<th><c:out value="${list.idxNm}" /></th>
							<th><img src="<c:url value='/images/pdqm/front/support/icon_insuff_'/><c:out value="${list.dgnssResultClCode2}" />.gif" alt="<c:out value="${list.dgnssResultClCodeNm}" />" /></th>
							<td>&nbsp;<c:out value="${list.resultDc}" /></td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>

		<div class="mt_25">
			<strong class="fc_blue1">※ 참고사항</strong><br />
			<p class="ml_15"><c:if test="${compinfo ne null}"><c:out value="${compinfo.referDc}" /></c:if></p>
		</div>

		<p class="btnArea ta_c mt_30">
			<a href="javascript:lfn_report('<c:out value="${reportxmlname}"/>');"><img src="<c:url value='/images/pdqm/common/btn/btn_result_print.gif'/>" alt="결과보고서 출력" /></a>
		</p>
	</div>

</div>

</form:form>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

