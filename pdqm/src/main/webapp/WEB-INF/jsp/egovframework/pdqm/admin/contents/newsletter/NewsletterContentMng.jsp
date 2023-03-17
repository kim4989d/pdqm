<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="egovframework.com.cmm.service.EgovProperties" %>
<%@ page import="egovframework.com.utl.fcc.service.EgovDateUtil" %>
<%@ page import="egovframework.com.cmm.service.Globals" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="ImgUrl" value="/images/egovframework/com/cop/bbs/"/>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
 /**
  * @Class Name : NewsletterContentMng.jsp
  * @Description : 뉴스레터 컨텐츠 관리 JSP
  * @Modification Information
  * @
  * @  수정일         	수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2011.12.14    윤경한          최초 생성
  *
  *  @author 윤경한
  *  @since 2011.12.14
  *  @version 1.0
  *  @see
  *
  */
%>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<script type="text/javascript">

	function press(event) {
		if (event.keyCode==13) {
			fn_egov_select_noticeList('1');
		}
	}

	function fn_egov_select_noticeList(pageNo) {
		document.frm.pageIndex.value = pageNo;
		document.frm.action = "<c:url value='/cop/bbs/selectBoardList.do'/>";
		document.frm.submit();
	}

	function fnAddNewsletter() {
		document.frm.action = "<c:url value='/cop/bbs/addBoardArticle.do'/>";
		document.frm.submit();
	}

	function fn_form_reset() {
		var oForm = document.frm;
		oForm.searchBgnDe.value = "";
		oForm.searchBgnDeView.value = "";
		oForm.searchEndDe.value = "";
		oForm.searchEndDeView.value = "";
		oForm.searchWrd.value = "";
	}

	function fn_egov_inqire_notice(formNm, bbsId, nttId) {
		var oForm = document.getElementsByName(formNm);
		oForm[0].bbsId.value = bbsId;
		oForm[0].nttId.value = nttId;
		oForm[0].action = "<c:url value='/cop/bbs/selectBoardArticle.do'/>";
		oForm[0].submit();
	}
	
	function fn_current_tab() {
		var oTab = document.getElementById("<c:out value='${searchVO.searchBbsId}'/>");
		oTab.className = "on";
	}

	///////////////////////////////////////////////////////////////////////
	// Ajax Client
	var oPropertyKey = null;
	
	function fn_reset_ntt(id) {
		oPropertyKey = id;
		var params = "selBbsId=&selBbsNm=&selNttId=&selNttSj=";
		params += "&propertyKey=" + encodeURIComponent(oPropertyKey);
		
		sendRequest(params, "RESET");
	}
	
	function fn_reset_content() {
		if(xmlHttp.readyState == 4) {
			if(xmlHttp.status == 200) {
				if(oPropertyKey) {
					var oLABEL = document.getElementById(oPropertyKey+"_LABEL");
					oLABEL.innerText = "";
				}
			}
		}
	}

	function fn_select_ntt(bbsId, nttId, subjectId) {
		
		var oBbsTab = document.getElementById(bbsId);
		var bbsNm = oBbsTab.firstChild.innerText;	// 게시판 제목 가져오기
		var nttSj = document.getElementById(subjectId).innerText;
		
		oPropertyKey = _getCheckedRadioId(document.formRadio.radioNtt);
		var params = "selBbsId=" + encodeURIComponent(bbsId);
		params += "&selBbsNm=" + encodeURIComponent(bbsNm);
		params += "&selNttId=" + encodeURIComponent(nttId);
		params += "&selNttSj=" + encodeURIComponent(nttSj);
		params += "&propertyKey=" + encodeURIComponent(oPropertyKey);

		sendRequest(params, "ADD");		
	}
	
	function sendRequest(params, opt) {
		createXMLHttpRequest();
		var url = "<c:url value='/admin/contents/setNewsletterContent.do'/>";
		
        xmlHttp.open("POST", url, true);
        xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
        xmlHttp.setRequestHeader("Cache-Control", "no-cache, must-revalidate");
        xmlHttp.setRequestHeader("Pragma", "no-cache");
        if(opt == "ADD")
        	xmlHttp.onreadystatechange = fn_add_content;
        else
        	xmlHttp.onreadystatechange = fn_reset_content;
        xmlHttp.send(params);		
	}
	
	var xmlHttp = null;
    function createXMLHttpRequest() {
        if (window.ActiveXObject) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if (window.XMLHttpRequest) {
            xmlHttp = new XMLHttpRequest();
        }
    }	
	
	function fn_add_content() {
		
		/*******************************************************************
		 * readyState
		 *******************************************************************	
		 *	0	객체만 생성 (open 메서드가 호출되지 않음)			UnInitialized
		 *	1	open 메서드 호출								Loading
		 *	2	send 메서드 호출, status 헤더가 도착하지 않은 상태	Loaded
		 *	3	데이터의 일부를 받은 상태							Interactive
		 *	4	데이터 전부 받은 상태							Completed
		 *******************************************************************/
		if(xmlHttp.readyState == 4) {
			/*******************************************************************
			 * status
			 *******************************************************************	
			 *	200	OK						요청성공
			 *	403	Forbidden				접근거부
			 *	404	Not Found				페이지 없슴
			 *	500	Internal Server Error	서버 오류 발생
			 *******************************************************************/
			//alert("callback function > "+xmlHttp.status);
			if(xmlHttp.status == 200) {
				if(oPropertyKey) {
					var oLABEL = document.getElementById(oPropertyKey+"_LABEL");
					//alert(xmlHttp.responseText);
					oLABEL.innerHTML = xmlHttp.responseText
							+ "&nbsp;&nbsp;<img src=<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/> onclick='fn_reset_ntt(oPropertyKey)' alt='취소' />";
				}
			}
		}
	}
	//~Ajax Client
	///////////////////////////////////////////////////////////////////////
	
	function _getCheckedRadioId(oRadio) {
		for(var i=0; i<oRadio.length; i++)
		{
			if(oRadio[i].checked) {
				return oRadio[i].id;
			}
		}			
		return null;
	}

</script>
</head>

<body onload="fn_current_tab();">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

	<div class="title">
		<div class="locationMap">관리자홈 > 콘텐츠관리 > 뉴스레터 콘텐츠 관리</div>
		<h2>뉴스레터 콘텐츠 관리</h2>
	</div>
<!-- 뉴스레터 콘텐츠 게시판 목록 탭 -->
<div class="tab list">
	<ul>
		<li id="BBSMSTR_000000000191">
			<a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000241&searchBbsId=BBSMSTR_000000000191'/>">
			<span>보도자료</span></a></li>
		<li id="BBSMSTR_000000000181">
			<a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000241&searchBbsId=BBSMSTR_000000000181'/>">
			<span>뉴스와동향</span></a></li>			
		<li id="BBSMSTR_000000000171">
			<a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000241&searchBbsId=BBSMSTR_000000000171'/>">
			<span>전문가칼럼</span></a></li>			
		<li id="BBSMSTR_000000000161">
			<a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000241&searchBbsId=BBSMSTR_000000000161'/>">
			<span>우수사례공유</span></a></li>			
		<li id="BBSMSTR_000000000143">
			<a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000241&searchBbsId=BBSMSTR_000000000143'/>">
			<span>교육자료실</span></a></li>			
		<li id="BBSMSTR_000000000142">
			<a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000241&searchBbsId=BBSMSTR_000000000142'/>">
			<span>교육공지</span></a></li>			
		<li id="BBSMSTR_000000000141">
			<a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000241&searchBbsId=BBSMSTR_000000000141'/>">
			<span>지식자료실</span></a></li>			
		<li id="BBSMSTR_000000000121">
			<a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000241&searchBbsId=BBSMSTR_000000000121'/>">
			<span>공지사항</span></a></li>			
	</ul>
	<div class="ov_h">
	<dl class="dlType1"></dl>
	</div>

	<table id="list" class="tblType1" summary="번호, 제목, 등록자, 작성일, 첨부, 조회수 입니다">
		<colgroup>
			<col width="7%">
			<col width="7%">
			<col width="auto"><!-- 제목 -->
			<col width="9%"><!-- 등록자 -->
			<col width="11%"><!-- 작성일 -->
			<col width="7%"><!-- 첨부 -->
		</colgroup>
		<thead>
			<tr>
				<th scope="col">선택</th>			
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">등록자</th>
				<th scope="col">작성일</th>
				<th scope="col">첨부</th>
			</tr>
		</thead>
		<c:set var="today" value="<%=EgovDateUtil.getToday()%>" />
		<c:set var="markNewNttBaseDate" value='<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"MARK_NEW_NTT_BASE_DATE")%>' />
		<tbody>
		<c:forEach var="result" items="${resultList}" varStatus="status">
			<tr>
				<td><a href="#none">
					<img src="<c:url value='/images/pdqm/common/btn/btn_c_down.gif'/>" title="선택하시면 아래 라디오 버튼으로 선택된 콘텐츠에 등록됩니다"
						onclick="fn_select_ntt('${result.bbsId}','${result.nttId}','subject${status.count}')" alt="선택" /></a></td>			
				<td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/></td>
				<td class="ta_l" id="subject${status.count}">
				<c:choose>
					<c:when test="${result.isExpired=='Y' || result.useAt == 'N'}">
						<c:if test="${result.replyLc!=0}">
							<c:forEach begin="0" end="${result.replyLc}" step="1">
								&nbsp;
							</c:forEach>
							<img src="<c:url value='/images/egovframework/com/cmm/icon/reply_arrow.gif'/>" alt="답글" />
						</c:if>
						<c:out value="${result.nttSj}" />
					</c:when>
					<c:otherwise>
						<form name="subForm${status.count}" method="post" action="<c:url value='/cop/bbs/selectBoardArticle.do'/>">
							<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
							<input type="hidden" name="nttId"  value="<c:out value='${result.nttId}'/>" />
							<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
							<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
							<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
							<input type="hidden" name="nttClCodeId" value="<c:out value='${brdMstrVO.nttClCodeId}'/>" />
							<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
							<input type="hidden" name="act" value="LIST"/>
							<c:if test="${result.replyLc!=0}">
								<c:forEach begin="0" end="${result.replyLc}" step="1">
									&nbsp;
								</c:forEach>
								<img src="<c:url value='/images/egovframework/com/cmm/icon/reply_arrow.gif'/>" alt="답글" />
							</c:if>
							<c:out value="${result.nttSj}" />
							<fmt:parseDate value="${result.frstRegisterPnttm}" var="regipnttm" pattern="yyyy-mm-dd" />
							<fmt:formatDate value="${regipnttm}" var="regiday" pattern="yyyymmdd" />
							<c:if test="${(today-regiday) <= markNewNttBaseDate}" >
								<img src="<c:url value='/images/pdqm/common/icon/icon_new.gif'/>" alt="새글" />
							</c:if>
						</form>
					</c:otherwise>
				</c:choose>
				</td>
				<td><c:out value="${result.frstRegisterNm}"/></td>
				<td><c:out value="${result.frstRegisterPnttm}"/></td>
				<td>
				<c:if test="${not empty result.atchFileId}">
					<c:import url="/cop/bbs/selectFileIconInfo.do" charEncoding="utf-8">
						<c:param name="firstAtchFileId" value="${result.atchFileId}" />
					</c:import>
				</c:if>
				</td>
			</tr>
			</c:forEach>
			<c:if test="${fn:length(resultList) == 0}">
			<tr>
				<td colspan="6" >
					<spring:message code="common.nodata.msg" />
				</td>
			</tr>
		</c:if>
		</tbody>
	</table>
	<br/>
	<div>
	<form name="formRadio">
	<table class="vblType1" summary="뉴스레터 콘텐츠 관리 테이블입니다.">
		<colgroup>
			<col width="9%"/>
			<col width="12%"/>
			<col width="auto"/>
		</colgroup>
		<tr>
			<th rowspan="2" class="br_r">일반형</th>
			<th>새소식</th>
			<td>
				<p style="line-height:1.6">
					<input type="radio" name="radioNtt" id="NEWSLETTER.GENERAL.NEW01" checked />
					<label for="NEWSLETTER.GENERAL.NEW01" id="NEWSLETTER.GENERAL.NEW01_LABEL">
					<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW01.DESC")%>
					<% if(!EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW01.DESC").trim().equals("")) { %>
					&nbsp;<img src="<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/>" 
								onclick="fn_reset_ntt('NEWSLETTER.GENERAL.NEW01')" title="콘텐츠 초기화" alt="취소" />
					<% } %>
					</label>
				</p>
				<p>
					<input type="radio" name="radioNtt" id="NEWSLETTER.GENERAL.NEW02">
					<label for="NEWSLETTER.GENERAL.NEW02" id="NEWSLETTER.GENERAL.NEW02_LABEL">
					<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW02.DESC")%>
					<% if(!EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW02.DESC").trim().equals("")) { %>
					&nbsp;<img src="<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/>" 
								onclick="fn_reset_ntt('NEWSLETTER.GENERAL.NEW02')" title="콘텐츠 초기화" alt="취소" />
					<% } %>
					</label>
				</p>
				<p>
					<input type="radio" name="radioNtt" id="NEWSLETTER.GENERAL.NEW03" >
					<label for="NEWSLETTER.GENERAL.NEW03" id="NEWSLETTER.GENERAL.NEW03_LABEL">
					<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW03.DESC")%>
					<% if(!EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW03.DESC").trim().equals("")) { %>
					&nbsp;<img src="<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/>" 
								onclick="fn_reset_ntt('NEWSLETTER.GENERAL.NEW03')" title="콘텐츠 초기화" alt="취소" />
					<% } %>
					</label>
				</p>
				<p>
					<input type="radio" name="radioNtt" id="NEWSLETTER.GENERAL.NEW04" >
					<label for="NEWSLETTER.GENERAL.NEW04" id="NEWSLETTER.GENERAL.NEW04_LABEL">
					<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW04.DESC")%>
					<% if(!EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW04.DESC").trim().equals("")) { %>
					&nbsp;<img src="<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/>" 
								onclick="fn_reset_ntt('NEWSLETTER.GENERAL.NEW04')" title="콘텐츠 초기화" alt="취소" />
					<% } %>
					</label>					
				</p>
				<p>
					<input type="radio" name="radioNtt" id="NEWSLETTER.GENERAL.NEW05" >
					<label for="NEWSLETTER.GENERAL.NEW05" id="NEWSLETTER.GENERAL.NEW05_LABEL">
					<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW05.DESC")%>
					<% if(!EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW05.DESC").trim().equals("")) { %>
					&nbsp;<img src="<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/>" 
								onclick="fn_reset_ntt('NEWSLETTER.GENERAL.NEW05')" title="콘텐츠 초기화" alt="취소" />
					<% } %>
					</label>					
				</p>
				<p>
					<input type="radio" name="radioNtt" id="NEWSLETTER.GENERAL.NEW06" >
					<label for="NEWSLETTER.GENERAL.NEW06" id="NEWSLETTER.GENERAL.NEW06_LABEL">
					<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW06.DESC")%>
					<% if(!EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW06.DESC").trim().equals("")) { %>
					&nbsp;<img src="<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/>" 
								onclick="fn_reset_ntt('NEWSLETTER.GENERAL.NEW06')" title="콘텐츠 초기화" alt="취소" />
					<% } %>
					</label>					
				</p>
				<p>
					<input type="radio" name="radioNtt" id="NEWSLETTER.GENERAL.NEW07" >
					<label for="NEWSLETTER.GENERAL.NEW07" id="NEWSLETTER.GENERAL.NEW07_LABEL">
					<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW07.DESC")%>
					<% if(!EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.NEW07.DESC").trim().equals("")) { %>
					&nbsp;<img src="<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/>" 
								onclick="fn_reset_ntt('NEWSLETTER.GENERAL.NEW07')" title="콘텐츠 초기화" alt="취소" />
					<% } %>
					</label>					
				</p>
			</td>
		</tr>
		<tr>
			<th>지식콘텐츠</th>
			<td>
				<p>
					<input type="radio" name="radioNtt" id="NEWSLETTER.GENERAL.KNOW01" >
					<label for="NEWSLETTER.GENERAL.KNOW01" id="NEWSLETTER.GENERAL.KNOW01_LABEL">
					<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.KNOW01.DESC")%>
					<% if(!EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.KNOW01.DESC").trim().equals("")) { %>
					&nbsp;<img src="<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/>" 
								onclick="fn_reset_ntt('NEWSLETTER.GENERAL.KNOW01')" title="콘텐츠 초기화" alt="취소" />
					<% } %>
					</label>					
				</p>
				<p>
					<input type="radio" name="radioNtt" id="NEWSLETTER.GENERAL.KNOW02" >
					<label for="NEWSLETTER.GENERAL.KNOW02" id="NEWSLETTER.GENERAL.KNOW02_LABEL">
					<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.KNOW02.DESC")%>
					<% if(!EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.KNOW02.DESC").trim().equals("")) { %>
					&nbsp;<img src="<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/>" 
								onclick="fn_reset_ntt('NEWSLETTER.GENERAL.KNOW02')" title="콘텐츠 초기화" alt="취소" />
					<% } %>
					</label>					
				</p>
				<p>
					<input type="radio" name="radioNtt" id="NEWSLETTER.GENERAL.KNOW03" >
					<label for="NEWSLETTER.GENERAL.KNOW03" id="NEWSLETTER.GENERAL.KNOW03_LABEL">
					<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.KNOW03.DESC")%>
					<% if(!EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.GENERAL.KNOW03.DESC").trim().equals("")) { %>
					&nbsp;<img src="<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/>" 
								onclick="fn_reset_ntt('NEWSLETTER.GENERAL.KNOW03')" title="콘텐츠 초기화" alt="취소" />
					<% } %>
					</label>					
				</p>
			</td>
		</tr>		
		<tr>
			<th colspan="2">칼럼형</th>
			<td>
				<p>
					<input type="radio" name="radioNtt" id="NEWSLETTER.COLUMN" >
					<label for="NEWSLETTER.COLUMN" id="NEWSLETTER.COLUMN_LABEL">
					<%=EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.COLUMN.DESC")%>
					<% if(!EgovProperties.getProperty(Globals.PDQM_CONF_PATH,"NEWSLETTER.COLUMN.DESC").trim().equals("")) { %>
					&nbsp;<img src="<c:url value='/images/pdqm/common/btn/btn_s_close.gif'/>" 
								onclick="fn_reset_ntt('NEWSLETTER.COLUMN')" title="콘텐츠 초기화" alt="취소" />
					<% } %>
					</label>					
				</p>
			</td>
		</tr>		
	</table>
	</form>					
	</div>	
</div>
			

		<!--  page end -->
	<!-- content end -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
