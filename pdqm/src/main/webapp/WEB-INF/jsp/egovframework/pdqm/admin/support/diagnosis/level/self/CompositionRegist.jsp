<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : CompositionRegist.jsp
 * @Description : 관리수준 자가진단 구성
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
	<script type="text/javascript">
	<!--
jQuery(function($){
	// List Tab Navigation
	var tab_list = $('div.tab.list');
	var tab_list_i = tab_list.find('>ul>li');
	tab_list.removeClass('jx');
	tab_list_i.find('>dl').hide();
	tab_list.find('>ul>li:first-child').find('>dl').show();
	tab_list.css('height', tab_list.find('>ul>li:first-child>dl').height()+40);

	tab_list_i.find('>div').hide();
	tab_list.find('>ul>li:first-child').find('>div').show();
	tab_list.find('>ul>li:first-child').find('>div').css('top',tab_list.find('>ul>li:first-child>dl').height()+40);

	tab_list.find('>ul>li:first-child').addClass('on');


	tab_list_i.find('>a[href=#]').click(listTabMenuToggle).focus(listTabMenuToggle);
	tab_list_i.find('>div.btnPos').click(listTabMenuToggle2).focus(listTabMenuToggle2);

	//tab
	function listTabMenuToggle(event){
		var t = $(this);
		//alert(t);
		tab_list_i.find('>dl').hide();
		t.next('dl').show();

		tab_list_i.removeClass('on');
		t.parent('li').addClass('on');
		tab_list.css('height', t.next('dl').height()+40);

		tab_list_i.find('>div').hide();
		tab_list.find('>ul>li.on').find('>div').show();
		tab_list.find('>ul>li.on').find('>div').css('top',t.next('dl').height()+40);
		return false;
	}

	//다음버튼
	function listTabMenuToggle2(event){
		var u = $(this);
		var v = u.parent();
		var w = v.next();

		tab_list_i.find('>dl').hide();
		w.find('dl').show();

		tab_list_i.removeClass('on');
		v.next().addClass('on');
		tab_list.css('height', w.find('dl').height()+40);

		tab_list_i.find('>div').hide();
		w.find('div').show();
		w.find('div').css('top',w.find('dl').height()+40);
		return false;
	}

	$("input.close").click(function(){
		var tmp = $(this).parent(); //span
		var tmp2 = tmp.parent();	//dt
		var tmp3 = tmp2.next();		//dd
		var tmp4 = tmp3.find('ol');

		var tmp5 = tmp2.parent();	//dl
		var tmp6 = tmp5.next();		//div

		//alert(tmp4.css('display'));

		if (tmp4.css('display') != 'none')
		{
			tmp4.hide();
			tab_list.css('height', tmp5.height()+40);
			tmp6.css('top',tmp5.height()+40);
			return false;
		}else{
			tmp4.show();
			tab_list.css('height', tmp5.height()+40);
			tmp6.css('top',tmp5.height()+40);
			return false;
		}
		return false;
	});

});



	//-->
	</script>

<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
  function fn_insert(){
		if (fn_fomrValidate()){
			if(confirm("<spring:message code='common.save.msg'/>")){
				document.form.action = "<c:url value='/support/diagnosis/level/insertComposition.do' />";
			   	document.form.submit();

			}
		}
	}

function fn_fomrValidate(){
	var frm = document.form;
	var checkValue="";
	var checkedCount = 0;
	/* if (frm.levelDgnssNm.value == ""){
		alert("자기진단명을 입력 하십시오.");
		document.form.levelDgnssNm.focus();
		return false;
	} */


/*
	var totCnt = document.form.totCount.value;
	var TempTabObj;
	var TempTabObj2;
	var TempTabClass1;
	var TempTabClass2;
	for(var i=1;i<=totCnt;i++) {
		TempTabObj = document.getElementById("tabcon_"+i);
		TempTabClass1 = document.getElementById("tabClass_"+i);
		 if (TempTabObj.style.display == "" || TempTabObj.style.display == "block" ){

			if(i != totCnt){
				TempTabObj2 = document.getElementById("tabcon_"+(i+1));
				TempTabObj.style.display = "none";
				TempTabObj2.style.display = "";
				TempTabClass2 = document.getElementById("tabClass_"+(i+1));
				TempTabClass1.className = "";
				TempTabClass2.className = "on";
				return false;
			}

		}
	}
 */
	var allCheck = document.getElementsByName("checkQusitmId");
	for(var i=0;i<allCheck.length;i++) {
		if(allCheck[i].checked){
			checkValue += ((checkedCount==0? "" : ",") + allCheck[i].value);
			checkedCount++;
		}
	}
	document.form.checkValue.value = checkValue;
	if(checkedCount == 0){
		alert("선택한 항목이 없습니다. 항목을 선택해 주세요.");
		return false;
	}
	return true;

}

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href =  "<c:url value='/support/diagnosis/level/selectSelfDiagnosisList.do'/>";
}

</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="diagnosisLevelSelf"  name="form" method="post">
<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/callCalPopup.do'/>" />
<form:hidden path="levelDgnssId" />
<form:hidden path="checkValue" />
<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 자가진단 관리</div>
		<h2>자가진단 구성</h2>
	</div>

	<c:set var="totCount" value="0" />
<div class="tab list jx">
	<ul>
	<c:forEach items="${resultTitleList}" var="resultTitleList" varStatus="statusTa">
	<c:set var="totCount" value="${statusTa.count }"></c:set>
		<li id="tabClass_${statusTa.count }">
			<a href="#"><span>${resultTitleList.dgnssCntTrgetNm}(${resultTitleList.dgnssCntQesitmCount1}/${resultTitleList.dgnssCntQesitmCount2})</span></a>
			<c:set var="tempDgnssTrgetId" value="" />
			<c:set var="tempQesitmId" value="" />
			<c:set var="rowNum" value="0" />

		<!-- 탭컨텐츠 -->
			<dl id="tabcon_${statusTa.count }">
			<c:forEach items="${resultList}" var="resultList" varStatus="status">
				<c:if test="${resultTitleList.dgnssCntTrgetId == resultList.upperDgnssTrgetId }">
					<!-- 항목영역 -->
						<c:if test="${resultList.dgnssTrgetId != tempDgnssTrgetId }">

						<c:set var="tempAnswerCnt" value="1" />
							<dt>${resultList.dgnssTrgetNm}(${resultList.qesitmCount1}/${resultList.qesitmCount2})
								<span class="q_btn"><input type="image" class="close" src="/pdqm/images/pdqm/admin/faq_selected.gif" alt="항목닫기" /></span>
							</dt>
						</c:if>

							<!-- 문항자리 -->
							<c:if test="${resultList.qesitmId != tempQesitmId }">
								<c:set var="tempAnswerCnt" value="1" />
							</c:if>

							<c:if test="${resultList.dgnssTrgetId != tempDgnssTrgetId }">
								<c:set var="answerCnt" value="1" />
							</c:if>

							<c:if test="${tempDgnssTrgetId != resultList.dgnssTrgetId }">
							<dd>
								<ol class="qType1">

							</c:if>
										<c:if test="${tempQesitmId != resultList.qesitmId }">
										<li>
										<c:set var="rowNum" value="${rowNum +1}" />
										<strong><input type="checkbox" id="q${status.count}" name="checkQusitmId" value="${resultList.qesitmId}" <c:if test="${resultList.sQesitm=='Y'}">checked="true"</c:if> /> <label for="q${status.count}">${rowNum}. ${resultList.qesitm}</label></strong>
										<ul>
										</c:if>
											<li><input type="radio" id="q${status.count}_a${status.count}" /><label for="q${status.count}_a${status.count}">${resultList.answer}</label></li>
										<c:if test="${tempAnswerCnt == resultList.answerCo }">
										</ul>
										</li>
										</c:if>
							<c:if test="${answerCnt == resultList.answerCnt }">


								</ol>
							</dd>
							</c:if>
							<!--// 문항자리 -->

					<!--// 항목영역 -->
				</c:if>
				<c:set var="tempDgnssTrgetId" value="${resultList.dgnssTrgetId }" />
				<c:set var="tempAnswerCnt" value="${tempAnswerCnt+1 }" />
				<c:set var="answerCnt" value="${answerCnt+1 }" />
				<c:set var="tempQesitmId"  value="${resultList.qesitmId }" />
			</c:forEach>
			</dl>
			<!-- btn -->
			<div class="btnPos">
				<c:if test="${statusTa.count ne cnt1Level}">
					<span class="button"><input type="button" value="목록" onclick="fn_list(); return false;" /></span>
					<span class="button"><input type="button" value="다음" /></span>
					<span class="button"><input type="button" value="저장" onclick="fn_insert(); return false;"/></span>
				</c:if>
				<c:if test="${statusTa.count eq cnt1Level}">
					<span class="button"><input type="button" value="목록" onclick="fn_list(); return false;" /></span>
					<span class="button"><input type="button" value="저장" onclick="fn_insert(); return false;"/></span>
				</c:if>

			</div>
		</li>
		<!--// 탭컨텐츠 -->
	</c:forEach>
	</ul>
</div>

	<!-- 버튼영역
	<div class="btnArea tblSpace">
		<span class="button"><input type="button" value="목록" onclick="fn_list(); return false;" /></span>
		<span class="button"><input type="button" value="다음" onclick="fn_insert(); return false;" /></span>
	</div>-->
	<!--/ 버튼영역 -->

<input type="hidden" name="totCount" value="${totCount}" />
</form:form>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
