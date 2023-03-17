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


function fn_Qlist(ssid,dbid,DATABASETYNM,IDXDGNSSNM){
	
	document.frm.IDXDGNSSID.value=ssid;
	document.frm.DATABASETYID.value=dbid;
	document.frm.DATABASETYNM.value=DATABASETYNM;
	
	document.frm.HIDXDGNSSNM.value=IDXDGNSSNM;
	document.frm.action = "<c:url value='/support/diagnosis/idx/self/DianoIdxSelfMngQList.do' />";
   	document.frm.submit();

	
	
}

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
	location.href = "<c:url value='/support/diagnosis/idx/self/DianoIdxSelfInsertView.do' />";
}


//유형수정
function fn_Mng_Update(){
	document.frm.action = "<c:url value='/support/diagnosis/idx/self/DianoIdxSelfMngUpdateView.do' />";
   	document.frm.submit();
}



/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(IDXDGNSSNM,DATABASETYID,NTCETYCODE,searchBgnDeView,searchEndDeView,IDXDGNSSID){
	
	var frm				 = document.frm;
	frm.HIDXDGNSSNM.value     = IDXDGNSSNM;
	frm.IDXDGNSSID.value     = IDXDGNSSID;
	frm.DATABASETYID.value     = DATABASETYID;
	frm.NTCETYCODE.value     = NTCETYCODE;
	frm.HsearchBgnDeView.value     = searchBgnDeView;
	frm.HsearchEndDeView.value     = searchEndDeView;
	
	
	
	
	
	frm.action           = "<c:url value='/support/diagnosis/idx/self/DianoIdxSelfMngUpdateView.do'/>";
	frm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){
	document.frm.pageIndex.value = 1;
	document.frm.action = "<c:url value='/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do'/>";
   	document.frm.submit();
}



function fn_Copy(IDXDGNSSNM,DATABASETYID,NTCETYCODE,IDXDGNSSID){
	
	var frm				 = document.frm;
	
	frm.HIDXDGNSSNM.value     = IDXDGNSSNM;
	frm.IDXDGNSSID.value     = IDXDGNSSID;
	frm.DATABASETYID.value     = DATABASETYID;
	frm.NTCETYCODE.value     = NTCETYCODE;
	
	document.frm.action = "<c:url value='/support/diagnosis/idx/self/selectDianoIdxSelfMngCopy.do'/>";
   	document.frm.submit();
	
   	
	
	
	
}


-->
</script>
<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
	<form:form commandName="searchVO" name="frm"  method="post">

	<!-- hidden  -->
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
<!-- 	<input name="databaseTyId" type="hidden" /> -->
	<input type="hidden" name="cal_url" 		value="/pdqm/sym/cal/callCalPopup.do" />
	
	<input name="IDXDGNSSID" type="hidden" />


	<input name="HIDXDGNSSNM" type="hidden" />
	
	
	<input name="DATABASETYID" type="hidden" />
	<input name="DATABASETYNM" type="hidden" />
	<input name="NTCETYCODE" type="hidden" />
	<input name="HsearchBgnDeView" type="hidden" />
	<input name="HsearchEndDeView" type="hidden" />
	


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단>  지표별 자가진단 관리</div>
		<h2>지표별 자가진단 관리</h2>
	</div>
	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="30%"/>
				<col width="20%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search1">게시구분</label></th>
				<td>
				
				
				<form:select path="NTCETYCODE2"  cssClass="text">
                   	<form:option value="" label="전체" />
      		
          				<c:forEach items="${selectbox}" var="selectbox" varStatus="status">
	               	<form:option value="${selectbox.CODE}" label="${selectbox.CODENM}" />
      			</c:forEach>    
                   </form:select>
				
				</td>
				<th><label for="search2">자가진단명</label></th>
				<td><form:input id="search2" path="IDXDGNSSNM" type="text" class="text" style="width:100px;" /></td>
			</tr>
			<tr>
				<th><label for="search3">게시 시작일시</label></th>
				<td colspan="3">
					
					<input type="hidden" name="searchBgnDe" value="" />
		<input type="hidden" name="searchEndDe" value="" />
	    
		<form:input path="searchBgnDeView"   size="10" />
		
		
		
		
		
		<a href="#" onclick="javascript:fn_egov_Calendar(document.frm, document.frm.searchBgnDe, document.frm.searchBgnDeView);return false;">
					<img src="/pdqm/images/pdqm/common/btn/btn_s_calendar.gif" alt="달력보기" /></a>		
		
		
		
		
		
		
		~
	    
	    
	    
	    
	    <form:input path="searchEndDeView"   size="10" />
		
	
		
		<a href="#" onclick="javascript:fn_egov_Calendar(document.frm, document.frm.searchEndDe, document.frm.searchEndDeView);return false;">
					<img src="/pdqm/images/pdqm/common/btn/btn_s_calendar.gif" alt="달력보기" /></a>		
	
	
				
				
				</td>
			</tr>
		</table>
		<div class="btnArea">
			<span class="button"><input type="button" value="조회"  onClick="fn_search()"/></span>
		</div>
	</fieldset>
	<!--// search -->

	<!-- listTable: Start -->
	<table class="tblType1 tblSpace" summary="지표별 자가진단 관리 테이블입니다.">
		<colgroup>
			<col width="7%" />
			<col width="17%" />
			<col width="11%" />
			<col width="10%" />
			<col width="11%" />
			<col width="11%" />
			<col width="8%" />
			<col width="8%" />
			<col width="auto"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">자가진단명</th>
				<th scope="col"> 유형</th>
				<th scope="col">게시구분</th>
				<th scope="col">게시일자</th>
				<th scope="col">종료일자</th>
				<th scope="col">문항수</th>
				<th scope="col">응답수</th>
				<th scope="col">구성</th>
			</tr>
		</thead>
		<tbody>
			
			
			
			<c:forEach items="${resultList}" var="resultList" varStatus="status">
			<tr>
				
				
				<td>${status.count}</td>
				<td class="subject"><a href="#" onclick="fnDetail('${resultList.IDXDGNSSNM}','${resultList.DATABASETYID}','${resultList.NTCETYCODE}','${resultList.NTCEBEGINDT}','${resultList.NTCEENDDT}','${resultList.IDXDGNSSID}')">${resultList.IDXDGNSSNM}</a></td>
				<td>${resultList.DATABASETYNM}</td>
				<td>${resultList.NTCETYCODE2NM}</td>
				<td>${resultList.NTCEBEGINDT}</td>
				<td>${resultList.NTCEENDDT}</td>
				<td>${resultList.QESITMCO}</td>
				<td>${resultList.RESULTCO}</td>
				<td>
					<span class="button small"><input type="button" value="구성"  onClick="fn_Qlist('${resultList.IDXDGNSSID}','${resultList.DATABASETYID}','${resultList.DATABASETYNM}','${resultList.IDXDGNSSNM}')"/></span>
					<span class="button small" width="2"><input type="button" value="구성복사" onClick="fn_Copy('${resultList.IDXDGNSSNM}','${resultList.DATABASETYID}','S40','${resultList.IDXDGNSSID}')" /></span>
				</td>
			</tr>
			
			</c:forEach>
			
			
			
			
					</tbody>
	</table>
	<!-- //listTable: End -->

		<!-- paging : Start -->
	<c:if test="${!empty searchVO.pageIndex }">		
		<div class="paging">
        <ui:pagination paginationInfo = "${paginationInfo}"
            type="image"
            jsFunction="linkPage"
            />
		</div>
	</c:if>
	
	
	<!-- 버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="등록" onClick="fn_Mng_Regist()" /></span>
	</div>
	<!--// 버튼영역 -->


</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
