<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : DbTypeList.jsp
 * @Description : 데이타베이스유형  관리
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
<script type="text/javaScript" language="javascript" defer="defer">
<!--

/* ********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function linkPage(pageNo){
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/support/diagnosis/idx/selectIdxDbTypeList.do'/>";
   	document.listForm.submit();
}

/* ********************************************************
 * 등록 처리 함수 
 ******************************************************** */
 
//유형등록
function fn_Mng_Regist(){
	
	
	var frm				 = document.frm;
	
	
	if(frm.IDXDGNSSNM.value==""){
		
		alert('진단명을 입력하세여');
		return false;
		
		
	
		
	}
	/*	
	if(frm.searchBgnDeView.value==""){
		
		alert('시작 날짜를 입력하세여');
		return false;
		
		
		
		
	}
if(frm.searchEndDeView.value==""){
		
		alert('종료 날짜를 입력하세여');
		return false;
		
		
		
		
	}
	*/
	frm.HNTCETYCODE.value=frm.NTCETYCODE.value
	
	
	frm.action           = "<c:url value='/support/diagnosis/idx/self/DianoIdxSelfMngInsert.do'/>";
	frm.submit();
		
}


/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(databaseTyId){
	var varForm				 = document.listForm;
	varForm.databaseTyId.value     = databaseTyId;
	varForm.action           = "<c:url value='/support/diagnosis/idx/updateIdxDbTypeView.do'/>";
		
	varForm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){
	document.frm.pageIndex.value = 1;
	document.frm.action = "<c:url value='/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do'/>";
   	document.frm.submit();
}

function fn_cancel(){
	location.href =  "<c:url value='/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do'/>";

	
}


-->
</script>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
	<form:form commandName="searchVO" name="frm"  method="post">

	<!-- hidden  -->
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
	<input name="databaseTyId" type="hidden" />
	<input type="hidden" name="cal_url" 		value="/pdqm/sym/cal/callCalPopup.do" />
	<input name="HNTCETYCODE" type="hidden" />
	
	
	
	
	<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 > 지표별 자가진단 등록</div>
		<h2>지표별 자가진단 등록</h2>
	</div>

	<fieldset>
	<legend>지표별 자가진단 등록</legend>
		<table class="vblType1" summary="지표별 자가진단 등록 테이블입니다.">
			<colgroup>
				<col width="30%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="write1">자가진단명</label></th>
				<td><input type="text" id="IDXDGNSSNM" name="IDXDGNSSNM" class="text" style="width:200px;" /></td>
			</tr>
			<tr>
				<th><label for="write5">데이터베이스유형</label></th>
				<td>
				
				
					<form:select path="DATABASETYID"  cssClass="text">
                		<c:forEach items="${dbbox}" var="dbbox" varStatus="status">
	               	<form:option value="${dbbox.DATABASETYID}" label="${dbbox.DATABASETYNM}" />
      			</c:forEach>    
                   </form:select>
				
				
				</td>
			</tr>
			<tr>
				<th><label for="write2">게시구분</label></th>
				<td>
				
				
				
				
				<form:select path="NTCETYCODE"  cssClass="text" disabled="true"  >
            			<c:forEach items="${sflag}" var="sflag" varStatus="status">
	               	<form:option value="${sflag.CODE}" label="${sflag.CODENM}" />
      			</c:forEach>    
                   </form:select>
				
				
				</td>
			</tr>
			<tr>
				<th><label for="write3">게시 시작일자</label></th>
		<td>
		
						<input type="hidden" name="searchBgnDe" value="" />
		<input type="hidden" name="searchEndDe" value="" />
	    
		<form:input path="searchBgnDeView"   size="10" onclick="javascript:fn_egov_Calendar(document.frm, document.frm.searchBgnDe, document.frm.searchBgnDeView);return false;" readonly="true" />
		<a href="#" onclick="javascript:fn_egov_Calendar(document.frm, document.frm.searchBgnDe, document.frm.searchBgnDeView);return false;">
					<img src="/pdqm/images/pdqm/common/btn/btn_s_calendar.gif" alt="달력보기" /></a>		
			</tr>
			<tr>
				<th><label for="write4">게시 종료일자</label></th>
				<td>
						<form:input path="searchEndDeView"   size="10" onclick="javascript:fn_egov_Calendar(document.frm, document.frm.searchEndDe, document.frm.searchEndDeView);return false;" readonly="true" />
		<a href="#" onclick="javascript:fn_egov_Calendar(document.frm, document.frm.searchEndDe, document.frm.searchEndDeView);return false;">
					<img src="/pdqm/images/pdqm/common/btn/btn_s_calendar.gif" alt="달력보기" /></a>		
				</td>
			</tr>
		</table>

		<!-- 버튼영역:등록화면 일 때 -->
		<div class="btnArea btn_taR">
			<span class="button"><input type="button" value="등록" onClick="fn_Mng_Regist()"/></span>
			<span class="button"><input type="button" value="목록"  onClick="fn_cancel()"/></span>
		</div>
	</fieldset>
	
	</form:form>


<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
	


