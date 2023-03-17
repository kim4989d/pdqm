<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : CompositionCopyRegist.jsp
 * @Description : 관리수준 자가진단 구성 복사
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
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>

<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
  function fn_copySave(){
		if (fn_fomrValidate()){
			if(confirm("<spring:message code='common.save.msg'/>")){
				document.form.action = "<c:url value='/support/diagnosis/level/insertCompositionCopy.do' />";
			   	document.form.submit();
		
			}
		}
	}

function fn_fomrValidate(){
	var frm = document.form;
	if (frm.levelDgnssNm.value == ""){
		alert("자기진단명을 입력 하십시오.");
		document.form.levelDgnssNm.focus();	
		return false;
	}
	
	return true;

}

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href =  "<c:url value='/support/diagnosis/level/selectSelfDiagnosisList.do'/>";
}
	

</script>

</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="diagnosisLevelSelf"  name="form" method="post">
<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/callCalPopup.do'/>" />
<form:hidden path="resultCo" />
<!-- contents: Start -->
	<div class="title">

		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 자가진단 관리</div>
		<h2>자가진단 구성 복사</h2>
	</div>

	<table class="tblType1" summary="자가진단 구성 복사 테이블입니다.">
		<colgroup>
			<col width="50%" />
			<col width="50%" />
		</colgroup>
		<thead>
			<tr>
				<th>복사한 구성 내역</th>
				<th>추가할 구성 내역</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<table class="viewType2" summary="복사한 구성 테이블입니다.">
						<colgroup>
							<col width="40%" />
							<col width="60%"/>
						</colgroup>
						<tr>
							<th>자가진단명</th>
							<td><input type="text" value="${diagnosisLevelSelf.levelDgnssNm}"  class="readonly" readonly="readonly" style="width:180px;" /></td>
						</tr>
					</table>
				</td>
				<td>
					<table class="viewType2" summary="추가할 구성 테이블입니다.">
						<colgroup>
							<col width="40%" />
							<col width="60%"/>
						</colgroup>
						<tr>
							<th><label for="write1">자가진단명</label></th>
							<td>
								<input type="text" name="levelDgnssNm" class="text"  value="" style="width:180px;" />
								<form:hidden path="levelDgnssId"/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</tbody>
	</table>

	<!-- 버튼영역:등록화면 일 때 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="복사"  onclick="fn_copySave(); return false;" /></span>
		<span class="button"><input type="button" value="목록"  onclick="fn_list(); return false;"/></span>
	</div>

	
</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
