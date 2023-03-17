<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : EgovMberSelectUpdt.jsp
  * @Description : 일반회원상세조회, 수정 JSP
  * @Modification Information
  * @
  * @  수정일         수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2009.03.02    조재영          최초 생성
  *
  *  @author 공통서비스 개발팀 조재영
  *  @since 2009.03.02
  *  @version 1.0
  *  @see
  *
  */
%>

<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="mberManageVO" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/ccm/zip/EgovZipPopup.js' />" ></script>
<script type="text/javascript" language="javascript" defer="defer">
<!--
function fnListPage(){
    document.mberManageVO.action = "<c:url value='/uss/umt/EgovMberManage.do'/>";
    document.mberManageVO.submit();
}
function fnDeleteMber(checkedIds) {
	if(confirm("<spring:message code="common.delete.msg" />")){
	    document.mberManageVO.checkedIdForDel.value=checkedIds;
	    document.mberManageVO.action = "<c:url value='/uss/umt/EgovMberDelete.do'/>";
	    document.mberManageVO.submit();
	}
}
function fnPasswordMove(){
    document.mberManageVO.action = "<c:url value='/uss/umt/EgovMberPasswordUpdtView.do'/>";
    document.mberManageVO.submit();
}
function fnUpdate(){
	if(validateMberManageVO(document.mberManageVO)){
		document.mberManageVO.submit();
    }
}
//-->
</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
		<!-- content start -->
		<form:form commandName="mberManageVO" action="${pageContext.request.contextPath}/uss/umt/EgovMberSelectUpdt.do" name="mberManageVO"  method="post" >

		<!-- 상세정보 사용자 삭제시 prameter 전달용 input -->
		<input name="checkedIdForDel" type="hidden" />
		<!-- 검색조건 유지 -->
		<input type="hidden" name="searchMberType" value="<c:out value='${userSearchVO.searchMberType}'/>"/>
		<input type="hidden" name="searchMberGrp" value="<c:out value='${userSearchVO.searchMberGrp}'/>"/>
		<input type="hidden" name="searchCondition" value="<c:out value='${userSearchVO.searchCondition}'/>"/>
		<input type="hidden" name="searchKeyword" value="<c:out value='${userSearchVO.searchKeyword}'/>"/>
		<input type="hidden" name="sbscrbSttus" value="<c:out value='${userSearchVO.sbscrbSttus}'/>"/>
		<input type="hidden" name="dateFrom" value="<c:out value='${userSearchVO.dateFrom}'/>"/>
		<input type="hidden" name="dateTo" value="<c:out value='${userSearchVO.dateTo}'/>"/>
		<input type="hidden" name="pageIndex" value="<c:out value='${userSearchVO.pageIndex}'/>"/>
		<!-- 우편번호검색 -->
		<input type="hidden" name="zip_url" value="<c:url value='/sym/ccm/zip/EgovCcmZipSearchPopup.do'/>" />
		<!-- 사용자유형정보 : password 수정화면으로 이동시 타겟 유형정보 확인용, 만약검색조건으로 유형이 포함될경우 혼란을 피하기위해 userTy명칭을 쓰지 않음-->
		<input type="hidden" name="userTyForPassword" value="<c:out value='${mberManageVO.userTy}'/>" />

		<div class="title">
			<div class="locationMap">회원정보조회 > 수정</div>
			<h2>회원 정보조회(수정)</h2>
		</div>
		<table class="vblType1" summary="상세조회(수정) 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="80%" />
			</colgroup>
			<tr>
				<th>
					<label for="mberNm">성명</label>
				</th>
				<td>
					<form:input path="mberNm" id="mberNm" size="20" maxlength="60" readonly="true" cssClass="readonly" />
					<form:errors path="mberNm" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="mberId">아이디</label>
				</th>
				<td>
					<form:input path="mberId" id="mberId" size="20" maxlength="20" readonly ="true" cssClass="readonly" />
					<form:errors path="mberId" cssClass="error" />
					<form:hidden path="uniqId" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="mberType">회원구분<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:select path="mberType" id="mberType">
						<form:options items="${mberType_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
					<form:errors path="mberType" cssClass="error"/>
				</td>
			</tr>
			<tr>
				<th>
					<label for="mberGrp">회원그룹<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:select path="mberGrp" id="mberGrp">
						<form:options items="${mberGrp_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
					<form:errors path="mberGrp" cssClass="error"/>
				</td>
			</tr>
			<tr>
				<th>
					<label for="mberEmailAdres">이메일</label>
				</th>
				<td>
					<form:input path="mberEmailAdres" id="mberEmailAdres" readonly ="true" cssClass="readonly" size="30" maxlength="50" />
					<form:errors path="mberEmailAdres" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="newsletterYn">뉴스레터수신여부</label>
				</th>
				<td>
					<form:input path="newsletterYn" id="newsletterYn" readonly ="true" cssClass="readonly" size="1" maxlength="1" />
					<form:errors path="newsletterYn" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="companyName">기관명/회사명</label>
				</th>
				<td>
					<form:input path="companyName" id="companyName" readonly ="true" cssClass="readonly" size="50" maxlength="50" />
					<form:errors path="companyName" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="departmentName">부서명</label>
				</th>
				<td>
					<form:input path="departmentName" id="departmentName" readonly ="true" cssClass="readonly" size="50" maxlength="50" />
					<form:errors path="departmentName" cssClass="error" />
				</td>
			</tr>
			<!--
			<tr>
				<th>
					<label for="passwordHint">비밀번호힌트<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:select path="passwordHint" id="passwordHint">
						<form:option value="" label="--선택하세요--"/>
						<form:options items="${passwordHint_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
					<form:errors path="passwordHint" cssClass="error"/>
				</td>
			</tr>
			<tr>
				<th>
					<label for="passwordCnsr">비밀번호정답<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:input path="passwordCnsr" id="passwordCnsr" cssClass="text" size="50" maxlength="100" />
					<form:errors path="passwordCnsr" cssClass="error"/>
				</td>
			</tr>
			<tr>
				<th><label for="sexdstnCode">성별구분코드</label></th>
				<td>
					<form:select path="sexdstnCode" id="sexdstnCode">
						<form:option value="" label="--선택하세요--"/>
						<form:options items="${sexdstnCode_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
				</td>
			</tr>
			 -->
			<tr>
				<th>
					<label for="areaNo">전화번호<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<!-- <form:input path="areaNo" id="areaNo" cssClass="text" size="5" maxlength="5" /> -->
			      	<select name="areaNo" id="areaNo" class="text" title="지역번호">
					    <option value="02" <c:if test="${mberManageVO.areaNo == '02'}">selected</c:if> >02</option>
					    <option value="031" <c:if test="${mberManageVO.areaNo == '031'}">selected</c:if> >031</option>
					    <option value="032" <c:if test="${mberManageVO.areaNo == '032'}">selected</c:if> >032</option>
					    <option value="033" <c:if test="${mberManageVO.areaNo == '033'}">selected</c:if> >033</option>
					    <option value="041" <c:if test="${mberManageVO.areaNo == '041'}">selected</c:if> >041</option>
					    <option value="042" <c:if test="${mberManageVO.areaNo == '042'}">selected</c:if> >042</option>
					    <option value="043" <c:if test="${mberManageVO.areaNo == '043'}">selected</c:if> >043</option>
					    <option value="051" <c:if test="${mberManageVO.areaNo == '051'}">selected</c:if> >051</option>
					    <option value="052" <c:if test="${mberManageVO.areaNo == '052'}">selected</c:if> >052</option>
					    <option value="053" <c:if test="${mberManageVO.areaNo == '053'}">selected</c:if> >053</option>
					    <option value="054" <c:if test="${mberManageVO.areaNo == '054'}">selected</c:if> >054</option>
					    <option value="055" <c:if test="${mberManageVO.areaNo == '055'}">selected</c:if> >055</option>
					    <option value="061" <c:if test="${mberManageVO.areaNo == '061'}">selected</c:if> >061</option>
					    <option value="062" <c:if test="${mberManageVO.areaNo == '062'}">selected</c:if> >062</option>
					    <option value="063" <c:if test="${mberManageVO.areaNo == '063'}">selected</c:if> >063</option>
					    <option value="070" <c:if test="${mberManageVO.areaNo == '070'}">selected</c:if> >070</option>
					    <option value="010" <c:if test="${mberManageVO.areaNo == '010'}">selected</c:if> >010</option>
					    <option value="011" <c:if test="${mberManageVO.areaNo == '011'}">selected</c:if> >011</option>
					    <option value="016" <c:if test="${mberManageVO.areaNo == '016'}">selected</c:if> >016</option>
					    <option value="017" <c:if test="${mberManageVO.areaNo == '017'}">selected</c:if> >017</option>
					    <option value="018" <c:if test="${mberManageVO.areaNo == '018'}">selected</c:if> >018</option>
					    <option value="019" <c:if test="${mberManageVO.areaNo == '019'}">selected</c:if> >019</option>
			      	</select>

					- <form:input path="middleTelno" id="middleTelno" cssClass="text" size="4" maxlength="4" title="전화번호2" />
					- <form:input path="endTelno" id="endTelno" cssClass="text" size="4" maxlength="4" title="전화번호3" />
					<form:errors path="areaNo" cssClass="error" />
					<form:errors path="middleTelno" cssClass="error" />
					<form:errors path="endTelno" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="sbscrbDe">가입일시</label>
				</th>
				<td>
					<form:input path="sbscrbDe" id="sbscrbDe" readonly ="true" cssClass="readonly" size="30" maxlength="30" />
					<form:errors path="sbscrbDe" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="accessDe">최근접속일</label>
				</th>
				<td>
					<form:input path="accessDe" id="accessDe" readonly ="true" cssClass="readonly" size="30" maxlength="30" />
					<form:errors path="accessDe" cssClass="error" />
				</td>
			</tr>

			<!--
			<tr>
				<th><label for="mberFxnum">팩스번호</label></th>
				<td>
					<form:input path="mberFxnum" id="mberFxnum" cssClass="text" size="20"  maxlength="15" />
					<form:errors path="mberFxnum" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="moblphonNo">핸드폰번호<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:input path="moblphonNo" id="moblphonNo" cssClass="text" size="20" maxlength="15" />
					<form:errors path="moblphonNo" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="zip_view">우편번호<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="" /></label>
				</th>
				<td>
					<input name="zip_view" id="zip_view" type="text" size="20" value="<c:out value='${mberManageVO.zip}'/>" maxlength="8" readonly="readonly" />
					<form:hidden path="zip" />
						<a href="#LINK" onclick="fn_egov_ZipSearch(document.mberManageVO, document.mberManageVO.zip, document.mberManageVO.zip_view, document.mberManageVO.adres);">
							<img src="<c:url value='/images/egovframework/com/cmm/icon/search.gif' />" alt="" />(우편번호 검색)
						</a>
					<form:errors path="zip" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="adres">주소<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" width="15" height="15" alt="" /></label>
				</th>
				<td>
					<form:input path="adres" id="adres" cssClass="text" size="70" maxlength="100" readonly="true" />
					<form:errors path="adres" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th><label for="detailAdres">상세주소</label></th>
				<td>
					<form:input path="detailAdres" id="detailAdres" cssClass="text" size="70" maxlength="100" />
					<form:errors path="detailAdres" cssClass="error" />
				</td>
			</tr>

			<tr>
				<th><label for="groupId">그룹아이디</label></th>
				<td>
					<form:select path="groupId" id="groupId">
						<form:option value="" label="--선택하세요--"/>
						<form:options items="${groupId_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
					<form:errors path="groupId" cssClass="error"/>
				</td>
			</tr>
			<tr>
				<th>
					<label for="mberSttus">일반회원상태코드<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:select path="mberSttus" id="mberSttus">
						<form:option value="" label="--선택하세요--"/>
						<form:options items="${mberSttus_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
					<form:errors path="mberSttus" cssClass="error"/>
				</td>
			</tr>

			<tr>
				<th>
					<label for="profYn">전문가여부<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<select name="profYn" id="profYn">
						<option value="Y" <c:if test="${mberManageVO.profYn == 'Y'}">selected="selected"</c:if> >Y</option>
						<option value="N" <c:if test="${mberManageVO.profYn == 'N'}">selected="selected"</c:if> >N</option>
					</select>
					<form:hidden path="password" />
				</td>
			</tr>
 -->
		</table>

		<div class="btnArea">
			<!-- 수정 -->
			<span class="button"><input type="submit" value="<spring:message code='button.update' />" onclick="fnUpdate();" /></span>
			<!-- 삭제 -->
			<span class="button" style="display:none"><a href="<c:url value='/uss/umt/EgovMberManage.do'/>" onclick="fnDeleteMber('<c:out value='${mberManageVO.userTy}'/>:<c:out value='${mberManageVO.uniqId}'/>'); return false;"><spring:message code="button.delete" /></a></span>
			<!-- 목록 -->
			<span class="button"><a href="<c:url value='/uss/umt/EgovMberManage.do'/>" onclick="fnListPage(); return false;"><spring:message code="button.list" /></a></span>
			<!-- 암호변경 -->
			<span class="button" style="display:none"><a href="<c:url value='/uss/umt/EgovMberPasswordUpdtView.do'/>" onclick="fnPasswordMove(); return false;"><spring:message code="button.passwordUpdate" /></a></span>
			<!-- 취소 -->
			<span class="button" style="display:none"><a href="#LINK" onclick="javascript:document.mberManageVO.reset();"><spring:message code="button.reset" /></a></span>
		</div>

		</form:form>
		<!-- content end -->

<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
