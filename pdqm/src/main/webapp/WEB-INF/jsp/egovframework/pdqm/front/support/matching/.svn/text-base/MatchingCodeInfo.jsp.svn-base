<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support5_9.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > 코드관리
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
	    var selected_Id = "";
		
		function Fn_lnkPage(pageNo){
			location.href = "/support/matching/searchFindCdoeInfoList.do?pageNo="+pageNo;
		}
			
		
		function fn_edit_DBInfo(code_info_id ,database_id, code_nm, database_nm, code_nm_desc){
			document.matchingMainForm.code_info_id.value	= code_info_id;
			document.matchingMainForm.database_id.value	= database_id;
			document.matchingMainForm.code_nm.value 	= code_nm;
			document.matchingMainForm.database_nm.value = database_nm;
			document.matchingMainForm.code_nm_desc.value = code_nm_desc;
			/* alert("code_info_id : ["+ code_info_id +"] database_id : ["+ database_id +"] code_nm : ["+code_nm+"] database_nm [: "+database_nm+"] code_nm_desc :["+code_nm_desc+"]");*/
			document.matchingMainForm.action = "<c:url value='/support/matching/DBCodeExcelModify.do'/>";
		   	document.matchingMainForm.submit();
		}
		
		function fn_srch_DBInfo()
		{
			//alert("Begin fn_srch_codeInfoVO...");
			document.matchingMainForm.action = "<c:url value='/support/matching/searchFindCodeInfoList.do'/>";
		   	document.matchingMainForm.submit();
		}
		

		function fn_action() {
			if (document.matchingMainForm.filename == "") {
				alert('Upload된 파일명을 입력해 주세요.');// 파일명 강제 입력됨 ltk
				document.matchingMainForm.focus();
				return;
			}
			document.matchingMainForm.action = "<c:url value='/EgovFileDown1.do'/>";
		   	document.matchingMainForm.submit();
		}
		
		function fn_compare()
		{
			//alert("Begin fn_compare...");
			
			document.matchingMainForm.chkd_cnt.value = fn_DB_chkBox_mng();	
			//alert(":::: [selected_Id_list]   ::::1");
			
			document.matchingMainForm.action = "<c:url value='/support/matching/compareCodeList.do'/>";
		   	document.matchingMainForm.submit();
		}
		
				
		function fn_DB_chkBox_mng() {
		    var checkField 	= document.matchingMainForm.selectYn;
		    var checkId 	= document.matchingMainForm.checkId;

		    var checkedCount = 0;
		    
	        if(checkField.length > 1) {
	            for(var i=0; i<checkField.length; i++) {
	                if(checkField[i].checked) {
	                    checkedCount++;
	                    if(selected_Id == "") {
	                    	selected_Id 			= checkId[i].value;
	                    }
	                    else {
	                    	selected_Id 			= selected_Id 			+ "▦" + checkId[i].value;
	                    }
	                }
	            }
	        } else {
	        	if	(checkField.value == "on"){
	        		checkedCount =1;
                	selected_Id 			= checkId.value;
	        	}
	           selected_Id = checkId.value;
	        }
		    document.matchingMainForm.selected_Id_List.value 			= selected_Id;
		//	alert(":::: [selected_Id_list] " + selected_Id + " ::::");
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
		
	</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<form:form commandName="codeInfoVO" name="matchingMainForm"  method="post">
<input type="hidden" name="pageIndex" value="<c:out value='${codeInfoVO.pageIndex}'/>"/>
<input type="hidden" name="user_id" value = ${LoginVO.id}/>
<input type="hidden" name="rowNo" value="<c:out value='${codeInfoVO.rowNo}'/>"/><!-- ROW ID -->
<input type="hidden" name="code_info_id" /><!-- 코드 ID -->
<input type="hidden" name="database_id" /><!-- DB ID -->
<input type="hidden" name="database_nm" /><!-- DB 명 -->
<input type="hidden" name="file_nm" /><!-- 파일명 -->
<input type="hidden" name="regist_pnttm" /><!-- 등록일자 -->
<input type="hidden" name="register_id" /><!-- 등록자 -->
<input type="hidden" name="selected_Id_List" /><!-- 선택한 DB 목록 -->
<input type="hidden" name="code_nm" /><!-- 코드 네임 -->
<input type="hidden" name="code_nm_desc" /><!-- 코드 네임 설명 -->
<input type="hidden" name="chkd_cnt" /><!-- 체크코드 갯수 -->
<!-- contents영역시작 -->

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>코드관리</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_9.gif'/>" alt="코드관리" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_9_desc.png'/>" class="png24" alt="기준 마스터코드와 대상 마스터코드의 검정 결과를 확인하여 연계시 및 자체코드를 사용하고 있는 컬럼에 대해 코드값 오류를 파악할 수 있습니다." /></p>
	</div>

	<div id="conBox">

		<!-- 검색박스 -->
		<fieldset class="searchBox first">
			<legend>검색폼</legend>
			<label for="searchWrd"><strong>코드관리명</strong></label> <input type="text" id="searchWrd" name = "searchWrd"  class="text" style="width:200px;" />
			<!-- <input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_search2.gif'/>" class="btn" title="조회" /> -->
			<a href="javascript:fn_srch_DBInfo();" ><img src="<c:url value='/images/pdqm/common/btn/btn_s_search2.gif'/>" class="btn" title="조회" /></a>
		</fieldset>
		<!--// 검색박스 -->

		<table class="conTable1 brN" summary="코드관리 게시판 입니다">
			<colgroup>
				<col width="7%">
				<col width="5%">
				<col width="20%">
				<col width="20%">
				<col width="auto">
				<col width="12%">
				<col width="10%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col"><input type="checkBox" name = "checkAllBox" title="전체항목선택" onclick="javascript:fn_chk_All_Item();"/></th>
					<th scope="col">데이터베이스명</th>
					<th scope="col">코드 관리명</th>
					<th scope="col">설명</th>
					<th scope="col">등록일자</th>
					<th scope="col">등록자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="codeInfo" items="${codeInfolist}">
					<tr class="ta_c">
						<td>${codeInfo.rowNo}</td>
						<td><input type="checkbox" name="selectYn" title="항목선택" /><input type="hidden" name="checkId" value="<c:out value="${codeInfo.code_info_id}"/>" /></td>
						<td class="ta_l"><a  href="javascript:fn_edit_DBInfo('${codeInfo.code_info_id}','${codeInfo.database_id}','${codeInfo.code_nm}','${codeInfo.database_nm}','${codeInfo.code_nm_desc}');" >${codeInfo.database_nm}</a></td>
						<td class="ta_l">${codeInfo.code_nm}</td>
						<td class="ta_l">${codeInfo.code_nm_desc}</td>
						<td>${codeInfo.regist_pnttm}</td>
						<td>${codeInfo.register_id}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- pading -->
			<div class="paging">
				<!-- <a href="#"><img src="<c:url value='/images/pdqm/common/btn/btn_start.gif'/>" alt="처음목록으로 이동" /></a>
				<a href="#"><img src="<c:url value='/images/pdqm/common/btn/btn_prev.gif'/>" alt="이전목록으로 이동" /></a>
				<strong>1</strong>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
				<a href="#">6</a>
				<a href="#">7</a>
				<a href="#">8</a>
				<a href="#">9</a>
				<a href="#">10</a>
				<a href="#"><img src="<c:url value='/images/pdqm/common/btn/btn_next.gif'/>" alt="다음목록으로 이동" /></a>
				<a href="#"><img src="<c:url value='/images/pdqm/common/btn/btn_end.gif'/>" alt="마지막목록으로 이동" /></a>
				 -->
				<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_linkPage"/>
			</div>
		<!--// pading -->
		<!-- btnArea -->
		<div class="btnArea btn_ar">
			<a href="javascript:fn_compare();"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_code.gif'/>" alt="코드비교" /></a>
			<a href="javascript:fn_action();"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_download2.gif'/>" alt="템플릿다운로드" /></a>
			<input name="filename" type="hidden" value="<c:out value='코드정보_Template.xls'/>"/>
			<input name="original" type="hidden" value="코드정보_Template.xls"/>
			<a href="/pdqm/support/matching/DBCodeExcelRegist.do"><img src="<c:url value='/images/pdqm/common/btn/btn_regist.gif'/>" alt="등록" /></a>
		<!-- 	<a href="#"><img src="<c:url value='/images/pdqm/common/btn/btn_del.gif'/>" alt="삭제" /></a> -->
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

