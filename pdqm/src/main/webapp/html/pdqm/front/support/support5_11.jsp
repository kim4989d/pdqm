<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support5_11.jsp
  * @Description : 지원창구 > 연계정보 정합성 진단 > 코드비교
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
		<div class="location">Home > 지원창구 > 연계정보 정합성 진단 > <em>코드비교</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup5_11.gif'/>" alt="코드비교" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup5_9_desc.png'/>" class="png24" alt="기준 마스터코드와 대상 마스터코드의 검정 결과를 확인하여 연계시 및 자체코드를 사용하고 있는 컬럼에 대해 코드값 오류를 파악할 수 있습니다." /></p>
	</div>

	<div id="conBox">
	<div class="sup5_11">
		<div class="tb_fL">
			<!-- 검색박스 -->
			<fieldset class="searchBox_s">
				<legend>검색폼1</legend>
				<label for="input1"><strong>코드 관리명</strong></label> <input type="text" id="input1" class="text" style="width:165px;" />
				<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_search2.gif'/>" title="조회" />
			</fieldset>
			<!--// 검색박스-->

			<dl class="con_dl">
				<dt><label for="select1">번호 / 데이터베이스명/ 코드 관리명</label></dt>
				<dd>
					<select id="select1" class="multiple" multiple style="height:200px;">
						<option>1 / 인사관리 시스템DB /IS_DWELLMGR</option>
						<option>2 / 인사관리 시스템DB /IS_DWELLMGR</option>
						<option>3 / 인사관리 시스템DB /IS_DWELLMGR</option>
						<option>4 / 인사관리 시스템DB /IS_DWELLMGR</option>
						<option>5 / 인사관리 시스템DB /IS_DWELLMGR</option>
						<option>6 / 인사관리 시스템DB /IS_DWELLMGR</option>
					</select>
				</dd>
			</dl>
		</div>


		<div class="tb_fR">
			<!-- 검색박스 -->
			<fieldset class="searchBox_s">
				<legend>검색폼2</legend>
				<label for="check1">마스터코드간 비교 여부</label> <input type="checkbox" id="check1" />
				<input type="image" src="<c:url value='/images/pdqm/common/btn/btn_s_code2.gif'/>" class="btn" title="코드비교 실행" />
			</fieldset>
			<!--// 검색박스 -->

			<a href="##" class="sel_btn"><img src="<c:url value='/images/pdqm/common/btn/btn_c_next.gif'/>" alt="기준코드로 이동" /></a>
			<dl class="con_dl first">
				<dt><label for="select2">기준 코드</label></dt>
				<dd>
					<select id="select2" class="multiple">
						<option>인사관리 시스템 /인사 조직 코드</option>
					</select>
				</dd>
			</dl>

			<a href="##" class="sel_btn2"><img src="<c:url value='/images/pdqm/common/btn/btn_c_next.gif'/>" alt="분석대상코드로 이동" /></a>
			<dl class="con_dl">
				<dt><label for="select3">분석 대상 코드</label></dt>
				<dd>
					<select id="select3" class="multiple">
						<option>관리자 시스템 /관리자 조직 코드</option>
					</select>
				</dd>
			</dl>
		</div>



	</div></div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

