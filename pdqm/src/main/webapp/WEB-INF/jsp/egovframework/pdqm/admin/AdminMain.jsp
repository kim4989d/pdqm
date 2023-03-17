<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC “-//W3C//DTD XHTML 1.0 Frameset//EN” “http://www.w3c.org/TR/xhtml11/DTD/xhtml11-frameset.dtd”>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<title>공공정보 품질관리 지원센터</title>
</head>
<frameset rows="74, *">
	<frame id="top" name="top" src="<c:url value='/AdminTop.do' />" title="header" scrolling="no" noresize="noresize" frameborder="0" marginwidth="0" marginheight="0">
		<frameset cols="238, *">
			<frame id="left" name="left" src="<c:url value='/AdminLeft.do' />" title="secNavi" scrolling="auto" noresize="noresize" frameborder="0" marginwidth="0" marginheight="0">
			<frame id="content" name="content" src="<c:url value='/uss/umt/EgovMberManage.do' />" title="contents" scrolling="auto" noresize="noresize" frameborder="0" marginwidth="0" marginheight="0">
		</frameset>
</frameset>
</html>
