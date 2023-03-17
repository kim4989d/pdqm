<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title> 공공정보 품질관리 지원센터 500 ERROR</title>
	<link href="<c:url value='/css/pdqm/common/base.css'/>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<c:url value='/bbs/js/egovframework/com/cop/bbs/EgovBBSMng.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/common.js'/>" ></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.min.js"></script>
	<script type="text/javascript" src="<c:url value='/js/pdqm/jquery.carouFredSel-1.3.3.js'/>" ></script>
<script language="javascript">
function fncGoAfterErrorPage(){
		history.back(-2);
}
</script>
</head>

<body>

		<div class="boxError">
			<div class="img"><img src="/pdqm/images/pdqm/common/error/txt500.gif" alt="죄송합니다. 서버접속이 지연되고 있습니다." /></div>
			<div class="txt">
				일시적인 장애로 인해 요청하신 페이지를 열 수 없으니,<br />
				잠시 후 다시 이용해 주시기 바랍니다.<br />
				빠른 시간 내 정상적인 서비스를 제공하도록 하겠습니다. 감사합니다.
			</div>
			<div class="btn">
				<a href="#back" onclick="fncGoAfterErrorPage();return false;"><img src="/pdqm/images/pdqm/common/error/btnBack.gif" alt="뒤로가기" /></a>
				<a href="/pdqm/index.do"><img src="/pdqm/images/pdqm/common/error/btnMain.gif" alt="메인페이지 바로가기" /></a>
			</div>
		</div>

</body>
</html>