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
	document.listForm.action = "<c:url value='/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPList.do'/>";
   	document.listForm.submit();

   	
}

/* ********************************************************
 * 등록 처리 함수 
 ******************************************************** */
 
//유형등록
function fn_Mng_Regist(DATABASETYID,IDXID,CODE,CODENM){

	
	var listForm=document.listForm;
	
	listForm.DATABASETYID.value=DATABASETYID
	listForm.IDXID.value=IDXID
	listForm.CODENM.value=CODENM
	listForm.CODE.value=CODE
		
	
	/*
	alert(listForm.DATABASETYID.value);
	alert(listForm.IDXID.value);
	alert(listForm.CODE.value);
	*/
	
	
	
	
	listForm.action = "<c:url value='/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPView.do' />";
	listForm.submit();
	


}


/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(DATABASETYID,IDXID){
	var listForm				 = document.listForm;
	listForm.DATABASETYID.value     = DATABASETYID;
	listForm.IDXID.value     = IDXID;
	
	
	//alert(listForm.DATABASETYID.value);
	//alert(listForm.IDXID.value);
	
	
	listForm.action           = "<c:url value='/support/diagnosis/idx/result/insertDiagnosisMngView.do'/>";
		
	listForm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action = "<c:url value='/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPList.do'/>";
   	document.listForm.submit();
}


/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	var listForm=document.listForm;
	listForm.action = "<c:url value='/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPList.do' />";
	listForm.submit();


}





function fn_excelsave(){
	
	
	var listForm=document.listForm;
	listForm.action = "<c:url value='/support/diagnosis/idx/result/selectDianoIdxSelfMngExpExcel.do' />";
	listForm.submit();
	
	
}

-->
</script>
<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
	<form:form commandName="searchVO" name="listForm"  method="post">

	<!-- hidden  -->
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
	<input name="MUMM" type="hidden" />
	<input name="MXMM" type="hidden" />
<input name="CODENM" type="hidden" />


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단> 지표별 자가진단 결과 설명 관리</div>
		<h2>지표별 자가진단 결과 설명 관리</h2>
	</div>
	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="17%" />
				<col width="20%"/>
				<col width="12%" />
				<col width="20%"/>
				<col width="12%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search1">데이터베이스유형</label></th>
				<td>
				
	<form:select path="DATABASETYID"  cssClass="text" onchange="fn_list()">
                   	<form:option value="" label="전체" />
      		
          	<c:forEach items="${dbselect}" var="dbselect" varStatus="status" >
	               	<form:option value="${dbselect.DATABASETYID}" label="${dbselect.DATABASETYNM}" />
      			</c:forEach>    
                   </form:select>


				</td>
				<th><label for="search2">지표</label></th>
				<td >
					<form:select path="IDXID"  cssClass="text" onchange="fn_list()">
                   	<form:option value="" label="전체" />
      		
          	<c:forEach items="${idxselect}" var="idxselect" varStatus="status" >
	               	<form:option value="${idxselect.IDXID}" label="${idxselect.IDXNM}" />
      			</c:forEach>    
                   </form:select>
				</td>
				<th><label for="search3">결과</label></th>
				<td>
				
						
						<form:select path="CODE"   cssClass="text" onchange="fn_list()">
                   	<form:option value="" label="전체" />
      		
          	<c:forEach items="${resultselect}" var="resultselect" varStatus="status" >
	               	<form:option value="${resultselect.CODE}" label="${resultselect.CODENM}" />
      			</c:forEach>    
                   </form:select>
		
				
				
				</td>
			</tr>
		</table>
		<div class="btnArea">
			<span class="button"><input type="button" value="조회" /></span>
		</div>
	</fieldset>
	<!--// search -->

<div id="tbContent">
	<!-- listTable: Start -->
	<table class="tblType1 tblSpace" summary="목록 테이블입니다.">
		<colgroup>
			<col width="7%" />
			<col width="25%" />
			<col width="10%" />
			<col width="10%" />
			<col width="30%" />
			<col width="20"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">데이터베이스유형</th>
				<th scope="col">지표</th>
				<th scope="col">결과</th>
				<th scope="col">중점관리지표설명 등록여부</th>
				<th scope="col">지표설명 등록여부</th>
			</tr>
		</thead>
		<tbody>
				
				<c:forEach items="${resultList}" var="resultList" varStatus="status">
				
				
				<tr>
				<td>${status.count}</td>
				<td>${resultList.DATABASETYNM}</td>
				<td><a href="#" onClick="fn_Mng_Regist('${resultList.DATABASETYID}','${resultList.IDXID}','${resultList.CODE}','${resultList.CODENM}')"> ${resultList.IDXNM}</a></td>
				<td>${resultList.CODENM}</td>
				<td>${resultList.RESULTDC}</td>
				<td>${resultList.EMPHSIDXRESULTDC}</td>
			</tr>
		
					</c:forEach>
		
		
		</tbody>
	</table>
	</div>
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
		<span class="button"><input type="button" value="엑셀저장" onClick="fn_excelsave()"/></span>
	
	
	</div>
	<!--// 버튼영역 -->
</form:form>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
