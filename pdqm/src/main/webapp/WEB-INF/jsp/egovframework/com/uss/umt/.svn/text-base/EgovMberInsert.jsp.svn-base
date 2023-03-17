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
  * @Class Name : EgovMberInsert.jsp
  * @Description : 일반회원등록 JSP
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
<script type="text/javaScript" language="javascript" defer="defer">
<!--
function fnIdCheck(){
    var retVal;
    var url = "<c:url value='/uss/umt/EgovIdDplctCnfirmView.do'/>";
    var varParam = new Object();
    varParam.checkId = document.mberManageVO.mberId.value;
    var openParam = "dialogWidth:303px;dialogHeight:250px;scroll:no;status:no;center:yes;resizable:yes;";
    retVal = window.showModalDialog(url, varParam, openParam);
    if(retVal) {
    	document.mberManageVO.mberId.value = retVal;
    }
}
function fnListPage(){
    document.mberManageVO.action = "<c:url value='/uss/umt/EgovMberManage.do'/>";
    document.mberManageVO.submit();
}
function fnInsert(){
	if(validateMberManageVO(document.mberManageVO)){
		if(document.mberManageVO.password.value != document.mberManageVO.password2.value){
            alert("<spring:message code="fail.user.passwordUpdate2" />");
            return;
        }
        document.mberManageVO.submit();
    }
}
-->
</script>
</head>

<body>
	<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
		<!-- content start -->
		<form:form commandName="mberManageVO" action="${pageContext.request.contextPath}/uss/umt/EgovMberInsert.do" name="mberManageVO"  method="post" >

		<input name="checkedIdForDel" type="hidden" />
		<!-- 검색조건 유지 -->
		<input type="hidden" name="searchCondition" value="<c:out value='${userSearchVO.searchCondition}'/>"/>
		<input type="hidden" name="searchKeyword" value="<c:out value='${userSearchVO.searchKeyword}'/>"/>
		<input type="hidden" name="sbscrbSttus" value="<c:out value='${userSearchVO.sbscrbSttus}'/>"/>
		<input type="hidden" name="pageIndex" value="<c:out value='${userSearchVO.pageIndex}'/>"/>
		<!-- 우편번호검색 -->
		<input type="hidden" name="zip_url" value="<c:url value='/sym/ccm/zip/EgovCcmZipSearchPopup.do'/>" />

		<div class="title">
			<div class="locationMap">경로넣기</div>
			<h2>일반회원 등록</h2>
		</div>

		<table class="vblType1" summary="일반회원등록 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="80%" />
			</colgroup>
			<tr>
				<th>
					<label for="mberId">일반회원아이디<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:input path="mberId" id="mberId" size="20" cssClass="text" readonly="true" maxlength="20" />
					<a href="#LINK" onclick="fnIdCheck();">
						<img src="<c:url value='/images/egovframework/com/cmm/icon/search.gif' />" alt="필수입력항목" />(중복아이디 검색)
					</a>
					<form:errors path="mberId" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="mberNm">일반회원이름<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td><input name="mberNm" id="mberNm" type="text" class="text" size="20" maxlength="60" /></td>
			</tr>
			<tr>
				<th>
					<label for="password">비밀번호<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:password path="password" id="password" size="20" class="text" maxlength="20" />
					<form:errors path="password" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="password2">비밀번호확인<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<input name="password2" id="password2" type="password" class="text" size="20" maxlength="20" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="passwordHint">비밀번호힌트<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:select path="passwordHint" id="passwordHint" class="text">
						<form:option value="" label="--선택하세요--"/>
						<form:options items="${passwordHint_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
					<form:errors path="passwordHint" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="passwordCnsr">비밀번호정답<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:input path="passwordCnsr" id="passwordCnsr" cssClass="text" size="50" maxlength="100" />
					<form:errors path="passwordCnsr" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th><label for="sexdstnCode">성별구분코드</label></th>
				<td>
					<form:select path="sexdstnCode" id="sexdstnCode" class="text">
						<form:option value="" label="--선택하세요--"/>
						<form:options items="${sexdstnCode_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
				</td>
			</tr>
			<tr>
				<th>
					<label for="areaNo">전화번호<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:input path="areaNo" id="areaNo" title="전화번호" cssClass="text" size="5" maxlength="5" />
					- <form:input path="middleTelno" id="middleTelno" cssClass="text" size="5" maxlength="5" title="전화번호2" />
					- <form:input path="endTelno" id="endTelno" cssClass="text" size="5" maxlength="5" title="전화번호3" />
					<form:errors path="areaNo" cssClass="error" />
					<form:errors path="middleTelno" cssClass="error" />
					<form:errors path="endTelno" cssClass="error" />
				</td>
			</tr>
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
					<label for="mberEmailAdres">이메일주소<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:input path="mberEmailAdres" id="mberEmailAdres" cssClass="text" size="30" maxlength="50" />
					<form:errors path="mberEmailAdres" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="zip_view">우편번호<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<input name="zip_view" id="zip_view" type="text" class="text" size="20" value="<c:out value='${mberManageVO.zip}'/>" maxlength="8"/>
					<form:hidden path="zip" />
						<a href="#LINK" onclick="fn_egov_ZipSearch(document.mberManageVO, document.mberManageVO.zip, document.mberManageVO.zip_view, document.mberManageVO.adres);">
						<img src="<c:url value='/images/egovframework/com/cmm/icon/search.gif' />" alt="필수입력항목" />(우편번호 검색)
						</a>
					<form:errors path="zip" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="adres">주소<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:input path="adres" id="adres" cssClass="text" size="70" maxlength="100" />
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
				<th>
					<label for="groupId">그룹아이디</label>
				</th>
				<td>
					<form:select path="groupId" id="groupId" class="text">
						<form:option value="" label="--선택하세요--"/>
						<form:options items="${groupId_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
					<form:errors path="groupId" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="mberSttus">일반회원상태코드<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:select path="mberSttus" id="mberSttus" class="text">
						<form:option value="" label="--선택하세요--"/>
						<form:options items="${mberSttus_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
					<form:errors path="mberSttus" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="mberType">회원구분<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:select path="mberType" id="mberType" class="text">
						<form:option value="" label="--선택하세요--"/>
						<form:options items="${mberType_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
					<form:errors path="mberType" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="mberGrp">회원그룹<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<form:select path="mberGrp" id="mberGrp" class="text">
						<form:option value="" label="--선택하세요--"/>
						<form:options items="${mberGrp_result}" itemValue="code" itemLabel="codeNm"/>
					</form:select>
					<form:errors path="mberGrp" cssClass="error" />
				</td>
			</tr>
			<tr>
				<th>
					<label for="profYn">전문가여부<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label>
				</th>
				<td>
					<select name="profYn" id="profYn" class="text">
						<option value="Y" <c:if test="${mberManageVO.profYn == 'Y'}">selected="selected"</c:if> >Y</option>
						<option value="N" <c:if test="${mberManageVO.profYn == 'N'}">selected="selected"</c:if> >N</option>
					</select>
				</td>
			</tr>
		</table>

		<div class="btnArea">
			<!-- 등록 -->
			<span class="button"><input type="submit" value="<spring:message code='button.create' />" onclick="fnInsert();" /></span>
			<!-- 목록 -->
			<span class="button"><a href="<c:url value='/uss/umt/EgovMberManage.do'/>" onclick="fnListPage(); return false;"><spring:message code="button.list" /></a></span>
			<!-- 취소 -->
			<span class="button"><a href="#LINK" onclick="document.mberManageVO.reset();"><spring:message code="button.reset" /></a></span>
		</div>

		</form:form>
		<!-- content end -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
