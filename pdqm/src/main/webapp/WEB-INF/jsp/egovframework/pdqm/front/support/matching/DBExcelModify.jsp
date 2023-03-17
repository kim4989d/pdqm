<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%
 /**
  * @Class Name : support5_3.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > 데이터베이스 정보 등록
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
	function fn_delete(){

		var varForm				 = document.all["DBModify"];
		
		
		if (confirm("정말 삭제 하시겠습니까?"))
		 {
			varForm.action           = "<c:url value='/support/matching/DBExcelDelete.do' />";
			varForm.submit();
		 }  				
	}
	function fn_modify(){
		
		var varForm				 = document.all["DBModify"];
		
		
		if (document.DBModify.instt_nm.value==""){
			alert("기관명을 입력하지 않았습니다.\n확인후 다시 처리하십시오. ");
			abort;
		}
		
		if (document.DBModify.database_nm.value==""){
			alert("데이터베이스명을 입력하지 않았습니다.\n확인후 다시 처리하십시오. ");
			abort;
		}

		if (confirm("정말 수정 하시겠습니까?"))
		 {
			varForm.action           = "<c:url value='/support/matching/DBExcelModify.do' />";
			varForm.submit();
		 }  	
	}
	-->
	</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<!-- contents영역시작 -->

<div class="bg_sup">

	<div class="title">
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>데이터베이스 정보 수정,삭제</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_3.gif'/>" alt="데이터베이스 정보 등록" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_2_desc.png'/>" class="png24" alt="DB스키마(컬럼명, 데이터 Type, 길이)에 대한 비교가 가능하여연계시 표준 준수 및 자체 표준 준수에 활용 가능합니다." /></p>
	</div>

	<div id="conBox">
	<form:form commandName="DBInfoVO" name="DBModify" method="post" enctype="multipart/form-data" >
		<table class="conTable2" summary="데이터베이스 정보 등록 테이블입니다.">
			<colgroup>
				<col width="20%">
				<col width="80%">
			<colgroup>
			<tr>
				<th scope="row"><label for="input_1">*기관명</label></th>
				<td>
					<input type="text" id="instt_nm"  name ="instt_nm" class="text" style="width:400px;" value = "<c:out value='${DBInfoVO.instt_nm}'/>" />
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="input_2">*데이터베이스명</label></th>
				<td>
					<input type="text" id="database_nm" name ="database_nm" class="text" style="width:400px;" value = "<c:out value='${DBInfoVO.database_nm}'/>" />
					<input name="database_id" type="hidden" value = "<c:out value='${DBInfoVO.database_id}'/>"/>
				</td>
			</tr>
			<tr>
				<th scope="row" ><label for="textarea_1">설명</label></th>
				<td>
					<textarea id="description" name ="database_dc" class="text" cols="75" rows="28" style="width:500px;height:150px;">${DBInfoVO.database_dc}</textarea>
				</td>
			</tr>

		</table>


		<!-- btnArea -->
		<div class="btnArea_c">
			<a href="javascript:fn_modify();"  ><img src="<c:url value='/images/pdqm/common/btn/btn_modify.gif'/>" alt="수정"  /></a>
			<a href="javascript:fn_delete();"  ><img src="<c:url value='/images/pdqm/common/btn/btn_del.gif'/>" alt="삭제"  /></a>
			<a href="searchAllDBInfoList.do"><img src="<c:url value='/images/pdqm/common/btn/btn_list.gif'/>" alt="목록" /></a>
		</div>
		<!--// btnArea -->
	<input name="cmd" type="hidden" value="<c:out value='DBExcelModify'/>"/>
	</form:form>
	</div>

</div>
<!--// contents영역끝 -->
		</div>
	</div>

	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

