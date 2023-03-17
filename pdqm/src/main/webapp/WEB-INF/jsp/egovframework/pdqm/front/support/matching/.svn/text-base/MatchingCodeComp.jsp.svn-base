<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /** 
  * @Class Name : support5_12.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > 코드비교 결과
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
		function fn_srch_CodeComp()
		{
			/*
			alert("Begin fn_srch_codeInfoVO...");
			*/
			document.matchingCodeComp.pageIndex.value = 1;
			document.matchingCodeComp.action = "<c:url value='/support/matching/searchCodeComp.do'/>";
		   	document.matchingCodeComp.submit();
		}
	
		function fn_linkPage(pageNo){
			document.matchingCodeComp.pageIndex.value = pageNo;
			document.matchingCodeComp.code_id.value = document.matchingCodeComp.code_info_id.value;
			document.matchingCodeComp.t_code_id.value = document.matchingCodeComp.t_code_info_id.value;
			document.matchingCodeComp.action = "<c:url value='/support/matching/MatchingCodeComp.do'/>";
			document.matchingCodeComp.submit();
		}
/*
		function fn_linkPage(pageNo){
			alert("fn_lnkPage[" + pageNo + "]"+document.matchingCodeComp.code_info_id.value);
			location.href = "/pdqm/support/matching/MatchingCodeComp.do?pageNo="+pageNo;
		}
	*/	
		function fn_excel_compRtn(rn) {
			document.matchingCodeComp.rowNo.value = rn;
			document.matchingCodeComp.pageIndex.value = 0;
			document.matchingCodeComp.action = "<c:url value='/support/matching/excelCodeComp.do'/>";			
		   	document.matchingCodeComp.submit();
		}
	
	</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>
<form:form commandName="searchVO" name="matchingCodeComp"  method="post">
<input type="hidden" name="pageIndex" value="<c:out value='${CodeInfoVO.pageIndex}'/>"/>
<input type="hidden" name="user_id" value = ${LoginVO.id}/>
<input type="hidden" name="rowNo" value="<c:out value='0'/>"/>
<input type="hidden" name="selected_Id_List" /><!-- 선택한 DB 목록 -->
<input type="hidden" name="code_info_id" value = "<c:out value='${codeCompTagetList.code_info_id}'/>"/><!-- 기준 코드 정보 ID -->
<input type="hidden" name="t_code_info_id" value = "<c:out value='${codeCompTagetList.t_code_info_id}'/>"/><!-- 대상 코드 정보 ID -->
<input type="hidden" name="checked" value = "<c:out value='${checked}'/>"/><!-- checked -->
<input type="hidden" name="code_id" /><!-- 기준 코드 ID -->
<input type="hidden" name="code_value" /><!-- 기준 코드 값 -->

<input type="hidden" name="t_code_id" /><!-- 대상 코드 ID -->
<input type="hidden" name="t_code_value" /><!-- 대상 코드 값 -->
<input type="hidden" name="err_code_nm" /><!-- 에러 코드 값 -->

<input type="hidden" name="database_nm" /><!-- 데이타베이스 명 -->
<input type="hidden" name="code_info_nm" /><!-- 대상 코드 정보 명 -->
<input type="hidden" name="t_database_nm" /><!-- 대상 데이타베이스 명-->
<input type="hidden" name="t_code_info_nm" /><!-- 대상 코드 정보 명 -->




<!-- contents영역시작 -->

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>코드비교 결과</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_12.gif'/>" alt="코드비교 결과" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_9_desc.png'/>" class="png24" alt="기준 마스터코드와 대상 마스터코드의 검정 결과를 확인하여 연계시 및 자체코드를 사용하고 있는 컬럼에 대해 코드값 오류를 파악할 수 있습니다." /></p>
	</div>

	<div id="conBox">
		<!-- 검색박스 -->
		<fieldset class="searchBox first">
			<legend>검색폼</legend>
			<label for="select1"><strong>상태</strong></label>
				<form:select path="rtn_code"  cssClass="text" style="width:160px;height:25px;">
	            <form:option value="" label="전체" />
			          	 <c:forEach items="${errCodeList}" var="errCode" varStatus="status">
		               			<form:option value="${errCode.rtn_code}" label="${errCode.err_code_nm}" />
      					 </c:forEach>             
                </form:select> 
			<label for="check1" class="ml_10" >마스터코드간 비교 여부</label> <input type="checkbox" id="check" disabled ="disabled"  name ="check" <c:if test="${check == 'Y'}"><c:out value="checked" /></c:if>  />
			<a href="javascript:fn_srch_CodeComp();"><img src="<c:url value='/images/pdqm/common/btn/btn_s_search2.gif'/>" class="btn ml_15" title="조회" /></a>
		</fieldset>
		<!--// 검색박스 -->

		<table class="conTable1 brN" summary="코드비교 결과 게시판1 입니다">
			<colgroup>
				<col width="25%">
				<col width="25%">
				<col width="25%">
				<col width="25%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col" colspan="2">기준 코드</th>
					<th scope="col" colspan="2">분석대상 코드 </th>
				</tr>
			</thead>
			<tbody>
				<tr class="ta_c">
				
					<td>${codeCompTagetList.database_nm}</td>
					<td>
						${codeCompTagetList.code_info_nm}
						<input name="code_info_id1" type="hidden" value = "<c:out value='${codeCompTagetList.code_info_id}'/>"/><!-- 기준 코드 정보  ID -->
					</td>
					<td>${codeCompTagetList.t_database_nm}</td>
					<td>
						${codeCompTagetList.t_code_info_nm}
						<input name="t_code_info_id1" type="hidden" value = "<c:out value='${codeCompTagetList.t_code_info_id}'/>"/><!-- 대상 코드 정보  ID -->
					</td>
				</tr>
			</tbody>
		</table>

		<table class="conTable1 brN tbSpace2" summary="코드비교 결과 게시판2 입니다">
			<colgroup>
				<col width="10%">
				<col width="18%">
				<col width="18%">
				<col width="18%">
				<col width="18%">
				<col width="18%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col" rowspan="2">번호</th>
					<th scope="col" colspan="2">기준 코드</th>
					<th scope="col" colspan="2">분석대상 코드</th>
					<th scope="col" rowspan="2">상태</th>
				</tr>
				<tr>
					<th scope="col" class="br_l">코드값</th>
					<th scope="col">코드값 의미</th>
					<th scope="col">코드값</th>
					<th scope="col">코드값 의미</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="codeInfo" items="${codeCompList}">
					<tr class="ta_c">
						<td>${codeInfo.rowNo}</td>
						<td class="ta_l">${codeInfo.code_id}</td>
						<td class="ta_l">${codeInfo.code_value}</td>
						<td class="ta_l">${codeInfo.t_code_id}</td>
						<td>${codeInfo.t_code_value}</td>
						<td>${codeInfo.err_code_nm}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- paging -->
		<div class="paging">
			 <ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_linkPage"/>
		</div>
		
		
		<!-- btnArea -->
		<div class="btnArea btn_ar">
			<a href="javascript:fn_excel_compRtn('0');"><img src="<c:url value='/images/pdqm/common/btn/btn_download.gif'/>" alt="다운로드" /></a>
		</div>
		<!--// btnArea -->


	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
</form:form>
<%@ include file="/html/pdqm/include/footer.jsp" %>

