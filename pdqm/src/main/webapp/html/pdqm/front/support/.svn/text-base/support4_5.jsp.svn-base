<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : support4.jsp
  * @Description : 지원창구 > 품질수준 자가진단 안내
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
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript">
	<!--
jQuery(function($){
	var tab_list = $('div.tab.list');
	var tab_list_i = tab_list.find('>ul>li');
	tab_list.removeClass('jx');
	tab_list_i.find('>dl').hide();
	tab_list.find('>ul>li:first-child').find('>dl').show();
	tab_list.css('height', tab_list.find('>ul>li:first-child>dl').height()+40);

	tab_list_i.find('>div').hide();
	tab_list.find('>ul>li:first-child').find('>div').show();
	tab_list.find('>ul>li:first-child').find('>div').css('top',tab_list.find('>ul>li:first-child>dl').height()+40);
	tab_list.find('>ul>li:first-child').addClass('on');

	tab_list_i.find('>a[href=#header]').click(listTabMenuToggle).focus(listTabMenuToggle);
	function listTabMenuToggle(event){ //탭 클릭시 진입
		var t = $(this);

		tab_list_i.find('>dl').hide();
		t.next('dl').show();

		tab_list_i.removeClass('on');
		t.parent('li').addClass('on');
		tab_list.css('height', t.next('dl').height()+40);

		tab_list_i.find('>div').hide();
		tab_list.find('>ul>li.on').find('>div').show();
		tab_list.find('>ul>li.on').find('>div').css('top',t.next('dl').height()+40);
		return false;
	}

	tab_list_i.find('>div.btnPos').find('>a.next').click(listTabMenuToggle2).focus(listTabMenuToggle2);
	function listTabMenuToggle2(event){ //다음버튼 클릭시 진입
		var u = $(this);
		var v = u.parent();
		var v2 = v.parent();
		var w = v2.next();

		tab_list_i.find('>dl').hide();
		w.find('dl').show();

		tab_list_i.removeClass('on');
		v2.next().addClass('on');
		tab_list.css('height', w.find('dl').height()+40);

		tab_list_i.find('>div').hide();
		w.find('div').show();
		w.find('div').css('top',w.find('dl').height()+40);

		return false;
	}
});
	//-->
	</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>
<%@ include file="/html/pdqm/include/lnb3.jsp" %>

<!-- contents영역시작 -->

<div class="bg_sup">
	<div class="title">
		<div class="location">Home > 지원창구 > 품질수준 자가진단 > <em>지표별 자가진단</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup4_5.gif'/>" alt="지표별 자가진단" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup4_desc.png'/>" class="png24" alt="공공정보 품질수준을 자가진단하여 품질개선 향상에 도움을 줄 수 있는 창구입니다. 질문은 대략 30여개로 구성되어 있으며, 소요시간은 약 20분정도 소요됩니다. 기관 및 협의회의 많은 참여 바랍니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup4_5.gif'/>" alt="품질지표 자가진단" /></h4>
		<div class="tab list jx">
			<ul>
				<li><a href="#header"><span>값(3)</span></a>
					<dl>
						<dt>[값] (진단대상 설명)데이터 구조란...</dt>
						<dd>
							<ol class="qType1">
								<li><strong>1. 논리/물리 데이터 모델을 기준으로 데이터베이스 테이블을 관리하고 있다.</strong>
									<ul>
										<li class="first"><input type="radio" id="q1_a1" name="q1" /> <label for="q1_a1">예</label></li>
										<li><input type="radio" id="q1_a2" name="q1" /> <label for="q1_a2">아니오</label></li>
									</ul>
								</li>
								<li><strong>2. 논리 데이터 모델의 엔터티와 물리 데이터 모델의 테이블에는 데이터는 유일하게 구별할 수 있도록 식별자와 Primary Key(PK)가 정의되어 있다.</strong>
									<ul>
										<li><input type="radio" id="q2_a1" name="q2" /> <label for="q2_a1">식별자가 모두 정의되어 있음 (로그성 제외)</label></li>
										<li><input type="radio" id="q2_a2" name="q2" /> <label for="q2_a2">특정 엔터티 및 테이블에 대해서만 식별자가 정의되어 있음</label></li>
										<li><input type="radio" id="q2_a3" name="q2" /> <label for="q2_a3">식별자 정의가 거의 없음</label></li>
									</ul>
								</li>
								<li><strong>3. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="q3_a1" name="q3" /> <label for="q3_a1">예</label></li>
										<li><input type="radio" id="q3_a2" name="q3" /> <label for="q3_a2">아니오</label></li>
									</ul>
								</li>
							</ol>
						</dd>
					</dl>
					<div class="btnPos">
						<a href="#wrapper" class="next"><img src="<c:url value='/images/pdqm/common/btn/btn_next2.gif'/>" alt="다음" /></a>
					</div>
				</li>
				<li><a href="#header"><span>구조(10)</span></a>
					<dl>
						<dt>[구조] (진단대상 설명)데이터 구조란...</dt>
						<dd>
							<ol class="qType1">
								<li><strong>4. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="q4_a1" name="q4" /> <label for="q4_a1">예</label></li>
										<li><input type="radio" id="q4_a2" name="q4" /> <label for="q4_a2">아니오</label></li>
									</ul>
								</li>
								<li><strong>5. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="q5_a1" name="q5" /> <label for="q5_a1">예</label></li>
										<li><input type="radio" id="q5_a2" name="q5" /> <label for="q5_a2">아니오</label></li>
									</ul>
								</li>
							</ol>
						</dd>
					</dl>
					<div class="btnPos">
						<a href="#wrapper" class="next"><img src="<c:url value='/images/pdqm/common/btn/btn_next2.gif'/>" alt="다음" /></a>
					</div>
				</li>
				<li><a href="#header"><span>표준(10)</span></a>
					<dl>
						<dt>[표준] (진단대상 설명)데이터 구조란...</dt>
						<dd>
							<ol class="qType1">
								<li><strong>6. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="q6_a1" name="q6" /> <label for="q6_a1">예</label></li>
										<li><input type="radio" id="q6_a2" name="q6" /> <label for="q6_a2">아니오</label></li>
									</ul>
								</li>
								<li><strong>7. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="q7_a1" name="q7" /> <label for="q7_a1">예</label></li>
										<li><input type="radio" id="q7_a2" name="q7" /> <label for="q7_a2">아니오</label></li>
									</ul>
								</li>
								<li><strong>8. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="q8_a1" name="q8" /> <label for="q8_a1">예</label></li>
										<li><input type="radio" id="q8_a2" name="q8" /> <label for="q8_a2">아니오</label></li>
									</ul>
								</li>
							</ol>
						</dd>
					</dl>
					<div class="btnPos">
						<a href="#wrapper" class="next"><img src="<c:url value='/images/pdqm/common/btn/btn_next2.gif'/>" alt="다음" /></a>
					</div>
				</li>
			</ul>
		</div>
	</div>

</div>

<!--// contents영역끝 -->
		</div>
	</div>
	<div><img src="<c:url value='/images/pdqm/common/bg_conWrapB.png'/>" class="png24" alt="" /></div>
<%@ include file="/html/pdqm/include/footer.jsp" %>

