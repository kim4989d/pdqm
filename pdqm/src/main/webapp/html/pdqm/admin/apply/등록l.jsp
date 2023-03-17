<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : PdqmApplyDetail.jsp
 * @Description : 사업신청 상세
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
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
	<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
	<validator:javascript formName="pdqmApply" staticJavascript="false" xhtml="true" cdata="false"/>

</head>

<body>


<%@ include file="/html/pdqm/admin/include/menu.jsp" %>


<!-- contents영역시작 -->

	<div class="title">
		<div class="locationMap"> 진단관리 > 지원사업 수요조사 관리 > 사업신청내역</div>
		<h2>사업신청내역</h2>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup3_5.gif'/>" alt="인적사항" /></h4>
		<table class="conTable2" summary="인적사항 입력 테이블입니다.">
			<colgroup>
				<col width="20%"/><col width="30%"/><col width="20%"/><col width="30%"/>
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
						<option></option>
					</select> -
					<input type="text" class="text" title="사무실전화 중간번호" style="width:40px;"/> - <input type="text" class="text" title="사무실전화 끝번호" style="width:40px;"/>
				</td>
				<th><label for="d6">연락처(휴대전화)</label></th>
				<td>
					<select id="d6" title="휴대전화 시작번호">
						<option></option>
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
				<col width="20%"/><col width="auto"/>
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
					<input type="checkbox" id="a4" /> <label for="a4" class="mr_10">기관재부 사용자</label>
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
					<input type="radio" id="a10_1" /> <label for="a10_2">상당히필요</label>
					<input type="radio" id="a10_1" /> <label for="aa10_3">다소 필요</label>
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

		
				<div class="btnArea">
					<span class="button"><input type="button" value="목록" /></span>
				</div>
	</div>




<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
