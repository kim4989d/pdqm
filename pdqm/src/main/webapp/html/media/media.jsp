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
 * @Class Name : PdqmApplyDetail.jsp
 * @Description : 사업신청 상세
 * @Modification Information
 * @
 * @  수정일                    수정자                수정내용
 * @ ---------     --------    ---------------------------
 * @ 2011.11.09    김정훈         최초 생성
 *
 *  @author 김정훈
 *  @since 2011.11.09
 *  @version 1.0
 *  @see
 *
 */
%>
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/flowplayer-3.2.6.min.js'/>" ></script>
	<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
	<script type="text/javascript" language="javascript" src="<c:url value='/RexServer30/rexscript/rexpert.js'/>" ></script>
	<script type="text/javascript" language="javascript" src="<c:url value='/RexServer30/rexscript/rexpert_properties.js'/>" ></script>
	<validator:javascript formName="pdqmApply" staticJavascript="false" xhtml="true" cdata="false"/>

</head>
<script type="text/javaScript" language="javascript">

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href =  "<c:url value='/support/apply/selectApplyList.do'/>";
}


function fnSave() {

	fnOpen();
}
function fnOpen() {
	// 필수 - 레포트 생성 객체

	var oReport = GetfnParamSet();
	var form = document.getElementById("form");
	oReport.rptname ="./pdqm/admin/pdqmapply";	// 리포트파일명

	oReport.param("sn").value = form.sn.value;


	oReport.event.init = fnReportEvent;
	//필수 - 레포트 실행
	//oReport.iframe(ifrmRexPreview1);
	oReport.open();

}
function fnReportEvent(oRexCtl, sEvent, oArgs) {
	//alert(sEvent);

	if (sEvent == "init") {
		oRexCtl.SetCSS("appearance.toolbar.button.movecontent.visible=0");

		oRexCtl.SetCSS("appearance.canvas.offsetx=0");
		oRexCtl.SetCSS("appearance.canvas.offsety=0");
		oRexCtl.SetCSS("appearance.pagemargin.visible=0");

		oRexCtl.UpdateCSS();
	} else if (sEvent == "finishdocument") {

	} else if (sEvent == "finishprint") {

	} else if (sEvent == "finishexport") {
		//alert(oArgs.filename);
	} else if (sEvent == "hyperlinkclicked") {
		//alert(oArgs.Path);
	}

	//window.close();
}

	

</script>
<body>


<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<form:form commandName="applyVO" name="form" method="post">
<div id="page">
		
		<h1>Minimal Flowplayer setup</h1>
	
		<p>View commented source code to get familiar with Flowplayer installation.</p>
		
		<!-- this A tag is where your Flowplayer will be placed. it can be anywhere -->
		<a  
			 href="http://localhost:1935/myapp/mp4:Clip_480_5sec_6mbps_h264.mp4/manifest.f4m"
			 style="display:block;width:520px;height:330px"  
			 id="player"> 
		</a> 
	
		<!-- this will install flowplayer inside previous A- tag. -->
		
		
		<script type="text/javascript">
	flowplayer("player", "/js/pdqm/flowplayer-3.2.7.swf",
		{
			clip: {
				url: 'mp4:Clip_480_5sec_6mbps_h264.mp4',
				provider: 'rtmp'
			},
			plugins: {
				rtmp: {
				url: '/js/pdqm/flowplayer.rtmp-3.2.3.swf',
				netConnectionUrl: 'rtmp://localhost/myapp'
				}
			}
		}
	);
</script>
		
		<!-- 
			after this line is purely informational stuff. 
			does not affect on Flowplayer functionality 
		-->

		<p>		
			If you are running these examples <strong>locally</strong> and not on some webserver you must edit your 
			<a href="http://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager04.html">
				Flash security settings</a>. 
		</p>
		
		<p class="less">
			Select "Edit locations" &gt; "Add location" &gt; "Browse for files" and select
			flowplayer-x.x.x.swf you just downloaded.
		</p>
		
		
		<h2>Documentation</h2>
		
		<p>
			<a href="http://flowplayer.org/documentation/installation/index.html">Flowplayer installation</a>
		</p>

		<p>
			<a href="http://flowplayer.org/documentation/configuration/index.html">Flowplayer configuration</a>
		</p>

		<p>
			See this identical page on <a href="http://flowplayer.org/demos/example/index.htm">Flowplayer website</a> 
		</p>
		
	</div>
	
	

</form:form>
</body>
</html>