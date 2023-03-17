<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : EgovBannerList.java
 * @Description : 팝업존/서비스바로가기
 * @Modification Information
 * @
 * @  수정일					수정자				수정내용
 * @ ---------	 --------	---------------------------
 * @ 2011.11.09	박상호		 최초 생성
 *
 *  @author 박상호
 *  @since 2011.11.09
 *  @version 1.0
 *  @see
 *
 */
%>

<script type="text/javaScript" language="javascript" defer="defer">
<!--

function fncCheckAll() {
	var checkField = document.listForm.delYn;
	if(document.listForm.checkAll.checked) {
		if(checkField) {
			if(checkField.length > 1) {
				for(var i=0; i < checkField.length; i++) {
					checkField[i].checked = true;
				}
			} else {
				checkField.checked = true;
			}
		}
	} else {
		if(checkField) {
			if(checkField.length > 1) {
				for(var j=0; j < checkField.length; j++) {
					checkField[j].checked = false;
				}
			} else {
				checkField.checked = false;
			}
		}
	}
}

function fncManageChecked() {

	var checkField = document.listForm.delYn;
	var checkId = document.listForm.checkId;
	var returnValue = "";
	var returnBoolean = false;
	var checkCount = 0;

	if(checkField) {
		if(checkField.length > 1) {
			for(var i=0; i<checkField.length; i++) {
				if(checkField[i].checked) {
					checkCount++;
					checkField[i].value = checkId[i].value;
					if(returnValue == "")
						returnValue = checkField[i].value;
					else
						returnValue = returnValue + ";" + checkField[i].value;
				}
			}
			if(checkCount > 0)
				returnBoolean = true;
			else {
				alert("선택된  배너가 없습니다.");
				returnBoolean = false;
			}
		} else {
			if(document.listForm.delYn.checked == false) {
				alert("선택된 배너가 없습니다.");
				returnBoolean = false;
			}
			else {
				returnValue = checkId.value;
				returnBoolean = true;
			}
		}
	} else {
		alert("조회된 결과가 없습니다.");
	}

	document.listForm.bannerIds.value = returnValue;
	return returnBoolean;
}

function fncSelectBannerList(pageNo){
	document.listForm.searchCondition.value = "1";
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/uss/ion/bnr/selectBannerList.do'/>";
	document.listForm.submit();
}

function fncSelectBanner(bannerId) {
	document.listForm.bannerId.value = bannerId;
	document.listForm.action = "<c:url value='/uss/ion/bnr/getBanner.do'/>";
	document.listForm.submit();
}

function fncAddBannerInsert() {
	if(document.listForm.pageIndex.value == "") {
		document.listForm.pageIndex.value = 1;
	}
	document.listForm.action = "<c:url value='/uss/ion/bnr/addViewBanner.do'/>";
	document.listForm.submit();
}

function fncBannerListDelete() {
	if(fncManageChecked()) {
		if(confirm("삭제하시겠습니까?")) {
			document.listForm.action = "<c:url value='/uss/ion/bnr/removeBannerList.do'/>";
			document.listForm.submit();
		}
	}
}

function linkPage(pageNo){
	document.listForm.searchCondition.value = "1";
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/uss/ion/bnr/selectBannerList.do'/>";
	document.listForm.submit();
}

function press() {

	if (event.keyCode==13) {
		fncSelectBannerList('1');
	}
}
-->
</script>

</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
	<!-- content start -->
	<div class="title">
		<div class="locationMap">경로넣기</div>
		<h2>팝업존/서비스바로가기 관리</h2>
	</div>

	<form name="listForm" action="<c:url value='/uss/ion/bnr/selectBannerList.do'/>" method="post">
		<input type="hidden" name="bannerId" />
		<input type="hidden" name="pageIndex" value="<c:if test='${empty bannerVO.pageIndex }'>1</c:if><c:if test='${!empty bannerVO.pageIndex }'><c:out value='${bannerVO.pageIndex}'/></c:if>" />
		<input type="hidden" name="searchCondition" value="1" />

		<fieldset>
		<legend>검색조건</legend>
			<table class="vblType1" summary="검색조건 테이블입니다.">
				<colgroup>
					<col width="20%" />
					<col width="80%" />
				</colgroup>
				<tr>
					<th><label for="searchBannerType">구분</label></th>
					<td>
						<select name="searchBannerType" id="searchBannerType">
							<option selected="selected" value=''>--전체--</option>
							<c:forEach var="result"  items="${bannerType_result}" varStatus="bannerType">
							<option value='<c:out value="${result.code}"/>' <c:if test='${bannerVO.searchBannerType == result.code }'>selected='selected'</c:if> ><c:out value="${result.codeNm}"/></option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th><label for="searchKeyword">검색어</label></th>
					<td>
						<select name="keywordType" id="keywordType">
							<option value='0' <c:if test="${bannerVO.keywordType == '0'}">selected="selected"</c:if>>--선택하세요--</option>
							<option value='1' <c:if test="${bannerVO.keywordType == '1'}">selected="selected"</c:if>>팝업존/서비스명</option>
							<option value='2' <c:if test="${bannerVO.keywordType == '2'}">selected="selected"</c:if>>링크URL</option>
							<option value='3' <c:if test="${bannerVO.keywordType == '3'}">selected="selected"</c:if>>팝업존/서비스설명</option>
						</select>
						<input type="text" id="searchKeyword" name="searchKeyword" class="text" value="<c:out value='${bannerVO.searchKeyword}'/>" size="25" title="검색어입력" onkeypress="press();" />
					</td>
				</tr>
			</table>
			<div class="btnArea">
				<!-- 검색 -->
				<span class="button"><input type="submit" value="<spring:message code='button.search' />" onclick="fncSelectBannerList('1');" /></span>
			</div>
		</fieldset>

		<table summary="팝업존/서비스명목록 테이블입니다." class="tblType1 tblSpace">
			<colgroup>
				<col width="7%" />
				<col width="12%" />
				<col width="20%" />
				<col width="31%" />
				<col width="20%" />
				<col width="10%" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">구분</th>
					<th scope="col">팝업존/서비스명</th>
					<th scope="col">링크 URL</th>
					<th scope="col">설명</th>
					<th scope="col">반영여부</th>
				</tr>
			</thead>
			<tbody>
				<%-- 데이터를 없을때 화면에 메세지를 출력해준다 --%>
				<c:if test="${fn:length(bannerList) == 0}">
				<tr>
					<td colspan="16" class="ta_c"><spring:message code="common.nodata.msg" /></td>
				</tr>
				</c:if>
				<c:forEach var="banner" items="${bannerList}" varStatus="status">
				<tr>
					<td><c:out value="${(bannerVO.pageIndex-1) * bannerVO.pageSize + status.count}"/></td>
					<td>
						<c:forEach var="bannerType_result" items="${bannerType_result}" varStatus="bannerType">
							<c:if test="${banner.bannerType == bannerType_result.code}"><c:out value="${bannerType_result.codeNm}"/></c:if>
						</c:forEach>
					</td>
					<td class="ta_l">
						<!-- <form name="item" method="post" action="<c:url value='/uss/ion/bnr/getBanner.do'/>">
							 <input type="text" name="bannerId" value="<c:out value="${banner.bannerId}"/>">
							<input type="text" name="pageIndex" value="<c:out value='${bannerVO.pageIndex}'/>">
							<input type="text" name="searchCondition" value="<c:out value='${bannerVO.searchCondition}'/>">
							<input type="text" name="searchKeyword" value="<c:out value="${bannerVO.searchKeyword}"/>">
							</form>
							  -->
							<!-- <span class="link"><input type="submit" value="<c:out value="${banner.bannerNm}"/>" onclick="fncSelectBanner('<c:out value="${banner.bannerId}"/>'); return false;"></span> -->
						<a href="<c:url value='/uss/ion/bnr/getBanner.do'/>"  onclick="fncSelectBanner('<c:out value='${banner.bannerId}'/>'); return false;" ><c:out value="${banner.bannerNm}"/></a>
					</td>
					<td class="ta_l"><p><c:out value="${banner.linkUrl}"/></p></td>
					<td class="ta_l"><c:out value="${banner.bannerDc}"/></td>
					<td><c:out value="${banner.reflctAt}"/></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>

		<!--  page start -->
		<c:if test="${!empty bannerVO.pageIndex }">
		<div class="paging">
			<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="linkPage" />
		</div>
		</c:if>
		<!--  page end -->

		<div class="btnArea">
			<!-- 등록 -->
			<span class="button"><a href="<c:url value='/uss/ion/bnr/addViewBanner.do'/>?pageIndex=<c:out value='${bannerVO.pageIndex}'/>&amp;searchKeyword=<c:out value='${bannerVO.searchKeyword}'/>&amp;searchCondition=1" onclick="fncAddBannerInsert(); return false;"><spring:message code="button.create" /></a></span>
		</div>
	</form>

	<!-- content end -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
