<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="org.springframework.ui.ModelMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
 /**
  * @Class Name : support4_1.jsp
  * @Description : 지원창구 > 품질수준 자가진단 > 관리수준 기본정보입력 및 선택
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
<script type="text/javaScript" language="javascript" defer="defer">
<!--
	function lfn_setBasicInfo()
	{
		var obj = listForm.instt ;
		for( var i = 0 ; i < obj.length ; i++ )
		{
			if( obj[ i ].checked )
			{
				var instt = obj[ i ].value ;
				var idx = instt.indexOf( "_" ) ;

				listForm.upperInsttSeCode.value = instt.substring( 0, idx ) ;
				listForm.insttSeCode.value = instt.substring( idx + 1 ) ;
				break ;
			}
		}

		obj = listForm.databaseTy ;
		for( var i = 0 ; i < obj.length ; i++ )
		{
			if( obj[ i ].checked )
			{
				listForm.databaseTyId.value = obj[ i ].value ;
				break ;
			}
		}

		obj = listForm.databaseScale ;
		for( var i = 0 ; i < obj.length ; i++ )
		{
			if( obj[ i ].checked )
			{
				listForm.databaseScaleCode.value = obj[ i ].value ;
				break ;
			}
		}
	}

	function lfn_chkInput()
	{
		if( listForm.insttNm.value.length == 0 )
		{
			alert( "기관명을 입력하세요." ) ;
			listForm.insttNm.focus() ;
			return false ;
		}

		var bChecked = false ;
		var obj = listForm.instt ;
		for( var i = 0 ; i < obj.length ; i++ )
		{
			if( obj[ i ].checked )
			{
				bChecked = true ;
				break ;
			}
		}
		if( !bChecked )
		{
			alert( "기관 구분을 선택하세요." ) ;
			listForm.instt[ 0 ].focus() ;
			return false ;
		}

		if( listForm.databaseNm.value.length == 0 )
		{
			alert( "데이터베이스명을 입력하세요." ) ;
			listForm.databaseNm.focus() ;
			return false ;
		}

		bChecked = false ;
		obj = listForm.databaseTy ;
		for( var i = 0 ; i < obj.length ; i++ )
		{
			if( obj[ i ].checked )
			{
				bChecked = true ;
				break ;
			}
		}
		if( !bChecked )
		{
			alert( "데이터베이스 유형을 선택하세요." ) ;
			listForm.databaseTy[ 0 ].focus() ;
			return false ;
		}

		bChecked = false ;
		obj = listForm.databaseScale ;
		for( var i = 0 ; i < obj.length ; i++ )
		{
			if( obj[ i ].checked )
			{
				bChecked = true ;
				break ;
			}
		}
		if( !bChecked )
		{
			alert( "데이터베이스 사용자 규모를 선택하세요." ) ;
			listForm.databaseScale[ 0 ].focus() ;
			return false ;
		}

		return true ;
	}

	function lfn_startdiag()
	{
		if( lfn_chkInput() )
		{
			lfn_setBasicInfo() ;

			//<c:url value='/support/diagnosis/idx/selectIdxDgnssTrgetListView.do'/>
			listForm.action = "<c:url value='/support/diagnosis/idx/selectIdxDgnssTrgetListView.do'/>" ;
			//alert( "listForm.action = " + listForm.action ) ;
			listForm.submit() ;
		}
	}
//-->
</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<!-- contents영역시작 -->
<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 품질수준 자가진단 > <em>지표별 자가진단</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup4_5.gif'/>" alt="지표별 자가진단" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup4_desc.png'/>" alt="공공정보 품질수준을 자가진단하여 품질개선 향상에 도움을 줄 수 있는 창구입니다. 질문은 대략 30여개로 구성되어 있으며, 소요시간은 약 20분정도 소요됩니다. 기관 및 협의회의 많은 참여 바랍니다." /></p>
	</div>

<form:form commandName="searchVO" name="listForm"  method="post">
	<input type="hidden" name="level_5_idx" value="<c:out value="${level_5_idx}"/>" /><!-- 관리수준 또는 지표 구분 -->
	<input type="hidden" name="levelDgnssId" value="<c:if test="${leveldgnssid != null}"><c:out value="${leveldgnssid}"/></c:if>" /><!-- 수준진단ID -->
	<input type="hidden" name="cntLevelDgnssId" value="<c:out value="${cntleveldgnssid}"/>" /><!-- 수준진단ID 갯수 -->
	<input type="hidden" name="upperInsttSeCode" />
	<input type="hidden" name="insttSeCode" />
	<input type="hidden" name="databaseTyId" />
	<input type="hidden" name="databaseScaleCode" />

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup4_5.gif'/>" alt="품질지표 자가진단" /></h4>
		<table class="conTable2" summary="품질지표 자가진단 기본정보 선택 테이블입니다.">
			<colgroup>
				<col width="25%">
				<col width="85%">
			</colgroup>
			<tbody>
				<tr>
					<th><label for="db1">기관명</label></th>
					<td><input type="text" id="insttNm" name="insttNm" class="text" style="width:300px;"/></td>
				</tr>
				<tr>
					<th>기관구분</th>
					<td>
						<c:forEach var="list" items="${upperinsttlist}" varStatus="rs">
							<c:set var="pCodeId" value="${list.upperInsttSeCode}"/>

							<dl class="dlType2">
								<dt><c:out value="${list.upperInsttSeCodeNm}"/></dt>

								<c:forEach var="list2" items="${insttlist}" varStatus="rs2">
									<c:if test="${pCodeId eq list2.insttSeCodeId}">
										<dd><input type="radio" id="instt" name="instt" value="<c:out value="${pCodeId}"/>_<c:out value="${list2.insttSeCode}"/>" /> <label for="db2_1"><c:out value="${list2.insttSeCodeNm}"/></label></dd>
									</c:if>
								</c:forEach>
							</dl>
						</c:forEach>
					</td>
				</tr>
				<tr>
					<th><label for="databaseNm">데이터베이스명</label></th>
					<td><input type="text" id="databaseNm" name="databaseNm" class="text" style="width:300px;"/></td>
				</tr>
				<tr>
					<th>데이터베이스유형</th>
					<td>
						<ul class="liType3">
							<c:forEach var="list" items="${dbtypelist}">
								<c:if test="${list.databaseTyNm ne null && list.databaseTyNm ne ''}">
									<li><input type="radio" id="databaseTy" name="databaseTy" value="<c:out value="${list.databaseTyId}"/>" /> <label for="db4_1"><c:out value="${list.databaseTyNm}"/></label></li>
								</c:if>
							</c:forEach>
						</ul>
					</td>
				</tr>
				<tr>
					<th>데이터베이스사용자 규모</th>
					<td>
						<ul class="liType3">
							<c:forEach var="list" items="${dbscalecodelist}">
								<c:if test="${list.databaseScaleCodeNm ne null && list.databaseScaleCodeNm ne ''}">
									<li><input type="radio" id="databaseScale" name="databaseScale" value="<c:out value='${list.databaseScaleCode}'/>" /> <label for="db5_1"><c:out value="${list.databaseScaleCodeNm}"/></label></li>
								</c:if>
							</c:forEach>
						</ul>
					</td>
				</tr>
			</tbody>
		</table>
		<p class="mtb_5"><strong class="fc_blue1">※ 공공기관 데이터베이스 유형 설명</strong></p>
		<ul class="depth1_con liType1">
			<li>자체 생성형 : 다른 데이터베이스와 연계 없이 자체적으로 정보 생성·활용하는 데이터베이스</li>
			<li>수집형 : 다른 데이터베이스로부터 연계를 통해 정보를 수집(가공)활용하는 데이터베이스</li>
			<li>제공형 : 생성 또는 수집된 정보를 통해 다른 데이터베이스에 제공하는 데이터베이스</li>
			<li>복합형 : 정보 생성,수집,제공이 복합적으로 구성되는 데이터베이스</li>
		</ul>
		<p class="btnArea ta_c mt_30">
			<!-- a href="<c:url value='/support/diagnosis/idx/selectIdxDgnssTrgetListView.do'/>" onclick="lfn_startdiag();return false;" --><img src="<c:url value='/images/pdqm/common/btn/btn_sup_start2.gif'/>" onclick="lfn_startdiag();return false;" alt="자가진단시작(2단계 품질지표)" /><!-- /a -->
		</p>
	</div>
</form:form>
</div>



<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

