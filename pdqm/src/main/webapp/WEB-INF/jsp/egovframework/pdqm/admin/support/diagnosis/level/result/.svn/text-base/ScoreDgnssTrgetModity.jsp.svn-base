<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : ScoreDgnssTrgetModity.jsp
 * @Description : 자가진단(진단대상) 점수관리
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
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>

<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_update(){
	
	
	if (fn_fomrValidate()){
		if(confirm("<spring:message code='common.update.msg'/>")){
			document.form.action = "<c:url value='/support/diagnosis/level/updateScoreDgnssTrget.do'/>";
		   	document.form.submit();
		}
	}
}

function fn_fomrValidate(){
	var frm = document.form;
	var mumm , mxmm, code;
	var mumms = "";
	var mxmms = "";
	var codes = "";
	var checkedCount = 0;
	
	for(var i=1;i<4;i++){
		mumm = eval("frm.mumm_"+i);
		mxmm = eval("frm.mxmm_"+i);
		code = eval("frm.code_"+i);
		if (mumm.value == ''){
			alert("최소값을 입력 하십시오");
			mumm.focus();
			return false;
		}
		if (mxmm.value== ''){
			alert("최대값을 입력 하십시오");
			mxmm.focus();
			return false;
		}
		
		if( eval(mumm.value) > eval(mxmm.value)){
			alert("최소값이  최대값 보다 큰값이 입력 되었습니다.");
			mumm.focus();
			return false;
		}
		
		if(Number(frm.mumm_1.value) < Number(frm.mxmm_2.value)){
			alert("보통 최대값은 적정 최소값을 넘을수 없습니다.")
			frm.mxmm_2.focus();
			return false;
		}
		
		if(Number(frm.mumm_2.value) < Number(frm.mxmm_3.value)){
			alert("미흡 최대값은 보통 최소값을 넘을수 없습니다.")
			frm.mxmm_3.focus();
			return false;
		}
		
		mumms += ((checkedCount==0? "" : ",") + mumm.value);
		mxmms += ((checkedCount==0? "" : ",") + mxmm.value); 
		codes += ((checkedCount==0? "" : ",") + code.value); 
		checkedCount++;
	}
	frm.mumms.value =  mumms;
	frm.mxmms.value =  mxmms;
	frm.codes.value =  codes;
	return true;

}

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href = "<c:url value='/support/diagnosis/level/selectScoreDgnssTrgetList.do'/>";
}
	

</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<form:form commandName="diagnosisLevelScore"  name="form" method="post">

<!-- hidden  -->
<input type=hidden name="mumms" >
<input type=hidden name="mxmms" >
<input type=hidden name="codes" >

<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 결과(진단대상) 점수 관리</div>
		<h2>결과(진단대상) 점수 수정</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search1">진단대상</label></th>
				<td>
					<form:input path="dgnssTrgetNm" cssClass="readonly" cssStyle="width:150px" Disabled ="true "  />
					<form:hidden path="dgnssTrgetId"   />
					

				</td>
			</tr>
		</table>

	</fieldset>
	<!--// search -->

	<!-- listTable: Start -->
	<table class="tblType1 tblSpace" summary="목록 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">최소값<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></th>
				<th scope="col">부등호</th>
				<th scope="col">결과</th>
				<th scope="col">부등호</th>
				<th scope="col">최대값<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${resultList}" var="resultList" varStatus="status">
				<tr>
					<td><input type="text" id="mumm_${status.count}" name="mumm_${status.count}" value="${resultList.mumm}" style="width:100px" onblur="onlyNum(this)"  maxlength="3" class="text" title="최소값 입력"/></td>
					<td>&lt;=</td>
					<td>${resultList.codeNm} </td>
					<td>&lt;<c:if test="${resultList.code == 'LR100'}">=</c:if></td>
					<td><input type="text" id="mxmm_${status.count}" name="mxmm_${status.count}" value="${resultList.mxmm}" style="width:100px" onblur="onlyNum(this)" maxlength="3" class="text" title="최대값 입력"/></td>
					<input type="hidden" name="code_${status.count}" id="code_${status.count}"  value="${resultList.code}" />
				</tr>
			</c:forEach>
			
			
		</tbody>
	</table>
	<!-- //listTable: End -->


	<!-- 버튼영역 -->
	<div class="btnArea">
		<span class="button"><input type="button" value="수정"  onclick="fn_update(); return false;" /></span>
		<span class="button"><input type="button" value="목록" onclick="fn_list(); return false;" /></span>
	</div>
	<!--// 버튼영역 -->

</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>