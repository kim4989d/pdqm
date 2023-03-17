<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support5_7.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > 타입비교
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

	<script type="text/javaScript" language="javascript" defer="defer">
	
		var arrInsttNM = new Array() ;
		var arrDBNM = new Array() ;
		var p = 0 ;
		var idx = 0 ;
		
//		<c:forEach var="list" items="${dbInfolist}">
//			arrInsttNM[ p++ ] = "<c:out value="${list.instt_nm}"/>" ;
//			arrDBNM[ p++ ] = "<c:out value="${list.database_nm}"/>" ;
//		</c:forEach>
		function fn_linkPage(pageNo){
			alert("Fn_lnkPage[" + pageNo + "]"+document.matchingTBLForm.selected_Id_List.value);
			/*location.href = "/support/matching/searchTBLInfoList.do?pageNo="+pageNo;*/
			document.matchingTBLForm.pageIndex.value = pageNo;
			document.matchingTBLForm.action = "<c:url value='/support/matching/compCol2List.do.do'/>";
		   	document.matchingTBLForm.submit();
		}	
		
		
		function fn_view_compDtlRtn(rn, comp_rtn, column_id) {
			
			if (comp_rtn>0){
				document.matchingCompForm.tgt_col_id.value = column_id;
				document.matchingCompForm.rowNo.value = rn;
				document.matchingCompForm.action = "<c:url value='/support/matching/viewComp2DtlRtn.do'/>";
			   	document.matchingCompForm.submit();
			}else{
				alert("불일치 결과가 없습니다.");
			}
		}
		
		function fn_excel_compRtn(rn) {
			document.matchingCompForm.rowNo.value = rn;
			document.matchingCompForm.action = "<c:url value='/support/matching/excelComp2Rtn.do'/>";
		   	document.matchingCompForm.submit();
		}
	</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<form:form commandName="colInfoVO" name="matchingCompForm"  method="post">
    
<input type="hidden" name="pageIndex" value="<c:out value='${tblInfoVO.pageIndex}'/>"/>
<input type="hidden" name="user_id" value = ${LoginVO.id}/>
<input type="hidden" name="rowNo" /><!-- ROW ID -->
<input type="hidden" name="database_id" /><!-- DB ID -->
<input type="hidden" name="table_id" value="<c:out value='${tblInfoVO.table_id}'/>"/><!-- TABLE ID -->
<input type="hidden" name="instt_nm" /><!-- 기관명  -->
<input type="hidden" name="database_nm" /><!-- DB 명 -->
<input type="hidden" name="table_nm" /><!-- TABLE 명 -->
<input type="hidden" name="sort_ordr" /><!-- TABLE 순서 -->

<input type="hidden" name="column_id" /><!-- 컬럼 ID -->
<input type="hidden" name="column_nm" /><!-- 컬럼 명 -->
<input type="hidden" name="column_korean_nm" /><!-- 컬럼 한글명 -->
<input type="hidden" name="data_ty" /><!-- 데이터 타입 -->
<input type="hidden" name="data_lt" /><!-- 데이터 길이 -->
<input type="hidden" name="dcmlpoint_lt" /><!-- 소숫점 길이 -->
<input type="hidden" name="c_sort_ordr" /><!-- 컬럼 순서 -->

<input type="hidden" name="database_id_list" value="<c:out value='${tblInfoVO.database_id}'/>"/><!-- DB ID -->

<input type="hidden" name="comp_rtn" /><!-- 컬럼분석 결과 -->

<input type="hidden" name="tgt_col_id" /><!-- 컬럼 순서 -->


<!-- contents영역시작 -->

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>타입비교</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_7.gif'/>" alt="타입비교" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_2_desc.png'/>" class="png24" alt="DB스키마(컬럼명, 데이터 Type, 길이)에 대한 비교가 가능하여연계시 표준 준수 및 자체 표준 준수에 활용 가능합니다." /></p>
	</div>

	<div id="conBox">

		<table class="conTable1 brN" summary="타입비교 게시판 입니다">

			<colgroup>
				<col width="50%">
				<col width="50%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">기관명</th>
					<th scope="col">데이터베이스명</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tgt_dbinfo" items="${arr_tgt_dbinfo}">
					<tr class="ta_c">
						<td>${tgt_dbinfo.instt_nm}</td>
						<td>${tgt_dbinfo.database_nm}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<table class="conTable1 brN mt_10" summary="타입비교 게시판 입니다">
			<colgroup>
				<col width="7%">
				<col width="10%">
				<col width="15%">
				<col width="10%">
				<col width="10%">
				<col width="auto">
				<col width="19%">
				<col width="13%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">기관명</th>
					<th scope="col">데이터<br>베이스명</th>
					<th scope="col">테이블명</th>
					<th scope="col">컬럼명</th>
					<th scope="col">컬럼한글명</th>
					<th scope="col">데이터<br>타입</th>
					<th scope="col">불일치</th>
				</tr>
			</thead>
			<tbody>
 				<c:forEach var="colInfoVO" items="${compCol2Rtnlist}">
					<tr class="ta_1">
						<td class="ta_c">
							${colInfoVO.rn}
							<input type="hidden" name="column_id" value="<c:out value="${colInfoVO.column_id}"/>" />
						</td>
						<td>${colInfoVO.instt_nm}</td>
						<td>${colInfoVO.database_nm}</td>
						<td>${colInfoVO.table_nm}</td>
						<td>${colInfoVO.column_nm}</td>
						<td>${colInfoVO.column_korean_nm}</td>
						<td>${colInfoVO.data_ty}(${colInfoVO.data_lt})</td>
						<td class="ta_l">
							<a  href="javascript:fn_view_compDtlRtn('${colInfoVO.rn}','${colInfoVO.comp_rtn}','${colInfoVO.column_id}');" >
								${colInfoVO.comp_rtn}
							</a>
						</td>
					</tr>
 				</c:forEach>
			</tbody>
		</table>
		<!-- pading -->
			<div class="paging">
				<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_linkPage"/>
			</div>
		<!--// pading -->
		<!-- btnArea -->
		<div class="btnArea btn_ar">
			<a href="javascript:fn_excel_compRtn('0')"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_download.gif'/>" alt="비교내역 다운로드" /></a>
			<!--
			<a href="#"><img src="<c:url value='/images/pdqm/common/btn/btn_search2.gif'/>" alt="조회" /></a>
			-->
		</div>
		<!--// btnArea -->

	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
</form:form>
<%@ include file="/html/pdqm/include/footer.jsp" %>

