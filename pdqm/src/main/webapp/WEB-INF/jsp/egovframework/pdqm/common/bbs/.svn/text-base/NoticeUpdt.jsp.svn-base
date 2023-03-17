<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%
/**
 * @Class Name : NoticeUpdt.jsp
 * @Description : 게시물 수정화면
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

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>공공정보 품질관리 지원센터 :: <c:out value='${bdMstr.bbsNm}'/> - 게시글 수정</title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>

<script type="text/javascript">
_editor_area = "nttCn";
_editor_url = "<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/'/>";
</script>
<script type="text/javascript" src="<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/htmlarea.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<!-- script type="text/javascript" src="<c:url value='/html/egovframework/com/cmm/utl/htmlarea/EgovWebEditor.js'/>" ></script-->
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/fms/EgovMultiFile.js'/>" ></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="board" staticJavascript="false" xhtml="true" cdata="false"/>
<c:if test="${anonymous == 'true'}"><c:set var="prefix" value="/anonymous"/></c:if>
<script type="text/javascript">
	function fn_egov_validateForm(obj){
		return true;
	}

	function fn_egov_regist_notice(){
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

		if (confirm('<spring:message code="common.update.msg" />')) {
			document.board.action = "<c:url value='/cop/bbs${prefix}/updateBoardArticle.do'/>";
			document.board.submit();
		}
	}

	function fn_egov_select_noticeList() {
		document.board.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
		document.board.submit();
	}

	function fn_egov_check_file(flag) {
		if (flag=="Y") {
			document.getElementById('file_upload_posbl').style.display = "block";
			document.getElementById('file_upload_imposbl').style.display = "none";
		} else {
			document.getElementById('file_upload_posbl').style.display = "none";
			document.getElementById('file_upload_imposbl').style.display = "block";
		}
	}
</script>
<style type="text/css">
.noStyle {background:ButtonFace; BORDER-TOP:0px; BORDER-bottom:0px; BORDER-left:0px; BORDER-right:0px;}
  .noStyle th{background:ButtonFace; padding-left:0px;padding-right:0px}
  .noStyle td{background:ButtonFace; padding-left:0px;padding-right:0px}
</style>
</head>

<!-- body onload="javascript:editor_generate('nttCn');"-->
<body onLoad="HTMLArea.init(); HTMLArea.onload = initEditor; document.board.nttCn.focus();">
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
<!-- contents영역시작 -->
	<!-- 게시판 타이틀 HTML -->
	<div class="title">${brdMstrVO.bbsIntrcn}</div>


<form:form commandName="board" name="board" method="post" enctype="multipart/form-data" >
<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>
<input type="hidden" name="returnUrl" value="<c:url value='/cop/bbs/forUpdateBoardArticle.do'/>"/>

<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
<input type="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" />

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

<c:if test="${anonymous != 'true'}">
<input type="hidden" name="ntcrNm" value="dummy"/>	<!-- validator 처리를 위해 지정 -->
<input type="hidden" name="password" value="dummy" />	<!-- validator 처리를 위해 지정 -->
</c:if>

<c:if test="${bdMstr.bbsAttrbCode != 'BBSA01'}">
   <input id="ntceBgnde" name="ntceBgnde" type="hidden" value="10000101" />
   <input id="ntceEndde" name="ntceEndde" type="hidden" value="99991231" />
</c:if>

	<table class="registTable" summary="게시글 입력폼입니다.">
		<colgroup>
			<col width="15%">
			<col width="85%">
		<colgroup>
		<tr>
			<th scope="row"><label for="nttSj">제목</label></th>
			<td>
				<input name="nttSj" id="nttSj" type="text" class="text" size="60"  value="<c:out value='${result.nttSj}' />" maxlength="60" style="width:500px;" /><form:errors path="nttSj" />
			</td>
		</tr>
		<c:if test="${bdMstr.nttClPosblAt == 'Y' }">
		<tr>
			<th scope="row"><label for="nttSj">분류</label></th>
			<td>
				<select id="nttClCode" name="nttClCode" class="text" title="게시물분류코드 선택">
				<c:forEach var="code" items="${codeList}" varStatus="rowCounter" >
				<c:choose>
					<c:when test="${code.code == result.nttClCode}">
						<option value="${code.code}" selected="selected">${code.codeNm}</option>
					</c:when>
					<c:otherwise>
						<option value="${code.code}">${code.codeNm}</option>
					</c:otherwise>
				</c:choose>
				</c:forEach>
				</select>
			</td>
		</tr>
		</c:if>
		<c:if test="${bdMstr.bbsAttrbCode == 'BBSA04' }"><!-- 뉴스게시판 -->
		<tr>
			<th scope="row"><label for="pressNm"><spring:message code="cop.pressNm" /></label></th>
			<td><input id="pressNm" name="pressNm" type="text" class="text" size="40" value="${result.pressNm}"  maxlength="40" /></td>
		</tr>
		<tr>
			<th scope="row"><label for="newsDay"><spring:message code="cop.newsDay" /></label></th>
			<td>
				<input id="newsDay" name="newsDay" value="${result.newsDay}" type="hidden" />
				<fmt:parseDate value="${result.newsDay}" var="dateFmt" pattern="yyyymmdd"/>
				<input name="newsDayView" type="text" class="text" size="10" value="<fmt:formatDate pattern='yyyy-mm-dd' value='${dateFmt}'/>"  readonly="readonly" onclick="javascript:fn_egov_Calendar(document.board, document.board.newsDay, document.board.newsDayView);" >
				<a href="#" onclick="javascript:fn_egov_Calendar(document.board, document.board.newsDay, document.board.newsDayView);"><img src="<c:url value='/images/pdqm/common/btn/btn_s_calendar.gif' />" alt="달력보기"></a>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="sourceUrl"><spring:message code="cop.sourceUrl" /></lable></th>
			<td>
				<input id="sourceUrl" name="sourceUrl" type="text" class="text" size="100" value="${result.sourceUrl}"  maxlength="200" />
			</td>
		</tr>
		</c:if>
		<c:if test="${bdMstr.bbsAttrbCode == 'BBSA05' }"><!-- 전문가칼럼 -->
		<tr>
			<th scope="row"><label for="pubDate">발행월</label></th>
			<td>
				<select name="pubYear" class="text" title="발행년도 선택">
					<option value="2011" <c:if test="${result.pubYear == '2011'}">selected</c:if>>2011</option>
					<option value="2012" <c:if test="${result.pubYear == '2012'}">selected</c:if>>2012</option>
					<option value="2013" <c:if test="${result.pubYear == '2013'}">selected</c:if>>2013</option>
					<option value="2014" <c:if test="${result.pubYear == '2014'}">selected</c:if>>2014</option>
					<option value="2015" <c:if test="${result.pubYear == '2015'}">selected</c:if>>2015</option>
				</select>
				<select name="pubMonth" class="text" title="발행월 선택">
					<option value="1" <c:if test="${result.pubMonth == '1'}">selected</c:if>>1</option>
					<option value="2" <c:if test="${result.pubMonth == '2'}">selected</c:if>>2</option>
					<option value="3" <c:if test="${result.pubMonth == '3'}">selected</c:if>>3</option>
					<option value="4" <c:if test="${result.pubMonth == '4'}">selected</c:if>>4</option>
					<option value="5" <c:if test="${result.pubMonth == '5'}">selected</c:if>>5</option>
					<option value="6" <c:if test="${result.pubMonth == '6'}">selected</c:if>>6</option>
					<option value="7" <c:if test="${result.pubMonth == '7'}">selected</c:if>>7</option>
					<option value="8" <c:if test="${result.pubMonth == '8'}">selected</c:if>>8</option>
					<option value="9" <c:if test="${result.pubMonth == '9'}">selected</c:if>>9</option>
					<option value="10" <c:if test="${result.pubMonth == '10'}">selected</c:if>>10</option>
					<option value="11" <c:if test="${result.pubMonth == '11'}">selected</c:if>>11</option>
					<option value="12" <c:if test="${result.pubMonth == '12'}">selected</c:if>>12</option>
				</select>
				<input type="hidden" name="pubDate"/>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="blogUrl">SNS</label></th>
			<td>
				<ul>
					<li><label for="blogUrl">블로그</label> : <input type="text" id="blogUrl" name="blogUrl"  maxlength="120" value="${result.blogUrl}" class="text" style="width:400px;" /></li>
					<li><label for="facebookUrl">페이스북</label> : <input type="text" id="facebookUrl" name="facebookUrl" maxlength="120" value="${result.facebookUrl}" class="text" style="width:400px;" /></li>
					<li><label for="twitterUrl">트위터</label>: <input type="text" id="twitterUrl" name="twitterUrl" maxlength="120" value="${result.twitterUrl}" class="text" style="width:400px;" /></li>
				</ul>
			</td>
		</tr>
		</c:if>
		<tr>
			<th scope="row"><label for="nttCn">내용</label></th>
			<td>
				<!-- 에디터 들어가는 자리 -->
				<textarea id="nttCn" name="nttCn" class="text" cols="75" rows="50" style="width:580px;height:450px;">
<c:out value="${result.nttCn}" escapeXml="false" />
				</textarea>
				<form:errors path="nttCn" />
			</td>
		</tr>
		<c:if test="${bdMstr.bbsAttrbCode == 'BBSA07' }"><!-- 동영상게시판 -->
		<tr>
			<th scope="row"><label for="sourceUrl">동영상URL</label></th>
			<td>
				<input name="sourceUrl" type="text" class="text" size="200" value="${result.sourceUrl}"  maxlength="200" style="width:640px;" /><form:errors path="sourceUrl" />
			</td>
		</tr>
		</c:if>
		<c:if test="${bdMstr.fileAtchPosblAt == 'Y'}">
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
				<c:import url="/cmm/fms/selectFileInfsForUpdate.do" charEncoding="utf-8">
					<c:param name="param_atchFileId" value="${result.atchFileId}" />
				</c:import>
			</td>
		</tr>
		<c:if test="${empty result.atchFileId}">
			<input type="hidden" name="fileListCnt" value="0" />
		</c:if>
		<tr>
			<th height="23"><spring:message code="cop.atchFile" /></th>
			<td colspan="3">
				<div id="file_upload_posbl"  style="display:none;" >
					<input name="file_1" type="file" class="text" size="50" id="egovComFileUploader" />
				</div>
				<div id="egovComFileList"></div>
				<div id="file_upload_imposbl"  style="display:none;" >
					<spring:message code="common.imposbl.fileupload" />
				</div>
				<script type="text/javascript">
					var existFileNum = document.board.fileListCnt.value;
					var maxFileNum = document.board.posblAtchFileNumber.value;

					if (existFileNum=="undefined" || existFileNum ==null) {
						existFileNum = 0;
					}
					if (maxFileNum=="undefined" || maxFileNum ==null) {
						maxFileNum = 0;
					}
					var uploadableFileNum = maxFileNum - existFileNum;
					if (uploadableFileNum<0) {
						uploadableFileNum = 0;
					}
					if (uploadableFileNum != 0) {
						fn_egov_check_file('Y');
						var multi_selector = new MultiSelector( document.getElementById( 'egovComFileList' ), uploadableFileNum );
						multi_selector.addElement( document.getElementById( 'egovComFileUploader' ) );
					} else {
						fn_egov_check_file('N');
					}
				 </script>
			</td>
		</tr>
		</c:if>
	</table>
</form:form>
	<!-- 버튼영역 -->
	<div class="btnArea btn_ar">
		<a href="#" onclick="javascript:fn_egov_select_noticeList();return false;"><img src="<c:url value='/images/pdqm/common/btn/btn_list.gif'/>" alt="목록" /></a>
		<a href="#" onclick="javascript:fn_egov_regist_notice();return false;"><img src="<c:url value='/images/pdqm/common/btn/btn_modify.gif'/>" alt="수정" /></a>
	</div>
	<!--// 버튼영역 -->

</div>
<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>
