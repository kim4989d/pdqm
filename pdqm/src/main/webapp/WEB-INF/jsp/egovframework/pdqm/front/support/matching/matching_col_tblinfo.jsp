<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support5_4.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > 컬럼조회
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

		function fn_DB_chkBox_chk() {

		    var resultCheck = false;		
		    var checkField = document.matchingTBLForm.selectYn;			
		    var checkedCount = 0;
		    
			if(checkField) {
				if(checkField.length > 1) {
		            for(var i=0; i<checkField.length; i++) {
		                if(checkField[i].checked) {
		                    checkedCount++;
		                }
		            }
		            if(checkedCount == 1)
		                resultCheck = true;
		            else {
//		                alert("기준 테이블은 1개만 선택되어야 합니다.");
		                resultCheck = false;
		            }
		        } else {
		        	if(document.matchingTBLForm.selectYn.checked == false) {
		                alert("선택된 기준 테이블이  없습니다.");
		                resultCheck = false;
		            }
		            else {
		                resultCheck = true;
		            }
		        }
		    } else {		    	
		        alert("조회된 결과가 없습니다.");
		        resultCheck = false;
		    }
		    return resultCheck;
		}
		
		function fn_DB_chkBox_mng() {
		    var checkField = document.matchingTBLForm.selectYn;
		    var checkId = document.matchingTBLForm.checkId;
		    
	        if(checkField.length > 1) {	        	
	            for(var i=0; i<checkField.length; i++) {
	                if(checkField[i].checked) {
	                	
	                	document.matchingTBLForm.tgt_tbl_id.value = checkId[i].value;
	                }
	            }
	        } else {
	        	document.matchingTBLForm.tgt_tbl_id.value = checkId.value;
	        }
		    
//			alert(":::: [selected_Id_list] (" + document.matchingTBLForm.tgt_tbl_id.value + ") ::::");
		}
		/*
		function fn_chk_All_Item()
		{
			 var checkField = document.matchingTBLForm.selectYn;
		    if(document.matchingTBLForm.checkAllBox.checked) {
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
		*/
		
		function fn_linkPage(pageNo){
			//alert("Fn_lnkPage[" + pageNo + "]"+document.matchingTBLForm.selected_Id_List.value);
			/*location.href = "/support/matching/searchTBLInfoList.do?pageNo="+pageNo;*/
			document.matchingTBLForm.pageIndex.value = pageNo;
			
			//document.matchingTBLForm.action = "<c:url value='/support/matching/compCol1List.do'/>";
			document.matchingTBLForm.action = "<c:url value='/support/matching/searchTBLInfoList.do'/>";
		   	document.matchingTBLForm.submit();
		}			
		
		function fn_view_TBLInfo(table_id){

			document.matchingTBLForm.table_id.value	= table_id;
			//alert(table_id + "...");
			//document.matchingTBLForm.action = "<c:url value='/support/matching/editDBInfo.do'/>";
		   	//document.matchingTBLForm.submit();
		}	
		
		function fn_view_col_comp1()
		{
//			alert("Begin fn_view_col_comp1...");
		   	
		   	if(fn_DB_chkBox_chk()){
				fn_DB_chkBox_mng();
				document.matchingTBLForm.action = "<c:url value='/support/matching/compCol1List.do'/>";
				document.matchingTBLForm.submit();
			}else{
				alert("정합성 비교를 위해서는 1개의 기준 테이블을 선택하여야 합니다.");
				document.matchingTBLForm.table_id.value="";
			}
		}
		
		function fn_view_col_comp2()
		{
//			alert("Begin fn_view_col_comp2...");
		   	
		   	if(fn_DB_chkBox_chk()){
				fn_DB_chkBox_mng();			
				document.matchingTBLForm.action = "<c:url value='/support/matching/compCol2List.do'/>";
			   	document.matchingTBLForm.submit();
			}else{
				alert("정합성 비교를 위해서는 1개의 기준 테이블을 선택하여야 합니다.");
				document.matchingTBLForm.selected_Id_List.value="";
			}
		}
		
//		function fn_init_TBLInfo()
//		{
//			document.matchingTBLForm.action = "<c:url value='/support/matching/searchAllDBInfoList.do'/>";
//		   	document.matchingTBLForm.submit();
//		}

		function fn_srch_TBLInfo()
		{
//			alert("asdfzxcv");
			document.matchingTBLForm.pageIndex.value=1;
//			alert("Begin fn_srch_DBInfo..." + document.matchingTBLForm.pageIndex.value);
			document.matchingTBLForm.action = "<c:url value='/support/matching/searchTBLInfoList.do'/>";
		   	document.matchingTBLForm.submit();
		}	
	</script>
	
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<form:form commandName="tblInfoVO" name="matchingTBLForm"  method="post">
<input type="hidden" name="pageIndex" value="<c:out value='${tblInfoVO.pageIndex}'/>"/>
<input type="hidden" name="login_id" value = ${LoginVO.id}/>
<input type="hidden" name="rowNo" value="<c:out value='${tblInfoVO.rowNo}'/>"/><!-- ROW ID -->
<input type="hidden" name="database_nm" /><!-- DB 명 -->
<input type="hidden" name="database_id" /><!-- DB ID -->
<input type="hidden" name="database_nm" /><!-- DB 명 -->
<input type="hidden" name="database_dc" /><!-- DB 설명 -->
<input type="hidden" name="instt_nm" /><!-- 기관명  -->
<input type="hidden" name="file_nm" /><!-- 파일명 -->
<input type="hidden" name="regist_pnttm" /><!-- 등록일자 -->
<input type="hidden" name="register_id" /><!-- 등록자 -->

<input type="hidden" name="tgt_tbl_id" /><!-- 기준 테이블 ID -->

<input type="hidden" name="selected_Id_List" value = "<c:out value='${tblInfoVO.selected_Id_List}'/>" /><!-- 선택한 DB 목록 -->
<input type="hidden" name="selected_Instt_Nm_List" value = "<c:out value='${tblInfoVO.selected_Instt_Nm_List}'/>"/><!-- 선택한 기관 목록 -->
<input type="hidden" name="selected_Database_Nm_List" value = "<c:out value='${tblInfoVO.selected_Database_Nm_List}'/>"/><!-- 선택한 DB 명 목록 -->

<!-- contents영역시작 -->

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>컬럼조회</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_4.gif'/>" alt="컬럼조회" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_2_desc.png'/>" class="png24" alt="DB스키마(컬럼명, 데이터 Type, 길이)에 대한 비교가 가능하여연계시 표준 준수 및 자체 표준 준수에 활용 가능합니다." /></p>
	</div>

	<div id="conBox">
		<table class="conTable1 brN" summary="컬럼조회 게시판 입니다">
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
			<!-- 
				<tr class="ta_c">
					<td>A기관</td>
					<td>인사관리시스템 DB</td>
				</tr>
			 -->
				<c:forEach var="tgt_dbinfo" items="${arr_tgt_dbinfo}">
					<tr class="ta_c">
						<td>${tgt_dbinfo.instt_nm}</td>
						<td>${tgt_dbinfo.database_nm}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- 검색박스 -->		
		<fieldset class="searchBox first">
			<legend>검색폼</legend>
				<!--<dl>
					<dt class="first"><label for="select_1"><strong>기관명</strong></label></dt>
					<dd>					 
						<select id="select_1">
							<option value="0">전체</option>
							<option value="1">A기관</option>
						</select>
					</dd>
					<dt><label for="select_2"><strong>데이터베이스명</strong></label></dt>
					<dd>
						<select id="select_2">
							<option value="0">전체</option>
							<option value="1">인사관리시스템 DB</option>
						</select>
					</dd>
				</dl>
				<dl>
					<dt class="first"><label for="select_3"><strong>일치여부</strong></label></dt>
					<dd>
						<select id="select_3">
							<option value="0">전체</option>
							<option value="1">일치</option>
							<option value="2">불일치</option>
						</select>
					</dd>
					
					<dt><label for="input_1"><strong>테이블명</strong></label></dt>
					<dd><input type="text" id="searchWord" name = "searchWord" class="text" style="width:216px;" /></dd>
				</dl>-->				
				<label for="input_1" style="width:10%;"><strong>테이블명</strong></label>
				<input type="text" id="searchWrd" name = "searchWrd" class="text" style="width:200px;" />
				<!-- <input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_search2.gif'/>" class="btn" title="조회" />-->
				<a href="javascript:fn_srch_TBLInfo();" ><img src="<c:url value='/images/pdqm/common/btn/btn_s_search2.gif'/>" class="btn" title="조회" /></a>
		</fieldset>
		<!--// 검색박스 -->

		<table class="conTable1 mt_10" summary="컬럼조회 게시판 입니다">
			<colgroup>
				<col width="7%">
				<col width="10%">
				<col width="25%">
				<col width="30%">
				<col width="30%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<!-- <th scope="col"><input type="checkbox" title="전체항목선택" /></th> -->
					<th scope="col">기준<br>테이블</th>
					<th scope="col">기관명</th>
					<th scope="col">데이터베이스명</th>
					<th scope="col">테이블명</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tblInfo" items="${tblInfolist}">
					<tr class="ta_c">
						<td>${tblInfo.rowNo}</td>
						<td><input type="checkbox" name="selectYn" title="항목선택" />
							<input type="hidden" name="checkId" value="<c:out value="${tblInfo.table_id}"/>" />
						</td>
						<td class="ta_l">${tblInfo.instt_nm}</td>
						<td class="ta_l">
							<input type="hidden" name="checkDBnm" value="<c:out value="${tblInfo.database_nm}"/>" />
							${tblInfo.database_nm}
						</td>
						<td class="ta_l">
							<!-- <a  href="javascript:fn_view_TBLInfo('${tblInfo.table_id}');" > -->
								${tblInfo.table_nm}
							<!-- </a> -->
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
			<a href="javascript:fn_view_col_comp1();"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_colum.gif'/>" alt="컬럼비교" /></a>
			<a href="javascript:fn_view_col_comp2();"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_type.gif'/>" alt="타입비교" /></a>
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

