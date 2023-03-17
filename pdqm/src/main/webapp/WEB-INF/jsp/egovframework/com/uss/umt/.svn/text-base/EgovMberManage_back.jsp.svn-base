<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%
 /**
  * @Class Name : EgovUserManage.jsp
  * @Description : 사용자관리(조회,삭제) JSP
  * @Modification Information
  * @
  * @  수정일         수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2009.03.02    조재영          최초 생성
  *
  *  @author 공통서비스 개발팀 조재영
  *  @since 2009.03.02
  *  @version 1.0
  *  @see
  *
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<c:url value='/css/pdqm/admin/admin.css' />" type="text/css" />
<title>User Manage(List,Del)</title>
<script type="text/javascript" language="javascript" defer="defer">
<!--

function fnCheckAll() {
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
function fnDeleteUser() {
    var checkField = document.listForm.checkField;
    var id = document.listForm.checkId;
    var checkedIds = "";
    var checkedCount = 0;
    if(checkField) {
        if(checkField.length > 1) {
            for(var i=0; i < checkField.length; i++) {
                if(checkField[i].checked) {
                    checkedIds += ((checkedCount==0? "" : ",") + id[i].value);
                    checkedCount++;
                }
            }
        } else {
            if(checkField.checked) {
                checkedIds = id.value;
            }
        }
    }
    if(checkedIds.length > 0) {
    	//alert(checkedIds);
        if(confirm("<spring:message code="common.delete.msg" />")){
        	document.listForm.checkedIdForDel.value=checkedIds;
            document.listForm.action = "<c:url value='/uss/umt/EgovMberDelete.do'/>";
            document.listForm.submit();
        }
    }
}
function fnSelectUser(id) {
	document.listForm.selectedId.value = id;
	array = id.split(":");
	if(array[0] == "") {
	} else {
	    userTy = array[0];
	    userId = array[1];
	}
	document.listForm.selectedId.value = userId;
    document.listForm.action = "<c:url value='/uss/umt/EgovMberSelectUpdtView.do'/>";
    document.listForm.submit();
}
function fnAddUserView() {
    document.listForm.action = "<c:url value='/uss/umt/EgovMberInsertView.do'/>";
    document.listForm.submit();
}
function fnLinkPage(pageNo){
    document.listForm.pageIndex.value = pageNo;
    document.listForm.action = "<c:url value='/uss/umt/EgovMberManage.do'/>";
    document.listForm.submit();
}
function fnSearch(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action = "<c:url value='/uss/umt/EgovMberManage.do'/>";
    document.listForm.submit();
}
<c:if test="${!empty resultMsg}">alert("<spring:message code="${resultMsg}" />");</c:if>
//-->
</script>
</head>
<body>
	<!-- content start -->
	<h3>일반회원관리</h3>

	<form name="listForm" action="<c:url value='/uss/umt/EgovMberManage.do' />" method="post">
		<input name="selectedId" type="hidden" />
		<input name="checkedIdForDel" type="hidden" />
		<input name="pageIndex" type="hidden" value="<c:out value='${userSearchVO.pageIndex}'/>"/>
		<!-- <div>사용자수 <strong><c:out value="${paginationInfo.totalRecordCount}"/></strong></div> -->

		<fieldset>
		<legend>검색조건</legend>
			<table class="viewType1" summary="검색조건 테이블입니다.">
				<colgroup>
					<col width="20%" />
					<col width="80%" />
				</colgroup>
				<tr>
					<th><label for="mberType">회원구분</label></th>
					<td>
						<select name="mberType" id="mberType" title="조회조건3">
							<option selected="selected" value='0'>--선택하세요--</option>
							<c:forEach var="result"  items="${mberType_result}" varStatus="mberType">
								<option value='<c:out value="${result.code}"/>' <c:if test="${mberVO.mberType == result.code }">selected="selected"</c:if> >
								<c:out value="${result.codeNm}"/></option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th><label for="mberGrp">그룹</label></th>
					<td>
						<select name="mberGrp" id="mberGrp" title="조회조건4">
							<option selected="selected" value='0'>--선택하세요--</option>
							<c:forEach var="result"  items="${mberGrp_result}" varStatus="mberGrp">
								<option value='<c:out value="${result.code}"/>' <c:if test="${mberVO.mberGrp == result.code }">selected="selected"</c:if> >
								<c:out value="${result.codeNm}"/></option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<!-- <tr>
					<th></th>
					<td>
						<select name="sbscrbSttus" id="sbscrbSttus" title="조회조건1" style="display:none">
							<option value="0" <c:if test="${empty mberVO.sbscrbSttus || mberVO.sbscrbSttus == '0'}">selected="selected"</c:if> >상태(전체)</option>
							<option value="A" <c:if test="${mberVO.sbscrbSttus == 'A'}">selected="selected"</c:if> >가입신청</option>
							<option value="D" <c:if test="${mberVO.sbscrbSttus == 'D'}">selected="selected"</c:if> >삭제</option>
							<option value="P" <c:if test="${mberVO.sbscrbSttus == 'P'}">selected="selected"</c:if> >승인</option>
						</select>
					</td>
				</tr> -->
				<tr>
					<th><label for="searchCondition">검색어</label></th>
					<td>
						<select name="searchCondition" id="searchCondition" title="조회조건2">
							<option value="0" <c:if test="${mberVO.searchCondition == '0'}">selected="selected"</c:if> >ID</option>
							<option value="1" <c:if test="${empty mberVO.searchCondition || mberVO.searchCondition == '1'}">selected="selected"</c:if> >Name</option>
						</select>
						<input name="searchKeyword" id="searchKeyword" title="검색어입력" type="text" class="text" value="<c:out value="${mberVO.searchKeyword}"/>" />
					</td>
				</tr>
				<tr>
					<th><label for="label_day">기간검색</label></th>
					<td>
						<input type="text" id="label_day" name="label_day" class="text" title="기간시작일" /><a href="#"><img class="iconCal" src="<c:url value='/images/pdqm/admin/calendar.gif'/>" alt="달력보기" /></a>
						~
						<input type="text" id="label_day2" name="label_day2" class="text" title="기간마지막일" /><a href="#"><img class="iconCal" src="<c:url value='/images/pdqm/admin/calendar.gif'/>" alt="달력보기" /></a>
					</td>
				</tr>
			</table>
			<div class="btnArea">
				<!-- 검색 -->
				<span class="button"><input type="submit" value="<spring:message code="button.search" />" onclick="fnSearch(); return false;" /></span>
				<!-- 삭제
				<span class="button"><a href="#LINK" onclick="fnDeleteUser(); return false;"><spring:message code="button.delete" /></a></span>-->
				<!-- 목록
				<span class="button"><a href="<c:url value='/uss/umt/EgovMberManage.do'/>" onclick="fnSearch(); return false;"><spring:message code="button.list" /></a></span>-->
				<!-- 등록
				<span class="button"><a href="<c:url value='/uss/umt/EgovMberInsertView.do'/>" onclick="fnAddUserView(); return false;"><spring:message code="button.create" /></a></span>-->
			</div>
		</fieldset>


		<table summary="회원목록 테이블입니다." class="tblType1 tblSpace">
			<thead>
				<tr>
					<th scope="col"><input name="checkAll" type="checkbox" title="Check All" onclick="javascript:fnCheckAll();"/></th>
					<th scope="col">No.</th>
					<th scope="col">성명</th>
					<th scope="col">아이디</th>
					<th scope="col">구분</th>
					<th scope="col">그룹</th>
					<th scope="col">소속기관</th><!-- 2011-11-08수정 -->
					<th scope="col">이메일</th>
					<th scope="col">가입일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="result" items="${resultList}" varStatus="status">
				<tr>
					<td>
						<input name="checkField" title="checkField <c:out value="${status.count}"/>" type="checkbox"/>
						<input name="checkId" type="hidden" value="<c:out value='${result.userTy}'/>:<c:out value='${result.uniqId}'/>"/>
					</td>
					<td><c:out value="${status.count}"/></td>
					<td><c:out value="${result.userNm}"/></td>
					<td>
						<span class="link"><a href="<c:url value='/uss/umt/EgovMberSelectUpdtView.do'/>?selectedId=<c:out value="${result.uniqId}"/>"  onclick="javascript:fnSelectUser('<c:out value="${result.userTy}"/>:<c:out value="${result.uniqId}"/>'); return false;"><c:out value="${result.userId}"/></a></span>
					</td>
					<!-- <td><c:out value="${result.mberType}"/></td>--><!-- psh -->
					<td>
						<c:forEach var="mberType_result" items="${mberType_result}" varStatus="mberType">
							<c:if test="${result.mberType == mberType_result.code}"><c:out value="${mberType_result.codeNm}"/></c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="mberGrp_result" items="${mberGrp_result}" varStatus="mberGrp">
							<c:if test="${result.mberGrp == mberGrp_result.code}"><c:out value="${mberGrp_result.codeNm}"/></c:if>
						</c:forEach>
					</td>
					<td><c:out value="${result.profYn}"/></td><!-- 2011-11-08수정요망 -->
					<td><c:out value="${result.emailAdres}"/></td>
					<td><c:out value="${result.sbscrbDe}"/></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>

		<!--  page start -->
		<div class="paging">
		<ui:pagination paginationInfo = "${paginationInfo}"
			type="image"
			jsFunction="fnLinkPage"
			/>
		</div>
		<div class="btnArea">
			<div class="leftBtn">
				<span class="button"><input type="submit" value="적용" /></span>
				<span class="button"><input type="submit" value="해지" /></span>
			</div>
			<div class="rightBtn">
				<!-- 엑셀저장 -->
				<span class="button"><input type="button" value="엑셀저장" /></span>
				<!-- 삭제 -->
				<span class="button"><a href="#LINK" onclick="fnDeleteUser(); return false;"><spring:message code="button.delete" /></a></span>
				<!-- 목록 -->
				<span class="button"><a href="<c:url value='/uss/umt/EgovMberManage.do'/>" onclick="fnSearch(); return false;"><spring:message code="button.list" /></a></span>
				<!-- 등록 -->
				<span class="button"><a href="<c:url value='/uss/umt/EgovMberInsertView.do'/>" onclick="fnAddUserView(); return false;"><spring:message code="button.create" /></a></span>
			</div>
		</div>
		<!--  page end -->
	</form>
	<!-- content end -->
</body>
</html>
