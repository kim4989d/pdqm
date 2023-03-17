<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%--
/**
 * @Class Name  : EgovRoleUpdate.java
 * @Description : 팝업존/서비스관리
 * @Modification Information
 * @
 * @  수정일         수정자          수정내용
 * @ -------    --------    ---------------------------
 * @ 2009.02.01    lee.m.j          최초 생성
 *
 *  @author lee.m.j
 *  @since 2009.03.11
 *  @version 1.0
 *  @see
 *
 *  Copyright (C) 2009 by MOPAS  All right reserved.
 */
 --%>

<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/fms/EgovMultiFile.js'/>"></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="banner" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript" defer="defer">

function fncSelectBannerList() {
    var varFrom = document.getElementById("banner");
    varFrom.action = "<c:url value='/uss/ion/bnr/selectBannerList.do'/>";
    varFrom.submit();
}

function fncBannerUpdate() {
    var varFrom = document.getElementById("banner");
    varFrom.action = "<c:url value='/uss/ion/bnr/updtBanner.do'/>";

    if(confirm("저장 하시겠습니까?")){
        if(!validateBanner(varFrom)){
            return;
        }else{
            varFrom.submit();
        }
    }
}

function fncBannerDelete() {
    var varFrom = document.getElementById("banner");
    varFrom.action = "<c:url value='/uss/ion/bnr/removeBanner.do'/>";
    if(confirm("삭제 하시겠습니까?")){
        varFrom.submit();
    }
}

</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

		<form:form commandName="banner" method="post" action="${pageContext.request.contextPath}/uss/ion/bnr/updtBanner.do' />" enctype="multipart/form-data">
		<input type="hidden" name="posblAtchFileNumber" value="1"  >
		<div class="title">
			<div class="locationMap">경로넣기</div>
			<h2>팝업존/서비스바로가기 수정</h2>
		</div>

		<table class="vblType1" summary="상세조회(수정) 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="80%" />
			</colgroup>
			<tr>
				<th><label for="bannerId">ID<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td><input name="bannerId" id="bannerId" type="text" class="text" value="<c:out value='${banner.bannerId}'/>" size="30" readonly="true" /></td>
			</tr>
			<tr>
				<th><label for="bannerNm">팝업존/서비스명<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td><input name="bannerNm" id="bannerNm" type="text" class="text" value="<c:out value='${banner.bannerNm}'/>" maxLength="10" size="30" /></td>
			</tr>
			<tr>
				<th><label for="linkUrl">링크URL<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td><input name="linkUrl" id="linkUrl" type="text" class="text" value="<c:out value='${banner.linkUrl}'/>" maxLength="255" size="50" /></td>
			</tr>
			<tr>
				<th><label for="egovComFileUploader">이미지<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
			        <input type="file" name="egovComFileUploader" id="egovComFileUploader" class="text" />&nbsp;
			        <input name="bannerImage" id="bannerImage" type="text" class="text" value="<c:out value='${banner.bannerImage}'/>" maxLength="30" size="30" readonly="true" />
				</td>
			</tr>
			<tr>
				<th><label for="bannerDc">설명<img src="<c:url value='/images/egovframework/com/cmm/icon/no_required.gif' />" alt="필수입력항목" /></label></th>
				<td>
			        <input name="bannerDc" id="bannerDc" type="text" class="text" value="<c:out value='${banner.bannerDc}'/>" maxLength="100" size="80" />
				</td>
			</tr>
			<tr>
				<th><label for="sortOrdr">정렬순서<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
			        <input name="sortOrdr" id="sortOrdr" type="text" class="text" value="<c:out value='${banner.sortOrdr}'/>" maxLength="5" size="10" />
				</td>
			</tr>
			<tr>
				<th><label for="reflctAt">반영여부<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<select name="reflctAt" id="reflctAt" class="text">
					    <option value="Y" <c:if test="${banner.reflctAt == 'Y'}">selected</c:if> >Y</option>
					    <option value="N" <c:if test="${banner.reflctAt == 'N'}">selected</c:if> >N</option>
					</select>
				</td>
			</tr>
			<tr>
				<th><label for="bannerType">팝업존/서비스구분<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<select name="bannerType" id="bannerType" class="text">
						<c:forEach var="result"  items="${bannerType_result}" varStatus="mberType">
						    <option value='<c:out value="${result.code}"/>' <c:if test="${banner.bannerType == result.code }">selected="selected"</c:if> >
						    <c:out value="${result.codeNm}"/></option>
					    </c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th><label for="regDate">등록일시<img src="<c:url value='/images/egovframework/com/cmm/icon/no_required.gif' />" alt="필수입력항목" /></label></th>
				<td>
					<input name="regDate" id="regDate" type="text" class="text" value="<c:out value='${banner.regDate}'/>" maxLength="50" size="20" readonly="true" />
				</td>
			</tr>
		</table>

		<div class="btnArea">
			<!-- 수정 -->
			<span class="button"><input type="submit" value="<spring:message code="button.save" />" onclick="fncBannerUpdate(); return false;" /></span>
			<!-- 삭제 -->
			<span class="button" style="display:none"><a href="<c:url value='/uss/ion/bnr/removeBanner.do'/>?bannerId=<c:out value='${bannerVO.bannerId}'/>" onclick="fncBannerDelete(); return false;"><spring:message code="button.delete" /></a></span>
			<!-- 목록 -->
			<span class="button"><a href="<c:url value='/uss/ion/bnr/selectBannerList.do'/>?pageIndex=<c:out value='${bannerVO.pageIndex}'/>&amp;searchKeyword=<c:out value="${bannerVO.searchKeyword}"/>&amp;searchCondition=1" onclick="fncSelectBannerList(); return false;"><spring:message code="button.list" /></a></span>
		</div>


		<!-- 검색조건 유지 -->
		<input type="hidden" name="searchCondition" value="<c:out value='${bannerVO.searchCondition}'/>" />
		<input type="hidden" name="searchKeyword" value="<c:out value='${bannerVO.searchKeyword}'/>" />
		<input type="hidden" name="pageIndex" value="<c:out value='${bannerVO.pageIndex}'/>" />
		<input type="hidden" name="searchBannerType" value="<c:out value='${bannerVO.searchBannerType}'/>" />


		</form:form>
		<!-- content end -->


<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>

