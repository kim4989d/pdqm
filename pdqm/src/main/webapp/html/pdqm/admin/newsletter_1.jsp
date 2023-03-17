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
 * @Class Name : NewsletterRegist.jsp
 * @Description : 뉴스레터 등록/발송 화면
 * @Modification Information
 * @
 * @  수정일      		수정자            	수정내용
 * @ -------      --------    ---------------------------
 * @ 2011.11.23		윤경한		최초생성
 *
 *  @author
 *  @since 2011.11.23
 *  @version 1.0
 *  @see
 *
 */
%>

<script type="text/javascript">
_editor_area = "nttCn";
_editor_url = "<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/'/>";
</script>
<script type="text/javascript" src="<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/htmlarea.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<script type="text/javascript" src="<c:url value='/validator.do'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/jquery-1.4.2.min.js' />" ></script>


<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

	<div class="title">
		<div class="locationMap">관리자 홈 > 콘텐츠관리 > 뉴스레터관리</div>
		<h2>뉴스레터 등록</h2>
	</div>

	<!-- contents영역시작 -->
	<div id="cntArea">

		<table class="registTable" summary="뉴스레터 입력폼입니다.">
			<colgroup>
				<col width="15%">
				<col width="85%">
			<colgroup>
			<tr>
				<th scope="row"><label for="nttSj">서식</label></th>
				<td>일반형 / 컬럼형 / 이벤트형</td>
			</tr>
			<tr>
				<th scope="row"><label for="nttSj">제목</label></th>
				<td><input id="nttSj" type="text" class="text" size="60" maxlength="60" style="width:580px;" /></td>
			</tr>
			<tr>
				<td colspan="2">
<table id="Table_01" width="676" height="950" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="4"><img src="<c:url value='/images/pdqm/common/newsletter/01/letter1_img_1.gif'/>" width="676" height="53" alt="" /></td>
	</tr>
	<tr>
		<td colspan="4">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter/01/letter1_gnb1.gif'/>" border="0" alt="공공정보 품질관리" /></a></td>
					<td><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter/01/letter1_gnb2.gif'/>" border="0" alt="지식마당" /></a></td>
					<td><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter/01/letter1_gnb3.gif'/>" border="0" alt="지원창구" /></a></td>
					<td><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter/01/letter1_gnb4.gif'/>" border="0" alt="품질관리교육" /></a></td>
					<td><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter/01/letter1_gnb5.gif'/>" border="0" alt="소통/참여" /></a></td>
					<td><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter/01/letter1_gnb6.gif'/>" border="0" alt="센터소개" /></a></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="4"><img src="<c:url value='/images/pdqm/common/newsletter/01/letter1_img_2.gif'/>" height="150" alt="공공정보 품질관리, 진단과 개선까지 공공정보 품질관리 지원센터와 함께 하세요" /></td>
	</tr>
	<tr>
		<td colspan="4">
			<table border="0" cellpadding="0" cellspacing="0" width="676" height="110">
				<tr>
					<td rowspan="3"><img src="<c:url value='/images/pdqm/common/newsletter/01/letter1_img_3_01.gif'/>" alt="" /></td>
					<td><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_img_3_02.gif'/>" alt="" /></td>
					<td rowspan="3"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_img_3_03.gif'/>" alt="" /></td>
				</tr>
				<tr>
					<td height="60" style="line-height:1.6;font-family:dotum,verdana;color:#333;font-size:12px;vertical-align:top;text-align:left;" bgcolor="#f5f5f5">
						행복한 연말 보내고 계신가요?
						2011년 12월 공공정보 품질관리 지원센터의 소식지를 보내드립니다.
						즐거운 시간 되세요.
					</td>
				</tr>
				<tr><td><img src="images/letter1_img_3_04.gif" alt="" /></td></tr>
			</table>
		</td>
	</tr>
	<tr>
		<td><img src="images/letter1_left.gif" width="30" alt="" /></td>
		<td width="354" valign="top">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td style="padding-bottom:5px"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_tit_1.gif'/>" width="54" height="13" alt="새소식" /></td>
				</tr>
				<tr>
					<td>
						<img src="images/letter1_box1.gif" width="339" height="169" alt="" />
					</td>
				</tr>
			</table>
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td style="padding-top:25px;padding-bottom:5px"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_tit_2.gif'/>" width="78" height="14" alt="지식콘텐츠" /></td>
				</tr>
				<tr>
					<td>
						<img src="<c:url value='/images/pdqm/common/newsletter01/letter1_box2.gif'/>" width="339" height="169" alt="" />
					</td>
				</tr>
			</table>
		</td>
		<td width="262" valign="top">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td style="padding-bottom:5px;border-bottom:1px solid #f5f5f5;"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_tit_3.gif'/>" width="46" height="14" alt="바로가기" /></td>
				</tr>
				<tr>
					<td style="padding-top:10px;">
						<table border="0" cellpadding="3" cellspacing="0">
							<tr>
								<td valign="top"><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_icon1.gif'/>" width="80" border="0" alt="" /></a></td>
								<td valign="top"><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_icon2.gif'/>" width="80" border="0" alt="" /></a></td>
								<td valign="top"><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_icon3.gif'/>" width="80" border="0" alt="" /></a></td>
							</tr>
							<tr>
								<td valign="top"><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_icon1.gif'/>" width="80" border="0" alt="" /></a></td>
								<td valign="top"><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_icon2.gif'/>" width="80" border="0" alt="" /></a></td>
								<td valign="top"><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_icon3.gif'/>" width="80" border="0" alt="" /></a></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td style="padding-top:20px;"><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_banner1.gif'/>" width="262" height="56" border="0" alt="트위터로 소통하기" /></a></td>
				</tr>
				<tr>
					<td style="padding-top:10px;"><a href="##" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_banner2.gif'/>" width="262" height="56" border="0" alt="페이스북으로 참여하기" /></a></td>
				</tr>
			</table>
		</td>
		<td><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_right.gif'/>" width="30" alt="" /></td>
	</tr>
	<tr>
		<td colspan="4"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_img_4.gif'/>" width="676" height="78" alt="" /></td>
	</tr>
	<tr>
		<td colspan="4"><img src="<c:url value='/images/pdqm/common/newsletter01/letter1_footer.gif'/>" width="676" height="88" alt="서울특별시 중구 청계천로 14(무교통 77번지) NIA빌딩 (110-775) 대표전화 02-2131-0114" /></td>
	</tr>
</table>
		</div></td>
	</tr>
</table>
				</td>
			</tr>
		</table>

		<!-- 버튼영역 -->
		<div class="btnArea btn_ar">
			<span class="button" ><a href="##">목록</a></span>
			<span class="button" ><a href="##">저장</a></span>
		</div>
		<!--// 버튼영역 -->

	</div>
	<!-- content end -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>