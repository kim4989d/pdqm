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
 * @Class Name : QuizList.jsp
 * @Description : 관리수준 자가진단 문항관리
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
		tab_list_i.find('>a[href=#]').click(listTabMenuToggle).focus(listTabMenuToggle);
		tab_list_i.find('>div.btnPos').click(listTabMenuToggle2).focus(listTabMenuToggle2);
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
 * 등록화면 호출 함수
 ******************************************************** */
function fn_insert(upperDgnssTrgetId,dgnssTrgetId,upperDgnssTrgetNm,dgnssTrgetNm){
	var varForm				 = document.form;
	varForm.upperDgnssTrgetId.value     = upperDgnssTrgetId;
	varForm.dgnssTrgetId.value     = dgnssTrgetId;
	varForm.upperDgnssTrgetNm.value     = upperDgnssTrgetNm;
	varForm.dgnssTrgetNm.value     = dgnssTrgetNm;
	varForm.action           = "<c:url value='/support/diagnosis/level/insertQuizView.do' />";
	varForm.submit();
}

/* ********************************************************
 * 다음화면호출
 ******************************************************** */
function fn_Next(){
	var frm = document.form;

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

}

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href =  "<c:url value='/support/diagnosis/level/selectSelfDiagnosisList.do'/>";
}
/* ********************************************************
 * 상세목록 으로 가기
 ******************************************************** */
function fn_detail(qesitmId){
	var varForm				 = document.form;
	varForm.qesitmId.value     = qesitmId;
	varForm.action           = "<c:url value='/support/diagnosis/level/updateQuizView.do' />";
	varForm.submit();

}

</script>

</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="diagnosisLevelQuiz"  name="form" method="post">
<input type="hidden" name="upperDgnssTrgetId" />
<input type="hidden" name="dgnssTrgetId" />
<input type="hidden" name="upperDgnssTrgetNm" />
<input type="hidden" name="dgnssTrgetNm" />
<input type="hidden" name="qesitmId" />


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 관리수준 자가진단 > 문항 관리</div>
		<h2>문항 관리</h2>
	</div>

	<c:set var="totCount" value="0" />
<div class="tab list jx">
	<ul>
	<c:forEach items="${resultTitleList}" var="resultTitleList" varStatus="statusTa">
	<c:set var="totCount" value="${statusTa.count }"></c:set>
		<li id="tabClass_${statusTa.count }">
			<a href="#"><span>${resultTitleList.dgnssCntTrgetNm}</span></a>
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
							<dt>${resultList.dgnssTrgetNm}
								<span class="q_btn">
									<em class="button small"><input type="button" value="문항등록"  onclick="fn_insert('${resultTitleList.dgnssCntTrgetId}','${resultList.dgnssTrgetId }','${resultTitleList.dgnssCntTrgetNm}','${resultList.dgnssTrgetNm }')" /></em>
									<input type="image" class="close" src="/pdqm/images/pdqm/admin/faq_selected.gif" alt="항목닫기" />
								</span>
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
										<strong><label for="q${status.count}"><a href="javascript:fn_detail('${resultList.qesitmId }')" >${rowNum}. ${resultList.qesitm}</a></label></strong>
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
					<span class="button"><input type="button" value="다음" /></span>
				</c:if>
			</div>
		<!--// 탭컨텐츠 -->
		</li>
	</c:forEach>
	</ul>
</div>
	<!-- 버튼영역 -->
<!-- 	<div class="btnArea tblSpace">
		<span class="button"><input type="button" value="다음" onclick="fn_Next(); return false;" /></span>
	</div> -->
	<!--/ 버튼영역 -->

<input type="hidden" name="totCount" value="${totCount}" />
</form:form>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
