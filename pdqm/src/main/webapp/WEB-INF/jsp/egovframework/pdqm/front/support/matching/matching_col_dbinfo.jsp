<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%
 /**
  * @Class Name : support5_2.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > DB스키마 정보 비교
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css"/>
	
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
		
	    var selected_Id = "";
	    var selected_Instt_Nm = "";
	    var selected_Database_Nm = "";
	    
//		<c:forEach var="list" items="${dbInfolist}">
//			arrInsttNM[ p++ ] = "<c:out value="${list.instt_nm}"/>" ;
//			arrDBNM[ p++ ] = "<c:out value="${list.database_nm}"/>" ;
//		</c:forEach>

		function fn_DB_chkBox_chk() {

		    var resultCheck = false;		
		    var checkField = document.matchingMainForm.selectYn;			
		    var checkedCount = 0;
		    
			if(checkField) {
		        if(checkField.length > 1) {
		            for(var i=0; i<checkField.length; i++) {
		                if(checkField[i].checked) {
		                    checkedCount++;
		                }
		            }
		            if(checkedCount > 0)
		                resultCheck = true;
		            else {
		                alert("선택된  DB가 없습니다.");
		                resultCheck = false;
		            }
		        } else {
		        	if(document.matchingMainForm.selectYn.checked == false) {
		                alert("선택된 DB가  없습니다.");
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
		    var checkField 	= document.matchingMainForm.selectYn;
		    var checkId 	= document.matchingMainForm.checkId;
		    var checkInsttNm = document.matchingMainForm.checkInsttNm;
		    var checkDBnm 	= document.matchingMainForm.checkDBnm;
		    
		    var checkedCount = 0;
		    
	        if(checkField.length > 1) {
	            for(var i=0; i<checkField.length; i++) {
	                if(checkField[i].checked) {
	                    checkedCount++;
	                    if(selected_Id == "") {
	                    	selected_Id 			= checkId[i].value;
	                    	selected_Instt_Nm 		= checkInsttNm[i].value;
	                    	selected_Database_Nm 	= checkDBnm[i].value;
	                    }
	                    else {
	                    	selected_Id 			= selected_Id 			+ "▦" + checkId[i].value;
	                    	selected_Instt_Nm 		= selected_Instt_Nm 	+ "▦" + checkInsttNm[i].value;
	                    	selected_Database_Nm 	= selected_Database_Nm 	+ "▦" + checkDBnm[i].value;
	                    }
	                }
	            }
	        } else {
	        	if	(checkField.value == "on"){
	        		checkedCount =1;
                	selected_Id 			= checkId.value;
                	selected_Instt_Nm 		= checkInsttNm.value;
                	selected_Database_Nm 	= checkDBnm.value;
	        	}
	           selected_Id = checkId.value;
	        }
		
		    document.matchingMainForm.selected_Id_List.value 			= selected_Id;
		    document.matchingMainForm.selected_Instt_Nm_List.value 		= selected_Instt_Nm;
		    document.matchingMainForm.selected_Database_Nm_List.value 	= selected_Database_Nm;
		    
//			alert(":::: [selected_Id_list] " + selected_Id + " ::::");
//			alert(":::: [selected_Instt_Nm] " + selected_Instt_Nm + " ::::");
//			alert(":::: [selected_Database_Nm] " + selected_Database_Nm + " ::::");
		    return checkedCount;
		}
		
		function fn_chk_All_Item()
		{
			 var checkField = document.matchingMainForm.selectYn;
			    if(document.matchingMainForm.checkAllBox.checked) {
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
		
//		function Fn_lnkPage(pageNo){
//			fn_DB_chkBox_mng();
//			location.href = "/support/matching/searchDBInfoList.do?pageNo="+pageNo;
//			document.matchingTBLForm.pageIndex.value = pageNo;
//			document.matchingTBLForm.action = "<c:url value='/support/matching/compCol1List.do'/>";
//		   	document.matchingTBLForm.submit();
//		}
		function fn_edit_DBInfo(database_id, instt_nm, database_nm, database_dc){

			document.matchingMainForm.database_id.value	= database_id;
			document.matchingMainForm.instt_nm.value 	= instt_nm;
			document.matchingMainForm.database_nm.value = database_nm;
			document.matchingMainForm.database_dc.value = database_dc;
//			alert("...");
			document.matchingMainForm.action = "<c:url value='/support/matching/DBExcelModify.do'/>";
		   	document.matchingMainForm.submit();
		}
		function fn_comp_DBInfo(){
			if(fn_DB_chkBox_chk()){
				var chkd_cnt = fn_DB_chkBox_mng();
				if (chkd_cnt >= 1){
					/**
						컬럼 비교 화면으로 이동...
					*/
					
					document.matchingMainForm.action = "<c:url value='/support/matching/compDBInfoMain.do'/>";
				   	document.matchingMainForm.submit();
					
				}else{
					alert("정합성 비교를 위해서는 1개 이상의 DB를 선택하여야 합니다.");
					document.matchingMainForm.selected_Id_List.value="";
				}
			}else{
				
			}
		}
		
		
		function fn_init_DBInfo()
		{
			document.matchingMainForm.action = "<c:url value='/support/matching/searchAllDBInfoList.do'/>";
		   	document.matchingMainForm.submit();
		}
		
		function fn_srch_DBInfo()
		{
			//alert("Begin fn_srch_DBInfo...");
			document.matchingMainForm.action = "<c:url value='/support/matching/searchDBInfoList.do'/>";
		   	document.matchingMainForm.submit();
		}
	
		function fn_DB_Regist()
		{
			//alert("Begin fn_DB_Regist DBExcelRegist.do...");
			document.matchingMainForm.action = "<c:url value='/support/matching/DBExcelRegist.do'/>";
		   	document.matchingMainForm.submit();
		}
		
		function fn_action() {
			if (document.matchingMainForm.filename == "") {
				alert('Upload된 파일명을 입력해 주세요.');
				document.matchingMainForm.focus();
				return;
			}
			document.matchingMainForm.action = "<c:url value='/EgovFileDown1.do'/>";
			document.matchingMainForm.submit();
		}
	</script>
</head>



<body>

<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<form:form commandName="dbInfoAllVO" name="matchingMainForm"  method="post">
<input type="hidden" name="user_id" value = ${LoginVO.id}/>
<input type="hidden" name="rowNo" value="<c:out value='${dbInfoVO.rowNo}'/>"/><!-- ROW ID -->
<input type="hidden" name="database_id" /><!-- DB ID -->
<input type="hidden" name="database_nm" /><!-- DB 명 -->
<input type="hidden" name="database_dc" /><!-- DB 설명 -->
<input type="hidden" name="instt_nm" /><!-- 기관명  -->
<input type="hidden" name="file_nm" /><!-- 파일명 -->
<input type="hidden" name="regist_pnttm" /><!-- 등록일자 -->
<input type="hidden" name="register_id" /><!-- 등록자 -->
<input type="hidden" name="selected_Id_List" /><!-- 선택한 DB 목록 -->
<input type="hidden" name="selected_Instt_Nm_List" /><!-- 선택한 기관 목록 -->
<input type="hidden" name="selected_Database_Nm_List" /><!-- 선택한 DB 명 목록 -->

<!-- contents영역시작 -->

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 연계정보 정합성 검증 > <em>DB스키마 정보 비교</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_2.gif'/>" alt="DB스키마 정보 비교" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_2_desc.png'/>" class="png24" alt="DB스키마(컬럼명, 데이터 Type, 길이)에 대한 비교가 가능하여연계시 표준 준수 및 자체 표준 준수에 활용 가능합니다." /></p>
	</div>

	<div id="conBox">
		<!-- 검색박스 -->
		<fieldset class="searchBox first">
			<legend>검색폼</legend>
			<label for="searchWrd"><strong>데이터베이스명</strong></label> <input type="text" id="searchWrd" name = "searchWrd" class="text" style="width:200px;" />
			
			<!-- <input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_search2.gif'/>" class="btn" title="조회" onclick="javascript:srch_DBInfo();" /> -->
			<a href="javascript:fn_srch_DBInfo();" ><img src="<c:url value='/images/pdqm/common/btn/btn_s_search2.gif'/>" class="btn" alt="조회" /></a>
		</fieldset>
		<!-- 검색박스 -->

		<table class="conTable1" summary="DB스키마 정보 비교 게시판 입니다">
			<colgroup>
				<col width="7%">
				<col width="5%">
				<col width="12%">
				<col width="20%">
				<col width="auto">
				<col width="12%">
				<col width="10%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col"><input type="checkBox" name = "checkAllBox" title="전체항목선택" onclick="javascript:fn_chk_All_Item();"/></th>
					<th scope="col">기관명</th>
					<th scope="col">데이터베이스명</th>
					<th scope="col">설명</th>
					<th scope="col">등록일자</th>
					<th scope="col">등록자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dbInfo" items="${dbInfolist}">
					<tr class="ta_c">
						<td>${dbInfo.rowNo}</td>
						<td><input type="checkbox" name="selectYn" title="항목선택" /><input type="hidden" name="checkId" value="<c:out value="${dbInfo.database_id}"/>" /></td>
						<td class="ta_l">
							<a  href="javascript:fn_edit_DBInfo('${dbInfo.database_id}','${dbInfo.instt_nm}','${dbInfo.database_nm}','${dbInfo.database_dc}');" >	
								${dbInfo.instt_nm}
							</a>
							<input type="hidden" name="checkInsttNm" value="<c:out value="${dbInfo.instt_nm}"/>" />
						</td>
						<td class="ta_l"><input type="hidden" name="checkDBnm" value="<c:out value="${dbInfo.database_nm}"/>" />${dbInfo.database_nm}</td>
						<td class="ta_l">${dbInfo.database_dc}</td>
						<td>${dbInfo.regist_pnttm}</td>
						<td>${dbInfo.register_id}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- btnArea -->
		
		<div class="btnArea btn_ar">
			<a href="javascript:fn_comp_DBInfo();"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_schema.gif'/>" alt="스키마비교" /></a>
			<!--  <a href="#"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_download2.gif'/>" alt="템플릿다운로드" /></a>-->
			<a href="javascript:fn_action();"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_download2.gif'/>" alt="템플릿다운로드" /></a>
			<input name="filename" type="hidden" value="<c:out value='테이블컬럼_Template.xls'/>"/>
			<input name="original" type="hidden" value="테이블컬럼_Template.xls"/>
			<a href="javascript:fn_DB_Regist();"><img src="<c:url value='/images/pdqm/common/btn/btn_regist.gif'/>" alt="등록" /></a>
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

