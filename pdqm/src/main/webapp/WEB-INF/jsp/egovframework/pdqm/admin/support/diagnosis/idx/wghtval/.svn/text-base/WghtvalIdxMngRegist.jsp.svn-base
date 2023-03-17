<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="egovframework.pdqm.admin.common.tray.Tray" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxWghtvalMngVo" %>




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

 Tray righttray =null;
List lefttray =null; 
if(request.getAttribute("rightList") !=null){
  righttray=(Tray)request.getAttribute("rightList");
 lefttray=(List)request.getAttribute("leftList");
 }



int leftsize=lefttray.size();


%>
</head>

<body onload="valLoad()">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>

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
	location.href =  "<c:url value='/support/diagnosis/selectDiagnosisIdxMngList.do'/>";
}
	
function leftMenu(left){
	
	
	
	//$("#rightmenu").css('display','inline');

for(var i=0;i<=<%=leftsize%>;i++){
	
		if(left==i){
			$("#right"+i).show();	
			
			
		label = $("label[for='number"+i+"']").css('color','purple'); 
	}else{
				
		
		$("#right"+i).hide();	
		label = $("label[for='number"+i+"']").css('color','gray'); 
		
	}
	
}

//$("#allhide").hide();
}




function valLoad(){

	
	leftMenu('0');

}

function totalresult(){
	
//	HDATABASETYID
	$("#HDATABASETYID").removeAttr("disabled");
	//	var optionlength=$("#resultviewright").attr("options").length;
		var letotalresult=0;
		var leftotalname;
		var righttotalresult=0;
		var rightvalue="";
		var rightkey="";
		
		var leftvalue="";
		var label;
		var upleftkey="";
		var uprightkey;
		//	alert($("#0 :input:eq(0)").val());
		var regiform = document.regiform;
		//alert($("#rightkey1-0").val());
	//rightkey8-7
		
	for(var i=0;i<<%=leftsize%>;i++){
			var letotalresult=letotalresult+eval($("#no"+i).val());
			
			
			 if($("#no"+i).val()==""){
				 
				 alert('지표가중치의 값을 입력하셔야 합니다. ');
			
			 return false;
				 
			 }
			
			
			upleftkey=$("#idxidkey"+i).val();
			
			leftvalue=leftvalue+"/"+$("#no"+i).val()+upleftkey;
			 label = $("label[for='number"+i+"']").text(); 
			
			
			 
			 
			 var  righttotalresult=0;
			 for(var z=0;z<eval($("#right"+i +" :text").length);z++){
			 
				 rightkey=$("#right"+i +" :text:eq("+z+")").val();
				 if(rightkey==""){
					 
					 alert('특성 가중치의 값을 입력하셔야 합니다. ');
				
				 return false;
					 
				 }
				 
				 righttotalresult=righttotalresult+eval(rightkey);
				 rightvalue=rightvalue+"#" +$("#rightkey"+i+"-"+z).val()+"-"+rightkey;
			
			}
			var tempnull=eval($("#right"+i +" :text").length);
			
			if(righttotalresult  !=100 && tempnull !=0){
				alert("현재 특성 "+label +'의 합이 지금 '+righttotalresult+'입니다 합이 100이어야 합니다');
			 return false;
			}
		
	
	}
		if(letotalresult !=100){
			alert('현재지표의 합은 '+letotalresult+'입니다 지표는 합이 100이어야 합니다');
		return false;
		}

		
		regiform.rightkeys.value=rightvalue;
		regiform.leftkeys.value=leftvalue;

		//alert(regiform.leftkeys.value);
		
		//alert(regiform.rightkeys.value);
		
		
		if(confirm("<spring:message code='common.update.msg'/>")){
			
			regiform.action = "<c:url value='/support/diagnosis/idx/wghtval/WghtvalIdxMngInsert.do'/>";
		   	regiform.submit();		
			
		}
		
		
	
		
}


function Cancel(){
	location.href = "<c:url value='/support/diagnosis/idx/wghtval/diagnoWghtvalIdxMngList.do' />";	
	
}

function fn_init(){
	
		
	$("#HDATABASETYID").removeAttr("disabled");
		var regiform=document.regiform;
		regiform.action = "<c:url value='/support/diagnosis/idx/wghtval/WghtvalIdxMngRegist.do'/>";
   		regiform.submit();

}


</script>

<form:form commandName="searchVO"  name="regiform" method="post">


<input type="hidden" name="leftkeys">
<input type="hidden" name="rightkeys">


<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 >지표별 자가진단  >가중치 등록</div>
		<h2>가중치 등록</h2>
	</div>
	<label></label>
	<table class="searchType1" summary="데이터베이스유형 테이블입니다." >
		<colgroup>
			<col width="20%" />
			<col width="auto"/>
		</colgroup>
		<tr>
			
			<th>데이터베이스유형</th>
			<td>
		         <form:select path="HDATABASETYID" Class="text" onchange="fn_list()" disabled="true">
          	<c:forEach items="${selectbox}" var="selectbox" varStatus="status">
	               	<form:option value="${selectbox.DATABASETYID}" label="${selectbox.DATABASETYNM}" />
      			</c:forEach>    
          			<select>
          			</select>
                   </form:select>
			</td>
		</tr>
	</table>

	<div class="ov_h tblSpace">
		<div class="leftArea" style="width:45%;">
			<table class="tblType1 tblSpace" summary="지표별 가중치 등록 테이블입니다." >
				<colgroup>
					<col width="30%" />
					<col width="auto"/>
				</colgroup>
				<thead>
					<tr >
						<th>지표</th>
						<th>가중치</th>
					</tr>
				</thead>
				<tbody>
				
				<%
				//System.out.println("size:"+lefttray.size());
				 Double totalresult =0.00;
				for(int i=0;i<lefttray.size();i++){
					DiagnoIdxWghtvalMngVo leftList=(DiagnoIdxWghtvalMngVo)lefttray.get(i);
				%>
					<tr>
						<th  onclick="leftMenu('<%=i%>')" ><label for="number<%=i%>" id="leftmenu<%=i %>"><%=leftList.getIDXNM()%></label></a></th>
						<td><input type="text" id="no<%=i %>" name="leftmenu<%=i %>"  class="text" style="width:100px;" value="<%=leftList.getIDXWGHTVAL() %>" maxlength="5"/>
					
					<input  type="hidden" id="idxidkey<%=i%>" value="<%="-"+leftList.getUPPERIDXID()+"-"+leftList.getIDXLEVEL()+"-"+leftList.getSORTORDR()+"-"+ leftList.getIDXID()%>"   width="0" height="0"/>
					</td>
					</tr>
					
					
					<%
					 totalresult+=Double.parseDouble(leftList.getIDXWGHTVAL());
					
				}
					%>
			
					</tbody>
					
			<tfoot>
					<tr>
						<th>합</th>
						<td id="totalresult">100</td>
						
					</tr>
				</tfoot>
			
			
			</table>
		
		</div>
		<div class="rightArea" style="width:45%;" id="rightmenu">
		
    	
			<%
					List temp=null;
					List leftsort=null;
		Iterator it=righttray.keySet();
		
		System.out.println("righttray size:"+righttray.size());
		for(int x=0;it.hasNext();x++){
    		
			int key=Integer.parseInt(String.valueOf(it.next()));
    		temp=	(List)righttray.getArray(key);
			//DiagnoIdxWghtvalMngVo leftList=(DiagnoIdxWghtvalMngVo)lefttray.get(x);
			
			System.out.println("x key:"+x+"\t");
			//System.out.println("left key:"+leftList.getIDXID()+"\t");
    		
    		%>
    		<div id="right<%=x%>" name="<%=key%>">
    		
    			<table class="tblType1 tblSpace" summary="특성별 가중치 등록 테이블입니다."  >
				<colgroup>
					<col width="30%" />
					<col width="auto"/>
				</colgroup>
				<thead>
					<tr>
						<th>특성</th>
						<th>가중치</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>합</th>
						<td>100</td>
					</tr>
				</tfoot>
				<tbody>
		
    		<%
    		
    		System.out.println("size: "+temp.size());
    		for(int z=0;z<temp.size();z++){
    		DiagnoIdxWghtvalMngVo dia=(DiagnoIdxWghtvalMngVo)temp.get(z);
			System.out.print("right key:"+dia.getIDXID()+"\t");
    		
    		%>
    		
    			<tr>
						<th><label for="no21"><%=dia.getIDXNM() %></label></th>
						<td><input type="text" id="no21" name="no21" class="text" style="width:100px;" value="<%=dia.getIDXWGHTVAL() %>" maxlength="5"/>
						<input type="hidden" id="rightkey<%=x%>-<%=z%>" value="<%="-"+dia.getDATABASETYID()+"-"+dia.getSORTORDR()+"-"+dia.getUPPERIDXID()+"-"+dia.getIDXLEVEL()+"-"+dia.getIDXID()%>"  />
						</td>				
					</tr>
				
    		<%
    		}
    	
    		%>
    		
    			</tbody>
				</table>
				</div>
    		
    		<%
    	}
		   
		
		%>	
		
    			</div>
		
	</div>
	<div class="btnArea btn_taR">
		
		<span class="button"><input type="button" value="등록" onClick="totalresult()"/></span>
		<span class="button"><input type="button" value="목록" onClick="Cancel()"/></span>
		<span class="button"><input type="button" value="초기화" onClick="fn_init()"/></span>
	</div>
	
	</form:form>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
