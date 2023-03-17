<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : p40.jsp
  * @Description :  지표별 자가진단 문항 관리
  *
  */
%>
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
	tab_list_i.find('>a[href=#]').click(listTabMenuToggle).focus(listTabMenuToggle);
	tab_list_i.find('>div.btnPos').click(listTabMenuToggle2).focus(listTabMenuToggle2);
	function listTabMenuToggle2(event){
		var u = $(this);
		var v = u.parent();
		var w = v.next();

		tab_list_i.find('>dl').hide();
		w.find('dl').show();

		tab_list_i.removeClass('on');
		v.next().addClass('on');
		tab_list.css('height', w.find('dl').height()+40);

		tab_list_i.find('>div').hide();
		w.find('div').show();
		w.find('div').css('top',w.find('dl').height()+40);
		return false;
	}

	$("input.close").click(function(){
		var tmp = $(this).parent(); //span
		var tmp2 = tmp.parent();	//dt
		var tmp3 = tmp2.next();		//dd
		var tmp4 = tmp3.find('ol');

		var tmp5 = tmp2.parent();	//dl
		var tmp6 = tmp5.next();		//div

		//alert(tmp4.css('display'));

		if (tmp4.css('display') != 'none')
		{
			tmp4.hide();
			tab_list.css('height', tmp5.height()+40);
			tmp6.css('top',tmp5.height()+40);
			return false;
		}else{
			tmp4.show();
			tab_list.css('height', tmp5.height()+40);
			tmp6.css('top',tmp5.height()+40);
			return false;
		}
		return false;
	});
});

	//-->
	</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">Home > 품질수준 자가진단관리 > 지표별 자가진단 문항 관리</div>
		<h2>지표별 자가진단 문항 관리</h2>
	</div>

	<div class="tab list jx">
		<ul>
			<li>
				<a href="##"><span>준비(10)</span></a>
				<dl>
					<dt>논리모델(2)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<input type="image" class="close" src="/pdqm/images/pdqm/admin/faq_selected.gif" alt="항목닫기" />
						</span>
					</dt>
					<dd>
						<ol class="qType1">
							<li><a href="##">7. 논리/물리 데이터 모델을 기준으로 데이터베이스 테이블을 관리하고 있다.</a>
								<ul>
									<li><input type="radio" id="a7_1" /> <label for="a7_1">예</label></li>
									<li><input type="radio" id="a7_2" /> <label for="a7_2">아니오</label></li>
								</ul>
							</li>
							<li><a href="##">8. 논리 데이터 모델의 엔터티와 물리 데이터 모델의 테이블에는 데이터는 유일하게 구별할 수 있도록 식별자와 Primary Key(PK)가 정의되어 있다.</a>
								<ul>
									<li><input type="radio" id="a8_1" /> <label for="a8_1">식별자가 모두 정의되어 있음 (로그성 제외)</label></li>
									<li><input type="radio" id="a8_2" /> <label for="a8_2">특정 엔터티 및 테이블에 대해서만 식별자가 정의되어 있음</label></li>
									<li><input type="radio" id="a8_3" /> <label for="a8_3">식별자 정의가 거의 없음</label></li>
								</ul>
							</li>
						</ol>
					</dd>
				</dl>
				<!-- btn -->
				<div class="btnPos">
					<span class="button"><input type="button" value="목록" /></span>
					<span class="button"><input type="button" value="다음" /></span>
				</div>
			</li>
			<li>
				<a href="##"><span>완전성(10)</span></a>
				<dl>
					<dt>식별자(3)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<input type="image" class="close" src="/pdqm/images/pdqm/admin/faq_selected.gif" alt="항목닫기" />
						</span>
					</dt>
					<dd>
						<ol class="qType1">
							<li><a href="##">9. 질문이 들어가는 자리입니까?</a>
								<ul>
									<li><input type="radio" id="a9_1" /> <label for="a9_1">예</label></li>
									<li><input type="radio" id="a9_2" /> <label for="a9_2">아니오</label></li>
								</ul>
							</li>
							<li><a href="##">10. 질문이 들어가는 자리입니까?</a>
								<ul>
									<li><input type="radio" id="a10_1" /> <label for="a10_1">예</label></li>
									<li><input type="radio" id="a10_2" /> <label for="a10_2">아니오</label></li>
								</ul>
							</li>
						</ol>
					</dd>
				</dl>
				<!-- btn -->
				<div class="btnPos">
					<span class="button"><input type="button" value="목록" /></span>
					<span class="button"><input type="button" value="다음" /></span>
				</div>
			</li>
			<li>
				<a href="##"><span>일관성(10)</span></a>
				<dl>
					<dt>물리구조(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<input type="image" class="close" src="/pdqm/images/pdqm/admin/faq_selected.gif" alt="항목닫기" />
						</span>
					</dt>
					<dd>
						<ol class="qType1">
							<li><a href="##">11. 질문이 들어가는 자리입니까?</a>
								<ul>
									<li><input type="radio" id="a11_1" /> <label for="a11_1">예</label></li>
									<li><input type="radio" id="a11_2" /> <label for="a11_2">아니오</label></li>
								</ul>
							</li>
							<li><a href="##">12. 질문이 들어가는 자리입니까?</a>
								<ul>
									<li><input type="radio" id="a12_1" /> <label for="a12_1">예</label></li>
									<li><input type="radio" id="a12_2" /> <label for="a12_2">아니오</label></li>
								</ul>
							</li>
						</ol>
					</dd>
				</dl>
				<!-- btn -->
				<div class="btnPos">
					<span class="button"><input type="button" value="목록" /></span>
					<span class="button"><input type="button" value="다음" /></span>
				</div>
			</li>
			<li>
				<a href="##"><span>정확성(2)</span></a>
				<dl>
					<dt>속성의미(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<input type="image" class="close" src="/pdqm/images/pdqm/admin/faq_selected.gif" alt="항목닫기" />
						</span>
					</dt>
					<dd>
						<ol class="qType1">
							<li><a href="##">13. 질문이 들어가는 자리입니까?</a>
								<ul>
									<li><input type="radio" id="a13_1" /> <label for="a13_1">예</label></li>
									<li><input type="radio" id="a13_2" /> <label for="a13_2">아니오</label></li>
								</ul>
							</li>
							<li><a href="##">14. 질문이 들어가는 자리입니까?</a>
								<ul>
									<li><input type="radio" id="a14_1" /> <label for="a14_1">예</label></li>
									<li><input type="radio" id="a14_2" /> <label for="a14_2">아니오</label></li>
								</ul>
							</li>
						</ol>
					</dd>
				</dl>
				<!-- btn -->
				<div class="btnPos">
					<span class="button"><input type="button" value="목록" /></span>
					<span class="button"><input type="button" value="다음" /></span>
				</div>
			</li>
			<li>
				<a href="##"><span>유효성(0)</span></a>
				<dl>
					<dt>저장내용(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<input type="image" class="close" src="/pdqm/images/pdqm/admin/faq_selected.gif" alt="항목닫기" />
						</span>
					</dt>
					<dd>등록된 문항이 없습니다.</dd>
				</dl>
				<!-- btn -->
				<div class="btnPos">
					<span class="button"><input type="button" value="목록" /></span>
					<span class="button"><input type="button" value="다음" /></span>
				</div>
			</li>
			<li>
				<a href="##"><span>보안성(0)</span></a>
				<dl>
					<dt>저장내용(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<input type="image" class="close" src="/pdqm/images/pdqm/admin/faq_selected.gif" alt="항목닫기" />
						</span>
					</dt>
					<dd>등록된 문항이 없습니다.</dd>
				</dl>
				<!-- btn -->
				<div class="btnPos">
					<span class="button"><input type="button" value="목록" /></span>
					<span class="button"><input type="button" value="다음" /></span>
				</div>
			</li>
			<li>
				<a href="##"><span>적시성(0)</span></a>
				<dl>
					<dt>저장내용(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<input type="image" class="close" src="/pdqm/images/pdqm/admin/faq_selected.gif" alt="항목닫기" />
						</span>
					</dt>
					<dd>등록된 문항이 없습니다.</dd>
				</dl>
				<!-- btn -->
				<div class="btnPos">
					<span class="button"><input type="button" value="목록" /></span>
					<span class="button"><input type="button" value="다음" /></span>
				</div>
			</li>
			<li>
				<a href="##"><span>유용성(0)</span></a>
				<dl>
					<dt>저장내용(0)
						<span class="q_btn">
							<em class="button small"><input type="button" value="문항등록" /></em>
							<input type="image" class="close" src="/pdqm/images/pdqm/admin/faq_selected.gif" alt="항목닫기" />
						</span>
					</dt>
					<dd>등록된 문항이 없습니다.</dd>
				</dl>
				<!-- btn -->
				<div class="btnPos">
					<span class="button"><input type="button" value="목록" /></span>
					<span class="button"><input type="button" value="저장" /></span>
				</div>
			</li>
		</ul>
	</div>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
