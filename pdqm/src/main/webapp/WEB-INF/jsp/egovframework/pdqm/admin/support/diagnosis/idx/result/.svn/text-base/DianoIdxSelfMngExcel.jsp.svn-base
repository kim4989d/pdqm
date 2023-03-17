
<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8" %><%@ page language="java" import="java.util.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


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
	response.setHeader("Content-Disposition", "attachment;filename=" + java.net.URLEncoder.encode("지표별 _자가진단_결과설명_리스트.xls","UTF-8").replace('+',' ').replaceAll(" ","%20"));
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
function fn_Mng_Regist(DATABASETYID,IDXID,CODE,MUMM,MXMM,RESULTDCSTR,EMPHSIDXRESULTDCSTR){

	
	
	var listForm=document.listForm;
	
	listForm.DATABASETYID.value=DATABASETYID
	listForm.IDXID.value=IDXID
	listForm.CODE.value=CODE
		
	listForm.MUMM.value=MUMM
	listForm.MXMM.value=MXMM
	listForm.RESULTDCSTR.value=RESULTDCSTR
	listForm.EMPHSIDXRESULTDCSTR.value=EMPHSIDXRESULTDCSTR
	
	
	
	
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






-->
</script>
<body>

	<form:form commandName="searchVO" name="listForm"  method="post">

	<!-- hidden  -->
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
	<input name="MUMM" type="hidden" />
	<input name="MXMM" type="hidden" />
<input name="RESULTDCSTR" type="hidden" />
<input name="EMPHSIDXRESULTDCSTR" type="hidden" />




	<!-- search -->
	<fieldset>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="17%" />
				<col width="20%"/>
				<col width="12%" />
				<col width="20%"/>
				<col width="12%" />
				<col width="auto"/>
			</colgroup>
		</table>
		<div class="btnArea">
			<span class="button"><input type="button" value="조회" /></span>
		</div>
	</fieldset>
	<!--// search -->

<div id="tbContent">
	<!-- listTable: Start -->
	<table class="tblType1 tblSpace" summary="목록 테이블입니다." border="1">
		<colgroup>
			<col width="7%" />
			<col width="14%" />
			<col width="10%" />
			<col width="10%" />
			<col width="30%" />
			<col width="30"/>
		</colgroup>
		<thead>
			<tr bgcolor="#FAFAFA" >
				<th scope="col">번호</th>
				<th scope="col">유형</th>
				<th scope="col">지표</th>
				<th scope="col">결과</th>
				<th scope="col">중점관리지표설명 </th>
				<th scope="col">지표설명</th>
			</tr>
		</thead>
		<tbody>
				
				<c:forEach items="${excelList}" var="excelList" varStatus="status">
				
				
				<tr>
				<td>${status.count}</td>
				<td>${excelList.DATABASETYNM}</td>
				<td><a href="#" onClick="fn_Mng_Regist('${excelList.DATABASETYID}','${excelList.IDXID}','${excelList.CODE}','${excelList.MUMM}','${excelList.MXMM}','${excelList.RESULTDCSTR}','${excelList.EMPHSIDXRESULTDCSTR}')"> ${excelList.IDXNM}</a></td>
				<td>${excelList.CODENM}</td>
				<td><label style="font-size: small;">${excelList.RESULTDCSTR}</label></td>
				<td><label style="font-size: small;">${excelList.EMPHSIDXRESULTDCSTR}</label></td>
			</tr>
		
					</c:forEach>
		
		
		</tbody>
	</table>
	</div>
	<!-- //listTable: End -->

	
	

	<!-- 버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="excel" onClick="fn_excelsave()"/></span>
	
	
	</div>
	<!--// 버튼영역 -->
</form:form>

<!-- contents: End -->

