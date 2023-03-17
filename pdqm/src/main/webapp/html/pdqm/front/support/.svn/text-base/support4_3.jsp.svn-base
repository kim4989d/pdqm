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
	// List Tab Navigation
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
	function listTabMenuToggle(event){
		var t = $(this);
		//alert(t);
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
	tab_list_i.find('>a[href=#header]').click(listTabMenuToggle).focus(listTabMenuToggle);
	tab_list_i.find('>div.btnPos').find('>a.next').click(listTabMenuToggle2).focus(listTabMenuToggle2);
	function listTabMenuToggle2(event){
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
		<div class="location">Home > 지원창구 > 품질수준 자가진단 > <em>관리수준 자가진단</em></div>
		<h3><img src="<c:url value='/images/pdqm/front/support/h3_sup4_3.gif'/>" alt="관리수준 자가진단" /></h3>
		<p class="h3_desc"><img src="<c:url value='/images/pdqm/front/support/h3_sup4_desc.png'/>" class="png24" alt="공공정보 품질수준을 자가진단하여 품질개선 향상에 도움을 줄 수 있는 창구입니다. 질문은 대략 30여개로 구성되어 있으며, 소요시간은 약 20분정도 소요됩니다. 기관 및 협의회의 많은 참여 바랍니다." /></p>
	</div>

	<div id="conBox">
		<h4 class="first"><img src="<c:url value='/images/pdqm/front/support/h4_sup4_1.gif'/>" alt="품질관리수준 자가진단" /></h4>

		<div class="tab list jx">
			<ul class="mt_5">
				<li>
					<a href="#header"><span>값(10)</span></a>
					<dl>
						<dt>[구조] (진단대상 설명)데이터 구조란...</dt>
						<dd>
							<ol class="qType1">
								<li><strong>1. 논리/물리 데이터 모델을 기준으로 데이터베이스 테이블을 관리하고 있다.</strong>
									<ul>
										<li><input type="radio" id="a1_1" /> <label for="a1_1">예</label></li>
										<li><input type="radio" id="a1_2" /> <label for="a1_2">아니오</label></li>
									</ul>
								</li>
								<li><strong>2. 논리 데이터 모델의 엔터티와 물리 데이터 모델의 테이블에는 데이터는 유일하게 구별할 수 있도록 식별자와 Primary Key(PK)가 정의되어 있다.</strong>
									<ul>
										<li><input type="radio" id="a2_1" /> <label for="a2_1">식별자가 모두 정의되어 있음 (로그성 제외)</label></li>
										<li><input type="radio" id="a2_2" /> <label for="a2_2">특정 엔터티 및 테이블에 대해서만 식별자가 정의되어 있음</label></li>
										<li><input type="radio" id="a2_3" /> <label for="a2_3">식별자 정의가 거의 없음</label></li>
									</ul>
								</li>
								<li><strong>3. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="a3_1" /> <label for="a3_1">예</label></li>
										<li><input type="radio" id="a3_2" /> <label for="a3_2">아니오</label></li>
									</ul>
								</li>
							</ol>
						</dd>
					</dl>
					<div class="btnPos">
						<a href="#wrapper" class="next"><img src="<c:url value='/images/pdqm/common/btn/btn_next2.gif'/>" alt="다음" /></a>
					</div>
				</li>
				<li>
					<a href="#header"><span>구조(10)</span></a>
					<dl>
						<dt>[구조] (진단대상 설명)데이터 구조란...</dt>
						<dd>
							<ol class="qType1">
								<li><strong>4. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="a4_1" /> <label for="a4_1">예</label></li>
										<li><input type="radio" id="a4_2" /> <label for="a4_2">아니오</label></li>
									</ul>
								</li>
								<li><strong>5. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="a5_1" /> <label for="a5_1">예</label></li>
										<li><input type="radio" id="a5_2" /> <label for="a5_2">아니오</label></li>
									</ul>
								</li>
								<li><strong>6. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="a6_1" /> <label for="a6_1">예</label></li>
										<li><input type="radio" id="a6_2" /> <label for="a6_2">아니오</label></li>
									</ul>
								</li>
							</ol>
						</dd>
					</dl>
					<div class="btnPos">
						<a href="#wrapper" class="next"><img src="<c:url value='/images/pdqm/common/btn/btn_next2.gif'/>" alt="다음" /></a>
					</div>
				</li>
				<li>
					<a href="#header"><span>표준(10)</span></a>
					<dl>
						<dt>[구조] (진단대상 설명)데이터 구조란...</dt>
						<dd>
							<ol class="qType1">
								<li><strong>7. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="a7_1" /> <label for="a7_1">예</label></li>
										<li><input type="radio" id="a7_2" /> <label for="a7_2">아니오</label></li>
									</ul>
								</li>
								<li><strong>8. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="a8_1" /> <label for="a8_1">예</label></li>
										<li><input type="radio" id="a8_2" /> <label for="a8_2">아니오</label></li>
									</ul>
								</li>
								<li><strong>9. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="a9_1" /> <label for="a9_1">예</label></li>
										<li><input type="radio" id="a9_2" /> <label for="a9_2">아니오</label></li>
									</ul>
								</li>
								<li><strong>10. 질문이 들어가는 자리입니까?</strong>
									<ul>
										<li><input type="radio" id="a10_1" /> <label for="a10_1">예</label></li>
										<li><input type="radio" id="a10_2" /> <label for="a10_2">아니오</label></li>
									</ul>
								</li>
							</ol>
						</dd>
					</dl>
					<div class="btnPos">
						<a href="#wrapper" class="next"><img src="<c:url value='/images/pdqm/common/btn/btn_next2.gif'/>" alt="다음" /></a>
						<a href="##"><img src="<c:url value='/images/pdqm/common/btn/btn_sup_end.gif'/>" alt="완료" /></a>
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

