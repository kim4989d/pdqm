<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : intro3.jsp
  * @Description : 센터소개 > 보도자료 화면
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
<%@ include file="/html/pdqm/include/lnb6.jsp" %>

<!-- contents영역시작 -->

<div class="bg_intro">
	<div class="title">
		<div class="location">Home > 센터소개 > <em>보도자료</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/intro/h3_int3.gif'/>" alt="보도자료" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/intro/h3_int3_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터의 보도자료입니다. 공공정보 품질관리 지원센터의 최근 동향을 보도자료를 통하여 확인할 수 있습니다. " /></p>
	</div>

	<!-- 검색영역 -->
	<div class="type3Search">
		<select class="select_part text" title="분류선택">
			<option>전체</option>
			<option>데이터품질 문제사례</option>
			<option>데이터품질 개선사례</option>
			<option>시장동향</option>
			<option>기술동향</option>
			<option>전문가컬럼</option>
			<option>솔루션소개</option>
			<option>공공정책보도</option>
		</select>
		<select class="text" title="검색 항목선택">
			<option>제목</option>
			<option>보도처</option>
		</select>
		<input type="text" class="text" title="검색어입력" />
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_s_search.gif'/>" alt="찾기" /></a>
	</div>
	<!--// 검색영역 -->

	<div class="tbType3">
		<dl>
			<dt>
				<strong>공공기관 DB품질 관리 지침 만든다</strong>
				<input class="sbtn_modify mal_10" type="submit" value="수정" />
				<input class="sbtn_del" type="submit" value="삭제" />
				<em>디지털타임스 | 2011/05/18</em>
			</dt>
			<dd class="con">
				<div id="con1">
					공공정보 개방 및 데이터베이스 품질제고 등의 요구가 높아지는 가운데 공공기관의 데이터베이스 품질을 관리하기 위한 지침 제정이 추진된다. 행정안전부는 공공기관이 국가정보화를 추진하는 과정에서 생산ㆍ유통되거나 활용되는 데이터베이스 품질을 관리하기 하기 위해 `공공기관의 데이터베이스 품질관리 지침`을 제정할 계획이라고 18일 밝혔다...
				</div>
			</dd>
			<dd>
				<ul class="part">
					<li><img src="<c:url value='/images/pdqm/common/icon/icon_part.gif'/>" alt="분야" />공공정책보도</li>
					<li><a href="##" target="_blank" title="새창으로 열림">[출처] http://biz.heraldm.com/common/Detail.jsp?newsMLId=20101224000723</a></li>
					<li class="ori">
						<a href="##" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/btn/btn_s_original.gif'/>" alt="원문보기" /></a>
						<a href="#header"><img src="<c:url value='/images/pdqm/common/btn/btn_s_top.gif'/>" alt="맨위로" /></a>
					</li>
				</ul>
			</dd>
			<dd>[첨부파일]
				<ul class="file">
					<li>
						<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_doc.gif'/>" alt="doc파일" /> 2011년 9월.pdf</a><span>(용량: 234KB/다운로드:<em>100</em>회)</span>
					</li>
				</ul>
			</dd>
		</dl>
		<dl>
			<dt>
				<strong>산림청 국가생물종지식정보, 부처 첫 데이터품질관리 인증</strong>
				<input class="sbtn_modify mal_10" type="submit" value="수정" />
				<input class="sbtn_del" type="submit" value="삭제" />
				<em>헤럴드경제 | 2010/12/25</em>
			</dt>
			<dd class="con">
				<div id="con2">
					공공정보 개방 및 데이터베이스 품질제고 등의 요구가 높아지는 가운데 공공기관의 데이터베이스 품질을 관리하기 위한 지침 제정이 추진된다. 행정안전부는 공공기관이 국가정보화를 추진하는 과정에서 생산ㆍ유통되거나 활용되는 데이터베이스 품질을 관리하기 하기 위해 `공공기관의 데이터베이스 품질관리 지침`을 제정할 계획이라고 18일 밝혔다...
				</div>
			</dd>
			<dd>
				<ul class="part">
					<li><img src="<c:url value='/images/pdqm/common/icon/icon_part.gif'/>" alt="분야" />데이터품질개선사례</li>
					<li><a href="##" target="_blank" title="새창으로 열림">[출처] http://biz.heraldm.com/common/Detail.jsp?newsMLId=20101224000723</a></li>
					<li class="ori">
						<a href="##" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/btn/btn_s_original.gif'/>" alt="원문보기" /></a>
						<a href="#header"><img src="<c:url value='/images/pdqm/common/btn/btn_s_top.gif'/>" alt="맨위로" /></a>
					</li>
				</ul>
			</dd>
			<dd>[첨부파일]
				<ul class="file">
					<li>
						<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf파일" /> 2011년 9월.pdf</a><span>(용량: 234KB/다운로드:<em>100</em>회)</span>
					</li>
					<li>
						<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf파일" /> 2011년 9월.pdf</a><span>(용량: 234KB/다운로드:<em>100</em>회)</span>
					</li>
					<li>
						<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf파일" /> 2011년 9월.pdf</a><span>(용량: 234KB/다운로드:<em>100</em>회)</span>
					</li>
					<li>
						<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf파일" /> 2011년 9월.pdf</a><span>(용량: 234KB/다운로드:<em>100</em>회)</span>
					</li>
				</ul>
			</dd>
		</dl>
		<dl>
			<dt>
				<strong>공공기관 DB품질 관리 지침 만든다</strong>
				<input class="sbtn_modify mal_10" type="submit" value="수정" />
				<input class="sbtn_del" type="submit" value="삭제" />
				<em>디지털타임스 | 2011/05/18</em>
			</dt>
			<dd class="con">
				<div id="con3">
					공공정보 개방 및 데이터베이스 품질제고 등의 요구가 높아지는 가운데 공공기관의 데이터베이스 품질을 관리하기 위한 지침 제정이 추진된다. 행정안전부는 공공기관이 국가정보화를 추진하는 과정에서 생산ㆍ유통되거나 활용되는 데이터베이스 품질을 관리하기 하기 위해 `공공기관의 데이터베이스 품질관리 지침`을 제정할 계획이라고 18일 밝혔다...
				</div>
			</dd>
			<dd>
				<ul class="part">
					<li><img src="<c:url value='/images/pdqm/common/icon/icon_part.gif'/>" alt="분야" />공공정책보도</li>
					<li><a href="##" target="_blank" title="새창으로 열림">[출처] http://biz.heraldm.com/common/Detail.jsp?newsMLId=20101224000723</a></li>
					<li class="ori">
						<a href="##" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/btn/btn_s_original.gif'/>" alt="원문보기" /></a>
						<a href="#header"><img src="<c:url value='/images/pdqm/common/btn/btn_s_top.gif'/>" alt="맨위로" /></a>
					</li>
				</ul>
			</dd>
			<dd>[첨부파일]
				<ul class="file">
					<li>
						<a href="##"><img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf파일" /> 2011년 9월.pdf</a><span>(용량: 234KB/다운로드:<em>100</em>회)</span>
					</li>
				</ul>
			</dd>
		</dl>
	</div>

	<!-- pading_Btn -->
	<div class="pagenate_btn tbSpace2">
		<div class="paging">
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_start.gif'/>" alt="처음목록보기" /></a>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_prev.gif'/>" alt="이전목록보기" /></a>
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
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_next.gif'/>" alt="다음목록보기" /></a>
			<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_end.gif'/>" alt="마지막목록보기" /></a>
		</div>
		<div class="btn_pr">
			<a href="/pdqm/html/pdqm/front/intro/intro3_write.jsp"><img src="<c:url value='/images/pdqm/common/btn/btn_write.gif'/>" alt="글쓰기" /></a>
		</div>
	</div>
	<!--// pading_Btn -->

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

