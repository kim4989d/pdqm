<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : QuizModity.jsp
 * @Description : 관리수준 자가진단 문항 수정
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
<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_update(){
	if (fn_fomrValidate()){
		if(confirm("<spring:message code='common.update.msg'/>")){
			document.form.target  = "_self";
			document.form.action = "<c:url value='/support/diagnosis/level/updateQuiz.do' />";
		   	document.form.submit();

		}
	}
}

function fn_fomrValidate(){
	var frm = document.form;
	if (frm.qesitm.value == ""){
		alert("설문문항을 입력 하십시오.");
		frm.qesitm.focus();
		return false;
	}

	var totRow=0;
	totRow = document.answer_iframe.tblist.rows.length;
	var objRow = document.answer_iframe.tblist.rows;

	if (totRow == 1){
		alert("답변항목을 입력 하세요.");
		return false;
	}

	var answer, answerStdr, allot;
	var answers="", answerStdrs="", allots="";
	var checkedCount = 0;

	for(var i=1;i<totRow;i++) {
	
		answer = objRow[i].cells[1].firstChild;
		answerStdr = objRow[i].cells[2].firstChild;
		allot = objRow[i].cells[3].firstChild;

		if (answer.value == ''){
			alert("답변을 입력 하십시오");
			answer.focus();
			return false;
		}
		if (allot.value== ''){
			alert("배점을 입력 하십시오");
			allot.focus();
			return false;
		}

		if (answerStdr.value== ''){
			answerStdr.value = ' ';
		}

		answers += ((checkedCount==0? "" : ",") + answer.value);
		answerStdrs += ((checkedCount==0? "" : ",") + answerStdr.value);
		allots += ((checkedCount==0? "" : ",") + allot.value);
		checkedCount++;


	}

	frm.answers.value =  answers;
	frm.answerStdrs.value =  answerStdrs;
	frm.answerStdrs1.value =  answerStdrs;
	frm.allots.value =  allots;

	return true;

}

function fn_delete(){

	if(confirm("<spring:message code='common.delete.msg'/>")){
		document.form.target  = "_self";
		document.form.action = "<c:url value='/support/diagnosis/level/deleteQuiz.do' />";
	   	document.form.submit();

	}
}
/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href =  "<c:url value='/support/diagnosis/level/selectQuizList.do'/>";
}

/* ********************************************************
 * onload
 ******************************************************** */
function fn_onload(){

	var varForm			= document.form;
	varForm.target 		= "answer_iframe";
	varForm.action      = "<c:url value='/support/diagnosis/level/selectQuizAnswer2.do'/>";
	varForm.submit();

}

function fn_answer(searchAnswerTyCode){

	var varForm			= document.form;
	varForm.searchAnswerTyCode.value  = searchAnswerTyCode.value;
	varForm.target 		= "answer_iframe";
	if (varForm.temphAnswerTyCode.value == varForm.searchAnswerTyCode.value){
		varForm.action      = "<c:url value='/support/diagnosis/level/selectQuizAnswer2.do'/>";
	}else{
		varForm.action      = "<c:url value='/support/diagnosis/level/selectQuizAnswer.do'/>";
	}

	varForm.submit();

}


</script>
</head>

<body onload="fn_onload()">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="diagnosisLevelQuiz"  name="form" method="post">
<input type="hidden" name="searchAnswerTyCode" value="${diagnosisLevelQuiz.answerTyCode}"/>
<input type="hidden" name="temphAnswerTyCode" value="${diagnosisLevelQuiz.answerTyCode}"/>
<input type="hidden" name="answers" />
<input type="hidden" name="answerStdrs" />
<input type="hidden" name="answerStdrs1" />
<input type="hidden" name="allots" />

<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 문항 관리 > 문항 수정</div>
		<h2>문항 수정</h2>
	</div>

	<table class="vblType1" summary="설문등록 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="auto"/>
		</colgroup>
		<tr>
			<th><label for="search1">진단대상</label></th>
			<td>
				<form:input  path="upperDgnssTrgetNm" cssClass="readonly" cssStyle="width:100px" Disabled ="true " />
				<form:input  path="dgnssTrgetNm" cssClass="readonly" cssStyle="width:100px" Disabled ="true " />
				<form:hidden path="dgnssTrgetId"/>
				<form:hidden path="qesitmId"/>
			</td>
		</tr>
		<tr>
			<th><label for="label_q1">설문문항<img src="<c:url value='/images/egovframework/com/cmm/icon/required.gif' />" alt="필수입력항목" /></label></th>
			<td>
			<form:textarea path="qesitm" cssClass="textarea" rows="5" cols="92" />
			</td>
		</tr>
		<tr>
			<th><label for="label_a1">답변유형</label></th>
			<td>
				<form:radiobutton path="answerTyCode" value="T1000" onclick="fn_answer(this)" checked="true" label="예/아니오"  />
				<form:radiobutton path="answerTyCode" value="T2000" onclick="fn_answer(this)" label="3점 척도" />
				<form:radiobutton path="answerTyCode" value="T3000" onclick="fn_answer(this)" label="4지 선다형" />
				<form:radiobutton path="answerTyCode" value="T4000" onclick="fn_answer(this)" label="5점 척도" />
				<form:radiobutton path="answerTyCode" value="T5000" onclick="fn_answer(this)" label="7점 척도" />
				<form:radiobutton path="answerTyCode" value="T6000" onclick="fn_answer(this)" label="다중선택형" />
			</td>
		</tr>
		<!-- 다중선택형 일 경우만 보여짐 -->
		<tr>
			<th colspan="2" >답변항목</th>
		</tr>
		<tr>
			<td colspan="2">
				<iframe src="" id="answer_iframe" name="answer_iframe" width="100%" height="330px" marginwidth="0" marginheight="0" frameborder="0" scrolling="no"></iframe>
			</td>
		</tr>
		<!--// 다중선택형 일 경우만 보여짐 -->
	</table>


	<!-- 하단버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="삭제" onclick="fn_delete(); return false;" /></span>
		<span class="button"><input type="button" value="수정" onclick="fn_update(); return false;" /></span>
		<span class="button"><input type="button" value="목록" onclick="fn_list(); return false;" /></span>
	</div>
	<!--/ 하단버튼영역 -->

</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
