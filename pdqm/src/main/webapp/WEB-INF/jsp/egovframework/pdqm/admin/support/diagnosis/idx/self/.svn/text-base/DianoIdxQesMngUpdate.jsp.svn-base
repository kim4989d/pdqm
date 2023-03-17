<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="egovframework.pdqm.admin.common.tray.Tray" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="egovframework.pdqm.admin.support.diagnosis.idx.model.DianoIdxQesMngVo" %>



<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%
/**
 * @Class Name : DiagnosisIdxMngRegist.jsp
 * @Description : 지표등록
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



 
 String idxid=(String)request.getAttribute("idxid");
String idxnm=(String)request.getAttribute("idxnm");
String levelnm=(String)request.getAttribute("levelnm");
String qesitmid=(String)request.getAttribute("qesitmid");
String ANSWERTYCODE=(String)request.getAttribute("ANSWERTYCODE");
String SORTORDR=(String)request.getAttribute("SORTORDR");


Tray answerType=(Tray)request.getAttribute("AnswerListType");
List answerlist=(List)request.getAttribute("AnswerList");

//ANSWER_STDR

List AnswerListTypeSearch=(List)request.getAttribute("AnswerListTypeSearch");
%>
</head>

<body onload="init()">

<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>

<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_insert(){
	if (fn_fomrValidate()){
	
	
			document.form.action = "<c:url value='/support/diagnosis/insertDiagnosisIdxMng.do' />";
		   	document.form.submit();
	
	
	}
}

function fn_fomrValidate(frm){
	if (document.form.idxNm.value == ""){
		alert("지표명을 입력 하십시오.");
		document.form.idxNm.focus();	
		return false;
	}
	
	return true;

}

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_list(){
	location.href =  "<c:url value='/support/diagnosis/idx/diagnoDianoIdxQesMngList.do'/>";
}
	




function Cancel(){
	location.href = "<c:url value='/support/diagnosis/idx/wghtval/diagnoWghtvalIdxMngList.do' />";	
	
}




function Qes_insert(){
	
	var regiform=document.regiform;
	regiform.action = "<c:url value='/support/diagnosis/insertDiagnosisIdxQesMngView.do' />";
	regiform.submit();
	
	
}

function RadioEvent(index){

	
	//    var customerId = $("#trcode"+index+" input:text:eq(0)").val();     
	
			//	answerstr+="/"+"-"+i+"-"+(z+1)+"-"+dia.getCODE()+"-"+qesitmid+"-"+dia.getCODENM();
		
			
				//var len=$("#answertype"+index+" input:text").length;
	
				var insertform=document.insertform;
				insertform.tempradio.value=index;
	
				
				
	
	//$("#allselect").show(); 
	
	if(index=='5'){		
		$("#basebutton").show();
		}else{
			
			$("#basebutton").hide();
			
		}
	
	
	for(var i=0;i<<%=answerlist.size()%>;i++)	
	{
		if(index==i){
			$("#answertype"+index).show();
		
			
			
			var z=0;
			//alert($("#answertype"+index+" input:text:eq("+z+")").val());
			
			
			//trcode
			
		//	alert(insertform.tempradio.value);
		}else{
			$("#answertype"+i).hide();
			
		}
	}
	
}


function init(){
	
//	$("#allselect").hide();

	var ANSWERTYCODE="<%=ANSWERTYCODE%>"
	//alert(ANSWERTYCODE);
	if("T1000"==ANSWERTYCODE){
		
		RadioEvent('0');
		
	}
	if("T2000"==ANSWERTYCODE){
		
		RadioEvent('1');
		
	}if("T3000"==ANSWERTYCODE){
		
		RadioEvent('2');
		
	}if("T4000"==ANSWERTYCODE){
		
			
		RadioEvent('3');
	}if("T5000"==ANSWERTYCODE){
		
		RadioEvent('4');
		
	}
	
	if("T6000"==ANSWERTYCODE){
		
		RadioEvent('5');
	
		
		<%
		DianoIdxQesMngVo questnm1=null;     
		String QESITM1 ="";
		for(int t=0;t<AnswerListTypeSearch.size();t++){	
			questnm1=(DianoIdxQesMngVo)AnswerListTypeSearch.get(t);
			
	%>
			
	fn_AddRowInsert('<%=questnm1.getANSWER()%>','<%=questnm1.getANSWERSTDR()%>','<%=questnm1.getALLOT()%>');
	
	
	
			<%
			
		   }
		
		
		%>
		
		
		
		
	}
	

	
	
}

var i=0;
function fn_AddRowInsert(ynoflag,baseflag,allotflag){
	// 테이블을 찾아서 로우 추가
	i++;
	
	var td="<td><input type='checkbox' name='check_qesid'></td><td><input type='text'  class='text'  value='"+ynoflag+"' style='width:100px;' /></td>";
	var td=td+"<td><input type='text'  class='text'   value='"+baseflag+"' style='width:350px;' /></td>";
	var td=td+"<td><input type='text'  class='text'   value='"+allotflag+ "'  style='width:100px;' /></td>";
	$('#tbody5').append("<tr>" +td + "</tr>");;
	 
		
//alert('test');

}


function fn_AddRowDelete(){
	
	

	// 테이블을 찾아서 로우 추가
	var tbody = $('#tbody5');
	var rows = tbody.find('tr').length;
	$('input[name=check_qesid]:checked').each(function(){$(this).closest('tr').remove();});

	
}

function Qes_save(){
	//var trid=$("#answertype tr:td:eq(0)").val();
	//alert(trid);

	//	alert($("#trcode1").length);
	
		var insertform=document.insertform;
		var index=insertform.tempradio.value;
	
		
		var answertype="/";
		
		var z=0;
		
	if(insertform.QESITM.value==""){
			alert('값을 입력하세여 ');
			return false;
		}
	
		
		var len=$("#answertype"+index+" input:text").length;
		//-0-1-2-6-예
	    
				var flag="true";
	
		for(var  i=1;i<=len;i++){
	
			if($("#answertype"+index+" input:text:eq("+z+")").val()=="")
			{
				
				alert('값을 입력하세여 ');
				flag="false";
				break;
			
			}
		
			if(i%3==0){
		
			if(len==i){
			answertype += "-"+$("#answertype"+index+" input:text:eq("+z+")").val();
		}else{
			answertype += "-"+$("#answertype"+index+" input:text:eq("+z+")").val()+"/";
		}
		//	alert(answertype);
		}else{
			
			answertype += "-"+$("#answertype"+index+" input:text:eq("+z+")").val();
			//alert(answertype);
						
			
		}			
			z++;
		}
		
		
		
		if(flag=="true"){

		insertform.ANSWRERSTR.value=answertype;
	
			
		
		insertform.action = "<c:url value='/support/diagnosis/viewDiagnosisIdxQesMngUpdate.do' />";
	insertform.submit();
	
	}
}


function addItem() {
	 var lo_table = document.getElementById("trcode");
	 var row_index = lo_table.rows.length; // 테이블(TR) row 개수
	 newTr = lo_table.insertRow(row_index);
	 newTr.idName = "newTr" + row_index;

	 newTd=newTr.insertCell(0);
	 newTd.innerHTML= "첨부파일#"+row_index;

	 newTd=newTr.insertCell(1);
	 newTd.align = "center";
	 newTd.innerHTML= "<input type=text name=subject align=absmiddle >";
	}
	function delItem(){
	 var lo_table = document.getElementById("TblAttach");
	 var row_index = lo_table.rows.length-1; // 테이블(TR) row 개수

	 if(row_index > 0) lo_table.deleteRow(row_index); 
	}
	

	function fn_delete(){
		var insertform=document.insertform;
		
		if(confirm(' 이문항을 사용중인 자가진단문항에서 제외됩니다.삭제하시겠습니까?'))
		{}else{
			return false;
			
		}
			
		
	
		
	insertform.action = "<c:url value='/support/diagnosis/viewDiagnosisIdxQesMngDelete.do' />";
	insertform.submit();

	
	
	}
	
</script>


<form:form commandName="searchVO"  name="insertform" method="post">
<input type="hidden" name="IDXID" value="<%=idxid%>">
<input type="hidden" name="QESITMID" value="<%=qesitmid%>">
<input type="hidden" name="tempradio">
<input type="hidden" name="ANSWRERSTR">
<input type="hidden" name="SORTORDR" value="<%=SORTORDR%>">






<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 > 지표별 자가진단 문항 조회/수정</div>
		<h2>지표별 자가진단 문항 조회/수정</h2>
	</div>

	<table class="vblType1" summary="설문등록 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="auto"/>
		</colgroup>
		<tr>
			<th><label for="search1">지표</label></th>
			<td>

	<%= idxnm%>
	
				-
	<%= levelnm%>			
	
		
			</td>
		</tr>
		<tr>
			<th><label for="label_q1">설문문항</label></th>
			<td>
			
		<% 	
		DianoIdxQesMngVo questnm=null;     
		String QESITM ="";
		for(int i=0;i<AnswerListTypeSearch.size();i++){	
			questnm=(DianoIdxQesMngVo)AnswerListTypeSearch.get(i);
			QESITM=questnm.getQESITM();
		   }
		
		%>	
		
		
		
		
		
		<input type="text" id="label_q1" name="QESITM" class="text"style="width:550px;height:50px;" value="<%=QESITM %>" /></td>
		
		
		
		
		</tr>
		<tr>
			<th><label for="label_a1">답변유형</label></th>
			<td>
			
			 <c:forEach var="AnswerList" items="${AnswerList}" varStatus="status">
			<form:radiobutton id="label_a1" name="label_a1" path="ANSWERTYCODE" value="${AnswerList.CODE}" onClick="RadioEvent('${status.index}')"/><label for="label_a1">${AnswerList.CODENM}</label>
			
			</c:forEach>
			</td>
		</tr>
		<!-- 다중선택형 일 경우만 보여짐 -->
		<tr>
			<th><label for="label_a6">답변항목</label></th>
			<th class="btn_taR">
				
			<div id="basebutton">	
				<span class="button small"><input type="button" value="추가" onClick="fn_AddRowInsert('','','')"/></span>
				<span class="button small"><input type="button" value="삭제" onClick="fn_AddRowDelete()"/></span>
			</div>
			</th>
		</tr>
		<tr>
			<td colspan="2">
					<div id="allselect">
					<%
					List naswerlist=null;	
					String answerstr="";
					String casetoken="";
					
					for(int i=0;i<answerlist.size();i++){
						naswerlist=(List)answerType.getArray(i);
						System.out.println("i===="+i);	
				%>
					
					
							<div id="answertype<%=i%>">
				
				<table class="tblType1" summary="목록 테이블입니다.">
					<colgroup>
						<col width="8%" />
						<col width="20%" />
						<col width="auto" />
						<col width="20%" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col">순번</th>
							<th scope="col">답변</th>
							<th scope="col">답변기준</th>
							<th scope="col">배점</th>
						</tr>
					</thead>
					<tbody id="tbody<%=i%>">
				<%
				DianoIdxQesMngVo dia=null;
				System.out.println("==========");
				//casetoken+=answerstr;
				System.out.println(casetoken);
			
				
				for(int z=0;z<naswerlist.size();z++){
						 dia=(DianoIdxQesMngVo)naswerlist.get(z);
					//	 AnswerListTypeSearch.get(0);
					//	 AnswerListTypeSearch.get(1);
					//	 AnswerListTypeSearch.get(2);
									
					%>
						<tr id="trcode<%=i%>" class="trcode<%=i%>">
							<td><%=z+1 %></td>
							
							
							<% 	
		DianoIdxQesMngVo questnm2=null;     
		String ANSWERSTDR="";
		String ANSWER="";
		String ALLOT="";
	
		if(dia.getCODEID().equals(ANSWERTYCODE)){
			questnm2=(DianoIdxQesMngVo)AnswerListTypeSearch.get(z);
			ANSWER=questnm2.getANSWER();
			
			ANSWERSTDR=questnm2.getANSWERSTDR();
			ALLOT=questnm2.getALLOT();
			
			
			//배열에대한 것으로 뿌릴수있음
		//문제는 해당하는 놈으로 값을 담아야하는것 
		%>	
			<td><input type="text" id="ANSWRE<%=i %>" class="text" value="<%=ANSWER%>"  style="width:100px;" /></td>
						
							
							<td><input type="text" id="CODENM" class="text" value="<%=ANSWERSTDR%>" style="width:350px;" /></td>
							
							
							
							<td><input type="text" id="ANSWRE<%=i %>" class="text" value="<%=ALLOT%>" style="width:100px;" /></td>
						
		
						</tr>
				
				
				
				
				<%
		//}
		}else{
	%>
		<td><input type="text" id="ANSWRE<%=i %>" class="text" value="<%=dia.getCODENM()%>"  style="width:100px;" /></td>
				<td><input type="text" id="CODENM" class="text" value="" style="width:350px;" /></td>
							<td><input type="text" id="ANSWRE<%=i %>" class="text" value="<%=dia.getCODE()%>" style="width:100px;" /></td>
						
						</tr>
		
	
	
	<%
		}
		
		
		}
				
					%>
					
										    <input type="hidden"  id ="hiid<%=i%>" name="hitext" value="<%=answerstr%>">
		
					</tbody>
				</table>
					</div>	
					
					<%
					//answerstr="";
						
					
					}
					
					
					%>
						
					
					</div>
			</td>
		</tr>
		<!--// 다중선택형 일 경우만 보여짐 -->
	</table>




	<!-- 하단버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="삭제" onclick="fn_delete()"/></span>
		<span class="button"><input type="button" value="수정"  onclick="Qes_save()"/></span>
		<span class="button"><input type="button" value="목록" onclick="fn_list()"/></span>
		
	
	</div>
	<!--/ 하단버튼영역 -->
</form:form>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
