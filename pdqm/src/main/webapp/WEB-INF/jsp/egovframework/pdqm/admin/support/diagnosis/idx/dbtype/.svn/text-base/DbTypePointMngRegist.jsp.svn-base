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

			var optionlength=$("#resultviewright").attr("options").length;
			var strtemp="";
			for(var i=0;i<optionlength;i++){
				var index = $("#resultviewright option:eq("+i+")").val();
				//alert(index);
				//alert(i);
				strtemp+="/"+index;
				//	strtemp+=

			}
			//alert(strtemp);

//modifyform.DATABASETYID.value=modifyform.HDATABASETYID.value;
	
			modifyform.SRIDXNM.value=strtemp;
			
			
			
				
				
			modifyform.action = "<c:url value='/support/diagnosis/viewDiagnoIdxPMnginsert.do' />";
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



function fn_Cancel(){

	location.href =  "<c:url value='/support/diagnosis/idx/diagnoIdxDbTypePMngList.do'/>";


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

<!-- <input name="DATABASETYID" type="hidden" /> -->


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 > 데이터베이스유형별 중점 지표 관리</div>
		<h2>데이터베이스유형별 중점 지표 </h2>
	</div>

	<table class="vblType1" summary="검색조건 테이블입니다.">
		<colgroup>
			<col width="20%"/>
			<col width="auto"/>
		</colgroup>
		<tr>
			<th label for="search1">데이터베이스유형</label></th>
			<td>
				          <form:select path="HDATABASETYID" cssClass="text" onchange="fn_list()">
          	<c:forEach items="${selectbox}" var="selectbox" varStatus="status">
	               	<form:option value="${selectbox.DATABASETYID}" label="${selectbox.DATABASETYNM}" />
      			</c:forEach>

                   </form:select>
	<label for="search1" ></label>
	</td>

		</tr>
						 
	
		<tr>
			<td colspan="2" class="multi_sel">
				<div>
					<h3>지표</h3>


						          <form:select path="LIDXNM" class="multiple" title="지표 선택" size="10" id="resultviewleft">
          					<c:forEach items="${resultviewleft}" var="resultviewleft" varStatus="status">
	               	<form:option value="${resultviewleft.IDXID}" label="${resultviewleft.IDXNM}" />
      			</c:forEach>

                   </form:select>



				</div>
			<div class="sel_btn">
					<span class="button"><input onClick="LeftColumn()" type="button" value="▶" title="중점관리대상 지표로 이동" /></span>
					<span class="button"><input onClick="RightColumn()" type="button" value="◀" title="지표로 이동" /></span>
				</div>







				<div>
					<h3>중점관리대상 지표</h3>


				          <form:select path="RIDXNM" class="multiple" title="중점관리대상 지표 선택" size="10" id="resultviewright">
          					<c:forEach items="${resultviewright}" var="resultviewright" varStatus="status">
	               	<form:option value="${resultviewright.IDXID}" label="${resultviewright.IDXNM}" />
      			</c:forEach>

                   </form:select>


				</div>

			</td>
		</tr>
	</table>

	<!-- 버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="등록"  onClick="fn_insert()"/></span>
		<span class="button"><input type="button" value="목록" onClick="fn_Cancel()" /></span>
		<span class="button"><input type="button" value="초기화" onClick="fn_init()" /></span>

	</div>
	<!--// 버튼영역 -->
</form:form>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
