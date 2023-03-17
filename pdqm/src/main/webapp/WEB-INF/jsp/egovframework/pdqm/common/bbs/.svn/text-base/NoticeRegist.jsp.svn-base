<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%
/**
 * @Class Name : NoticeRegist.jsp
 * @Description : 게시물 등록화면
 * @Modification Information
 * @
 * @  수정일      		수정자            	수정내용
 * @ -------      --------    ---------------------------
 * @ 2011.11.09		윤경한		최초생성
 *
 *  @author
 *  @since 2011.11.09
 *  @version 1.0
 *  @see
 *
 */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>공공정보 품질관리 지원센터 :: <c:out value="${bdMstr.bbsNm}"/> - 게시글쓰기</title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">

<script type="text/javascript">
_editor_area = "nttCn";
_editor_url = "<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/'/>";
</script>
<script type="text/javascript" src="<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/htmlarea.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/fms/EgovMultiFile.js'/>" ></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="board" staticJavascript="false" xhtml="true" cdata="false"/>
<c:if test="${anonymous == 'true'}"><c:set var="prefix" value="/anonymous"/></c:if>
<script type="text/javascript">
	function fn_egov_validateForm(obj) {
		return true;
	}

	function fn_egov_regist_notice() {
		document.board.onsubmit();


		var ntceBgnde = eval(document.getElementById("ntceBgnde").value);
		var ntceEndde = eval(document.getElementById("ntceEndde").value);


		if(ntceBgnde > ntceEndde){
			alert("게시기간 종료일이 시작일보다 빠릅니다.");
			return;
		}

		if (!validateBoard(document.board)){
			return;
		}

		if (confirm('<spring:message code="common.regist.msg" />')) {
			//document.board.onsubmit();
			document.board.action = "<c:url value='/cop/bbs${prefix}/insertBoardArticle.do'/>";
			document.board.submit();
		}
	}

	function fn_egov_select_noticeList() {
		document.board.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
		document.board.submit();
	}
</script>
<style type="text/css">
.noStyle {background:ButtonFace; BORDER-TOP:0px; BORDER-bottom:0px; BORDER-left:0px; BORDER-right:0px;}
  .noStyle th{background:ButtonFace; padding-left:0px;padding-right:0px}
  .noStyle td{background:ButtonFace; padding-left:0px;padding-right:0px}
</style>

<style type="text/css">
	h1 {font-size:12px;}
	caption {visibility:hidden; font-size:0; height:0; margin:0; padding:0; line-height:0;}
</style>

</head>
<!-- body onload="javascript:editor_generate('nttCn');"-->
<body onLoad="HTMLArea.init(); HTMLArea.onload = initEditor; document.board.nttSj.focus();">
<!-- Top Menu -->
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<!-- Left Menu -->
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000121' }">
<%@ include file="/html/pdqm/include/lnb7.jsp" %><!-- 공지사항  -->
<div class="bg_notice">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000131' }">
<%@ include file="/html/pdqm/include/lnb8.jsp" %><!-- 묻고답하기  -->
<div class="bg_qna">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000141' }">
<%@ include file="/html/pdqm/include/lnb2.jsp" %><!-- 지식자료실  -->
<div class="bg_know">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000142'}">
<%@ include file="/html/pdqm/include/lnb4.jsp" %><!-- 교육공지  -->
<div class="bg_edu">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000143' }">
<%@ include file="/html/pdqm/include/lnb4.jsp" %><!-- 교육자료실  -->
<div class="bg_edu">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000221' }">
<%@ include file="/html/pdqm/include/lnb4.jsp" %><!-- 동영상자료실  -->
<div class="bg_edu">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000151' }">
<%@ include file="/html/pdqm/include/lnb5.jsp" %><!-- 커뮤니티게시판  -->
<div class="bg_com">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000152' }">
<%@ include file="/html/pdqm/include/lnb5.jsp" %><!-- 커뮤니티-자료실  -->
<div class="bg_com">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000161' }">
<%@ include file="/html/pdqm/include/lnb2.jsp" %><!-- 우수사례공유  -->
<div class="bg_know">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000171' }">
<%@ include file="/html/pdqm/include/lnb5.jsp" %><!-- 전문가칼럼  -->
<div class="bg_com">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000181' }">
<%@ include file="/html/pdqm/include/lnb2.jsp" %><!-- 뉴스와동향  -->
<div class="bg_know">
</c:if>
<c:if test="${brdMstrVO.bbsId == 'BBSMSTR_000000000191' }">
<%@ include file="/html/pdqm/include/lnb6.jsp" %><!-- 보도자료  -->
<div class="bg_intro">
</c:if>
<!-- ~Menu -->

<form:form commandName="board" name="board" method="post" enctype="multipart/form-data" >

<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
<input type="hidden" name="bbsId" value="<c:out value='${bdMstr.bbsId}'/>" />
<input type="hidden" name="bbsAttrbCode" value="<c:out value='${bdMstr.bbsAttrbCode}'/>" />
<input type="hidden" name="bbsTyCode" value="<c:out value='${bdMstr.bbsTyCode}'/>" />
<input type="hidden" name="replyPosblAt" value="<c:out value='${bdMstr.replyPosblAt}'/>" />
<input type="hidden" name="fileAtchPosblAt" value="<c:out value='${bdMstr.fileAtchPosblAt}'/>" />
<input type="hidden" name="posblAtchFileNumber" value="<c:out value='${bdMstr.posblAtchFileNumber}'/>" />
<input type="hidden" name="posblAtchFileSize" value="<c:out value='${bdMstr.posblAtchFileSize}'/>" />
<input type="hidden" name="tmplatId" value="<c:out value='${bdMstr.tmplatId}'/>" />
<!-- khyoon 사용 달력 변경 2011.11.01 -->
<!-- input type="hidden" name="cal_url" value="<c:url value='/sym/cal/EgovNormalCalPopup.do'/>" /-->
<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/callCalPopup.do'/>" />
<!-- ~khyoon -->
<input type="hidden" name="authFlag" value="<c:out value='${bdMstr.authFlag}'/>" />

<c:if test="${anonymous != 'true'}">
<input type="hidden" name="ntcrNm" value="dummy">	<!-- validator 처리를 위해 지정 -->
<input type="hidden" name="password" value="dummy">	<!-- validator 처리를 위해 지정 -->
</c:if>

<c:if test="${bdMstr.bbsAttrbCode != 'BBSA01'}">
   <input id="ntceBgnde" name="ntceBgnde" type="hidden" value="10000101">
   <input id="ntceEndde" name="ntceEndde" type="hidden" value="99991231">
</c:if>

	<!-- contents영역시작 -->

	<!-- 게시판 타이틀 HTML -->
	<div class="title">${brdMstrVO.bbsIntrcn}</div>

	<table class="registTable" summary="게시글 입력폼입니다.">
		<colgroup>
			<col width="15%"><col>
		<colgroup>
		<tr>
			<th scope="row"><label for="nttSj">제목</label></th>
			<td>
				<input name="nttSj" id="nttSj" type="text" class="text" size="60" value="" maxlength="60" style="width:600px;" />
				<br/><form:errors path="nttSj" />
			</td>
		</tr>
		<c:if test="${bdMstr.nttClPosblAt == 'Y' }">
		<tr>
			<th scope="row"><label for="nttClCode">분류</label></th>
			<td>
				<form:select path="nttClCode" title="게시물분류코드 선택">
					<form:option value='' label="--선택하세요--" />
					<form:options items="${codeList}" itemValue="code" itemLabel="codeNm"/>
				</form:select>
				<br/><form:errors path="nttClCode" />
			</td>
		</tr>
		</c:if>
		<c:if test="${bdMstr.bbsAttrbCode == 'BBSA04' }"><!-- 뉴스게시판 -->
		<tr>
			<th scope="row"><label for="pressNm"><spring:message code="cop.pressNm" /></label></th>
			<td>
				<input name="pressNm" type="text" class="text" size="40" value="" maxlength="40" style="width:400px;" />
				<br/><form:errors path="pressNm" />
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="newsDayView"><spring:message code="cop.newsDay" /></label></th>
			<td>
				<input id="newsDay" name="newsDay" type="hidden" />
				<input name="newsDayView" type="text" size="10" value="" readonly="readonly"
					onclick="javascript:fn_egov_Calendar(document.board, document.board.newsDay, document.board.newsDayView);" />
				<a href="#" onclick="javascript:fn_egov_Calendar(document.board, document.board.newsDay, document.board.newsDayView);return false;">
					<img src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif' />" alt="달력보기" /></a>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="sourceUrl"><spring:message code="cop.sourceUrl" /></label></th>
			<td>
				<input name="sourceUrl" type="text" class="text" size="100" value=""  maxlength="200" style="width:200px;" />
				<br/><form:errors path="sourceUrl" />
			</td>
		</tr>
		</c:if>
		<c:if test="${bdMstr.bbsAttrbCode == 'BBSA05' }"><!-- 전문가칼럼 -->
		<tr>
			<th scope="row"><label for="pubDate">발행월</label></th>
			<td>
				<select name="pubYear" title="발행년도 선택">
					<option value='' >년도선택</option>
					<option value="2011">2011</option>
					<option value="2012">2012</option>
					<option value="2013">2013</option>
					<option value="2014">2014</option>
					<option value="2015">2015</option>
					<option value="2016">2016</option>
					<option value="2017">2017</option>
					<option value="2018">2018</option>
					<option value="2019">2019</option>
				</select>
				<select name="pubMonth" title="발행월 선택">
					<option value='' >월선택</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				<input type="hidden" name="pubDate"/>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="blogUrl">SNS</label></th>
			<td>
				<ul>
					<li><label for="blogUrl">블로그</label> : <input type="text" name="blogUrl" maxlength="120" class="text" style="width:400px;" /></li>
					<li><label for="facebookUrl">페이스북</label> : <input type="text" name="facebookUrl" maxlength="120" class="text" style="width:400px;" /></li>
					<li><label for="twitterUrl">트위터</label> : <input type="text" name="twitterUrl" maxlength="120" class="text" style="width:400px;" /></li>
				</ul>
			</td>
		</tr>
		</c:if>
		<tr>
			<th scope="row"><label for="nttCn">내용</label></th>
			<td>
				<!-- 에디터 들어가는 자리 -->
				<textarea id="nttCn" name="nttCn" class="text" cols="75" rows="50" style="width:600px; height:450px;"></textarea>
				<form:errors path="nttCn" />
			</td>
		</tr>
		<c:if test="${bdMstr.bbsAttrbCode == 'BBSA07' }"><!-- 동영상게시판 -->
		<tr>
			<th scope="row"><label for="sourceUrl">동영상URL</label></th>
			<td>
				<input name="sourceUrl" type="text" class="text" size="200" value=""  maxlength="200" style="width:640px;" />
				<br/><form:errors path="sourceUrl" />
			</td>
		</tr>
		</c:if>
		<c:if test="${bdMstr.fileAtchPosblAt == 'Y' }">
		<tr>
			<th scope="row">
			<c:choose>
				<c:when test="${bdMstr.bbsAttrbCode == 'BBSA07' }"><!-- 동영상게시판 -->
				<label for="egovComFileUploader">썸네일</br>이미지</label>
				</c:when>
				<c:otherwise>
				<label for="egovComFileUploader">첨부파일</label>
				</c:otherwise>
			</c:choose>
			</th>
			<td>
				<input name="egovComFileUploader" type="file" class="text" size="50" id="egovComFileUploader" />
				<div id="egovComFileList"></div>
				<script type="text/javascript">
				   var maxFileNum = document.board.posblAtchFileNumber.value;
				   if(maxFileNum==null || maxFileNum==""){
					 maxFileNum = 3;
				   }
					var multi_selector = new MultiSelector( document.getElementById( 'egovComFileList' ), maxFileNum );
					multi_selector.addElement( document.getElementById( 'egovComFileUploader' ) );
				</script>
			</td>
		</tr>
		</c:if>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea btn_ar">
		<a href="<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>" onclick="fn_egov_select_noticeList();return false;">
			<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_list.gif'/>" alt="목록" /></a>
		<a href="<c:url value='/cop/bbs${prefix}/insertBoardArticle.do'/>" onclick="fn_egov_regist_notice();return false;">
			<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_regist.gif'/>" alt="등록" /></a>
	</div>
	<!--// 버튼영역 -->
</form:form>

</div>
<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>