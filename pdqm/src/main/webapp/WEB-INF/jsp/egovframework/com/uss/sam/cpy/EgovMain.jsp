<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/loose.dtd">
<%--
  Class Name : EgovMain.jsp
  Description : 개별 배포 페이지 메인
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.05.15    장동한          최초 생성
 
    author   : 공통서비스 개발팀 장동한
    since    : 2009.05.15
   
--%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>개별배포메인 페이지</title></head>
<frameset frameborder="1" framespacing="1" cols="130,100%">
	<frame title="개별 배포 메뉴 페이지" name="left" src="<c:url value='/uss/sam/cpy/EgovLeft.do' />" scrolling="no">
	<frame title="개별 배포 메인 페이지" name="content" src="<c:url value='/uss/sam/cpy/CpyrhtPrtcPolicyListInqire.do' />">
</frameset>
</html> 
