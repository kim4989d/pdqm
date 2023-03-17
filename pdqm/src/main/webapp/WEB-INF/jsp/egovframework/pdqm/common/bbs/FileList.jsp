<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<% 
/**
 * @Class Name : FileList.jsp
 * @Description : 파일 목록화면
 * @Modification Information
 * @
 * @  수정일      		수정자            	수정내용
 * @ -------      --------    ---------------------------
 * @ 2011.11.09		윤경한		최초생성
 *
 *  @author 
 *  @since 2011.11.09
 *  @version 1.0
 *  @see
 *
 */
%>


<script type="text/javascript">

	function fn_egov_downFile(atchFileId, fileSn){
		if("<c:out value='${permission}'/>" != "Y") {
			if(confirm("비회원은 다운로드 할 수 없습니다!\n로그인 화면으로 이동하시겠습니까?")) {
				document.location.href = "<c:url value='/front/main/egovLoginUsr.do'/>";			
			}
			return;
		}
		var left = screen.width/2 - 30;
		var top = screen.height/2 - 30;
		window.open("<c:url value='/cmm/fms/FileDown.do?atchFileId="+atchFileId+"&fileSn="+fileSn+"'/>","","top="+top+" left="+left+" width=1 height=1");
	}	
	
	function fn_egov_deleteFile(atchFileId, fileSn) {
		forms = document.getElementsByTagName("form");

		for (var i = 0; i < forms.length; i++) {
			if (typeof(forms[i].atchFileId) != "undefined" &&
					typeof(forms[i].fileSn) != "undefined" &&
					typeof(forms[i].fileListCnt) != "undefined") {
				form = forms[i];
			}
		}

		//form = document.forms[0];
		form.atchFileId.value = atchFileId;
		form.fileSn.value = fileSn;
		form.action = "<c:url value='/cmm/fms/deleteFileInfs.do'/>";
		form.submit();
	}
	
	function fn_egov_check_file(flag) {
		if (flag=="Y") {
			document.getElementById('file_upload_posbl').style.display = "block";
			document.getElementById('file_upload_imposbl').style.display = "none";			
		} else {
			document.getElementById('file_upload_posbl').style.display = "none";
			document.getElementById('file_upload_imposbl').style.display = "block";
		}
	}
</script>

<!-- <form name="fileForm" action="" method="post" >  -->
<input type="hidden" name="atchFileId" value="${atchFileId}">
<input type="hidden" name="fileSn" >
<input type="hidden" name="fileListCnt" value="${fileListCnt}">

<!-- </form>  -->
	<ul class="file">
	<c:forEach var="fileVO" items="${fileList}" varStatus="status">
		<li>
		<c:choose>
			<c:when test="${updateFlag=='Y'}">
				<!-- khyoon 파일확장자 아이콘으로 표시 2011.10.31 -->
				<img src="<c:url value='/images/pdqm/common/icon/icon_${fileVO.fileExtsn}.gif'/>" alt="${fileVO.fileExtsn}"/>
    			<!-- ~khyoon -->	
				<c:out value="${fileVO.orignlFileNm}"/></a>
					( 용량 : <c:out value="${fileVO.fileKb}"/>KB / 다운로드 : <em><c:out value="${fileVO.fileDownCnt}"/></em>회 )
				<img src="<c:url value='/images/pdqm/common/btn/btn_s_del.gif' />" alt="삭제"  
					onClick="fn_egov_deleteFile('<c:out value="${fileVO.atchFileId}"/>','<c:out value="${fileVO.fileSn}"/>');" alt="파일삭제">
			</c:when>
			<c:otherwise>
				<!-- khyoon 파일확장자 아이콘으로 표시 2011.10.31 -->
				<img src="<c:url value='/images/pdqm/common/icon/icon_${fileVO.fileExtsn}.gif'/>" alt="${fileVO.fileExtsn}"/>
    			<!-- ~khyoon -->				
				<a href="javascript:fn_egov_downFile('<c:out value="${fileVO.atchFileId}"/>','<c:out value="${fileVO.fileSn}"/>')">
					<c:out value="${fileVO.orignlFileNm}"/></a>
					( 용량 : <c:out value="${fileVO.fileKb}"/>KB / 다운로드 : <em><c:out value="${fileVO.fileDownCnt}"/></em>회 )
			</c:otherwise>
		</c:choose>
		</li>
	</c:forEach>
	<c:if test="${fn:length(fileList) == 0}">&nbsp;</c:if>
    </ul>

