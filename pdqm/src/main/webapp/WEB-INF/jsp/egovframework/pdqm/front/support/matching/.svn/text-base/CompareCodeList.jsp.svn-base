<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="egovframework.pdqm.front.support.matching.model.CompareCodeVO" %>
<%
 /**
  * @Class Name : support5_11.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > 코드비교
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
	<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/jquery-1.4.2.min.js' />" ></script>
</head>
<script type="text/javaScript" language="javascript" defer="defer">
<!--

/* ********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function linkPage(pageNo){
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/support/matching/compareCodeList.do'/>";
   	document.listForm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){
	document.listForm.pageIndex.value = 1;
	fn_check();
	document.listForm.action = "<c:url value='/support/matching/compareCodeList.do'/>";
   	document.listForm.submit();
}
/* ********************************************************
 * 코드 비교 
 ******************************************************** */
 /*

 function fn_compare(){
	var varForm				 = document.listForm;
	var s_id=$("select[name=s_code_info_id] option:enabled").val();
	var t_id=$("select[name=t_code_info_id] option:enabled").val();
	var yn = varForm.master_yn.checked;
	if(s_id == undefined || t_id == undefined){
		alert("비교할 코드를 선택해 주세요.");
		return;
	}
	varForm.action           = "<c:url value='/support/matching/MatchingCodeComp.do'/>";
	varForm.submit();
}
*/

function fn_compare(){
	
	var varForm				 = document.listForm;
	var s_id=$("select[name=s_code_info_id] option:selected").val();
	var t_id=$("select[name=t_code_info_id] option:selected").val();
	//var yn = varForm.master_yn.checked;
	if(s_id == undefined || t_id == undefined){
		alert("비교할 코드를 선택해 주세요.");
		return;
	}
	
	/* alert(s_id+" ||  "+t_id);*/
	
	document.listForm.s_code_info_id.value= $("select[name=s_code_info_id] option:selected").val();
	document.listForm.t_code_info_id.value= $("select[name=t_code_info_id] option:selected").val();
	fn_check();
	//document.listForm.master_yn.value = document.listForm.master_yn.checked;
	/* alert(document.listForm.s_code_info_id.value+" ||  "+document.listForm.t_code_info_id.value);*/
	
	document.listForm.action = "<c:url value='/support/matching/MatchingCodeComp.do'/>";
	document.listForm.submit();
}

function fn_check(){
	var varForm				 = document.listForm;
	var yn = varForm.check1.checked;
	if(yn){
		varForm.master_yn.value='Y';
	}else{
		varForm.master_yn.value='N';
	}
}

function fn_s_add(){
	var id=$("select[name=code_info_id] option:selected").val();
	var t_id=$("select[name=t_code_info_id] option:selected").val();
	if(id !=undefined && t_id!=undefined && id == t_id){
		alert("대상 코드와 동일한 코드는 선택할 수 없습니다.");
		return false;
	}else if(id ==undefined && t_id==undefined){
		alert("비교할 코드를 선택해 주세요.");
		return false;
	}else{
		var name=$("select[name=code_info_id] option:selected").text();
		if(id !=undefined){
			var addOpt = document.createElement('option');
			addOpt.value=id;
			addOpt.appendChild(document.createTextNode(name));
			$("select[name=s_code_info_id]").empty();
			$("select[name=s_code_info_id]").append(addOpt);
			$("select[name=s_code_info_id] option[value="+id+"]").attr("selected",true);
			document.listForm.s_code_info_nm.value = name;
			fn_check();
		}
	}
}

function fn_t_add(){
	var id=$("select[name=code_info_id] option:selected").val();
	var s_id=$("select[name=s_code_info_id] option:selected").val();
	if(id !=undefined && s_id!=undefined && id == s_id){
		alert("기준 코드와 동일한 코드는 선택할 수 없습니다.");
		return false;
	}else if(id ==undefined && s_id==undefined){
		alert("비교할 코드를 선택해 주세요.");
		return false;
	}else{
		var name=$("select[name=code_info_id] option:selected").text();
		if(id !=undefined){
			var addOpt = document.createElement('option');
			addOpt.value=id;
			addOpt.appendChild(document.createTextNode(name));
			$("select[name=t_code_info_id]").empty();
			$("select[name=t_code_info_id]").append(addOpt);
			$("select[name=t_code_info_id] option[value="+id+"]").attr("selected",true);
			document.listForm.t_code_info_nm.value = name;
			fn_check();
		}
	}
}
-->
</script>
<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<form:form commandName="searchVO" name="listForm"  method="post">
<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
<input name="s_code_info_nm" type="hidden" value="<c:out value='${s_code_info_nm}'/>"/>
<input name="t_code_info_nm" type="hidden" value="<c:out value='${t_code_info_nm}'/>"/>
<input name="master_yn" type="hidden" value="<c:out value='${master_yn}'/>"/>

<!-- contents영역시작 -->

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>코드비교</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_11.gif'/>" alt="코드비교" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_9_desc.png'/>" class="png24" alt="기준 마스터코드와 대상 마스터코드의 검정 결과를 확인하여 연계시 및 자체코드를 사용하고 있는 컬럼에 대해 코드값 오류를 파악할 수 있습니다." /></p>
	</div>

	<div id="conBox">
	<div class="sup5_11">
		<div class="tb_fL">
			<!-- 검색박스 -->
			<fieldset class="searchBox_s">
				<legend>검색폼1</legend>
				<label for="input1"><strong>코드 관리명</strong></label> <form:input type="text" path="cond_code_info_nm" class="text" style="width:165px;" />
				<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_search2.gif'/>" title="조회" onclick="javascript:fn_search(); return false;"/>
			</fieldset>
			<!--// 검색박스-->

			<dl class="con_dl">
				<!-- <dt><label for="select1">번호 / 데이터베이스명/ 코드 관리명</label></dt> -->
				<dt><label for="select1">데이터베이스명 / 코드 관리명</label></dt>
				<dd>
					<form:select path="code_info_id" class="multiple" multiple="multiple" style="width:100%;height:200px;" id="code_info_id" >
          				<c:forEach items="${resultList}" var="resultList" varStatus="status">
	               			<form:option value="${resultList.code_info_id}" label="${resultList.code_info_nm}" />
      					</c:forEach>    
                   </form:select>	
				</dd>
			</dl>
		</div>


		<div class="tb_fR">
			<!-- 검색박스 -->
			<fieldset class="searchBox_s">
				<legend>검색폼2</legend>
				<!--  <label for="check1">마스터코드간 비교 여부</label> <input type="checkbox" id="master_yn" name ="master_yn"/> -->
				<label for="check1">마스터코드간 비교 여부</label> <input type="checkbox" id="check1"  <c:if test="${master_yn == 'Y'}"><c:out value="checked" /></c:if> />
				<a> <input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_code2.gif'/>" class="btn" onclick="javascript:fn_compare(); return false;" title="코드비교 실행" /></a>
			</fieldset>
			<!--// 검색박스 -->

			<a class="sel_btn"><img src="<c:url value='/images/pdqm/common/btn/btn_c_next.gif'/>" onclick="javascript:fn_s_add(); return false;" alt="기준코드로 이동" /></a>
			<dl class="con_dl first">
				<dt><label for="select2">기준 코드</label></dt>
				<dd>
					<form:select path="s_code_info_id" class="multiple" multiple="multiple" id="s_code_info_id" name ="s_code_info_id">
					<c:if test="${!empty s_code_info_id}">
					<option value="<c:out value="${s_code_info_id}"/>" selected ><c:out value="${s_code_info_nm}"/></option>
					</c:if>
					</form:select>
				</dd>
			</dl>

			<a class="sel_btn2"><img src="<c:url value='/images/pdqm/common/btn/btn_c_next.gif'/>" onclick="javascript:fn_t_add(); return false;" alt="분석대상코드로 이동" /></a>
			<dl class="con_dl">
				<dt><label for="select3">분석 대상 코드</label></dt>
				<dd>
					<form:select path="t_code_info_id" class="multiple" multiple="multiple" name ="t_code_info_id" id="t_code_info_id" >
					<c:if test="${!empty t_code_info_id}">
					<option value="<c:out value="${t_code_info_id}"/>" selected ><c:out value="${t_code_info_nm}"/></option>
					</c:if>
					</form:select>
				</dd>
			</dl>
		</div>



	</div></div>

</div>
<!-- paging : Start -->
<c:if test="${!empty searchVO.pageIndex }">	
	<c:if test="${!empty paginationInfo }">	
		<div class="paging">
        <ui:pagination paginationInfo = "${paginationInfo}"
            type="image"
            jsFunction="linkPage"
            />
		</div>
	</c:if>
</c:if>
<!--// paging : End -->
<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
</form:form>
<%@ include file="/html/pdqm/include/footer.jsp" %>

