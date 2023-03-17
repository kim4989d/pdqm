<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : ResultExplainModity.jsp
 * @Description : 자가진단 결과설명 관리
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
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>

<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_update(){
	
	
	if (fn_fomrValidate()){
		if(confirm("<spring:message code='common.update.msg'/>")){
			document.form.action = "<c:url value='/support/diagnosis/level/updateResultExplain.do'/>";
		   	document.form.submit();
		}
	}
}

function fn_fomrValidate(){
	
	return true;

}

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href = "<c:url value='/support/diagnosis/level/selectResultExplainList.do'/>";
}
	

</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<form:form commandName="diagnosisLevelScore"  name="form" method="post">

<!-- hidden  -->

<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 결과 설명 관리</div>
		<h2>결과 설명  수정</h2>
	</div>

	<!-- search -->
	<fieldset>
	<table class="searchType1" summary="검색조건선택 테이블입니다.">
		<colgroup>
			<col width="12%" />
			<col width="20%"/>
			<col width="12%" />
			<col width="20%"/>
			<col width="12%" />
			<col width="auto"/>
		</colgroup>
		<tr>
			<th>진단대상</th>
			<td>
				<form:input path="upperDgnssTrgetNm" cssClass="readonly" cssStyle="width:100px" Disabled ="true "  />
				<form:hidden path="dgnssTrgetId"   />
			</td>
			<th>진단관점</th>
			<td>
				<form:input path="dgnssTrgetNm" cssClass="readonly" cssStyle="width:100px" Disabled ="true "  />
			</td>
			<th>결과상태</th>
			<td>
				<form:input path="codeNm" cssClass="readonly" cssStyle="width:100px" Disabled ="true "  />
				<form:hidden path="code"   />
			</td>
		</tr>
	</table>
	</fieldset>
	<!--// search -->

	<!-- listTable: Start -->

	<table class="vblType1 tblSpace" summary="입력 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="auto" />
		</colgroup>
		<tr>
			<th><label for="label_1">결과설명</label></th>
			<td>
				<form:textarea path="resultDc" cssClass="text" cols="50" rows="10" cssStyle="width:570px;" />
			</td>
		</tr>
	</table>
	
	
	<!-- //listTable: End -->


	<!-- 버튼영역 -->
	<div class="btnArea">
		<span class="button"><input type="button" value="수정"  onclick="fn_update(); return false;" /></span>
		<span class="button"><input type="button" value="목록" onclick="fn_list(); return false;" /></span>
	</div>
	<!--// 버튼영역 -->

</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>