<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support3_2.jsp
  * @Description : 지원창구 > 수요조사안내 > 사업신청
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
		<div class="location">Home > 지원창구 > 수요조사안내 > <em>사업신청</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup3_2.gif'/>" alt="사업신청" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup3_desc.png'/>" class="png24" alt="공공정보 품질관리 및 개선을 위하여 품질관리 지원사업 수요 조사에 대해 알려드리며, 사업 신청 기간내 사업 신청서를 작성할 수 있습니다.  국가차원에서 품질진단 및 개선을 지원할 예정이오니 많은 참여 부탁드립니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup3_5.gif'/>" alt="인적사항" /></h4>
		<table class="conTable2" summary="인적사항 입력 테이블입니다.">
			<colgroup>
				<col width="20%">
				<col width="30%">
				<col width="20%">
				<col width="30%">
			</colgroup>
			<tr>
				<th><label for="d1">성명</label></th>
				<td class="bd_r"><input type="text" id="d1" class="text" style="width:200px;"/></td>
				<th><label for="d2">소속기관</label></th>
				<td><input type="text" id="d2" class="text" style="width:200px;"/></td>
			</tr>
			<tr>
				<th><label for="d3">부서</label></th>
				<td class="bd_r"><input type="text" id="d3" class="text" style="width:200px;"/></td>
				<th><label for="d4">직위</label></th>
				<td><input type="text" id="d4" class="text" style="width:200px;"/></td>
			</tr>
			<tr>
				<th><label for="d5">연락처(사무실)</label></th>
				<td class="bd_r">
					<select id="d5" title="사무실전화 시작번호">
						<option>선택</option>
					</select> -
					<input type="text" class="text" title="사무실전화 중간번호" style="width:40px;"/> - <input type="text" class="text" title="사무실전화 끝번호" style="width:40px;"/>
				</td>
				<th><label for="d6">연락처(휴대전화)</label></th>
				<td>
					<select id="d6" title="휴대전화 시작번호">
						<option>선택</option>
					</select> -
					<input type="text" class="text" title="휴대전화 중간번호" style="width:40px;"/> - <input type="text" class="text" title="휴대전화 끝번호" style="width:40px;"/>
				</td>
			</tr>
			<tr>
				<th><label for="d7">E-mail</label></th>
				<td colspan="3"><input type="text" id="d7" class="text" style="width:200px;"/></td>
			</tr>
		</table>

		<h4><img src="<c:url value='/images/pdqm/front/support/h4_sup3_6.gif'/>" alt="신청DB" /></h4>
		<table class="conTable2" summary="신청DB 입력 테이블입니다.">
			<colgroup>
				<col width="20%">
				<col width="auto">
			</colgroup>
			<tr>
				<th><label for="a1">DB명</label></th>
				<td>
					<input type="text" id="a1" class="text" style="width:200px;"/>
					<span class="fs_1">(해당 정보시스템 DB명 기재)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a2">DB 주요내용</label></th>
				<td>
					<input type="text" id="a2" class="text" style="width:200px;"/>
					<span class="fs_1">(해당 DB의 주요 내용 기재)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a3">DB 유형<br />(복수선택가능)</label></th>
				<td>
					<input type="checkbox" id="a3" /> <label for="a3" class="mr_10">자체 생성형</label>
					<input type="checkbox" id="a3_2" /> <label for="a3_2" class="mr_10">수집형</label>
					<input type="checkbox" id="a3_3" /> <label for="a3_3" class="mr_10">제공형</label>
				</td>
			</tr>
			<tr>
				<th><label for="a4">정보수요자<br />(복수선택가능)</label></th>
				<td>
					<input type="checkbox" id="a4" /> <label for="a4" class="mr_10">기관내부 사용자</label>
					<input type="checkbox" id="a4_2" /> <label for="a4_2" class="mr_10">타공공기관</label>
					<input type="checkbox" id="a4_3" /> <label for="a4_3" class="mr_10">민간업체</label>
					<input type="checkbox" id="a4_4" /> <label for="a4_4" class="mr_10">일반국민</label>
				</td>
			</tr>
			<tr>
				<th><label for="a5">정보 연계활용기관</label></th>
				<td>
					<input type="text" id="a5" class="text" style="width:200px;"/>
					<span class="fs_1">(해당 DB를 연계하여 활용하는 기관명/시스템명)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a6">원천정보 보유기관</label></th>
				<td>
					<input type="text" id="a6" class="text" style="width:200px;"/>
					<span class="fs_1">(해당 DB를 연계하여 보유한 기관명/시스템명)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a7">정보 공개 여부</label></th>
				<td>
					<textarea id="a7" class="text" cols="50" rows="30" style="width:550px;height:50px;"></textarea>
					<p class="fs_1">(공공정보 제공 지침에 따라 공개하고 있는 주요정보 및 제공방법 기재 – 제공방법:Open API, 다운로드, 시스템 연계 등)</p>
				</td>
			</tr>
			<tr>
				<th><label for="a8">사용자 활용 수준</label></th>
				<td>
					<input type="text" id="a8" class="text" style="width:200px;"/>
					<span class="fs_1">(해당 정보시스템 또는 DB에 접속하는 사용자수(월단위)</span>
				</td>
			</tr>
			<tr>
				<th><label for="a9">품질 이슈<br />(복수선택가능)</label></th>
				<td>
					<input type="checkbox" id="a9" /> <label for="a9" class="mr_10">데이터값오류</label>
					<input type="checkbox" id="a9_2" /> <label for="a9_2" class="mr_10">DB구조 오류</label>
					<input type="checkbox" id="a9_3" /> <label for="a9_3" class="mr_10">App. 입력오류</label>
					<input type="checkbox" id="a9_4" /> <label for="a9_4" class="mr_10">연계기관 정합성 오류</label>
					<input type="checkbox" id="a9_5" /> <label for="a9_5" class="mr_10">원천기관 집계 오류</label>
					<input type="checkbox" id="a9_6" /> <label for="a9_6" class="mr_10">품질관리체계 부재</label>
					<input type="checkbox" id="a9_7" /> <label for="a9_7" class="mr_10">기타</label>
				</td>
			</tr>
			<tr>
				<th><label for="a10">품질개선 필요성</label></th>
				<td>
					<input type="radio" id="a10" /> <label for="a10">매우 필요</label>
					<input type="radio" id="a10_2" /> <label for="a10_2">상당히필요</label>
					<input type="radio" id="a10_3" /> <label for="a10_3">다소 필요</label>
				</td>
			</tr>
			<tr>
				<th><label for="a11">품질 현안 및 개선 기대효과</label></th>
				<td>
					<textarea id="a11" class="text" cols="50" rows="30" style="width:550px;height:50px;"></textarea>
					<p class="fs_1">(체감하고 있는 데이터 품질 현안과 이에 따른 영향, 개선시 기대효과를 자유롭게 기술)</p>
				</td>
			</tr>
		</table>

		<p class="mtb_5"><strong class="fc_blue1">※ DB유형 설명</strong></p>
		<ul class="depth1_con liType1">
			<li>자체 생성형 : 다른 DB와 연계 없이 자체적으로 정보 생성·활용하는 DB</li>
			<li>수집형 : 다른 DB로부터 연계를 통해 정보를 수집(가공)·활용하는 DB</li>
			<li>제공형 : 생성 또는 수집된 정보를 연계를 통해 다른 DB에 제공하는 DB</li>
		</ul>

		<p class="btnArea ta_c mt_30"><a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_end.gif'/>" alt="완료" /></a></p>
	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

