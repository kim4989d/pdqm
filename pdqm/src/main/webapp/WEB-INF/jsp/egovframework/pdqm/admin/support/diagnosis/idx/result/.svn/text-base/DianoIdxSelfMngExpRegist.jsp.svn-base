<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : DiagnosisMngList.jsp
 * @Description : 진단대상관리
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
 String MUMM=String.valueOf(request.getAttribute("MUMM"));
String MXMM=String.valueOf(request.getAttribute("MXMM"));



%>
</head>



<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/jquery-1.4.2.min.js' />" ></script>


<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_insert(){

	var modifyform=document.modifyform;
	

	
	
	modifyform.HDATABASETYID.value=modifyform.DATABASETYID.value;
	
	
	modifyform.HIDXID.value=modifyform.IDXID.value

	
	modifyform.HCODE.value=modifyform.CODE.value
		
	
	
//	modifyform.MUMM.value
//	modifyform.MXMM.value
//	modifyform.RESULTDCSTR.value
//	modifyform.EMPHSIDXRESULTDCSTR.value
	
	

	modifyform.action = "<c:url value='/support/diagnosis/idx/result/viewDianoIdxSelfMngExpInsert.do' />";
   	modifyform.submit();

	
	

}




function fn_fomrValidate(frm){
	if (document.form.dgnssTrgetNm.value == ""){
		alert("진단대상을 입력 하십시오.");
		document.form.dgnssTrgetNm.focus();
		return false;
	}

	return true;

}

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	var modifyform=document.modifyform;
	modifyform.action = "<c:url value='/support/diagnosis/insertDiagnoIdxPMngView.do' />";
   	modifyform.submit();


}



function LeftColumn(){


	var strtemp;

	var id=$("#resultviewleft option:selected").val();
	var name=$(" #resultviewleft option:selected").text();
	if(id !=undefined){


	var addOpt = document.createElement('option');
	addOpt.value=id;
	addOpt.appendChild(document.createTextNode(name));
	var optionlength=$("#resultviewright").attr("options").length;
	var strtemp="";
	for(var i=0;i<optionlength;i++){
		var index = $("#resultviewright option:eq("+i+")").val();

	}

	//$("#resultviewleft option:selected").val();

	$("#resultviewright").append(addOpt); // 옵션을 추가한다.
	$("#resultviewleft option:selected").remove();
	//$("#resultviewleft option:selected").val();
	//  $("#resultviewleft option[value='true']").remove();




	}

}

function RightColumn(){


	
	var id=$("#resultviewright option:selected").val();
	var name=$(" #resultviewright option:selected").text();


	if(id !=undefined){


	var addOpt = document.createElement('option');
	addOpt.value=id;
	addOpt.appendChild(document.createTextNode(name));
	  $("#resultviewleft").append(addOpt); // 옵션을 추가한다.

	//  $("#resultviewright option[selected='true']").remove();

	  $("#resultviewright option:selected").remove();

	}
}



function fn_cancel(){
	
	
	location.href =  "<c:url value='/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPList.do'/>";


	
	/*
	var modifyform=document.modifyform;
	modifyform.action = "<c:url value='/support/diagnosis/insertDiagnoIdxPMngView.do' />";
   	modifyform.submit();
*/

}

function fn_init(){

	var modifyform=document.modifyform;
	modifyform.action = "<c:url value='/support/diagnosis/insertDiagnoIdxPMngView.do' />";
   	modifyform.submit();

}


</script>

</head>

<body>


<form:form commandName="searchVO"  name="modifyform" method="post">


<input type="hidden" name="SRIDXNM">

<input name="HDATABASETYID" type="hidden" />
<input name="HIDXID" type="hidden" />
<input name="HCODE" type="hidden" />
<input name="MUMM" type="hidden"  value="<%= MUMM%>"/>
<input name="MXMM" type="hidden" value="<%= MXMM%>" />



<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 > 지표별 자가진단 결과 설명 등록</div>
		<h2>지표별 자가진단 결과 설명 등록</h2>
	</div>
	

	<table class="vblType1" summary="등록 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="auto" />
		</colgroup>
		<tr>
			<th><label for="search1">데이터베이스유형</label></th>
			<td>
			
			<form:select path="DATABASETYID"  cssClass="text" onchange="fn_list()" disabled="true">
                   	<form:option value="" label="전체" />
      		
          	<c:forEach items="${dbselect}" var="dbselect" varStatus="status" >
	               	<form:option value="${dbselect.DATABASETYID}" label="${dbselect.DATABASETYNM}" />
      			</c:forEach>    
                   </form:select>
				</td>
		</tr>
		<tr>
			<th><label for="label4">지표</label></th>
			<td>
				
					<form:select path="IDXID"  cssClass="text"  id="label4" name="label4" disabled="true">
                   	<form:option value="" label="전체" />
      		
          	<c:forEach items="${idxselect}" var="idxselect" varStatus="status"  >
	               	<form:option value="${idxselect.IDXID}" label="${idxselect.IDXNM}" />
      			</c:forEach>    
                   </form:select>
		
			
			
			</td>
		</tr>
		<tr>
			<th><label for="label5">결과</label></th>
			<td>
			
			
					<form:select path="CODE"  cssClass="text" onchange="fn_list()" disabled="true">
                   	<form:option value="" label="전체" />
      		
          		<c:forEach items="${resultselect}" var="resultselect" varStatus="status"  >
	               	<form:option value="${resultselect.CODE}" label="${resultselect.CODENM}" />
      			</c:forEach>    
                   </form:select>
			
			
			
			</td>
		</tr>
		<tr>
			<th><label for="label_2">지표 설명</label></th>
			<td>
			
			
			<form:textarea id="label_2"  path="RESULTDCSTR" class="text" cols="70" rows="10" style="width:550px;"/>
	
	
	
			</td>
		</tr>
		<tr>
			<th><label for="label_3">중점 관리<br />지표 설명</label></th>
			<td>
			<form:textarea id="label_3"  path="EMPHSIDXRESULTDCSTR" class="text" cols="70" rows="10" style="width:550px;"/>
				
	
			</td>
		</tr>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea">
		<span class="button"><input type="button" value="등록" onClick="fn_insert()" /></span>
		<span class="button"><input type="button" value="목록" onClick="fn_cancel()" /></span>
	</div>
	<!--// 버튼영역 -->

</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
