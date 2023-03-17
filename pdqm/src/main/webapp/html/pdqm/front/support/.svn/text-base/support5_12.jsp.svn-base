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
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

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
			<select id="select1" class="text">
				<option>오류(의미)</option>
			</select>
			<label for="check1" class="ml_10">마스터코드간 비교 여부</label> <input type="checkbox" id="check1" />
			<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_search2.gif'/>" class="btn ml_15" title="조회" />
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
					<th scope="col" colspan="2">분석대상 코드</th>
				</tr>
			</thead>
			<tbody>
				<tr class="ta_c">
					<td>인사 관리 시스템</td>
					<td>인사 조직 코드</td>
					<td>관리자 시스템</td>
					<td>관리자 조직 코드</td>
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
				<tr class="ta_c">
					<td>2</td>
					<td>A00</td>
					<td>시스템 본부</td>
					<td>A00</td>
					<td>시스템 본부</td>
					<td>정상</td>
				</tr>
				<tr class="ta_c">
					<td>2</td>
					<td>A00</td>
					<td>시스템 본부</td>
					<td>A00</td>
					<td>시스템 본부</td>
					<td>정상</td>
				</tr>
				<tr class="ta_c">
					<td>2</td>
					<td>A00</td>
					<td>시스템 본부</td>
					<td>A00</td>
					<td>시스템 본부</td>
					<td>정상</td>
				</tr>
				<tr class="ta_c">
					<td>2</td>
					<td>A00</td>
					<td>시스템 본부</td>
					<td>A00</td>
					<td>시스템 본부</td>
					<td>정상</td>
				</tr>
			</tbody>
		</table>

		<!-- paging -->
		<div class="paging">
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_start.gif'/>" alt="처음목록으로 이동" /></a>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_prev.gif'/>" alt="이전목록으로 이동" /></a>
			<strong>1</strong>
			<a href="##">2</a>
			<a href="##">3</a>
			<a href="##">4</a>
			<a href="##">5</a>
			<a href="##">6</a>
			<a href="##">7</a>
			<a href="##">8</a>
			<a href="##">9</a>
			<a href="##">10</a>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_next.gif'/>" alt="다음목록으로 이동" /></a>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_end.gif'/>" alt="마지막목록으로 이동" /></a>
		</div>

		<!-- btnArea -->
		<div class="btnArea btn_ar">
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_download.gif'/>" alt="다운로드" /></a>
		</div>
		<!--// btnArea -->


	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

