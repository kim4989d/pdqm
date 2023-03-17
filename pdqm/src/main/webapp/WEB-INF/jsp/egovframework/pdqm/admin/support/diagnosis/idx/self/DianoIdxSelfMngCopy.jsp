<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>

<%
/**
 * @Class Name : DbTypeList.jsp
 * @Description : 데이타베이스유형  관리
 * @Modification Information
 * @
 * @  수정일                    수정자                수정내용
 * @ ---------     --------    ---------------------------
 * @ 2011.11.09    김정훈         최초 생성
 *
 *  @author 김정훈
 *  @since 2011.11.09
 *  @version 1.0
 *  @see
 *
 */
 //HDATABASETYID
//String HDATABASETYIDString.valueOf(request.getAttribute("HDATABASETYID"));

String msg="";
 if(request.getAttribute("msg") !=null){
	 
	 msg=String.valueOf(request.getAttribute("msg"));
	 
 };

%>


<script type="text/javaScript" language="javascript" defer="defer">
<!--

/* ********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function linkPage(pageNo){
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPList.do'/>";
   	document.listForm.submit();

   	
}

/* ********************************************************
 * 등록 처리 함수 
 ******************************************************** */
 
//유형등록
function fn_Mng_Regist(DATABASETYID,IDXID,CODE,MUMM,MXMM,RESULTDCSTR,EMPHSIDXRESULTDCSTR){

	
	
	var listForm=document.listForm;
	
	listForm.DATABASETYID.value=DATABASETYID
	listForm.IDXID.value=IDXID
	listForm.CODE.value=CODE
		
	listForm.MUMM.value=MUMM
	listForm.MXMM.value=MXMM
	listForm.RESULTDCSTR.value=RESULTDCSTR
	listForm.EMPHSIDXRESULTDCSTR.value=EMPHSIDXRESULTDCSTR
	
	
	
	
	
	
	
	listForm.action = "<c:url value='/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPView.do' />";
	listForm.submit();
	


}


/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fnDetail(DATABASETYID,IDXID){
	var listForm				 = document.listForm;
	listForm.DATABASETYID.value     = DATABASETYID;
	listForm.IDXID.value     = IDXID;
	
	
	//alert(listForm.DATABASETYID.value);
	//alert(listForm.IDXID.value);
	
	
	listForm.action           = "<c:url value='/support/diagnosis/idx/result/insertDiagnosisMngView.do'/>";
		
	listForm.submit();
}

/* ********************************************************
 * 조회 처리 
 ******************************************************** */
function fn_search(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action = "<c:url value='/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPList.do'/>";
   	document.listForm.submit();
}


/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	var listForm=document.listForm;
	listForm.action = "<c:url value='/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPList.do' />";
	listForm.submit();


}

function fn_Copy(){
	var listForm=document.listForm;

	listForm.NDATABASETYID.value=listForm.DATABASETYID.value;
	
	
	
	if ( $("#checkflag").is(":checked") ){        

	listForm.CHECKBOXFLAG.value="y";
	
	
	
	}else{
		
		listForm.CHECKBOXFLAG.value="n";
			
	}

	
	if ( $("#checkflag").is(":checked") ){  
		
		
		
	}else{
		
		
		if(listForm.HIDXDGNSSNM.value==listForm.IDXDGNSSNM.value){
			alert('새로운 구성복사는 기존의이름과 같을수 없습니다.')
			return false;	
		};
		
		
	}
	
	listForm.action = "<c:url value='/support/diagnosis/idx/self/selectDianoIdxSelfMngCopyInsert.do' />";
	listForm.submit();

	
}


function fn_checkflag(){
	
	
	if ( $("#checkflag").is(":checked") ){        

		
		$("#ssidcheck").attr("readonly",true);
		
		
	

	}else{
		$("#ssidcheck").removeAttr("readonly",true);
		
		
	}
	
}


function fn_init(){
	
	
	<%
	if(!msg.equals("")){
	%>
	alert('<%=msg%>');
	<%
	}
	%>
	
}


function fn_cancel(){
	location.href =  "<c:url value='/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do'/>";

	
}

function fn_del(){
	
	var listForm=document.listForm;
	
	$("#DATABASETYID").removeAttr("disabled");
	
	listForm.action = "<c:url value='/support/diagnosis/idx/self/selectDiagnosisMngDelete.do' />";
	listForm.submit();
	
}


-->
</script>
<body onload="fn_init()">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
	<form:form commandName="searchVO" name="listForm"  method="post">

	<!-- hidden  -->
	
	<input name="MUMM" type="hidden" />
	<input name="MXMM" type="hidden" />
<input name="RESULTDCSTR" type="hidden" />
<input name="EMPHSIDXRESULTDCSTR" type="hidden" />
<input name="CHECKBOXFLAG" type="hidden" />

<form:hidden path="IDXDGNSSID"/>
<form:hidden path="NTCETYCODE"/>
<form:hidden path="NDATABASETYID"/>


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단  > 지표별 자가진단 구성 복사</div>
		<h2>지표별 자가진단 구성 복사</h2>
	</div>


	<p class="fc_orange"><input type="checkbox" id="checkflag" name="check1"   onclick="fn_checkflag()"/> <label for="check1">동일 자가진단에 다른 데이터베이스 유형으로 복사합니다.</label></p>
	<table class="tblType1" summary="지표별 자가진단 구성 복사 테이블입니다.">
		<colgroup>
			<col width="50%" />
			<col width="50%" />
		</colgroup>
		<thead>
			<tr>
				<th>복사한 구성 내역</th>
				<th>추가할 구성 내역</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<table class="viewType2" summary="복사한 구성 테이블입니다.">
						<colgroup>
							<col width="40%" />
							<col width="60%"/>
						</colgroup>
						<tr>
							<th>자가진단명</th>
							<td><form:input  path="HIDXDGNSSNM"  class="readonly" readonly="true"  style="width:180px;"/></td>
						</tr>
						<tr class="last">
							<th>데이터베이스유형</th>
							<td>
								<form:select path="DATABASETYID" id="DATABASETYID"  cssClass="text" readonly="true" cssStyle="display;" disabled="true" >
                		<c:forEach items="${dbbox}" var="dbbox" varStatus="status">
	               	<form:option value="${dbbox.DATABASETYID}" label="${dbbox.DATABASETYNM}" />
      			</c:forEach>    
                   </form:select>
				
							
							
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table class="viewType2" summary="추가할 구성 테이블입니다.">
						<colgroup>
							<col width="40%" />
							<col width="60%"/>
						</colgroup>
						<tr>
							<th><label for="write1">자가진단명</label></th>
								<td><form:input  path="IDXDGNSSNM" class="readonly" id="ssidcheck"  style="width:180px;" /></td>
				
						</tr>
						<tr>
							<th><label for="write5">데이터베이스유형</label></th>
							<td>
						
					
	              
		
		
		
		
				<form:select path="HDATABASETYID"  cssClass="text" readonly="true"  >
                		<c:forEach items="${dbbox}" var="dbbox" varStatus="status">
	               	
	             	
	               	<form:option value="${dbbox.DATABASETYID}" label="${dbbox.DATABASETYNM}" />
      			
      			</c:forEach>    
                   </form:select>
				
				
				
		
		 
		
							</td>
						</tr>
						<tr class="last">
							<th><label for="write2">게시구분</label></th>
							<td>
							<form:select path="NTCETYCODE"  cssClass="text" disabled="true"  >
            			<c:forEach items="${sflag}" var="sflag" varStatus="status">
	               	<form:option value="${sflag.CODE}" label="${sflag.CODENM}" />
      			</c:forEach>    
                   </form:select>
				
							
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</tbody>
	</table>

	<!-- 버튼영역:등록화면 일 때 -->
	<div class="btnArea btn_taR">
<!-- 		<span class="button"><input type="button" value="삭제" onClick="fn_del()"/></span> -->
		<span class="button"><input type="button" value="복사" onClick="fn_Copy()"/></span>
		<span class="button"><input type="button" value="목록" onClick="fn_cancel()" /></span>
	</div>
	
	

</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
