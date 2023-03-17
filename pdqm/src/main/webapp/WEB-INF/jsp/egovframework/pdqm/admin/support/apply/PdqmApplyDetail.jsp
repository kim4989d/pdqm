<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : PdqmApplyDetail.jsp
 * @Description : 사업신청 상세
 * @Modification Information
 * @
 * @  수정일                    수정자                수정내용
 * @ ---------     --------    ---------------------------
 * @ 2011.11.09    김정훈         최초 생성
 *
 *  @author 김정훈
 *  @since 2011.11.09
 *  @version 1.0
 *  @see
 *
 */
%>
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
	<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
	<script type="text/javascript" language="javascript" src="<c:url value='/RexServer30/rexscript/rexpert.js'/>" ></script>
	<script type="text/javascript" language="javascript" src="<c:url value='/RexServer30/rexscript/rexpert_properties.js'/>" ></script>
	<validator:javascript formName="pdqmApply" staticJavascript="false" xhtml="true" cdata="false"/>

</head>
<script type="text/javaScript" language="javascript">

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href =  "<c:url value='/support/apply/selectApplyList.do'/>";
}


function fnSave() {

	fnOpen();
}
function fnOpen() {
	// 필수 - 레포트 생성 객체

	var oReport = GetfnParamSet();
	var form = document.getElementById("form");
	oReport.rptname ="./pdqm/admin/pdqmapply";	// 리포트파일명

	oReport.param("sn").value = form.sn.value;


	oReport.event.init = fnReportEvent;
	//필수 - 레포트 실행
	//oReport.iframe(ifrmRexPreview1);
	oReport.open();

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

	

</script>
<body>


<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="applyVO" name="form" method="post">
<form:hidden path="sn"/>
<!-- contents영역시작 -->

	<div class="title">
		<div class="locationMap"> 진단관리 > 지원사업 수요조사 관리 > 사업신청내역</div>
		<h2>사업신청내역</h2>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup3_5.gif'/>" alt="인적사항" /></h4>
		<table class="conTable2" summary="인적사항 입력 테이블입니다.">
			<colgroup>
				<col width="20%"/><col width="30%"/><col width="20%"/><col width="30%"/>
			</colgroup>
			<tr>
				<th><label for="d1">성명</label></th>
				<td class="bd_r">
					<form:input path="name" cssClass="readonly"  cssStyle="width:200px" maxlength="50" Readonly="true" />
				</td>
				<th><label for="d2">소속기관</label></th>
				<td><form:input path="pstinst" cssClass="readonly"  cssStyle="width:200px" maxlength="50"  Readonly="true"/>
				</td>
			</tr>
			<tr>
				<th><label for="d3">부서</label></th>
				<td class="bd_r"><form:input path="dept" cssClass="readonly"  cssStyle="width:200px" maxlength="50"  Readonly="true"/>
				 </td>
				<th><label for="d4">직위</label></th>
				<td><form:input path="ofcps" cssClass="readonly"  cssStyle="width:200px" maxlength="50"  Readonly="true"/>
				</td>
			</tr>
			<tr>
				<th><label for="d5">연락처(사무실)</label></th>
				<td class="bd_r">
					<form:select path="offmAreaNo" title="사무실전화 시작번호" Disabled="true">
						<form:option value="02"  label="02"  />
						<form:option value="031" label="031" />
						<form:option value="032" label="032" />
						<form:option value="033" label="033" />
						<form:option value="041" label="041" />
						<form:option value="042" label="042" />
						<form:option value="043" label="043" />
						<form:option value="051" label="051" />
						<form:option value="052" label="052" />
						<form:option value="053" label="053" />
						<form:option value="054" label="054" />
						<form:option value="055" label="055" />
						<form:option value="061" label="061" />
						<form:option value="062" label="062" />
						<form:option value="063" label="063" />
						<form:option value="070" label="070" />
					</form:select> -
					<form:input path="offmMiddleTelno" cssClass="readonly" title="사무실전화 중간번호" cssStyle="width:40px;"  Readonly="true" maxlength="4" /> - <form:input path="offmEndTelno" cssClass="readonly" title="사무실전화 끝번호" cssStyle="width:40px;"  Readonly="true" maxlength="4" />
				</td>
				<th><label for="d6">연락처(휴대전화)</label></th>
				<td>
					<form:select path="areaNo" title="휴대전화 시작번호" Disabled="true">
						<form:option value="010" label="010"/>
						<form:option value="011" label="011"/>
						<form:option value="016" label="016"/>
						<form:option value="017" label="017"/>
						<form:option value="018" label="018"/>
						<form:option value="019" label="019"/>
					</form:select> -
					<form:input path="middleTelno" cssClass="readonly" title="휴대전화 중간번호" cssStyle="width:40px;"  Readonly="true" maxlength="4" /> - <form:input path="endTelno" cssClass="readonly" title="휴대전화 끝번호" cssStyle="width:40px;"  Readonly="true" maxlength="4" />
				</td>
			</tr>
			<tr>
				<th><label for="d7">E-mail</label></th>
				<td colspan="3"><form:input path="emailAdres" cssClass="readonly"  cssStyle="width:200px" maxlength="100"  Readonly="true" />
				</td>
			</tr>
		</table>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup3_6.gif'/>" alt="신청DB" /></h4>
		<table class="conTable2" summary="신청DB 입력 테이블입니다.">
			<colgroup>
				<col width="20%"/><col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="a1">DB명</label></th>
				<td>
					<form:input path="dbmsNm" cssClass="readonly"  cssStyle="width:200px"  Readonly="true" />
					<span class="fs_1">(해당 정보시스템 DB명 기재)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a2">DB 주요내용</label></th>
				<td>
					<form:input path="dbmsMainCn" cssClass="readonly"  cssStyle="width:200px"  Readonly="true" />
					<span class="fs_1">(해당 DB의 주요 내용 기재)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a3">DB 유형<br />(복수선택가능)</label></th>
				<td>
					<input type="checkbox" name="dbmsYpCreatAtCheck" <c:if test="${applyVO.dbmsYpCreatAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a3" class="mr_10">자체 생성형</label>
					<input type="checkbox" name="dbmsYpColctAtCheck" <c:if test="${applyVO.dbmsYpColctAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a3_2" class="mr_10">수집형</label>
					<input type="checkbox" name="dbmsYpProvdAtCheck" <c:if test="${applyVO.dbmsYpProvdAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a3_3" class="mr_10">제공형</label>
					<input type="checkbox" name="dbmsYpProvdAtCheck" <c:if test="${applyVO.dbmsYpCmpunAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a3_3" class="mr_10">복합형</label>
				</td>
			</tr>
			<tr>
				<th><label for="a4">정보수요자<br />(복수선택가능)</label></th>
				<td>
					<input type="checkbox" name="infoDmandInsttAtCheck" <c:if test="${applyVO.infoDmandInsttAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a4" class="mr_10">기관내부 사용자</label>
					<input type="checkbox" name="infoDmandPblinsttAtCheck" <c:if test="${applyVO.infoDmandPblinsttAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a4_2" class="mr_10">타공공기관</label>
					<input type="checkbox" name="infoDmandPrvateAtCheck"  <c:if test="${applyVO.infoDmandPrvateAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a4_3" class="mr_10">민간업체</label>
					<input type="checkbox" name="infoDmandGnrlAtCheck" <c:if test="${applyVO.infoDmandGnrlAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a4_4" class="mr_10">일반국민</label>
				</td>
			</tr>
			<tr>
				<th><label for="a5">정보 연계활용기관</label></th>
				<td>
					<form:input path="infoCntcPrcuseInstt" cssClass="readonly"  cssStyle="width:200px"  Readonly="true"  />
					<span class="fs_1">(해당 DB를 연계하여 활용하는 기관명/시스템명)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a6">원천정보 보유기관</label></th>
				<td>
					<form:input path="srcInfoHoldInstt" cssClass="readonly"  cssStyle="width:200px"  Readonly="true"   />
					<span class="fs_1">(해당 DB를 연계하여 보유한 기관명/시스템명)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a7">정보 공개 여부</label></th>
				<td>
					<form:textarea path="infoOthbcAt" cssClass="text" rows="30" cols="50" Disabled="true" cssStyle="width:550px;height:50px;"  />
					<p class="fs_1">(공공정보 제공 지침에 따라 공개하고 있는 주요정보 및 제공방법 기재 – 제공방법:Open API, 다운로드, 시스템 연계 등)</p>
				</td>
			</tr>
			<tr>
				<th><label for="a8">사용자 활용 수준</label></th>
				<td>
					<form:input path="emplyrPrcuseLevel" cssClass="readonly"  Readonly="true"  cssStyle="width:200px"  />
					<span class="fs_1">(해당 정보시스템 또는 DB에 접속하는 사용자수(월단위)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a9">품질 이슈<br />(복수선택가능)</label></th>
				<td>
					<input type="checkbox" name="qlityIssueDataAtCheck" <c:if test="${applyVO.qlityIssueDataAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a9" class="mr_10">데이터값오류</label>
					<input type="checkbox" name="qlityIssueDatabaseAtCheck" <c:if test="${applyVO.qlityIssueDatabaseAt =='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a9_2" class="mr_10">DB구조 오류</label>
					<input type="checkbox" name="qlityIssueAplctnAtCheck" <c:if test="${applyVO.qlityIssueAplctnAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a9_3" class="mr_10">App. 입력오류</label>
					<input type="checkbox" name="qlityIssueCnfrmtyAtCheck" <c:if test="${applyVO.qlityIssueCnfrmtyAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a9_4" class="mr_10">연계기관 정합성 오류</label>
					<input type="checkbox" name="qlityIssueWhtaxAtCheck" <c:if test="${applyVO.qlityIssueWhtaxAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a9_5" class="mr_10">원천기관 집계 오류</label>
					<input type="checkbox" name="qlityIssueQlityAtCheck" <c:if test="${applyVO.qlityIssueQlityAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a9_6" class="mr_10">품질관리체계 부재</label>
					<input type="checkbox" name="qlityIssueEtcAtCheck" <c:if test="${applyVO.qlityIssueEtcAt=='Y'}">checked="true"</c:if> Disabled="true" /> <label for="a9_7" class="mr_10">기타</label>
				</td>
			</tr>
			<tr>
				<th><label for="a10">품질개선 필요성</label></th>
				<td>
					<form:radiobutton path="qlityImprvmNeed" value="001"  Disabled="true" label="매우 필요"  />
					<form:radiobutton path="qlityImprvmNeed" value="002"  Disabled="true" label="상당히필요"  />
					<form:radiobutton path="qlityImprvmNeed" value="003"  Disabled="true" label="다소 필요"  />
				</td>
			</tr>
			<tr>
				<th><label for="a11">품질 현안 및 개선 기대효과</label></th>
				<td>
					<form:textarea path="qlityImprvmExpcEffect" cssClass="text" Disabled="true"  rows="30" cols="50"  cssStyle="width:550px;height:50px;"  />
					<p class="fs_1">(체감하고 있는 데이터 품질 현안과 이에 따른 영향, 개선시 기대효과를 자유롭게 기술)</p>
				</td>
			</tr>
		</table>

		
				<div class="btnArea">
					<span class="button"><input type="button" value="목록"  onclick="fn_list(); return false;"/></span>
					<span class="button"><input type="button" value="인쇄" onclick="fnSave();"/></span>
				</div>
	</div>

</form:form>


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
