<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
 /**
  * @Class Name : support4_3.jsp
  * @Description : 지원창구 > 품질수준 자가진단 안내
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
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javaScript">
<!--
window.history.forward(1);

var arrIds1Level = new Array() ;
var arrNm1Level = new Array() ;
var arrCnt1LevelIncludeQest = new Array() ;
var arrQueStartNoOn1Level = new Array() ;
var arrAnswerPapers = new Array() ;
var i = 0 ;

var cnt1Level = <c:out value="${cnt1Level}"/> ;

var curtab = 1 ;
var totalCntTab = 0 ;
var queStartNo = 1 ;

<c:forEach var="list" items="${cntidxdeclist}" varStatus="rs">
	<c:if test="${list.qesitmCount > 0}">
		arrIds1Level.push( <c:out value="${list.idxId}" /> ) ;
		arrNm1Level.push( '<c:out value="${list.idxNm}" />' ) ;
		arrCnt1LevelIncludeQest.push( <c:out value="${list.qesitmCount}" /> ) ;

		//alert( "queStartNo = " + queStartNo ) ;
		arrQueStartNoOn1Level.push( queStartNo ) ;
		queStartNo = queStartNo + <c:out value="${list.qesitmCount}" /> ;

		totalCntTab = totalCntTab + 1 ;
	</c:if>
</c:forEach>

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

	function listTabMenuToggle(event){ //탭 클릭시 진입
		var t = $(this);

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
	tab_list_i.find('>a[href=#header]').click(listTabMenuToggle).focus(listTabMenuToggle);
	tab_list_i.find('>div.btnPos').find('>a.next').click(listTabMenuToggle2).focus(listTabMenuToggle2);

	function listTabMenuToggle2(event){ //다음버튼 클릭시 진입
		var u = $(this);
		var v = u.parent();
		var v2 = v.parent();
		var w = v2.next();

		tab_list_i.find('>dl').hide();
		w.find('dl').show();

		tab_list_i.removeClass('on');
		v2.next().addClass('on');
		tab_list.css('height', w.find('dl').height()+40);

		tab_list_i.find('>div').hide();
		w.find('div').show();
		w.find('div').css('top',w.find('dl').height()+40);

		return false;
	}
});

function lfn_chkDone()
{
	var answer_paper = "" ;
	var i = 1 ;
	for( ; ; i++ )
	{
		var obj_answer = eval( "listForm.answer_" + i ) ;
		if( obj_answer == null ) break ;

		var bChecked = false ;

		for( var j = 0 ; j < obj_answer.length ; j++ )
		{
			if( obj_answer[ j ].checked )
			{
				bChecked = true ;

				//var qesitmNo	= eval( "listForm.qesitmNo_answer_" 	+ i ).value ;
				var qesitmNo	= i ;
				var idxId 		= eval( "listForm.idxId_answer_" 		+ i ).value ;
				var upperIdxId 	= eval( "listForm.upperIdxId_answer_" 	+ i ).value ;
				var qesitmId	= eval( "listForm.qesitmId_answer_" 	+ i ).value ;
				var answerId	= eval( "listForm.answerId_answer_" 	+ i ).value ;
				var answerTyCode= eval( "listForm.answerTyCode_answer_" + i ).value ;
				var allot		= obj_answer[ j ].value ;
				var answerCnt	= eval( "listForm.answerCnt_answer_" + i ).value ;

				answer_paper = answer_paper
						+ qesitmNo + "`"
						+ idxId + "`"
						+ upperIdxId + "`"
						+ qesitmId + "`"
						+ answerId + "`"
						+ answerTyCode + "`"
						+ allot + "`"
						+ answerCnt + "`^"
						;
				break ;
			}
		}
		if( !bChecked )
		{
			var tabno = lfn_whereTab( i ) ;

			if( tabno - 1 > -1 )
			{
				alert( arrNm1Level[ tabno - 1 ] + "탭에서 " + i + "번 문제에 대한 답을 입력하지 않았습니다.\n\n모든 문제를 풀어야 다음 단계로 진행하실 수 있습니다." ) ;
				//alert( i + "번 문제에 대한 답을 입력하지 않았습니다.\n\n모든 문제를 풀어야 다음 단계로 진행하실 수 있습니다." ) ;

				if( tabno != -1 ) document.getElementById( 'header_' + tabno ).click() ;
				document.getElementById( 'answer_' + i ).focus() ;

				//document.body.all.tags( 'dl' )[ 0 ].click() ; //x
				return false ;
			}
		}
	}

	//alert( answer_paper ) ;
	listForm.answerPaper.value = answer_paper ;
	return true ;
}

function lfn_whereTab( no )
{
	var qcnt = 0 ;
	var i = 0 ;
	for( ; i < arrCnt1LevelIncludeQest.length ; i++ )
	{
		qcnt += arrCnt1LevelIncludeQest[ i ] ;
		if( qcnt >= no ) return i + 1 ;
	}
	return -1 ;
}

function lfn_next()
{
	if( lfn_chkDone() )
	{
		listForm.action = "<c:url value='/support/diagnosis/idx/submitIdxDgnssTrgetResult.do'/>";
		listForm.submit();
	}
}

function lfn_hiddenAllTab()
{
	var obj = null ;
	for( var i = 1 ; i <= cnt1Level ; i++ )
	{
		obj = eval( 'tabcon_' + arrIds1Level[ i ] ) ;
		if( obj == null ) break ;
		obj.style.display = "none" ;
	}
}

function lfn_onload()
{
	alert( 1000 ) ;
	currentTab = arrIds1Level[ 0 ] ;

	lfn_hiddenAllTab() ;
	if( arrIds1Level.length > 0 )
		eval( 'tabcon_' + arrIds1Level[ 0 ] ).style.display = "" ;
}

//-->
</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>


<!-- contents영역시작 -->

<div class="bg_sup">
	<form:form commandName="searchVO" name="listForm"  method="post" onload="javascript:lfn_onload();">
	<input type="hidden" name="cnt1Level" value="<c:out value="${cnt1Level}"/>" /><!-- 1레벨 갯수 -->
	<input type="hidden" name="cntTotQuestion" value="<c:out value="${cntTotQuestion}"/>" /><!-- 1레벨 전체에 대한 문항수 -->
	<input type="hidden" name="answerPaper" /><!-- 시험결과  문제번호 및 답  문자열 (문제번호`답^문제번호`답^)-->

	<input type="hidden" name="upperInsttSeCode" value="<c:out value="${basicinfo.upperInsttSeCode}"/>" />
	<input type="hidden" name="insttSeCode" value="<c:out value="${basicinfo.insttSeCode}"/>" />
	<input type="hidden" name="insttNm" value="<c:out value="${basicinfo.insttNm}"/>" />
	<input type="hidden" name="databaseTyId" value="<c:out value="${basicinfo.databaseTyId}"/>" />
	<input type="hidden" name="databaseNm" value="<c:out value="${basicinfo.databaseNm}"/>" />
	<input type="hidden" name="databaseScaleCode" value="<c:out value="${basicinfo.databaseScaleCode}"/>" />

	<input type="hidden" name="idxDgnssId" value="<c:if test="${idxDgnssId ne null && idxDgnssId ne ''}"><c:out value="${idxDgnssId}"/></c:if>" />
	<input type="hidden" name="idxDgnssNm" value="<c:if test="${idxDgnssNm ne null && idxDgnssNm ne ''}"><c:out value="${idxDgnssNm}"/></c:if>" />


	<div class="title">
		<div class="location">Home > 지원창구 > 품질수준 자가진단 > <em>지표별 자가진단</em></div>
		<h3><img src="<c:url value="/images/pdqm/front/support/h3_sup4_5.gif"/>" alt="지표별 자가진단" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup4_desc.png'/>" alt="공공정보 품질수준을 자가진단하여 품질개선 향상에 도움을 줄 수 있는 창구입니다. 질문은 대략 30여개로 구성되어 있으며, 소요시간은 약 20분정도 소요됩니다. 기관 및 협의회의 많은 참여 바랍니다." /></p>
	</div>
	<c:set var="totCount" value="0" />

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup4_5.gif'/>" alt="품질지표 자가진단" /></h4>

		<div class="tab list jx">
			<ul class="mt_5">
				<c:if test="${cntTotQuestion > 0}">
					<c:set var="qesitmNo" value="${0}" />

					<c:forEach var="list" items="${cntidxdeclist}" varStatus="rs">
						<c:if test="${list.qesitmCount > 0}">
							<c:set var="totCount" value="${totCount + 1}"/>

							<li>
								<!-- a href="#header"><span><c:out value="${list.idxNm}" />(<c:out value="${list.qesitmCount}" />)</span></a -->
								<a href="#header" id="header_<c:out value="${totCount}"/>"><span><c:out value="${list.idxNm}" />(<c:out value="${list.qesitmCount}" />)</span></a>

								<dl id="tabcon_<c:out value="${list.idxId}" />">
									<dt>[<c:out value="${list.idxNm}" />] <c:out value="${list.idxDc}" /></dt>
									<dd>
										<ol class="qType1">

											<c:forEach var="list2" items="${idxdgnsslist}" varStatus="rs2">
												<c:if test="${list.idxId eq list2.upperIdxId && list2.qesitm ne null}">
													<c:if test="${qesitmId ne list2.qesitmId}">
														<c:set var="qesitmId" value="${list2.qesitmId}" />
														<c:set var="qesitmNo" value="${qesitmNo + 1}" />
														<c:set var="answerCnt" value="${list2.answerCnt}" />
														<c:set var="answercnt2" value="${0}" />

														<li><strong><c:out value="${qesitmNo}" />. <c:out value="${list2.qesitm}" /></strong>
															<input type='hidden' name='idxId_answer_<c:out value="${qesitmNo}" />' 	value='<c:out value="${list2.idxId}" />' />
															<input type='hidden' name='upperIdxId_answer_<c:out value="${qesitmNo}" />' value='<c:out value="${list2.upperIdxId}" />' />
															<input type='hidden' name='qesitmId_answer_<c:out value="${qesitmNo}" />' value='<c:out value="${list2.qesitmId}" />' />
															<input type='hidden' name='answerId_answer_<c:out value="${qesitmNo}" />' value='<c:out value="${list2.answerId}" />' />
															<input type='hidden' name='qesitmNo_answer_<c:out value="${qesitmNo}" />' value='<c:out value="${list2.qesitmNo}" />' />
															<input type='hidden' name='answerTyCode_answer_<c:out value="${qesitmNo}" />' value='<c:out value="${list2.answerTyCode}" />' />
															<input type='hidden' name='allot_answer_<c:out value="${qesitmNo}" />' value='<c:out value="${list2.allot}" />' />
															<input type='hidden' name='answerCnt_answer_<c:out value="${qesitmNo}" />' value='<c:out value="${list2.answerCnt}" />' />
														<ul>
													</c:if>
													<c:if test="${qesitmId eq list2.qesitmId && answercnt2 ne answerCnt}">
														<c:set var="answercnt2" value="${answercnt2 + 1}" />

														<li><input type="radio" id="answer_<c:out value='${qesitmNo}' />" name="answer_<c:out value='${qesitmNo}' />" value="<c:out value='${list2.allot}'/>"/> <label for="answer_<c:out value='${qesitmNo}' />"><c:out value="${list2.answer}"/></label></li>
													</c:if>

													<c:if test="${qesitmId eq list2.qesitmId && answercnt2 eq answerCnt}">
														</ul>
														</li>
													</c:if>
												</c:if>
											</c:forEach>

										</ol>
									</dd>
								</dl>

								<!-- btn -->
								<div id="btncontrol" class="btnPos">
									<c:choose>
										<c:when test="${totCount ne cnt1Level}">
											<a href="#wrapper" class="next"><img id="imgBtn" src="<c:url value='/images/pdqm/common/btn/btn_next2.gif'/>" alt="다음" /></a>
										</c:when>
										<c:otherwise>
											<a href="#" onclick="javascript:lfn_next();"><img id="imgBtn" src="<c:url value='/images/pdqm/common/btn/btn_sup_end.gif'/>" alt="완료" /></a>
										</c:otherwise>
									</c:choose>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</c:if>
			</ul>
		</div>
		<input type="hidden" name="totCount" value="<c:out value="${totCount}" />" />
	</div>

	</form:form>
</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

