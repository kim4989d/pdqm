<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : write.jsp
  * @Description : 보도자료 글쓰기화면
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
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.js"></script>
	<script type="text/javascript" src="<c:url value='/js/common.js'/>"></script>
	<script type="text/javascript">$('input:file').css('border','1px solid #cfcfcf');</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb6.jsp" %>
<!-- contents영역시작 -->

<div class="bg_know">
	<div class="title">
		<div class="location">Home > 센터소개 > <em>보도자료</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/intro/h3_int3.gif'/>" alt="보도자료" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/intro/h3_int3_desc.png'/>" class="png24" alt="공공정보 품질관리 지원센터의 보도자료입니다. 공공정보 품질관리 지원센터의 최근 동향을 보도자료를 통하여 확인할 수 있습니다. " /></p>
	</div>

	<table class="registTable" summary="게시글 수정폼입니다.">
		<caption>게시글 수정</caption>
		<colgroup>
			<col width="15%">
			<col width="85%">
		<colgroup>
		<tr>
			<th scope="row"><label for="nttSj">제&nbsp;&nbsp;목</label></th>
			<td>
				<input id="nttSj" type="text" class="text" size="60" maxlength="60" value="공공정보 품질관리의 우수사례 선정" style="width:500px;" />
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="label_1">분&nbsp;&nbsp;야</label></th>
			<td>
				<select id="label_1" class="text">
					<option>전체</option>
					<option>데이터품질(피해) 문제사례</option>
					<option>데이터품질 개선사례(우수사례)</option>
					<option selected="selected">시장동향</option>
					<option>기술동향</option>
					<option>전문가컬럼</option>
					<option>솔루션소개</option>
					<option>공공정책보도</option>
				</select>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="label_2">언론사</label></th>
			<td>
				<input id="label_2" type="text" class="text" size="40" value="디지털타임스" style="width:400px;" />
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="label_3">보도일자</label></th>
			<td>
				<input id="label_3" type="text" class="text" size="10" value="20111116" style="width:100px;" />
				<input type="button" class="calendar" alt="미니달력보기" />
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="label_4">출&nbsp;&nbsp;처</label></th>
			<td>
				<input id="label_4" type="text" class="text" size="40" value="http://www.dt.co.kr/12353435.html" style="width:400px;" />
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="nttCn">내&nbsp;&nbsp;용</label></th>
			<td>
				<!-- 에디터 들어가는 자리 -->
				<textarea id="nttCn" name="nttCn" class="text" cols="75" rows="28" style="width:580px;height:200px;"></textarea>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="label_5">첨부파일</label></th>
			<td>
				<input id="label_5" type="file" class="text" size="40" style="width:400px;" />
				<ul class="file">
					<li>
						<img src="<c:url value='/images/pdqm/common/icon/icon_pdf.gif'/>" alt="pdf 파일" /> E-Book_Final.pdf
						<input type="button" value="삭제" class="sbtn_close" />
					</li>
					<li>
						<img src="<c:url value='/images/pdqm/common/icon/icon_doc.gif'/>" alt="doc 파일" /> E-Book_Final.pdf
						<input type="button" value="삭제" class="sbtn_close" />
					</li>
					<li>
						<img src="<c:url value='/images/pdqm/common/icon/icon_hwp.gif'/>" alt="hwp 파일" /> E-Book_Final.pdf
						<input type="button" value="삭제" class="sbtn_close" />
					</li>
					<li>
						<img src="<c:url value='/images/pdqm/common/icon/icon_ppt.gif'/>" alt="ppt 파일" /> E-Book_Final.pdf
						<input type="button" value="삭제" class="sbtn_close" />
					</li>
				</ul>

			</td>
		</tr>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea btn_ar tbSpace2">
		<a href="/pdqm/html/pdqm/front/intro/intro3.jsp"><img src="<c:url value='/images/pdqm/common/btn/btn_cancel.gif'/>" alt="취소" /></a>
		<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_regist.gif'/>" alt="등록" /></a>
	</div>
</div>


<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

