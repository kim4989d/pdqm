<%@ page language="java" contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>rexpreview</title>
<script type="text/javascript" src="./rexscript/rexpert.js"></script>
<script type="text/javascript" src="./rexscript/rexpert_properties.js"></script>
<script type="text/javascript">

var goAgent = new rex_Agent();
var goOOF = null;
	
function OnLoad()
{
	id = "<%=request.getParameter("id")%>";

	var oOOF;

	if ( opener != undefined )	{
		oOOF = opener.rex_goParamSet[id];
	} else if(parent.rex_goParamSet[id] != undefined)	{
		oOOF = parent.rex_goParamSet[id];
	} else if(window.dialogArguments != undefined) {
		oOOF = window.dialogArguments.rex_goParamSet[id];
	}

	if (oOOF == null) return;

	goOOF = oOOF;

	if (oOOF.opentype == "export") {
		/*
		frmExportService.action = rex_gsRptExportURL;
		frmExportService.oof.value = oOOF.toString();
		frmExportService.filename.value = oOOF.exportservice.filename;
		frmExportService.filetype.value = oOOF.exportservice.filetype;	
		frmExportService.submit();
		*/

		ExportServer();
	} else {
		if (goAgent.isWin || goAgent.isIE) {
			var printoption = oOOF.printoption;
			var exportoption = oOOF.exportoption;
			var toolbarbuttonoption = oOOF.toolbarbuttonoption;

			if(printoption != null) {
				rex_fnPrintSetting(RexCtl,printoption);
			} 

			if(exportoption != null) {
				rex_fnExportVisible(RexCtl, exportoption);
			}

			if(toolbarbuttonoption != null) {
				rex_fnToolBarButtonEnableTrue(RexCtl,toolbarbuttonoption);
			}

			fnOpen(oOOF);
		} else {
			// Mac, Linux, Others
			frmExportService.action = rex_gsRptExportServiceURL;
			frmExportService.oof.value = oOOF.toString();
			frmExportService.filename.value = oOOF.exportservice.filename;
			frmExportService.filetype.value = oOOF.exportservice.filetype;	
			frmExportService.submit();
		}
	} //end if
}

function fnOpen(oOOF)
{
	try {
		//RexCtl.SetCSS("appearance.canvas.backcolor=rgb(255,255,0)");
		//RexCtl.SetCSS("appearance.control.backcolor=rgb(255,0,0)");
		RexCtl.SetCSS("appearance.canvas.offsetx=0");
		RexCtl.SetCSS("appearance.canvas.offsety=0");
		RexCtl.SetCSS("appearance.pagemargin.visible=0");
		RexCtl.SetCSS("accessibility.enable=0");
		RexCtl.UpdateCSS();
	} catch(ex) {}

	try {
		var sVer = RexCtl.GetVersion();

		//RexCtl.SetCSS("accessibility.enable=0"); 
		//RexCtl.UpdateCSS();

	} catch(ex) {
		//alert(ex.message);
		// activex not install !!
		return;
	}

	if (goOOF.event.init != undefined) {
		goOOF.event.init(RexCtl, "init", null);
	}

	if (oOOF.opentype == "open" || oOOF.opentype == "openmodal") {
		RexCtl.OpenOOF(oOOF.toString());
	} else if (oOOF.opentype == "iframe") {
		RexCtl.OpenOOF(oOOF.toString());
	} else if (oOOF.opentype == "print") {
		RexCtl.OpenOOF(oOOF.toString());
		//RexCtl.Print(false, 1,-1,1,"");
	} else if (oOOF.opentype == "printdirect") {
		RexCtl.OpenOOF(oOOF.toString());
		//RexCtl.PrintDirect("HP LaserJet 3050" , 260, 1, -1, 1, "");
		
	} else if (oOOF.opentype == "save") {
		RexCtl.OpenOOF(oOOF.toString());
		//RexCtl.Export(false, "pdf", "c:\\test.pdf", 1,-1,"");
	}

	//RexCtl.OpenOOF("http://localhost:8080/RexServer/1111.xml");
}

function OnFinishDocument()
{
	try {
		//RexCtl.Zoom("wholepage");
		//RexCtl.Zoom("pagewidth");

		//RexCtl.Zoom("200"); 
		//RexCtl.ZoomIn();
		//RexCtl.ZoomOut();
	} catch(ex) { }

	if (goOOF.event.finishdocument != undefined) {
		goOOF.event.finishdocument(RexCtl, "finishdocument", null);
	}

	if (goOOF.opentype == "save") {
		//RexCtl.Export(goOOF.save.dialog, "pdf", "c:\\test.pdf", 1,-1,"");

		RexCtl.Export(goOOF.save.dialog, goOOF.save.filetype,  goOOF.save.fileName, 
					goOOF.save.startpage, goOOF.save.endpage, goOOF.save.Option);

		if (!goAgent.isIE) {
			window.close();	
		}
	} else if (goOOF.opentype == "print") {
		//RexCtl.Print(true, 1,-1,1,"");
		RexCtl.Print(goOOF.print.dialog, goOOF.print.startpage, goOOF.print.endpage, 
					goOOF.print.copycount, goOOF.print.Option);

		if (!goAgent.isIE) {
			window.close();	
		}
	} else if (goOOF.opentype == "printdirect") {
		//RexCtl.PrintDirect("HP LaserJet 3050" , 260, 1, -1, 1, "");
		RexCtl.PrintDirect(goOOF.print.printname, goOOF.print.trayid, goOOF.print.startpage, goOOF.print.endpage, 
					goOOF.print.copycount, goOOF.print.Option);
	
		if (!goAgent.isIE) {
			window.close();	
		}
	} else if (goOOF.opentype == "export") {
		if (!goAgent.isIE) {
			window.close();	
		}
	}
	
	if (goOOF.autorefeshtime != undefined) {
		window.setTimeout("RexCtl.Refresh();", goOOF.autorefeshtime * 1000);
	}
}

function OnFinishPrint()
{
	if (goOOF.event.finishprint != undefined) {
		goOOF.event.finishprint(RexCtl, "finishprint", null);
	}
}

function OnFinishExport(filename)
{
	if (goOOF.event.finishexport != undefined) {
		goOOF.event.finishexport(RexCtl, "finishexport", {"filename": filename});
	}
}

function MakeHyperLinkClickedArg(sPath) {
	return {"Path": sPath};
}

function ExportServer() {
	var oAjax = rex_GetgoAjax();

	//oAjax.Path = "http://" + location.host + "/RexServer30/ReqExport.jsp";
	oAjax.Path = rex_gsRptExportURL;
	oAjax.Open();

	oAjax.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");		

	oAjax.AddParameter("oof", goOOF.toString());
	oAjax.AddParameter("filename", goOOF.exportservice.filename);
	oAjax.AddParameter("filetype", goOOF.exportservice.filetype);
	oAjax.AddParameter("afterjob", goOOF.exportservice.afterjob);

	oAjax.Send();

	var sRtn = oAjax.Response();

	if (goOOF.event.finishexportserver != undefined) {
		goOOF.event.finishexportserver(RexCtl, "finishexportserver", {"returnval": sRtn});
	}
}
</script>

<script type="text/javascript" for="RexCtl" event="FinishDocument">
	OnFinishDocument();
</script>

<script language="javascript" for="RexCtl" event="FinishPrint">
	OnFinishPrint();
</script>

<script language="javascript" for="RexCtl" event="FinishExport(FileName)">
	OnFinishExport(FileName);
</script>

<script language="vbscript" for="RexCtl" event="HyperLinkClicked(Path, Cancel)">
	'MsgBox "HyperLinkClicked" 
	'MsgBox Path 
	Cancel = true

	On Error Resume Next
	
	If Not IsNull(goOOF.event.hyperlinkclicked) Then
		Call goOOF.event.hyperlinkclicked(RexCtl, "hyperlinkclicked", MakeHyperLinkClickedArg(Path))
	End If
	
	Err.Clear
</script>

</head>
<body onload="OnLoad();"  style="margin:0 0 0 0;width:100%;height:100%" scroll="no">
<form id="frmExportService"  name="frmExportService" method="post" style="display:none" action="">
	<input type="hidden" name="oof"/>
	<input type="hidden" name="filename"/>
	<input type="hidden" name="filetype"/>
</form>
<script type="text/javascript">
	rex_writeRexCtl("RexCtl");
</script>

</body>
</html>