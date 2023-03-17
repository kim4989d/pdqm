<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p51.jsp
  * @Description :  지표별 자가진단 구성
  *
  */
%>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 구성</div>
		<h2>지표별 자가진단 구성</h2>
	</div>

	<table class="vblType1" summary="자가진단명 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="30%"/>
			<col width="20%" />
			<col width="auto"/>
		</colgroup>
		<tr>
			<th>자가진단명</th>
			<td>자가진단 기본</td>
			<th>데이터베이스유형</th>
			<td>자체생성형</td>
		</tr>
	</table>

<div class="tab list jx">
		<ul>
			<li>
				<a href="##"><span>준비(10)</span></a>
				<dl>
					<dt>논리모델(2)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<em class="button small"><input type="button" value="문항수정" /></em>
							<em class="button small"><input type="button" value="문항삭제" /></em>
						</span>
					</dt>
					<dd>
						<ol class="qType1">
							<li><input type="checkbox" id="q7" /> <label for="q7">7. 논리/물리 데이터 모델을 기준으로 데이터베이스 테이블을 관리하고 있다.</label>
								<ul>
									<li><input type="radio" id="a7_1" /> <label for="a7_1">예</label></li>
									<li><input type="radio" id="a7_2" /> <label for="a7_2">아니오</label></li>
								</ul>
							</li>
							<li><input type="checkbox" id="q8" /> <label for="q8">8. 논리 데이터 모델의 엔터티와 물리 데이터 모델의 테이블에는 데이터는 유일하게 구별할 수 있도록 식별자와 Primary Key(PK)가 정의되어 있다.</label>
								<ul>
									<li><input type="radio" id="a8_1" /> <label for="a8_1">식별자가 모두 정의되어 있음 (로그성 제외)</label></li>
									<li><input type="radio" id="a8_2" /> <label for="a8_2">특정 엔터티 및 테이블에 대해서만 식별자가 정의되어 있음</label></li>
									<li><input type="radio" id="a8_3" /> <label for="a8_3">식별자 정의가 거의 없음</label></li>
								</ul>
							</li>
						</ol>
					</dd>
				</dl>
			</li>
			<li>
				<a href="##"><span>완전성(10)</span></a>
				<dl>
					<dt>식별자(3)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<em class="button small"><input type="button" value="문항수정" /></em>
							<em class="button small"><input type="button" value="문항삭제" /></em>
						</span>
					</dt>
					<dd>
						<ol class="qType1">
							<li><input type="checkbox" id="q9" /> <label for="q9">9. 질문이 들어가는 자리입니까?</label>
								<ul>
									<li><input type="radio" id="a9_1" /> <label for="a9_1">예</label></li>
									<li><input type="radio" id="a9_2" /> <label for="a9_2">아니오</label></li>
								</ul>
							</li>
							<li><input type="checkbox" id="q10" /> <label for="q10">10. 질문이 들어가는 자리입니까?</label>
								<ul>
									<li><input type="radio" id="a10_1" /> <label for="a10_1">예</label></li>
									<li><input type="radio" id="a10_2" /> <label for="a10_2">아니오</label></li>
								</ul>
							</li>
						</ol>
					</dd>
				</dl>
			</li>
			<li>
				<a href="##"><span>일관성(10)</span></a>
				<dl>
					<dt>물리구조(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<em class="button small"><input type="button" value="문항수정" /></em>
							<em class="button small"><input type="button" value="문항삭제" /></em>
						</span>
					</dt>
					<dd>
						<ol class="qType1">
							<li><input type="checkbox" id="q11" /> <label for="q11">11. 질문이 들어가는 자리입니까?</label>
								<ul>
									<li><input type="radio" id="a11_1" /> <label for="a11_1">예</label></li>
									<li><input type="radio" id="a11_2" /> <label for="a11_2">아니오</label></li>
								</ul>
							</li>
							<li><input type="checkbox" id="q12" /> <label for="q12">12. 질문이 들어가는 자리입니까?</label>
								<ul>
									<li><input type="radio" id="a12_1" /> <label for="a12_1">예</label></li>
									<li><input type="radio" id="a12_2" /> <label for="a12_2">아니오</label></li>
								</ul>
							</li>
						</ol>
					</dd>
				</dl>
			</li>
			<li>
				<a href="##"><span>정확성(2)</span></a>
				<dl>
					<dt>속성의미(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<em class="button small"><input type="button" value="문항수정" /></em>
							<em class="button small"><input type="button" value="문항삭제" /></em>
						</span>
					</dt>
					<dd>
						<ol class="qType1">
							<li><input type="checkbox" id="q13" /> <label for="q13">13. 질문이 들어가는 자리입니까?</label>
								<ul>
									<li><input type="radio" id="a13_1" /> <label for="a13_1">예</label></li>
									<li><input type="radio" id="a13_2" /> <label for="a13_2">아니오</label></li>
								</ul>
							</li>
							<li><input type="checkbox" id="q14" /> <label for="q14">14. 질문이 들어가는 자리입니까?</label>
								<ul>
									<li><input type="radio" id="a14_1" /> <label for="a14_1">예</label></li>
									<li><input type="radio" id="a14_2" /> <label for="a14_2">아니오</label></li>
								</ul>
							</li>
						</ol>
					</dd>
				</dl>
			</li>
			<li>
				<a href="##"><span>유효성(0)</span></a>
				<dl>
					<dt>저장내용(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<em class="button small"><input type="button" value="문항수정" /></em>
							<em class="button small"><input type="button" value="문항삭제" /></em>
						</span>
					</dt>
					<dd>등록된 문항이 없습니다.</dd>
				</dl>
			</li>
			<li>
				<a href="##"><span>보안성(0)</span></a>
				<dl>
					<dt>저장내용(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<em class="button small"><input type="button" value="문항수정" /></em>
							<em class="button small"><input type="button" value="문항삭제" /></em>
						</span>
					</dt>
					<dd>등록된 문항이 없습니다.</dd>
				</dl>
			</li>
			<li>
				<a href="##"><span>적시성(0)</span></a>
				<dl>
					<dt>저장내용(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<em class="button small"><input type="button" value="문항수정" /></em>
							<em class="button small"><input type="button" value="문항삭제" /></em>
						</span>
					</dt>
					<dd>등록된 문항이 없습니다.</dd>
				</dl>
			</li>
			<li>
				<a href="##"><span>유용성(0)</span></a>
				<dl>
					<dt>저장내용(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<em class="button small"><input type="button" value="문항수정" /></em>
							<em class="button small"><input type="button" value="문항삭제" /></em>
						</span>
					</dt>
					<dd>등록된 문항이 없습니다.</dd>
				</dl>
			</li>
		</ul>
	</div>

	<!-- 버튼영역 -->
	<div class="btnArea tblSpace">
		<span class="button"><input type="button" value="다음" /></span>
	</div>
	<!--/ 버튼영역 -->

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
