<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>

<%
 /**
  * @Class Name : EgovMailDtls.jsp
  * @Description : 발송메일 내역 조회 화면
  * @Modification Information
  * @
  * @  수정일       수정자                   수정내용
  * @ -------      ---------    ---------------------------
  * @ 2011.11.21    신은영         최초 생성
  *
  *  @author 신은영
  *  @since 2011.11.21
  *  @version 1.0
  *  @see
  *
  */
%>

<script type="text/javaScript" language="javascript">
<!--
/* ********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function linkPage(pageNo){
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/cop/ems/selectSndngMailList.do' />";
   	document.listForm.submit();
}
/* ********************************************************
 * 조회 처리
 ******************************************************** */
function fnSearch(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action = "<c:url value='/cop/ems/selectSndngMailList.do' />";
   	document.listForm.submit();
}


/* ********************************************************
 * 등록 처리 함수
 ******************************************************** */
function fnRegist(){
	document.listForm.action = "<c:url value='/cop/ems/insertSndngMailView.do' />";
   	document.listForm.submit();
}
/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(mid){
	document.detailForm.action = "<c:url value='/cop/ems/selectSndngMailDetail.do' />";
	document.detailForm.mssageId.value = mid;
   	document.detailForm.submit();
}
/* ********************************************************
 * 삭제 처리 함수
 ******************************************************** */
function fnDelete(){
	var checkField = document.listForm.checkField;
    var id = document.listForm.checkId;
    var fileId = document.listForm.checkFileId;
    var checkedIds = "";
    var checkedFildIds = "";
    var checkedCount = 0;
    if(checkField) {
        if(checkField.length > 1) {
            for(var i=0; i < checkField.length; i++) {
                if(checkField[i].checked) {
                    checkedIds += ((checkedCount==0? "" : ",") + id[i].value);
                    checkedFildIds += ((checkedCount==0? "" : ",") + fileId[i].value);
                    checkedCount++;
                }
            }
        } else {
            if(checkField.checked) {
                checkedIds = id.value;
                checkedFildIds = fileId.value;
            }
        }
    }
    if(checkedIds.length > 0) {
    	var ret = confirm("삭제하시겠습니까?");
    	if (ret == true) {
    		document.deleteForm.mssageId.value=checkedIds;
    		document.deleteForm.atchFileIdList.value=checkedFildIds;
    		document.deleteForm.action = "<c:url value='/cop/ems/deleteSndngMailList.do' />";
    	    document.deleteForm.submit();
    	}
    }
}
/* ********************************************************
 * 모두선택 처리 함수
 ******************************************************** */
function fnCheckAll(){
	var checkField = document.listForm.checkField;
    if(document.listForm.checkAll.checked) {
        if(checkField) {
            if(checkField.length > 1) {
                for(var i=0; i < checkField.length; i++) {
                    checkField[i].checked = true;
                }
            } else {
                checkField.checked = true;
            }
        }
    } else {
        if(checkField) {
            if(checkField.length > 1) {
                for(var j=0; j < checkField.length; j++) {
                    checkField[j].checked = false;
                }
            } else {
                checkField.checked = false;
            }
        }
    }
}
//-->
</script>
</head>

<body>

<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- content start -->

<div class="title">
	<div class="locationMap">경로넣기</div>
	<h2> 발송내역 조회 </h2>
</div>
<form name="listForm" action="<c:url value='/cop/ems/selectSndngMailList.do'/>" method="post">
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
	<fieldset>
		<legend>검색조건</legend>
		
			<table class="viewType1" summary="검색조건 테이블입니다.">
				<tr>
					<th><label for="CommCodeType">구분</label></th>
					<td>
						<select name="searchCondition" class="select" tabindex="1" title="검색부문" id = "searchCondition">
				    <option selected value=''>--선택하세요--</option>
				    <option value='1'>제목</option>
				    <option value='2'>내용</option>
				    <option value='3'>보낸이</option>
			      </select>
	   		
				
	   				<label for="searchKeyword"></label>
	   	
	   				<input name="searchKeyword" type ="text" value="${searchVO.searchKeyword}"  maxlength="35" id="searchCondition"/>
	   				</td>

	  			 </tr>
	  			 <tr>
					<th><label for="label_day">기간검색</label></th>
					<td>
						<input type="text" id="dateFrom" name="dateFrom" class="text" title="기간시작일" /><a href="#"><img class="iconCal" src="<c:url value='/images/pdqm/admin/calendar.gif'/>" alt="달력보기" /></a>
						~
						<input type="text" id="dateTo" name="dateTo" class="text" title="기간마지막일" /><a href="#"><img class="iconCal" src="<c:url value='/images/pdqm/admin/calendar.gif'/>" alt="달력보기" /></a>
					</td>
				</tr>
	   		</table>
	   		<div class="btnArea">
				<span class="button"><input type="submit" value="조회" onclick="fnSearch(); return false;"/></span>
				<span class="button"><input type="submit" value="등록" onclick="fnRegist(); return false;"/></span>
				<span class="button"><input type="submit" value="삭제" onclick="fnDelete(); return false;"/></span>
			</div>
	</fieldset>
			<table class="tblType1 tblSpace"  summary="상태, 발신자, 수신자, 제목, 날짜의 정보를 가진 발송메일내역을 조회한다.">
		
			<thead>
			  <tr>
				<th scope="col" width="5%"><input type="checkbox" name="checkAll" class="check2" onClick="javascript:fnCheckAll();" title="전체선택" id="checkAll" /></th>
				<th scope="col" width="5%">상태</th>
				<th scope="col" width="15%">발신자</th>
				<th scope="col" width="20%">수신자</th>
				<th scope="col" width="35%">제목</th>
				<th scope="col" width="20%">날짜</th>
			  </tr>
			</thead>
			<!-- 목록 조회 시작-->
			<tbody>
			<%-- 데이터를 없을때 화면에 메세지를 출력해준다 --%>
			<c:if test="${fn:length(resultList) == 0}">
			<tr>
			<td colspan="6">
				<spring:message code="common.nodata.msg" />
			</td>
			</tr>
			</c:if>
			  <c:forEach items="${resultList}" var="resultInfo" varStatus="status">
			  <tr style="cursor:hand;">
			    <td>
                  <input type="checkbox" name="checkField" class="check2" title="선택"/>
                  <input name="checkId" type="hidden" value="<c:out value='${resultInfo.mssageId}'/>" title=""/>
                  <input name="checkFileId" type="hidden" value="<c:out value='${resultInfo.atchFileId}'/>" title=""/>
                </td>
			    <td>${resultInfo.sndngResultCode}</td>
			    <td>${resultInfo.dsptchPerson}</td>
			    <td>${resultInfo.recptnPerson}</td>
			    <td><a href="<c:url value='/cop/ems/selectSndngMailDetail.do' />" onclick="fnDetail('${resultInfo.mssageId}'); return false;">${resultInfo.sj}</a></td>
			    <td>${resultInfo.sndngDe}</td>
			  </tr>
			  </c:forEach>
			<!-- 목록 조회 끝-->
			</tbody>
			</table>

			<!-- 페이징 시작 -->
			<!-- 페이징 -->
<div class="paging">
	<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="linkPage" />
</div>
<!--// 페이징 -->

<!-- 하단버튼 -->
<div class="btnArea btn_taR">
	<span class="button"><input type="submit" value="등록" onclick="fnRegist(); return false;" /></span>
</div>
<!--// 하단버튼 -->
			
			
			
			
			<!-- 페이징 끝 -->
		</form>
		<!-- 상세조회할 발송메일ID를 담는 폼 -->
		<form name="detailForm" action="<c:url value='/cop/ems/selectSndngMailDetail.do'/>" method="post">
			<input name="mssageId" type="hidden" value=""/>
			<input type="submit" id="invisible" class="invisible"/>
		</form>
		<!-- 삭제할 발송메일ID(여러 ID를 ,로 묶어 만들어진 데이터)를 담는 폼 -->
		<form name="deleteForm" action="<c:url value='/cop/ems/deleteSndngMailList.do'/>" method="post">
			<input name="mssageId" type="hidden" value=""/>
			<input name="atchFileIdList" type="hidden" value=""/>
			<input type="submit" class="invisible"/>
		</form>
		<!-- content end -->
		
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>


