<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : sitemap.jsp
  * @Description : 사이트맵 화면
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
<%@ include file="/html/pdqm/include/lnb12.jsp" %>

<!-- contents영역시작 -->

<div class="bg_info">
	<div class="title">
		<div class="location">Home > <em>사이트맵</em></div>
		<h3><img src="<c:url value='/images/pdqm/common/etc/h3_sitemap.gif'/>" alt="사이트맵" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/common/etc/h3_sitemap_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터의 사이트맵입니다. 메뉴의 링크를 통하여 원하는 메뉴로 바로갈 수 있습니다." /></p>
	</div>

	<div id="conBox">
		<div class="sitemapBox">
			<ul>
				<!-- 공공공정보품질관리 -->
				<li class="tmenu">
					<dl>
						<dt><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap1.gif'/>" alt="공공공정보품질관리" /></dt>
						<dd><a href="/pdqm/front/summary/outline.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap1_1.gif'/>" alt="공공정보품질관리 개요" /></a></dd>
						<dd><a href="/pdqm/front/summary/GuideLine.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap1_2.gif'/>" alt="법·지침·매뉴얼" /></a></dd>
						<dd><a href="/pdqm/front/summary/introStandard.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap1_3.gif'/>" alt="품질관리표준" /></a></dd>
					</dl>
				</li>
				<!-- 지식마당 -->
				<li class="tmenu">
					<dl>
						<dt><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap2.gif'/>" alt="지식마당" /></dt>
						<dd><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000181"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap2_1.gif'/>" alt="뉴스와 동향" /></a>
							<ul>
								<li><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000181&searchNttClCode=NTTCL01"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap2_1_1.gif'/>" alt="뉴스" /></a></li>
								<li><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000181&searchNttClCode=NTTCL02"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap2_1_2.gif'/>" alt="솔류션 소개" /></a></li>
								<li><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000181&searchNttClCode=NTTCL03"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap2_1_3.gif'/>" alt="관련서적(논문)" /></a></li>
								<li><a href="##"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap2_1_4.gif'/>" alt="업체소개" /></a></li>
							</ul>
						</dd>
						<dd><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000161"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap2_2.gif'/>" alt="우수사례 공유" /></a></dd>
						<dd><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000141"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap2_3.gif'/>" alt="지식자료실" /></a></dd>
					</dl>
				</li>
				<!-- 지원창구 -->
				<li class="tmenu">
					<dl>
						<dt><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3.gif'/>" alt="지원창구" /></dt>
						<dd><a href="/pdqm/front/support/dgnssInfo.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_1.gif'/>" alt="품질진단 사업안내" /></a></dd>
						<dd><a href="/pdqm/front/support/improvInfo.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_2.gif'/>" alt="품질개선 사업안내" /></a></dd>
						<dd><a href="/pdqm/support/diagnosis/level/selfDgnssInformation.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_3.gif'/>" alt="품질수준 자가진단" /></a>
							<ul>
								<li><a href="/pdqm/support/diagnosis/level/selfDgnssInformation.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_3_1.gif'/>" alt="품질수준 자가진단 안내" /></a></li>
								<li><a href="/pdqm/support/diagnosis/level/selectDgnssTrgetView.do?level_5_idx=level"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_3_2.gif'/>" alt="진단 시작하기" /></a></li>
							</ul>
						</dd>
						<dd><a href="/pdqm/front/support/introMatching.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_4.gif'/>" alt="연계정보 정합성 진단" /></a>
							<ul>
								<li><a href="/pdqm/front/support/introMatching.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_4_1.gif'/>" alt="연계정보 정합성 검증 안내" /></a></li>
								<li><a href="/pdqm/support/matching/searchAllDBInfoList.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_4_2.gif'/>" alt="DB스키마 정보 비교" /></a></li>
								<li><a href="/pdqm/support/matching/MatchingCodeInfo.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_4_3.gif'/>" alt="마스터코드 정보 비교" /></a></li>
							</ul>
						</dd>
						<dd><a href="/pdqm/support/apply/selectPdqmApplyInfo.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_5.gif'/>" alt="품질개선 수요조사" /></a>
							<ul>
								<li><a href="/pdqm/support/apply/selectPdqmApplyInfo.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_5_1.gif'/>" alt="수요조사 안내" /></a></li>
								<li><a href="/pdqm/support/apply/selectPdqmApply.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap3_5_2.gif'/>" alt="사업신청" /></a></li>
							</ul>
						</dd>
					</dl>
				</li>
				<!-- 품질관리 교육 -->
				<li class="tmenu">
					<dl>
						<dt><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap4.gif'/>" alt="품질관리 교육" /></dt>
						<dd><a href="/pdqm/front/education/introEducation.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap4_1.gif'/>" alt="교육 안내" /></a></dd>
						<dd><a href="/pdqm/html/pdqm/front/education/education4.jsp"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap4_2.gif'/>" alt="교육 자료" /></a>
							<ul>
								<li><a href="/pdqm/html/pdqm/front/education/education4.jsp"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap4_2_1.gif'/>" alt="교육동영상" /></a></li>
								<li><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000221"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap4_2_2.gif'/>" alt="일반영상" /></a></li>
								<li><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000143"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap4_2_3.gif'/>" alt="교육 자료실" /></a></li>
							</ul>
						</dd>
					</dl>
				</li>
				<!-- 소통·참여 -->
				<li class="tmenu">
					<dl>
						<dt><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap5.gif'/>" alt="소통·참여" /></dt>
						<dd><a href="/pdqm/front/community/introCommunity.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap5_1.gif'/>" alt="협의회 커뮤니티" /></a>
							<ul>
								<li><a href="/pdqm/front/community/introCommunity.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap5_1_1.gif'/>" alt="협의회 커뮤니티 안내" /></a></li>
								<li><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000151"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap5_1_2.gif'/>" alt="커뮤니티 게시판" /></a></li>
								<li><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000152"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap5_1_3.gif'/>" alt="자료실" /></a></li>
							</ul>
						</dd>
						<dd><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000171"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap5_2.gif'/>" alt="전문가 컬럼" /></a></dd>
						<dd><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000131"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap5_3.gif'/>" alt="묻고 답하기" /></a></dd>
					</dl>
				</li>
				<!-- 센터소개 -->
				<li class="tmenu">
					<dl>
						<dt><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap6.gif'/>" alt="센터소개" /></dt>
						<dd><a href="/pdqm/front/intro/intro.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap6_1.gif'/>" alt="소개" /></a></dd>
						<dd><a href="/pdqm/front/intro/mainBusiness.do"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap6_2.gif'/>" alt="주요사업" /></a></dd>
						<dd><a href="/pdqm/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000191"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap6_3.gif'/>" alt="보도자료" /></a></dd>
						<dd><a href="##"><img src="<c:url value='/images/pdqm/front/etc/txt_sitemap6_4.gif'/>" alt="오시는 길" /></a></dd>
					</dl>
				</li>
				<!-- <li>회원
					<ul>
						<li><a href="##">회원가입</a></li>
						<li><a href="##">로그인</a></li>
						<li><a href="##">마이페이지</a>
							<ul>
								<li><a href="##">회원정보수정</a></li>
								<li><a href="##">회원탈퇴</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li>홈
					<ul>
						<li><a href="##">공지사항</a></li>
						<li><a href="##">묻고답하기</a></li>
						<li><a href="##">이용약관</a></li>
						<li><a href="##">개인정보보호정책</a></li>
					</ul>
				</li> -->
			</ul>
		</div>
	</div>
</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

