<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%
/**
 * @Class Name : PdqmApplyRegist.jsp
 * @Description : 사업신청
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
	<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
	<validator:javascript formName="pdqmApply" staticJavascript="false" xhtml="true" cdata="false"/>

<script type="text/javaScript" language="javascript" defer="defer">
	<!--

	function fn_insert(){
		var varForm		 = document.form;
		if(validatePdqmApply(document.form)){

			if (varForm.dbmsYpCreatAtCheck.checked == false && varForm.dbmsYpColctAtCheck.checked == false 
					&& varForm.dbmsYpProvdAtCheck.checked == false && varForm.dbmsYpCmpunAtCheck.checked == false){
				alert("하나 이상의 DB유형을 선택하세오.");
				return ;
			}
			
			if (varForm.infoDmandInsttAtCheck.checked == false && varForm.infoDmandPblinsttAtCheck.checked == false 
					&& varForm.infoDmandPrvateAtCheck.checked == false && varForm.infoDmandGnrlAtCheck.checked == false ){
				alert("하나 이상의 정보 수유자를 선택하세오.");
				return ;
			}
			
			if (varForm.qlityIssueDataAtCheck.checked == false && varForm.qlityIssueDatabaseAtCheck.checked == false 
					&& varForm.qlityIssueAplctnAtCheck.checked == false && varForm.qlityIssueCnfrmtyAtCheck.checked == false 
					&& varForm.qlityIssueWhtaxAtCheck.checked == false && varForm.qlityIssueQlityAtCheck.checked == false
					&& varForm.qlityIssueEtcAtCheck.checked == false ){
				alert("하나 이상의 품질이슈를 선택하세오.");
				return ;
			}
			
			if(varForm.dbmsYpCreatAtCheck.checked){
				varForm.dbmsYpCreatAt.value = "Y";
			}
			if(varForm.dbmsYpColctAtCheck.checked){
				varForm.dbmsYpColctAt.value = "Y";
			}
			if(varForm.dbmsYpProvdAtCheck.checked){
				varForm.dbmsYpProvdAt.value = "Y";
			}
			if(varForm.dbmsYpCmpunAtCheck.checked){
				varForm.dbmsYpCmpunAt.value = "Y";
			}
			
			if(varForm.infoDmandInsttAtCheck.checked){
				varForm.infoDmandInsttAt.value = "Y";
			}
			if(varForm.infoDmandPblinsttAtCheck.checked){
				varForm.infoDmandPblinsttAt.value = "Y";
			}
			if(varForm.infoDmandPrvateAtCheck.checked){
				varForm.infoDmandPrvateAt.value = "Y";
			}
			if(varForm.infoDmandGnrlAtCheck.checked){
				varForm.infoDmandGnrlAt.value = "Y";
			}			
			if(varForm.qlityIssueDataAtCheck.checked){
				varForm.qlityIssueDataAt.value = "Y";
			}
			if(varForm.qlityIssueDatabaseAtCheck.checked){
				varForm.qlityIssueDatabaseAt.value = "Y";
			}
			if(varForm.qlityIssueAplctnAtCheck.checked){
				varForm.qlityIssueAplctnAt.value = "Y";
			}
			if(varForm.qlityIssueCnfrmtyAtCheck.checked){
				varForm.qlityIssueCnfrmtyAt.value = "Y";
			}
			if(varForm.qlityIssueWhtaxAtCheck.checked){
				varForm.qlityIssueWhtaxAt.value = "Y";
			}
			if(varForm.qlityIssueQlityAtCheck.checked){
				varForm.qlityIssueQlityAt.value = "Y";
			}
			if(varForm.qlityIssueEtcAtCheck.checked){
				varForm.qlityIssueEtcAt.value = "Y";
			}
			
			if(confirm("<spring:message code='common.save.msg'/>")){
				varForm.action = "<c:url value='/support/apply/insertPdqmApply.do'/>";
				varForm.submit();
			}

	    }
	}


	
	//-->
	</script>
	
			
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>
<form:form commandName="applyVO"  name="form" method="post">
<!-- contents영역시작 -->


<input type="hidden" name="dbmsYpCreatAt"  value="N" />
<input type="hidden" name="dbmsYpColctAt" value="N"  />
<input type="hidden" name="dbmsYpProvdAt"  value="N" />
<input type="hidden" name="dbmsYpCmpunAt"  value="N" />

<input type="hidden" name="infoDmandInsttAt"  value="N" />
<input type="hidden" name="infoDmandPblinsttAt" value="N"  />
<input type="hidden" name="infoDmandPrvateAt" value="N" />
<input type="hidden" name="infoDmandGnrlAt"  value="N" />

<input type="hidden" name="qlityIssueDataAt" value="N"  />
<input type="hidden" name="qlityIssueDatabaseAt"  value="N" />
<input type="hidden" name="qlityIssueAplctnAt"  value="N" />
<input type="hidden" name="qlityIssueCnfrmtyAt" value="N"  />
<input type="hidden" name="qlityIssueWhtaxAt" value="N"  />
<input type="hidden" name="qlityIssueQlityAt" value="N"  />
<input type="hidden" name="qlityIssueEtcAt"  value="N" />
<input type="hidden" name="dmandExaminNm"  value="${infoVo.dmandExaminNm }" />

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 수요조사안내 > <em>사업신청</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup3_2.gif'/>" alt="사업신청" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup3_desc.png'/>" class="png24" alt="공공정보 품질관리 및 개선을 위하여 품질관리 지원사업 수요 조사에 대해 알려드리며, 사업 신청 기간내 사업 신청서를 작성할 수 있습니다.  국가차원에서 품질진단 및 개선을 지원할 예정이오니 많은 참여 부탁드립니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup3_5.gif'/>" alt="인적사항" /></h4>
		<table class="conTable2" summary="인적사항 입력 테이블입니다.">
			<colgroup>
				<col width="20%"/><col width="30%"/><col width="22%"/><col width="28%"/>
			</colgroup>
			<tr>
				<th><label for="d1">성명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td class="bd_r">
					<form:input path="name" cssClass="text" title="성명" cssStyle="width:200px" maxlength="50"  />
				</td>
				<th><label for="d2">소속기관<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td><form:input path="pstinst" cssClass="text" title="소속기관"  cssStyle="width:200px" maxlength="50"  />
				</td>
			</tr>
			<tr>
				<th><label for="d3">부서<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td class="bd_r"><form:input path="dept" cssClass="text" title="부서"  cssStyle="width:200px" maxlength="50"  />
				 </td>
				<th><label for="d4">직위<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td><form:input path="ofcps" cssClass="text" title="직위"  cssStyle="width:200px" maxlength="50"  />
				</td>
			</tr>
			<tr>
				<th><label for="d5">연락처(사무실)<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td class="bd_r">
					<form:select path="offmAreaNo" title="사무실전화 시작번호">
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
					<form:input path="offmMiddleTelno" cssClass="text" title="사무실전화 중간번호" cssStyle="width:40px;"  maxlength="4" /> - <form:input path="offmEndTelno" cssClass="text" title="사무실전화 끝번호" cssStyle="width:40px;" maxlength="4" />
				</td>
				<th><label for="d6">연락처(휴대전화)<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:select path="areaNo" title="휴대전화 시작번호">
						<form:option value="010" label="010"/>
						<form:option value="011" label="011"/>
						<form:option value="016" label="016"/>
						<form:option value="017" label="017"/>
						<form:option value="018" label="018"/>
						<form:option value="019" label="019"/>
					</form:select> -
					<form:input path="middleTelno" cssClass="text" title="휴대전화 중간번호" cssStyle="width:40px;" maxlength="4" /> - <form:input path="endTelno" cssClass="text" title="휴대전화 끝번호" cssStyle="width:40px;" maxlength="4" />
				</td>
			</tr>
			<tr>
				<th><label for="d7">E-mail<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td colspan="3"><form:input path="emailAdres" cssClass="text" title="E-mail" cssStyle="width:200px" maxlength="100"  />
				</td>
			</tr>
		</table>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup3_6.gif'/>" alt="신청DB" /></h4>
		<table class="conTable2" summary="신청DB 입력 테이블입니다.">
			<colgroup>
				<col width="22%" /><col width="auto" />
			</colgroup>
			<tr>
				<th><label for="a1">DB명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:input path="dbmsNm" cssClass="text" title="DB명" cssStyle="width:200px"  />
					<span class="fs_1">(해당 정보시스템 DB명 기재)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a2">DB 주요내용<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:input path="dbmsMainCn" cssClass="text" title="DB 주요내용" cssStyle="width:200px"  />
					<span class="fs_1">(해당 DB의 주요 내용 기재)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a3">DB 유형<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /><br />(복수선택가능)</label></th>
				<td>
					<input type="checkbox" name="dbmsYpCreatAtCheck" title="자체 생성형" /> <label for="a3" class="mr_10">자체 생성형</label>
					<input type="checkbox" name="dbmsYpColctAtCheck" title="수집형" /> <label for="a3_2" class="mr_10">수집형</label>
					<input type="checkbox" name="dbmsYpProvdAtCheck" title="제공형" /> <label for="a3_3" class="mr_10">제공형</label>
					<input type="checkbox" name="dbmsYpCmpunAtCheck" title="복합형" /> <label for="a3_3" class="mr_10">복합형</label>
				</td>
			</tr>
			<tr>
				<th><label for="a4">정보수요자<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /><br />(복수선택가능)</label></th>
				<td>
					<input type="checkbox" name="infoDmandInsttAtCheck" title="기관내부 사용자"  /> <label for="a4" class="mr_10">기관내부 사용자</label>
					<input type="checkbox" name="infoDmandPblinsttAtCheck" title="타공공기관"  /> <label for="a4_2" class="mr_10">타공공기관</label>
					<input type="checkbox" name="infoDmandPrvateAtCheck" title="민간업체"  /> <label for="a4_3" class="mr_10">민간업체</label>
					<input type="checkbox" name="infoDmandGnrlAtCheck" title="일반국민"  /> <label for="a4_4" class="mr_10">일반국민</label>
				</td>
			</tr>
			<tr>
				<th><label for="a5">정보 연계활용기관<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:input path="infoCntcPrcuseInstt" title="정보 연계활용기관" cssClass="text" cssStyle="width:200px"  />
					<span class="fs_1">(해당 DB를 연계하여 활용하는 기관명/시스템명)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a6">원천정보 보유기관<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:input path="srcInfoHoldInstt" cssClass="text" title="원천정보 보유기관" cssStyle="width:200px"  />
					<span class="fs_1">(해당 DB를 연계하여 보유한 기관명/시스템명)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a7">정보 공개 여부<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:textarea path="infoOthbcAt" title="정보 공개 여부" cssClass="text" rows="30" cols="50"  cssStyle="width:520px;height:50px;"  />
					<p class="fs_1">(공공정보 제공 지침에 따라 공개하고 있는 주요정보 및 제공방법 기재 – 제공방법:Open API, 다운로드, 시스템 연계 등)</p>
				</td>
			</tr>
			<tr>
				<th><label for="a8">사용자 활용 수준<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:input path="emplyrPrcuseLevel" title="사용자 활용 수준" cssClass="text"  cssStyle="width:200px"  />
					<span class="fs_1">(해당 정보시스템 또는 DB에 접속하는 사용자수(월단위)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a9">품질 이슈<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /><br />(복수선택가능)</label></th>
				<td>
					<input type="checkbox" name="qlityIssueDataAtCheck" title="데이터값오류"/> <label for="a9" class="mr_10">데이터값오류</label>
					<input type="checkbox" name="qlityIssueDatabaseAtCheck" title="DB구조 오류"/> <label for="a9_2" class="mr_10">DB구조 오류</label>
					<input type="checkbox" name="qlityIssueAplctnAtCheck" title="App. 입력오류"/> <label for="a9_3" class="mr_10">App. 입력오류</label>
					<input type="checkbox" name="qlityIssueCnfrmtyAtCheck" title="연계기관 정합성 오류"/> <label for="a9_4" class="mr_10">연계기관 정합성 오류</label>
					<input type="checkbox" name="qlityIssueWhtaxAtCheck" title="원천기관 집계 오류"/> <label for="a9_5" class="mr_10">원천기관 집계 오류</label>
					<input type="checkbox" name="qlityIssueQlityAtCheck" title="품질관리체계 부재"/> <label for="a9_6" class="mr_10">품질관리체계 부재</label>
					<input type="checkbox" name="qlityIssueEtcAtCheck" title="기타"/> <label for="a9_7" class="mr_10">기타</label>
				</td>
			</tr>
			<tr>
				<th><label for="a10">품질개선 필요성<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:radiobutton path="qlityImprvmNeed" value="001" CHECKED="CHECKED" label="매우 필요"  />
					<form:radiobutton path="qlityImprvmNeed" value="002" label="상당히필요"  />
					<form:radiobutton path="qlityImprvmNeed" value="003" label="다소 필요"  />
				</td>
			</tr>
			<tr>
				<th><label for="a11">품질 현안 및 개선 기대효과<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<form:textarea path="qlityImprvmExpcEffect" title="품질 현안 및 개선 기대효과" cssClass="text" rows="30" cols="50"  cssStyle="width:520px;height:50px;"  />
					<p class="fs_1">(체감하고 있는 데이터 품질 현안과 이에 따른 영향, 개선시 기대효과를 자유롭게 기술)</p>
				</td>
			</tr>
		</table>

		<p class="mtb_5"><strong class="fc_blue1">※ DB유형 설명</strong></p>
		<ul class="depth1_con liType1">
			<li>자체 생성형 : 다른 DB와 연계 없이 자체적으로 정보 생성·활용하는 DB</li>
			<li>수집형 : 다른 DB로부터 연계를 통해 정보를 수집(가공)·활용하는 DB</li>
			<li>제공형 : 생성 또는 수집된 정보를 연계를 통해 다른 DB에 제공하는 DB</li>
			<li>복합형 : DATA 생성, 수집, 제공이 다른 DB와 상호연계를 통해 복합적으로 구성되는  DB</li>
		</ul>

		<p class="btnArea ta_c mt_30">
			<c:if test="${infoVo.reqstYn == 'Y'}">
				<a href="javascript:fn_insert();"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_end.gif'/>" alt="완료" /></a>
			</c:if>
		</p>
	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
</form:form>	
<%@ include file="/html/pdqm/include/footer.jsp" %>
