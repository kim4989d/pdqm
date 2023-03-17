<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : DiagnosisIdxPropertyRegist.jsp
 * @Description : 지표데이터베이스유형 특성 관리
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
 function fn_insert(){
	if (fn_fomrValidate()){
		if(confirm("<spring:message code='common.save.msg'/>")){
			document.form.action = "<c:url value='/support/diagnosis/idx/insertIdxDbType.do' />";
		   	document.form.submit();
		}		
	}

}

	function fn_fomrValidate(frm){
		if (document.form.databaseTyNm.value == ""){
			alert("데이터베이스 유형명을 입력 하십시오.");
			document.form.databaseTyNm.focus();	
			return false;
		}
		return true;

	}
/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href =  "<c:url value='/support/diagnosis/idx/selectIdxDbTypeList.do'/>";
}
	

</script>
</head>
<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="diagnosisIdxDbType"  name="form" method="post">
<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 > DB유형 관리</div>
		<h2>DB유형 등록</h2>
	</div>

	<fieldset>
	<legend>데이터베이스 유형 등록/수정/삭제</legend>
		<table class="vblType1" summary="지표특성등록/수정/삭제 테이블입니다.">
			<colgroup>
				<col width="30%" />
				<col width="auto"/>
			</colgroup>
			
			<tr>
				<th><label for="write1">데이터베이스유형<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
				<td><form:input  path="databaseTyNm"   cssStyle="width:500px" maxlength="13" />
				
				</td>
			</tr>
				
			<tr>
				<th><label for="write4">결과설명</label></th>
				<td>
					<form:textarea path="resultDc" cssClass="textarea" rows="8" cols="80"  />
				</td>
			</tr>
			<tr>
				<th><label for="write4">참고사항</label></th>
				<td>
					<form:textarea path="referDc" cssClass="textarea" rows="8" cols="80"  />
				</td>
			</tr>			
		</table>

		<!-- 버튼영역:등록화면 일 때 -->
		<div class="btnArea">
			<span class="button"><input type="button" value="등록" onclick="fn_insert(); return false;" /></span>
			<span class="button"><input type="button" value="목록" onclick="fn_list(); return false;" /></span>
		</div>
	</fieldset>
</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
