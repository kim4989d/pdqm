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
	


Tray answerType=(Tray)request.getAttribute("AnswerListType");
List answerlist=(List)request.getAttribute("AnswerList");

String ANSWERTYCODE=(String)request.getAttribute("ANSWERTYCODE");

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
		
				var insertform=document.insertform;
				insertform.tempradio.value=index;
			
			
			
			//var customerId = $("#trcode"+index+" input:text:eq("+i+")").val();
				
			
	if(index=='5'){		
	$("#basebutton").show();
	}else{
		
		$("#basebutton").hide();
		
	}
	//$("#allselect").show(); 
	for(var i=0;i<<%=answerlist.size()%>;i++)	
	{
		if(index==i){
			$("#answertype"+index).show();
		
			//trcode
			
		
		}else{
			$("#answertype"+i).hide();
			
		}
	}
	
}


function init(){
	
//	$("#allselect").hide();
	RadioEvent('0');
	
	
}


function Qes_save(){
		
		var insertform=document.insertform;
		var index=insertform.tempradio.value;
	
		var answertype="/";
		
	/*	
		for(var  i=0;i<3;i++){
			
		alert($("#trcode"+index+" input:text:eq("+i+")").val());
		
		}
		*/
		var z=0;
		
		
		
		//answerstr+="/"+"-"+i+"-"+(z+1)+"-"+dia.getCODE()+"-"+qesitmid+"-"+dia.getCODENM();
		//순번- 답변-    답변기준- 배점 
		//sort - answer-ANSWERSTDR - allot 
		
		
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
		
				//alert($("#answertype"+index+" input:text:eq("+z+")").val());
			
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
		
		//alert(answertype);
		
	if(flag=="true"){
		insertform.ANSWRERSTR.value=answertype;
	
		
			
		insertform.action = "<c:url value='/support/diagnosis/viewDiagnosisIdxQesMngInsert.do' />";
		insertform.submit();
		
	}
}

var i=0;
function fn_AddRowInsert(){
	// 테이블을 찾아서 로우 추가
	
	
	
	var td="<td><input type='checkbox' name='check_qesid'></td><td><input type='text'  class='text'   style='width:100px;' /></td>";
	var td=td+"<td><input type='text'  class='text'   style='width:350px;' /></td>";
	var td=td+"<td><input type='text'  class='text'   style='width:100px;' /></td>";
	$('#tbody5').append("<tr>" +td + "</tr>");;
	 
		
//alert('test');

}




function fn_AddRowDelete(){
	
	
	// 테이블을 찾아서 로우 추가
	var tbody = $('#tbody5');
	var rows = tbody.find('tr').length;
//	var newRow = tbody.find('tr:last').remove();

	
	
	 		 $('input[name=check_qesid]:checked').each(function(){$(this).closest('tr').remove();});

	 

}

</script>


<form:form commandName="searchVO"  name="insertform" method="post">
<input type="hidden" name="IDXID" value="<%=idxid%>">
<input type="hidden" name="QESITMID" value="<%=qesitmid%>">
<input type="hidden" name="tempradio">
<input type="hidden" name="ANSWRERSTR">








<%@ include file="/html/pdqm/admin/include/menu.jsp" %>

<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 > 지표별 자가진단 문항 등록</div>
		<h2>지표별 자가진단 문항 등록</h2>
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
			
		<input type="text" id="label_q1" name="QESITM" class="text"style="width:550px;height:50px;"  /></td>
		
		
		
		
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
		
				<span class="button small"><input type="button" value="추가" onClick="fn_AddRowInsert()" /></span>
				<span class="button small"><input type="button" value="삭제" onClick="fn_AddRowDelete()" /></span>
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
				
				<table class="tblType1" summary="목록 테이블입니다." id="tblType1" >
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
				for(int z=0;z<naswerlist.size();z++){
						 dia=(DianoIdxQesMngVo)naswerlist.get(z);
					 System.out.println("다중 척도 == z:"+z);
					%>
						<tr id="trcode<%=i%>">
							<td><%=z+1 %></td>
							<td><input type="text" id="ANSWRE<%=i %>" class="text" value="<%=dia.getCODENM()%>"  style="width:100px;" /></td>
							<td><input type="text" id="ANSWRE<%=i %>" class="text"  style="width:350px;" /></td>
							<td><input type="text" id="ANSWRE<%=i %>" class="text" value="<%=dia.getCODE() %>" style="width:100px;" /></td>
					<%
						
			//		System.out.print("dia.getCODE():"+dia.getCODE()+"+dia.getCODENM():"+dia.getCODENM() + " dia.getCODE():"+dia.getCODE());
				//	answerstr+="/"+"-"+i+"-"+(z+1)+"-"+dia.getCODE()+"-"+qesitmid+"-"+dia.getCODENM();
		
					//System.out.println(answerstr);
				%>
				
		
						</tr>
				
				
				<%
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
		
		
		<span class="button"><input type="button" value="등록"  onclick="Qes_save()"/></span>
		<span class="button"><input type="button" value="목록" onclick="fn_list()"/></span>
		
	</div>
	<!--/ 하단버튼영역 -->
</form:form>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
