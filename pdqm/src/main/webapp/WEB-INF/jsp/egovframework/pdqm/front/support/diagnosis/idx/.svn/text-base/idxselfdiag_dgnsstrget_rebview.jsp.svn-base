<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="org.springframework.ui.ModelMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 </title>

<script language="javascript" src="<c:url value='/RexServer30/rexscript/rexpert.js'/>"></script>
<script language="javascript" src="<c:url value='/RexServer30/rexscript/rexpert_properties.js'/>"></script>


<script type="text/javaScript" language="javascript" defer="defer">
function fnOpen()
{
	// 필수 - 레포트 생성 객체
	var oReport = GetfnParamSet();
	// 여러 iframe에 레포트를 보여주기 위해 레포트객체id 명시할 수 있음.
	//var oReport = GetfnParamSet("0");

	// 필수 - 레포트 파일명
	//oReport.rptname = "<c:url value='/RexServer30/rebfiles/pdqm/front/idxSelfDiagResult' />" ;
	
	oReport.rptname = "<c:url value='/front/idxSelfDiagResult' />" ;
	
	//oReport.rptname = "한글reb파일";
	//oReport.rptname = "http://localhost:8080/RexServer30/test/speed.reb";
	//oReport.rptname = "http://localhost.com:8080/RexServer30/getreport.jsp?filename=한글reb파일";
	//oReport.rptname = "samples/customers";
	//oReport.rptname = "Rexpert2";
	//oReport.rptname = "speedtest";
	
	// 옵션 - 데이터타입(csv - 기본값, xml)
	//oReport.datatype= "xml";

	// 옵션 - 데이터베이스 연결 정보 (서버로 통해 데이터를 가져올 때)
	//oReport.connectname= "oracle1";
	//oReport.connectname= "Ora1";
	//oReport.connectname= "Sql2";

	// 옵션 - 레포트 파라메터
	//oReport.param("param1").value = "param1";
	//oReport.param("한 글 123 abc").value = "paramvalue2";
	//oReport.param("custid").value = "B";
	//oReport.param("custid").isnull = "1";
	//oReport.param("ename").value = "A";
	//oReport.param("ename").isnull = "1";
	//oReport.param("test").value = "가나다abc";

	// 옵션 - title
	//oReport.title = "리포트";

	//-------------------------------------
	// 1. xml file을 통해 데이터를 가져오는 방법
	//-------------------------------------

	oReport.type = "file";
	oReport.datatype = "xml";
	//oReport.xpath = "gubun/rpt1/rexdataset/rexrow";
	//oReport.path = "http://" + location.host + "/pdqm/RexServer30/rebfiles/samples/oracle_emp.xml";
	//--잘 됨 oReport.path = "http://" + location.host + "/pdqm/RexServer30/rebxmlfiles/pdqm/front/selfDiagResult_116.xml";
	oReport.path = "http://" + location.host + "/pdqm/RexServer30/rebxmlfiles/pdqm/front/<c:out value="${param.reportxmlname}" />.xml";
	
	//oReport.path = "http://" + location.host + "/RexServer30/rebfiles/samples/sqlserver_customers_orders.xml";
	//oReport.path = "http://" + location.host + "/RexServer30/rebfiles/samples/oracle_emp.jsp?datatype=xml";
	//oReport.path = "D:\\rexpert30\\RexServer30\\rebfiles\\samples\\oracle_emp.xml";
	
	//필수 - 레포트 실행
	oReport.iframe(ifrmRexPreview1);
}

// event handler 
function fnReportEvent(oRexCtl, sEvent, oArgs) {
	//alert(sEvent);

	if (sEvent == "init") {
		oRexCtl.SetCSS("appearance.canvas.offsetx=0");
		oRexCtl.SetCSS("appearance.canvas.offsety=0");
		oRexCtl.SetCSS("appearance.pagemargin.visible=0");

		
		oRexCtl.SetCSS("appearance.toolbar.button.open.visible=0");
		oRexCtl.SetCSS("appearance.toolbar.button.export.visible=0");
		oRexCtl.SetCSS("appearance.toolbar.button.refresh.visible=1");
		oRexCtl.SetCSS("appearance.toolbar.button.movefirst.visible=1");
		oRexCtl.SetCSS("appearance.toolbar.button.moveprev.visible=1");
		oRexCtl.SetCSS("appearance.toolbar.button.pagenumber.visible=1");
		oRexCtl.SetCSS("appearance.toolbar.button.pagecount.visible=1");
		oRexCtl.SetCSS("appearance.toolbar.button.movenext.visible=1");
		oRexCtl.SetCSS("appearance.toolbar.button.movelast.visible=1");
		oRexCtl.SetCSS("appearance.toolbar.button.zoom.visible=1");
		oRexCtl.SetCSS("appearance.toolbar.button.exportxls.visible=0");
		oRexCtl.SetCSS("appearance.toolbar.button.exportpdf.visible=0");
		oRexCtl.SetCSS("appearance.toolbar.button.exporthwp.visible=0");
		oRexCtl.SetCSS("appearance.toolbar.button.about.visible=0");
		
		//oRexCtl.SetCSS("appearance.pane.toc.visible=0");

		oRexCtl.UpdateCSS();
	} else if (sEvent == "finishdocument") {
		//alert("ttt");
		//oRexCtl.Zoom("wholepage");
		//oRexCtl.SetCSS("appearance.toolbar.button.exportxls.option.sheetoption=2");
		//oRexCtl.UpdateCSS();
	} else if (sEvent == "finishprint") {
		
	} else if (sEvent == "finishexport") {
		//alert(oArgs.filename);
	} else if (sEvent == "hyperlinkclicked") {
		//alert(oArgs.Path);
	}

	//window.close();
}
</script>


</head>

<body onload="fnOpen();">

<div>
	<iframe name="ifrmRexPreview1" id="ifrmRexPreview1" width="100%" height="880"></iframe>
</div>

</body>