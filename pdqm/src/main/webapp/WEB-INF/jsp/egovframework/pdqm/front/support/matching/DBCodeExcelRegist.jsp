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
  * @Description : 지원창구 > 연계정보 정합성 진단 > 코드등록
  *
  */
  List list=(List)request.getAttribute("dBMatchigList");
  
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
	function fn_Regist_Excel(){

		var varForm				 = document.all["codeRegist"];
		// 파일 확장명 확인
		var arrExt      = "xls";
		var objInput    = varForm.elements["fileNM"];
		var strFilePath = objInput.value;
		var arrTmp      = strFilePath.split(".");
		var strExt      = arrTmp[arrTmp.length-1].toLowerCase();

		if (varForm.codename.value==""){
			alert("코드명을 입력하지 않았습니다.\n확인후 다시 처리하십시오. ");
			abort;
		}
		
		if (arrExt != strExt) {
			alert("엑셀 파일을 첨부하지 않았습니다.\n확인후 다시 처리하십시오. ");
			abort;
		} 
		
		varForm.action           = "<c:url value='/support/matching/DBCodeExcelRegist.do' />";
		varForm.submit();
	
	}
	-->
	</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>
<form:form commandName="searchVO" name="codeRegist" method="post" enctype="multipart/form-data" >
<!-- contents영역시작 -->
<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>코드등록</em></div>
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
		          	<form:select path="dbTrgetId"  cssClass="text" style="width:200px;height:25px;">
	                   	<form:option value="" label="전체" />
			          	 <c:forEach items="${dBMatchigList}" var="dBMatchigList" varStatus="status">
		               			<form:option value="${dBMatchigList.dbTrgetId}" label="${dBMatchigList.dgnssTrgetNm}" />
      					 </c:forEach>             
                    </form:select> 
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="input_1">*코드 관리명</label></th>
				<td><input type="text" id="codename" name ="codename" class="text" style="width:200px;" /></td>
			</tr>
			<tr>
				<th scope="row" ><label for="textarea_1">설명</label></th>
				<td>
					<textarea id="description" name ="description" class="text" cols="75" rows="28" style="width:500px;height:150px;"></textarea>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="input_3">*파일 등록</label></th>
				<td><input type="file" id="fileNM" name ="fileNM" class="text" style="width:400px;" /></td>
			</tr>
		</table>
		<p>※ 템플릿 양식을 준수하여 해당 코드값, 코드값의미 정보를 등록해주시기 바랍니다.</p>

		<!-- btnArea -->
		<div class="btnArea_c">
			<a href="javascript:fn_Regist_Excel();" ><img src="<c:url value='/images/pdqm/common/btn/btn_regist.gif'/>" alt="등록" /></a>
			<a href="/pdqm/support/matching/MatchingCodeInfo.do"><img src="<c:url value='/images/pdqm/common/btn/btn_cancel.gif'/>" alt="취소" /></a>
		</div>
		<!--// btnArea -->
		<input name="cmd" type="hidden" value="<c:out value='DBCodeExcelRegist'/>"/>

	</div>

</div>

<!--// contents영역끝 -->
<!-- 메시지 출력 -->
<script type="text/javascript" language="javascript" defer="defer">
<c:if test="${!empty message}"> alert("파일 등록 오류! \n파일을 등록하는 중에 오류가 발생하였습니다.  \n탬플릿 양식이 일치하는지 확인후 다시 등록하여 주시기 바랍니다."); </c:if>
</script>
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>

</form:form>
	
<%@ include file="/html/pdqm/include/footer.jsp" %>

