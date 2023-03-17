<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js" charset="utf-8"></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/jquery.carouFredSel-1.3.3.js'/>" ></script>
<script type="text/javascript">
//<![CDATA[
$(function(){
	$("#myCarousel").carouFredSel({
		autoPlay	: true,
		visibleItems	: 1,
		auto : {
			pauseDuration	: 3000
		},
		next : {
			button	: $('#foo1_next'),
			key		: 'right'
		},
		prev : {
			button	: $('#foo1_prev'),
			key		: 'left'
		}
	});
	// 재생/일시정지
	$(".Stopbtn1").click(function(){
		$("#myCarousel").trigger("pause");
	});
	$(".Playbtn1").click(function(){
		$("#myCarousel").trigger("play");
	});
});
//]]>
</script>
<script type="text/javascript">
	function twitterCallback2(twitters) {
		var statusHTML = [];
		for (var i=0; i<twitters.results.length; i++){
			var username = twitters.results[i].from_user;
			var status = twitters.results[i].text.replace(/((https?|s?ftp|ssh)\:\/\/[^"\s\<\>]*[^.,;'">\:\s\<\>\)\]\!])/g, function(url) {
			return '<a href="'+url+'">'+url+'<\/a>';
			}).replace(/\B@([_a-z0-9]+)/ig, function(reply) {return reply.charAt(0)+'<a href="http://twitter.com/'+reply.substring(1)+'">'+reply.substring(1)+'<\/a>';});
			statusHTML.push('<li><span>'+status+'<\/span> <a class="twt_time" href="http://twitter.com/'+username+'/statuses/'+twitters.results[i].id_str+'" target="_blank" title="새창으로 열림">'+relative_time(twitters.results[i].created_at)+'<\/a> <span class="twt_slash">/<\/span> <a class="twt_reply" href="http://twitter.com/?status=@'+username+'%20&in_reply_to_status_id='+twitters.results[i].id_str+'&in_reply_to='+username+'" target="_blank" title="새창으로 열림">reply<\/a><\/li>');
			}
			document.getElementById('twitter_update_list').innerHTML = statusHTML.join('');
			}

		function relative_time(time_value) {
			var parsed_date = Date.parse(time_value);
			var relative_to = (arguments.length > 1) ? arguments[1] : new Date();
			var delta = parseInt((relative_to.getTime() - parsed_date) / 1000);
			// delta = delta + (relative_to.getTimezoneOffset() * 60);
			if (delta < 60) {return 'less than a minute ago';
			} else if(delta < 120) {return 'about a minute ago';
			} else if(delta < (60*60)) {return (parseInt(delta / 60)).toString() + ' minutes ago';
			} else if(delta < (120*60)) {return 'about an hour ago';
			} else if(delta < (24*60*60)) {return 'about ' + (parseInt(delta / 3600)).toString() + ' hours ago';
			} else if(delta < (48*60*60)) {return '1 day ago';
			} else {return (parseInt(delta / 86400)).toString() + ' days ago';}}

	<c:if test="${!empty message}">	alert("${message}"); </c:if>
</script>
</head>

<body>
<%@ include file="/html/pdqm/include/gnb.jsp" %>

	<div id="indexArea">
		<div class="conBox">
			<div class="visual"><img src="<c:url value='/images/pdqm/common/main/img_visual.gif'/>" alt="공공정보 품질관리 개선" /></div>
			<!-- 지식서비스 바로가기 -->
			<div class="service">
				<h2><img src="<c:url value='/images/pdqm/common/main/h2_service.gif'/>" alt="지식서비스 바로가기" /></h2>
				<ul>
				<c:forEach var="knowledge" items="${knowledgeList}" varStatus="status">
					<li><a href="<c:out value="${knowledge.linkUrl}"/>">
						<img src='<c:url value='/cmm/fms/getImage.do'/>?atchFileId=<c:out value="${knowledge.bannerImageFile}"/>&amp;fileSn=0' alt="<c:out value="${knowledge.bannerDc}"/>" /></a>
					</li>
				</c:forEach>
				</ul>
			</div>
			<!--// 지식서비스바로가기 -->

			<!-- 팝업존 -->
			<div class="popzone">
				<h2><img src="<c:url value='/images/pdqm/common/main/h2_popupzone.gif'/>" alt="popup zone" /></h2>
				<div class="rolling">
					<span id="foo1_next" class="Lbtn1"><a href="#" title="이전으로"><img src="<c:url value='/images/pdqm/common/main/top_view_left.gif'/>" alt="이전"/></a></span>
					<span id="foo1_prev" class="Rbtn1"><a href="#" title="다음으로"><img src="<c:url value='/images/pdqm/common/main/top_view_right.gif'/>" alt="다음"/></a></span>
					<span class="Playbtn1"><a href="#" title="재생하기"><img src="<c:url value='/images/pdqm/common/main/btn_play.gif'/>" alt="재생"/></a></span>
					<span class="Stopbtn1"><a href="#" title="잠시멈춤"><img src="<c:url value='/images/pdqm/common/main/btn_pauseon.gif'/>" alt="잠시멈춤"/></a></span>
					<ul id="myCarousel" class="uxRoll">
						<c:forEach var="popupList" items="${popupList}" varStatus="status">
						<li>
							<a href="<c:out value='${popupList.linkUrl}'/>"><%-- <img src="<c:url value='/images/pdqm/common/main/img_popup1.gif'/>" alt="Event 품질관리 지원센터 오픈 자세히보기" /> --%>
							<img src='<c:url value='/cmm/fms/getImage.do'/>?atchFileId=<c:out value="${popupList.bannerImageFile}"/>&amp;fileSn=0' alt="<c:out value="${popupList.bannerDc}"/>" /></a>
						</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!--// 팝업존 -->

			<!-- 공지사항/보도자료 -->
			<div class="tabArea" id="tabmenu">
				<dl>
					<dt><a href="#tabmenu1" onclick="maintab('tabmenu',1);return false;"><img src="<c:url value='/images/pdqm/common/main/h2_tab1.gif'/>" alt="공지사항" /></a></dt>
					<dd class="list" id="tabmenu1">
						<ul>
						<c:import url="/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000121&act=summary" charEncoding="utf-8">
					    </c:import>

						<!--
							<c:forEach var="noticeList" items="${noticeList}" varStatus="status">
								<c:if test="${status.count == 1}">
									<c:if test="${noticeList.newFlag == 1}">
									<li class="first new"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000121"><c:out value="${noticeList.nttSj}"/></a><span><c:out value="${noticeList.frstRegistPnttm}"/></span></li>
									</c:if>
									<c:if test="${noticeList.newFlag != 1}">
									<li class="first"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000121"><c:out value="${noticeList.nttSj}"/></a><span><c:out value="${noticeList.frstRegistPnttm}"/></span></li>
									</c:if>
								</c:if>
								<c:if test="${status.count != 1}">
									<c:if test="${noticeList.newFlag == 1}">
									<li class="new"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000121"><c:out value="${noticeList.nttSj}"/></a><span><c:out value="${noticeList.frstRegistPnttm}"/></span></li>
									</c:if>
									<c:if test="${noticeList.newFlag != 1}">
									<li><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000121"><c:out value="${noticeList.nttSj}"/></a><span><c:out value="${noticeList.frstRegistPnttm}"/></span></li>
									</c:if>
								</c:if>
							</c:forEach> -->
						</ul>
						<a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000121" class="more"><img src="<c:url value='/images/pdqm/common/main/btn_more.gif'/>" alt="공지사항 더보기" /></a>
					</dd>
				</dl>
				<dl>
					<dt><a href="#tabmenu2" onclick="maintab('tabmenu',2);return false;"><img src="<c:url value='/images/pdqm/common/main/h2_tab2.gif'/>" alt="보도자료" /></a></dt>
					<dd class="list" id="tabmenu2">
						<ul>
							<c:forEach var="reportList" items="${reportList}" varStatus="status">
								<c:if test="${status.count == 1}">
									<c:if test="${reportList.newFlag == 1}">
									<li class="first new"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000191"><c:out value="${reportList.nttSj}"/></a><span><c:out value="${reportList.frstRegistPnttm}"/></span></li>
									</c:if>
									<c:if test="${reportList.newFlag != 1}">
									<li class="first"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000191"><c:out value="${reportList.nttSj}"/></a><span><c:out value="${reportList.frstRegistPnttm}"/></span></li>
									</c:if>
								</c:if>
								<c:if test="${status.count != 1}">
									<c:if test="${reportList.newFlag == 1}">
									<li class="new"><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000191"><c:out value="${reportList.nttSj}"/></a><span><c:out value="${reportList.frstRegistPnttm}"/></span></li>
									</c:if>
									<c:if test="${reportList.newFlag != 1}">
									<li><a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000191"><c:out value="${reportList.nttSj}"/></a><span><c:out value="${reportList.frstRegistPnttm}"/></span></li>
									</c:if>
								</c:if>
							</c:forEach>
						<!--
							<li class="first new"><a href="#">2010년 품질진단 개선사업 신청안내afdadfadfadfd</a><span>2011-11-01</span></li>
							<li class="new"><a href="#">공공기관 제1차 품질관리교육 동영상</a><span>2011-11-01</span></li>
							<li><a href="#">품질관리지식서비스 이용안내</a><span>2011-11-01</span></li>
							<li><a href="#">데이터 품질관리 지원센터 지식포털</a><span>2011-11-01</span></li>
							 -->
						</ul>
						<a href="${pageContext.request.contextPath}/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000191" class="more"><img src="<c:url value='/images/pdqm/common/main/btn_more.gif'/>" alt="보도자료 더보기" /></a>
					</dd>
				</dl>
			</div>
			<script type="text/javascript">maintab('tabmenu',1);</script>
			<!--// 공지사항/보도자료 -->

			<!-- QR코드 -->
			<div class="qrcode">
				<h2><img src="<c:url value='/images/pdqm/common/main/h2_qrcode.gif'/>" alt="QR코드" /></h2>
				<p><img src="<c:url value='/images/pdqm/common/main/img_qrcode.gif'/>" alt="QR코드 이미지" /></p>
			</div>
			<!--// QR코드 -->
		</div>

		<div class="rBox">
			<!-- 전문가칼럼 -->
			<div class="specialBox">
				<img src="<c:url value='/images/pdqm/common/main/specialList_box.gif'/>" alt="품질관리상담전문가- 전문가에게 물어보세요" />
			</div>
			<!-- 트위터 -->
			<!-- 위젯 없이 텍스트만 출력 psh
			<div id="twitter_update_list">
			</div>
			<script type="text/javascript" src="http://twitter.com/javascripts/blogger.js">
			</script>
			<script type="text/javascript" src="http://twitter.com/statuses/user_timeline/mutgima.json?callback=twitterCallback2&count=3">
			</script>
			 -->
			<script type="text/javascript" src="http://widgets.twimg.com/j/2/widget.js"></script>
			<script type="text/javascript">
			new TWTR.Widget({
			  version: 2,
			  type: 'profile',
			  rpp: 3,
			  interval: 30000,
			  width: 200,
			  height: 175,
			  theme: {
			    shell: {
			      background: '#808fd6',
			      color: '#ffffff'
			    },
			    tweets: {
			      background: '#f5f5f5',
			      color: '#575757',
			      links: '#076eeb'
			    }
			  },
			  features: {
			    scrollbar: true,
			    loop: false,
			    live: false,
			    behavior: 'all'
			  }
			}).render().setUser('pdqmkr').start();
			</script>

			<!--// 트위터 -->
			<ul class="banner">
				<li><a href="http://www.facebook.com/pdqmkr" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/main/banner_right1.gif'/>" alt="공공정보 품질관리지원센터 페이스북으로 참여하기" /></a></li>
				<!-- <li><a href="http://www.ndbf.kr" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/main/banner_right2.gif'/>" alt="NDBF 국가DB포럼" /></a></li>
				<li><a href="http://www.pisc.or.kr" target="_blank" title="새창으로 열림"><img src="<c:url value='/images/pdqm/common/main/banner_right3.gif'/>" alt="공공정보 활용 지원센터" /></a></li> -->
			</ul>
		</div>
	</div>

	<ul class="bannerBox">
		<li><a href="http://www.mopas.go.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_1.gif'/>" alt="행정안전부" /></a></li>
		<li><a href="http://www.nia.or.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_2.gif'/>" alt="한국정보화진흥원" /></a></li>
		<li><a href="http://www.data.go.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_3.gif'/>" alt="공유자원포탈" /></a></li>
		<li><a href="https://www.knowledge.go.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_4.gif'/>" alt="국가지식포털" /></a></li>
		<li><a href="http://www.ndbf.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_5.gif'/>" alt="국가DB포럼" /></a></li>
		<li><a href="https://www.pisc.or.kr/" target="_blank" title="새창"><img src="<c:url value='/images/pdqm/common/main/banner_6.gif'/>" alt="공공정보 활용 지원센터" /></a></li>
	</ul>
<%@ include file="/html/pdqm/include/footer.jsp" %>
