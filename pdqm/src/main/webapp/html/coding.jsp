<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>공공정보품질관리 코딩맵</title>
	<style type="text/css">
	body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,form,fieldset,p,blockquote{margin:0;padding:0;}
	img, fieldset{border:0 none;}
	body, h2, h3, h4, h5, dl, dt, dd, th, td, div, p, form, fieldset, select, legend, input, label, textarea{font-size:12px;font-family:돋움;color:#333;}
	ul, ol, li{list-style:none outside;}
	table, th, td{margin:0;padding:5px;border:1px solid #ccc;;border-spacing:0;border-collapse:collapse;}

	body{padding:10px;}
	h1{text-align:center;}
	table{width:100%;margin-top:10px;}
	thead th{color:#fff;background-color:#000;}
	tbody th{background-color:#ccc;}
	tbody tr.bg01{background-color:#f6f6f6}
	tbody tr.coding{background-color:#ffffcc;}
	td a{color:blue;text-decoration:underline;}
	</style>
</head>

<body>
	<h1>공공정보 품질관리 코딩맵</h1>

			<table summary="사용자단 코딩맵">
				<colgroup>
					<col width="10%" /><!-- 1depth -->
					<col width="10%" /><!-- 2depth -->
					<col width="15%" /><!-- 3depth -->
					<col width="15%" /><!-- tab -->
					<col width="15%" /><!-- 화면소개 -->
					<col width="10%" /><!-- 디렉토리 -->
					<col width="10%" /><!-- 파일명 -->
					<col width="10%" /><!-- 작업일 -->
					<col width="5%" /><!-- 비고 -->
				</colgroup>
				<thead>
					<tr>
						<th>1depth</th>
						<th>2depth</th>
						<th>3depth</th>
						<th>tab</th>
						<th>화면소개</th>
						<th>디렉토리</th>
						<th>파일명</th>
						<th>작업일</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th colspan="9">공통</th>
					</tr>
					<tr>
						<td>css</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>/css/pdqm/</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>js</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>/js/pdqm/</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>images</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>/images/pdqm/</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>include</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>/html/pdqm/include/</td>
						<td>
							gnb.jsp<br />
							lnb.jsp<br />
							footer.jsp
						</td>
						<td></td>
						<td>jsp</td>
					</tr>
					<!-- ============================= index ============================= -->
					<tr>
						<th colspan="9">사용자단</th>
					</tr>
					<tr class="coding">
						<td>index</td>
						<td></td>
						<td></td>
						<td></td>
						<td>메인페이지</td>
						<td>/html/pdqm/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/index.jsp" target="_blank">index.jsp</a></td>
						<td>2011-11-02</td>
						<td>jsp</td>
					</tr>

					<!-- ============================= 지식마당 ============================= -->
					<tr class="coding">
						<td rowspan="3">공공정보품질관리<br />class:bg_sum</td>
						<td>공공정보품질관리 개요</td>
						<td></td>
						<td>[tab1]국가정보화 방향과 공공정보 품질관리, [tab2]공고엉보 품질관리 방안</td>
						<td></td>
						<td>/html/pdqm/front/summary/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/summary/summary1.jsp" target="_blank">summary1.jsp</a></td>
						<td>2011-12-06</td>
						<td>html</td>
					</tr>
					<tr class="coding">
						<td>법/지침/메뉴얼</td>
						<td></td>
						<td>[tab1]관련 법, [tab2]지침, [tab3]매뉴얼</td>
						<td></td>
						<td>/html/pdqm/front/summary/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/summary/summary2.jsp" target="_blank">summary2.jsp</a></td>
						<td>2011-12-05</td>
						<td>html</td>
					</tr>
					<tr class="coding">
						<td>품질관리표준</td>
						<td></td>
						<td>[tab1]행정표준코드, [tab2]행정정보DB표준화</td>
						<td></td>
						<td>/html/pdqm/front/summary/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/summary/summary3.jsp" target="_blank">summary3.jsp</a></td>
						<td>2011-12-05</td>
						<td>html</td>
					</tr>

					<!-- ============================= 지식마당 ============================= -->
					<tr class="coding">
						<td rowspan="4">지식마당<br />class:bg_know</td>
						<td>뉴스와동향</td>
						<td></td>
						<td></td>
						<td>type3 (상세화면 타입)</td>
						<td>/html/pdqm/front/knowledge/</td>
						<td>
							<a href="http://localhost:8080/pdqm/html/pdqm/front/knowledge/bbs3_list.jsp" target="_blank">bbs3_list.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/knowledge/bbs3_write.jsp" target="_blank">bbs3_write.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/knowledge/bbs3_modify.jsp" target="_blank">bbs3_modify.jsp</a><br />
						</td>
						<td>2011-11-04</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>우수사례공유</td>
						<td></td>
						<td></td>
						<td>type2 (블로그 타입)</td>
						<td>/html/pdqm/front/knowledge/</td>
						<td>
							<a href="http://localhost:8080/pdqm/html/pdqm/front/knowledge/bbs2_list.jsp" target="_blank">bbs2_list.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/knowledge/bbs2_write.jsp" target="_blank">bbs2_write.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/knowledge/bbs2_modify.jsp" target="_blank">bbs2_modify.jsp</a><br />
						</td>
						<td>2011-11-04</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>지식자료실</td>
						<td></td>
						<td></td>
						<td>type1 (리스트 타입)</td>
						<td>/html/pdqm/front/knowledge/</td>
						<td>
							<a href="http://localhost:8080/pdqm/html/pdqm/front/knowledge/bbs1_list.jsp" target="_blank">bbs1_list.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/knowledge/bbs1_view.jsp" target="_blank">bbs1_view.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/knowledge/bbs1_write.jsp" target="_blank">bbs1_write.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/knowledge/bbs1_modify.jsp" target="_blank">bbs1_modify.jsp</a><br />
						</td>
						<td>2011-11-04</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>자주하는질문</td>
						<td></td>
						<td></td>
						<td>type4 (리스트펼침 타입)</td>
						<td>/html/pdqm/front/knowledge/</td>
						<td>
							<a href="http://localhost:8080/pdqm/html/pdqm/front/knowledge/faq.jsp" target="_blank">faq.jsp</a><br />
						</td>
						<td>2011-11-07</td>
						<td>jsp</td>
					</tr>

					<!-- ============================= 지원창구 ============================= -->
					<tr class="coding">
						<td rowspan="24">지원창구<br />class:bg_sup</td>
						<td>품질진단사업 안내</td>
						<td></td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support1.jsp" target="_blank">support1.jsp</a></td>
						<td>2011-11-22</td>
						<td>html</td>
					</tr>
					<tr class="coding">
						<td>품질개선사업 안내</td>
						<td></td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support2.jsp" target="_blank">support2.jsp</a></td>
						<td>2011-11-22</td>
						<td>html</td>
					</tr>
					<!-- 지원사업 수요조사 -->
					<tr class="coding">
						<td rowspan="2">지원사업 수요조사</td>
						<td>수요조사 안내</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support3.jsp" target="_blank">support3.jsp</a></td>
						<td>2011-11-24</td>
						<td>html</td>
					</tr>
					<tr class="coding">
						<td>사업신청</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support3_2.jsp" target="_blank">support3_2.jsp</a></td>
						<td>2011-11-24</td>
						<td>html</td>
					</tr>
					<!-- 품질수준 자가진단 -->
					<tr class="coding">
						<td rowspan="8">품질수준 자가진단</td>
						<td>관리수준 자가진단 안내</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support4.jsp" target="_blank">support4.jsp</a></td>
						<td>2011-12-05</td>
						<td>html</td>
					</tr>
					<tr class="coding">
						<td>관리수준 기본정보입력 및 선택</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support4_1.jsp" target="_blank">support4_1.jsp</a></td>
						<td>2011-11-23</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>관리수준 자가진단 시작(1단계 품질관리수준)</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support4_2.jsp" target="_blank">support4_2.jsp</a></td>
						<td>2011-11-23</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>관리수준 자가진단 설문 문항입력</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support4_3.jsp" target="_blank">support4_3.jsp</a></td>
						<td>2011-11-23</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>관리수준 자가진단1단계 결과 조회</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support4_4.jsp" target="_blank">support4_4.jsp</a></td>
						<td>2011-11-23</td>
						<td>jsp</td>
					</tr>
					<tr>
						<td>지표별 자가진단 안내</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support4_7.jsp" target="_blank">support4_7.jsp</a></td>
						<td></td>
						<td>html</td>
					</tr>
					<tr class="coding">
						<td>지표별 자가진단 설문 문항입력</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support4_5.jsp" target="_blank">support4_5.jsp</a></td>
						<td>2011-11-23</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>지표별 자가진단 설문 결과 조회</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support4_6.jsp" target="_blank">support4_6.jsp</a></td>
						<td>2011-11-23</td>
						<td>jsp</td>
					</tr>
					<!-- 연계정보 정합성 진단 -->
					<tr class="coding">
						<td rowspan="12">연계정보 정합성 진단</td>
						<td>연계정보 정합성 진단안내</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5.jsp" target="_blank">support5.jsp</a></td>
						<td>2011-12-05</td>
						<td>html</td>
					</tr>
					<tr class="coding">
						<td>DB스키마정보 비교</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5_2.jsp" target="_blank">support5_2.jsp</a></td>
						<td>2011-12-02</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>데이터베이스 정보 등록</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5_3.jsp" target="_blank">support5_3.jsp</a></td>
						<td>2011-12-02</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>컬럼조회</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5_4.jsp" target="_blank">support5_4.jsp</a></td>
						<td>2011-12-02</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>컬럼 비교</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5_5.jsp" target="_blank">support5_5.jsp</a></td>
						<td>2011-12-02</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>컬럼비교 상세</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5_6.jsp" target="_blank">support5_6.jsp</a></td>
						<td>2011-12-02</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>타입비교</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5_7.jsp" target="_blank">support5_7.jsp</a></td>
						<td>2011-12-02</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>타입비교 상세</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5_8.jsp" target="_blank">support5_8.jsp</a></td>
						<td>2011-12-02</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>코드관리</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5_9.jsp" target="_blank">support5_9.jsp</a></td>
						<td>2011-12-02</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>코드등록</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5_10.jsp" target="_blank">support5_10.jsp</a></td>
						<td>2011-12-02</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>코드비교</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5_11.jsp" target="_blank">support5_11.jsp</a></td>
						<td>2011-12-02</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>코드비교결과</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/support/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/support/support5_12.jsp" target="_blank">support5_12.jsp</a></td>
						<td>2011-12-02</td>
						<td>jsp</td>
					</tr>

					<!-- ============================= 품질관리교육 ============================= -->
					<tr>
						<td rowspan="4">품질관리교육<br />class:bg_edu</td>
						<td>교육 안내</td>
						<td></td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/education/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/education/education1.jsp" target="_blank">education1.jsp</a></td>
						<td></td>
						<td>html</td>
					</tr>
					<tr class="coding">
						<td>교육 공지</td>
						<td></td>
						<td></td>
						<td>type1 (리스트 타입)</td>
						<td>/html/pdqm/front/education/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/education/education2.jsp" target="_blank">education2.jsp</a></td>
						<td></td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>교육자료실</td>
						<td></td>
						<td></td>
						<td>type1 (리스트 타입)</td>
						<td>/html/pdqm/front/education/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/education/education3.jsp" target="_blank">education3.jsp</a></td>
						<td></td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>교육동영상</td>
						<td></td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/education/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/education/education4.jsp" target="_blank">education4.jsp</a></td>
						<td></td>
						<td>jsp</td>
					</tr>

					<!-- ============================= 소통.참여 ============================= -->
					<tr>
						<td rowspan="4">소통.참여<br />class:bg_com</td>
						<td rowspan="3">협의회 커뮤니티</td>
						<td>협의회 안내</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/community/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/community/community1.jsp" target="_blank">community1.jsp</a></td>
						<td></td>
						<td>html</td>
					</tr>
					<tr class="coding">
						<td>커뮤니티 게시판</td>
						<td></td>
						<td>type1 (리스트 타입)</td>
						<td>/html/pdqm/front/community/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/community/community2.jsp" target="_blank">community2.jsp</a></td>
						<td></td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>자료실</td>
						<td></td>
						<td>type1 (리스트 타입)</td>
						<td>/html/pdqm/front/community/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/community/community3.jsp" target="_blank">community3.jsp</a></td>
						<td></td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>전문가칼럼</td>
						<td></td>
						<td></td>
						<td>type3 (상세화면 타입)</td>
						<td>/html/pdqm/front/community/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/community/community4.jsp" target="_blank">community4.jsp</a></td>
						<td></td>
						<td>jsp</td>
					</tr>

					<!-- ============================= 센터소개 ============================= -->
					<tr>
						<td rowspan="3">센터소개<br />class:bg_intro</td>
						<td>소개말</td>
						<td></td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/intro/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/intro/intro1.jsp" target="_blank">intro1.jsp</a></td>
						<td></td>
						<td>html</td>
					</tr>
					<tr>
						<td>주요사업</td>
						<td></td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/intro/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/intro/intro2.jsp" target="_blank">intro2.jsp</a></td>
						<td></td>
						<td>html</td>
					</tr>
					<tr class="coding">
						<td>보도자료</td>
						<td></td>
						<td></td>
						<td>type3 (상세화면 타입)</td>
						<td>/html/pdqm/front/intro/</td>
						<td>
							<a href="http://localhost:8080/pdqm/html/pdqm/front/intro/intro3.jsp" target="_blank">intro3.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/intro/intro3_write.jsp" target="_blank">intro3_write.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/intro/intro3_modify.jsp" target="_blank">intro3_modify.jsp</a><br />
						</td>
						<td></td>
						<td>jsp</td>
					</tr>

					<!-- ============================= 회원 ============================= -->
					<tr>
						<th colspan="9">회원</th>
					</tr>
					<tr class="coding">
						<td rowspan="13">회원</td>
						<td rowspan="6">회원가입<br />class:bg_join</td>
						<td></td>
						<td>회원구분</td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/join1.jsp" target="_blank">join1.jsp</a></td>
						<td>2011-11-17</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td></td>
						<td>본인인증</td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/join2.jsp" target="_blank">join2.jsp</a></td>
						<td>2011-11-17</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td></td>
						<td>약관동의</td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/join3.jsp" target="_blank">join3.jsp</a></td>
						<td>2011-11-17</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td></td>
						<td>회원정보등록</td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/join4.jsp" target="_blank">join4.jsp</a></td>
						<td>2011-11-15</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td></td>
						<td>아이디중복확인(팝업)</td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/pop_idcheck.jsp" target="_blank">pop_idcheck.jsp</a></td>
						<td>2011-11-16</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td></td>
						<td>가입완료</td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/join5.jsp" target="_blank">join5.jsp</a></td>
						<td>2011-11-17</td>
						<td>jsp</td>
					</tr>

					<!-- 로그인 -->
					<tr class="coding">
						<td rowspan="5">로그인<br />class:bg_login</td>
						<td>로그인</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/login.jsp" target="_blank">login.jsp</a></td>
						<td>2011-11-14</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td rowspan="4">아이디/비밀번호찾기</td>
						<td>아이디 찾기</td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/find_id.jsp" target="_blank">find_id.jsp</a></td>
						<td>2011-11-15</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>아이디 확인</td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/find_id2.jsp" target="_blank">find_id2.jsp</a></td>
						<td>2011-11-14</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>비밀번호 찾기</td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/find_pw.jsp" target="_blank">find_pwd.jsp</a></td>
						<td>2011-11-14</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>비밀번호 재발송</td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/find_pw2.jsp" target="_blank">find_pw2.jsp</a></td>
						<td>2011-11-14</td>
						<td>jsp</td>
					</tr>

					<!-- 마이페이지 -->
					<tr class="coding">
						<td rowspan="2">마이페이지<br />class:bg_mypage</td>
						<td>개인정보수정</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/mypage1.jsp" target="_blank">mypage1.jsp</a></td>
						<td>2011-11-14</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>회원탈퇴</td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/member/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/member/mypage2.jsp" target="_blank">mypage2.jsp</a></td>
						<td>2011-11-14</td>
						<td>jsp</td>
					</tr>

					<!-- ============================= 공통 ============================= -->
					<tr>
						<th colspan="9">공통</th>
					</tr>
					<tr class="coding">
						<td>공지사항<br />class:bg_notice</td>
						<td></td>
						<td></td>
						<td></td>
						<td>type1 (리스트 타입)</td>
						<td>/html/pdqm/front/info/</td>
						<td>
							<a href="http://localhost:8080/pdqm/html/pdqm/front/info/notice.jsp" target="_blank">notice.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/info/notice_view.jsp" target="_blank">notice_view.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/info/notice_write.jsp" target="_blank">notice_write.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/info/notice_modify.jsp" target="_blank">notice_modify.jsp</a><br />
						</td>
						<td>2011-11-16</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td>묻고답하기<br />class:bg_qna</td>
						<td></td>
						<td></td>
						<td></td>
						<td>type1 (리스트 타입)</td>
						<td>/html/pdqm/front/info/</td>
						<td>
							<a href="http://localhost:8080/pdqm/html/pdqm/front/info/qna.jsp" target="_blank">qna.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/info/qna_view.jsp" target="_blank">qna_view.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/info/qna_write..jsp" target="_blank">qna_write.jsp</a><br />
							<a href="http://localhost:8080/pdqm/html/pdqm/front/info/qna_modify.jsp" target="_blank">qna_modify.jsp</a><br />
						</td>
						<td>2011-11-16</td>
						<td>jsp</td>
					</tr>
					<tr class="coding">
						<td rowspan="3">info<br />class:bg_info</td>
						<td>이용약관안내</td>
						<td></td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/info/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/info/footer1.jsp" target="_blank">footer1.jsp</a></td>
						<td>2011-11-30</td>
						<td>html</td>
					</tr>
					<tr class="coding">
						<td>개인정보보호정책</td>
						<td></td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/info/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/info/footer2.jsp" target="_blank">footer2.jsp</a></td>
						<td>2011-11-30</td>
						<td>html</td>
					</tr>
					<tr>
						<td>사이트맵</td>
						<td></td>
						<td></td>
						<td></td>
						<td>/html/pdqm/front/info/</td>
						<td><a href="http://localhost:8080/pdqm/html/pdqm/front/info/sitemap.jsp" target="_blank">sitemap.jsp</a></td>
						<td></td>
						<td>html</td>
					</tr>

					<!-- ============================= 뉴스레터 ============================= -->
					<tr>
						<th colspan="9">뉴스레터</th>
					</tr>
					<tr>
						<td>뉴스레터</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>jsp</td>
					</tr>
				</tbody>
			</table>

</body>
</html>

