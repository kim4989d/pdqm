<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
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

<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<!-- 렉스퍼트  관련 js -->
<script type="text/javascript" language="javascript" src="<c:url value='/RexServer30/rexscript/rexpert.js'/>" ></script>
<script type="text/javascript" language="javascript" src="<c:url value='/RexServer30/rexscript/rexpert_properties.js'/>" ></script>

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
// 이메일 선택
function fnCheckAllMail() {
    var checkField = document.listForm.checkFieldMail;
    if(document.listForm.checkAllMail.checked) {
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
// 적용, 해지 버튼 이벤트
function fnApply(mberGrp){
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
        if(confirm("<spring:message code="common.update.msg" />")){

        	document.listForm.checkedIdForDel.value=checkedIds;
        	document.listForm.updateMberGrp.value = mberGrp;
        	document.listForm.action = "<c:url value='/uss/umt/EgovMberGrpSelectUpdt.do'/>";
        	document.listForm.submit();
        }
    }else {
    	alert("하나이상 데이터를 선택 하세요.");
    }
}

// 메일보내기
function fnEmail(){
    var checkField = document.listForm.checkFieldMail;
    var id = document.listForm.checkMail;
    var checkedIds = "";
    var checkedCount = 0;

    if(checkField) {
        if(checkField.length > 1) {
            for(var i=0; i < checkField.length; i++) {
                if(checkField[i].checked) {
                    checkedIds += ((checkedCount==0? "" : ";") + id[i].value);
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
        if(confirm("선택한 회원에게 메일을 보내겠습니까?")){

        	var retVal;
        	var url = "<c:url value='/uss/umt/MberMailRegistView.do?checkMail="+checkedIds+"'/>";
        	var varParam = new Object();

        	varParam.checkMail = document.listForm.checkedMailForDel.value;
        	var openParam = "dialogWidth:780px;dialogHeight:830px;scroll:no;status:no;center:yes;resizable:yes;";
        	retVal = window.showModalDialog(url, varParam, openParam);
/*         	if(retVal) {
        		document.mberManageForm.Mail.value = retVal;
        	}
 */        	
        	
        }
    }else {
    	alert("하나이상 데이터를 선택 하세요.");
    }
}


function fnExcelSave() {

	fnOpen();
}
//--------------------------
//기본적인 사용 예
//--------------------------
function fnOpen() {
	// 필수 - 레포트 생성 객체

	var oReport = GetfnParamSet();
	var form = document.listForm;
	oReport.rptname ="./pdqm/admin/mberManageList";	// 리포트파일명

	oReport.param("mberType").value = form.searchMberType.value;
	oReport.param("mberTypeNm").value = form.searchMberType.options[form.searchMberType.selectedIndex].text;
	oReport.param("mberGrp").value = form.searchMberGrp.value;
	oReport.param("mberGrpNm").value = form.searchMberGrp.options[form.searchMberGrp.selectedIndex].text;
	oReport.param("searchCondition").value = form.searchCondition.value;
	oReport.param("searchConditionNm").value = form.searchCondition.options[form.searchCondition.selectedIndex].text;
	oReport.param("searchKeyword").value = form.searchKeyword.value;
	oReport.param("dateFrom").value = form.dateFrom.value;
	oReport.param("dateTo").value = form.dateTo.value;
	oReport.param("dateFromView").value = form.dateFromView.value;
	oReport.param("dateToView").value = form.dateToView.value;


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

<c:if test="${!empty message}">alert("<spring:message code="${message}" />");</c:if>
//-->
</script>
</head>

<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

	<form name="listForm" action="<c:url value='/uss/umt/EgovMberManage.do' />" method="post">
		<input name="selectedId" type="hidden" />
		<input name="checkedIdForDel" type="hidden" />
		<input name="checkedMailForDel" type="hidden" />		
		<input name="pageIndex" type="hidden" value="<c:out value='${userSearchVO.pageIndex}'/>"/>
		<input name= "updateMberGrp" type="hidden" />
		<!-- <div>사용자수 <strong><c:out value="${paginationInfo.totalRecordCount}"/></strong></div> -->
		<!-- khyoon 사용 달력 변경 2011.11.01 -->
		<!-- input type="hidden" name="cal_url" value="<c:url value='/sym/cal/EgovNormalCalPopup.do'/>" /-->
		<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/callCalPopup.do'/>" />
		<div class="title">
			<div class="locationMap">회원관리 > 회원정보조회</div>
			<h2>회원정보조회</h2>
		</div>

		<fieldset>
		<legend>검색조건</legend>
			<table class="vblType1" summary="검색조건 테이블입니다.">
				<colgroup>
					<col width="20%" />
					<col width="80%" />
				</colgroup>
				<tr>
					<th><label for="searchMberType">회원구분</label></th>
					<td>
						<select name="searchMberType" id="searchMberType" class="text">
							<option selected="selected" value=''>--전체--</option>
							<c:forEach var="result"  items="${mberType_result}" varStatus="mberType">
								<option value='<c:out value="${result.code}"/>' <c:if test="${userSearchVO.searchMberType == result.code }">selected="selected"</c:if> >
								<c:out value="${result.codeNm}"/></option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th><label for="searchMberGrp">그룹</label></th>
					<td>
						<select name="searchMberGrp" id="searchMberGrp" class="text">
							<option selected="selected" value=''>--전체--</option>
							<c:forEach var="result"  items="${mberGrp_result}" varStatus="mberGrp">
								<option value='<c:out value="${result.code}"/>' <c:if test="${userSearchVO.searchMberGrp == result.code }">selected="selected"</c:if> >
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
						<select name="searchCondition" id="searchCondition" class="text">
							<option value="0" <c:if test="${mberVO.searchCondition == '0'}">selected="selected"</c:if> >아이디</option>
							<option value="1" <c:if test="${empty mberVO.searchCondition || mberVO.searchCondition == '1'}">selected="selected"</c:if> >성명</option>
						</select>
						<input name="searchKeyword" id="searchKeyword" title="검색어입력" type="text" class="text" value="<c:out value="${mberVO.searchKeyword}"/>" />
					</td>
				</tr>
				<tr>
					<th><label for="label_day">기간검색</label></th>
					<td>
						<input id="dateFrom" name="dateFrom" type="hidden" value="${userSearchVO.dateFrom}" />
						<input id="dateFromView" name="dateFromView" type="text" class="text" size="10" value="${userSearchVO.dateFromView}" readonly="readonly" onclick="javascript:fn_egov_NormalCalendar(document.listForm, document.listForm.dateFrom, document.listForm.dateFromView);" title="기간시작일" />
						<a href="#" onclick="fn_egov_NormalCalendar(document.listForm, document.listForm.dateFrom, document.listForm.dateFromView);return false;"><img src="<c:url value='/images/egovframework/pdqm/admin/calendar.gif' />" alt="달력보기" /></a>

						<!--  <input type="text" id="dateFrom" name="dateFrom" class="text" title="기간시작일" /><a href="#"><img class="iconCal" src="<c:url value='/images/egovframework/pdqm/admin/calendar.gif'/>" alt="달력보기" /></a> -->
						~
						<input id="dateTo" name="dateTo" type="hidden" value="${userSearchVO.dateTo}" />
						<input id="dateToView" name="dateToView" type="text" class="text" size="10" value="${userSearchVO.dateToView}" readonly="readonly" onclick="javascript:fn_egov_NormalCalendar(document.listForm, document.listForm.dateTo, document.listForm.dateToView);" title="기간마지막일" />
						<a href="#" onclick="javascript:fn_egov_NormalCalendar(document.listForm, document.listForm.dateTo, document.listForm.dateToView);return false;" ><img src="<c:url value='/images/egovframework/pdqm/admin/calendar.gif' />" alt="달력보기" /></a>

						<!-- <input type="text" id="dateTo" name="dateTo" class="text" title="기간마지막일" /><a href="#"><img class="iconCal" src="<c:url value='/images/egovframework/pdqm/admin/calendar.gif'/>" alt="달력보기" /></a>  -->
					</td>
				</tr>
			</table>
			<div class="btnArea">
				<!-- 검색 -->
				<span class="button"><input type="submit" value="<spring:message code='button.search' />" onclick="fnSearch(); return false;" /></span>
				<!-- 삭제
				<span class="button"><a href="#LINK" onclick="fnDeleteUser(); return false;"><spring:message code="button.delete" /></a></span>-->
				<!-- 목록
				<span class="button"><a href="<c:url value='/uss/umt/EgovMberManage.do'/>" onclick="fnSearch(); return false;"><spring:message code="button.list" /></a></span>-->
				<!-- 등록
				<span class="button"><a href="<c:url value='/uss/umt/EgovMberInsertView.do'/>" onclick="fnAddUserView(); return false;"><spring:message code="button.create" /></a></span>-->
			</div>
		</fieldset>


		<table class="tblType1 tblSpace" summary="회원목록 테이블입니다.">
			<caption>회원목록</caption>
			<colgroup>
				<col width="4%" />
				<col width="7%" />
				<col width="10%" />
				<col width="10%" />
				<col width="13%" />
				<col width="10%" />
				<col width="15%"/>
				<col width="auto" />
				<col width="4%" />				
				<col width="11%"/>
			</colgroup>
			<thead>
				<tr>
					<th scope="col"><input name="checkAll" type="checkbox" title="Check All" onclick="javascript:fnCheckAll();"/></th>
					<th scope="col">번호</th>
					<th scope="col">성명</th>
					<th scope="col">아이디</th>
					<th scope="col">구분</th>
					<th scope="col">그룹</th>
					<th scope="col">회사명/기관명</th><!-- 2011-11-08수정 -->
					<th scope="col">이메일</th>
					<th scope="col"><input name="checkAllMail" type="checkbox" title="Check All" onclick="javascript:fnCheckAllMail();"/></th>					
					<th scope="col">가입일</th>
				</tr>
			</thead>
			<tbody>
				<%-- 데이터를 없을때 화면에 메세지를 출력해준다 --%>
				<c:if test="${fn:length(resultList) == 0}">
				<tr>
					<td class="ta_c" colspan="9"><spring:message code="common.nodata.msg" /></td>
				</tr>
				</c:if>
				<c:forEach var="result" items="${resultList}" varStatus="status">
				<tr>
					<td>
						<c:if test="${result.mberGrp != '4'}">
							<input name="checkField" title="checkField <c:out value="${status.count}"/>" type="checkbox" />
							<input name="checkId" type="hidden" value="<c:out value='${result.userTy}'/>:<c:out value='${result.uniqId}'/>"/>
						</c:if>
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
					<td><c:out value="${result.departmentName}"/></td><!-- 2011-11-08수정요망 -->
					<td class="ta_l"><c:out value="${result.emailAdres}"/></td>
					<td>
						<input name="checkFieldMail" title="checkFieldMail<c:out value="${status.count}"/>" type="checkbox" />
						<input name="checkMail" type="hidden" value="<c:out value='${result.emailAdres}'/>"/>
					</td>
					
					<td><c:out value="${result.sbscrbDe}"/></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>

		<!--  page start -->
		<div class="paging">
		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fnLinkPage" />
		</div>

		<div class="btnArea">
			<div class="leftBtn">
				<span class="button"><input type="button" value="적용" onclick="fnApply('2');" /></span>
				<span class="button"><input type="button" value="해지" onclick="fnApply('4');" /></span>
			</div>
			<div class="rightBtn">
				<!-- 메일 -->
				<span class="button" ><a href="#LINK" onclick="fnEmail(); return false;">메일전송</a></span>
				<!-- 엑셀저장 -->
				<span class="button"><input type="button" value="엑셀저장" onclick="fnExcelSave();"/></span>
				<!-- 삭제 -->
				<span class="button" style="display:none"><a href="#LINK" onclick="fnDeleteUser(); return false;"><spring:message code="button.delete" /></a></span>
				<!-- 목록 -->
				<span class="button" style="display:none"><a href="<c:url value='/uss/umt/EgovMberManage.do'/>" onclick="fnSearch(); return false;"><spring:message code="button.list" /></a></span>
				<!-- 등록 -->
				<span class="button" style="display:none"><a href="<c:url value='/uss/umt/EgovMberInsertView.do'/>" onclick="fnAddUserView(); return false;"><spring:message code="button.create" /></a></span>
			</div>
		</div>
		<!--  page end -->
	</form>
	<!-- content end -->
	<!-- 메시지 출력 -->
	<script type="text/javascript" language="javascript" defer="defer">
	<!--
	<c:if test="${!empty resultMsg}"> alert("${resultMsg}"); </c:if>
	//-->
	</script>
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>

