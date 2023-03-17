<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page  import="java.util.List"%>
<%@page  import="egovframework.pdqm.front.support.matching.model.DBMatching"%>



<%
 /**
  * @Class Name : support5_10.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > 코드수정삭제
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
	<script type="text/javaScript" language="javascript" defer="defer">
	<!--
	/* ********************************************************
	 * 저장처리화면
	 ******************************************************** */
	function fn_modify(){

		var varForm				 = document.all["codeInfoModify"];
		
		if (varForm.code_nm.value==""){
			alert("코드명을 입력하지 않았습니다.\n확인후 다시 처리하십시오. ");
			abort;
		}
		
		if (confirm("정말 수정 하시겠습니까?"))
		 {
			varForm.action           = "<c:url value='/support/matching/DBCodeExcelModify.do' />";
			varForm.submit();
		 }  	
	}
	
	function fn_delete(){

		var varForm				 = document.all["codeInfoModify"];

		if (confirm("정말 삭제 하시겠습니까?"))
		 {
			varForm.action           = "<c:url value='/support/matching/DBCodeExcelDelete.do' />";
			varForm.submit();
		 }  		
	}
	
	-->
	</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>
<form:form commandName="codeInfoVO" name="codeInfoModify" method="post" enctype="multipart/form-data" >
<!-- contents영역시작 -->
<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>코드 정보 수정,삭제</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_10.gif'/>" alt="코드등록" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_9_desc.png'/>" class="png24" alt="기준 마스터코드와 대상 마스터코드의 검정 결과를 확인하여 연계시 및 자체코드를 사용하고 있는 컬럼에 대해 코드값 오류를 파악할 수 있습니다." /></p>
	</div>

	<div id="conBox">

		<table class="conTable2" summary="코드등록 테이블입니다.">
			<colgroup>
				<col width="20%">
				<col width="80%">
			<colgroup>
			<tr>
				<th scope="row"><label for="select_1">데이터베이스명</label></th>
				<td>
					<input type="text" id="databasename" name ="databasename" class="text" style="width:200px;" disabled ="disabled" value = "<c:out value='${codeInfoVO.database_nm}'/>"/>
					<input name="database_id" type="hidden" value = "<c:out value='${codeInfoVO.database_id}'/>"/>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="input_1">*코드 관리명</label></th>
				<td>
					<input type="text" id="code_nm" name ="code_nm" class="text" style="width:200px;" value = "<c:out value='${codeInfoVO.code_nm}'/>" />
					<input name="code_info_id" type="hidden" value = "<c:out value='${codeInfoVO.code_info_id}'/>"/>
				</td>
			</tr>
			<tr>
				<th scope="row" ><label for="textarea_1">설명</label></th>
				<td>
					<textarea id="code_nm_desc" name ="code_nm_desc" class="text" cols="75" rows="28" style="width:500px;height:150px;">${codeInfoVO.code_nm_desc}</textarea>
				</td>
			</tr>
	
		</table>

		<!-- btnArea -->
		<div class="btnArea_c">
			<a href="javascript:fn_modify();"  ><img src="<c:url value='/images/pdqm/common/btn/btn_modify.gif'/>" alt="수정"  /></a>
			<a href="javascript:fn_delete();"  ><img src="<c:url value='/images/pdqm/common/btn/btn_del.gif'/>" alt="삭제"  /></a>
			<a href="/pdqm/support/matching/MatchingCodeInfo.do"><img src="<c:url value='/images/pdqm/common/btn/btn_list.gif'/>" alt="목록" /></a>
		</div>
		<!--// btnArea -->
		<input name="cmd" type="hidden" value="<c:out value='DBCodeExcelModify'/>"/>

	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>

</form:form>
	
<%@ include file="/html/pdqm/include/footer.jsp" %>

