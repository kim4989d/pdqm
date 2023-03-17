<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/html/pdqm/admin/include/top.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="egovframework.pdqm.admin.support.diagnosis.idx.model.dianoIdxSelfMngPVo" %>


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


 
 //Tray answerType=(Tray)request.getAttribute("AnswerListType");
List resultList=(List)request.getAttribute("resultList");
%>
</head>



<body>
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>



<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_insert(){
	
	
	//alert(document.form.DATABASETYID.value);
	
	
	var pointstr="/";
	 var max="";
	 var min="";
	for(var i=0;i<<%=resultList.size()%>;i++){
		var len=$("#pointcodetr"+i+" input:text").length;
			
	
	
		
		
		
		for(var z=0;z<len;z++){
			
		//	var value=$("#pointcodetr"+i+" input:text:eq("+z+")").val()
			
			if(z%2==0){
				//최대
			  max+=eval($("#pointcodetr"+i+" input:text:eq("+z+")").val())+"/";
				
			}else{
				//최소
				 min+=eval($("#pointcodetr"+i+" input:text:eq("+z+")").val())+"/";
				
			}
			var label=	$("#CODENM"+i).text();
					
			
			
			
			if($("#pointcodetr"+i+" input:text:eq("+z+")").val()==""){
				
				   alert('값을 입력하세여 ');
				return false;
			}
			
			//	alert($("#pointcodetr"+i+" input:text:eq("+z+")").val());
			pointstr+="#"+$("#pointcodetr"+i+" input:text:eq("+z+")").val();
		
		
		
		
		}
	
		
		/*
		alert('label:'+label);
		alert('max:'+max);
		alert('min:'+min);
		
		
		
		var mintemp;
		var maxtemp;
		
			if(max<=min){
			alert(label);
				alert(label+'최소값이 크다');
				
				
				
				return false;
			}
		
			
		if(maxtemp >min){
			
			
			
		}
		*/	
			
		
		pointstr+="#"+$("#IDXLEVEL"+i).val()+"#"+$("#CODE"+i).val()+"#"+$("#RESULTDC"+i).val()+"#"+$("#EMPHSIDXRESULTDC"+i).val();
		
	if(<%=resultList.size()-1%> !=i){
		pointstr+=	"/";
	}
	
	}
	
	var maxcheck=new Array();
	var mincheck=new Array();
	
	maxcheck=min.split("/");
	mincheck=max.split("/");
	var z=0;
	var  index=0;
	var indexcompare=0;
	for(var i=0;i<maxcheck.length-1;i++){
			var codenm=$("#CODENM"+ i).text();
		++z;
		
		
		if(eval(maxcheck[i] <eval(mincheck[i]))){
			//var codenm2=$("#CODENM"+ (index-1)).text();
			alert(codenm+'의 최소값이 최대값을 넘을수없습니다 ');
			return false;
		}
		
		if(eval(mincheck[i]) <eval(maxcheck[z])){
			
			alert(codenm+'의 최소값이 다음최대값을  넘을수 없습니다 ');	
			return false;
		}		
	}

	
	
		
	//minpoint-maxpoint-ldxlevel-code
	
	//var len=$("#answertype"+index+" input:text").length;
	
	document.form.POINTSTR.value=pointstr;
	document.form.HDATABASETYID.value=document.form.DATABASETYID.value;
	document.form.HIDXID.value=document.form.IDXID.value;
	
	
	

	document.form.action = "<c:url value='/support/diagnosis/idx/result/viewDiagnosisMngInsert.do' />";
	
		
			
			document.form.submit();
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
	
	
	
function fn_cancel(){
	location.href =  "<c:url value='/support/diagnosis/idx/result/selectDianoIdxSelfMngPList.do'/>";	
}	



</script>

<form:form commandName="searchVO"  name="form" method="post">
	<input name="HDATABASETYID" type="hidden" />
	<input name="HIDXID" type="hidden" />
	<input name="POINTSTR" type="hidden" />



<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단> 지표별 자가진단 결과 점수 등록</div>
		<h2>지표별 자가진단 결과 점수 등록</h2>
	</div>

	<!-- search -->
	<fieldset>
		<legend>검색조건선택</legend>
		<table class="searchType1" summary="검색조건선택 테이블입니다.">
			<colgroup>
				<col width="20%" />
				<col width="30%"/>
				<col width="20%" />
				<col width="auto"/>
			</colgroup>
			<tr>
				<th><label for="search1">데이터베이스유형</label></th>
				<td>
				
				
					<form:select path="DATABASETYID"  cssClass="text"  Disabled ="true ">
                   	<form:option value="" label="전체" />
      		
          	<c:forEach items="${dbselect}" var="dbselect" varStatus="status" >
	               	<form:option value="${dbselect.DATABASETYID}" label="${dbselect.DATABASETYNM}" />
      			</c:forEach>    
                   </form:select>
	
				
				
				</td>
				<th><label for="search2">지표</label></th>
				<td>
				
					<form:select path="IDXID"  cssClass="text" Disabled ="true ">
                   	<form:option value="" label="전체" />
      		
          	<c:forEach items="${idxselect}" var="idxselect" varStatus="status" >
	               	<form:option value="${idxselect.IDXID}" label="${idxselect.IDXNM}" />
      			</c:forEach>    
                   </form:select>
		
				
				</td>
			</tr>
		</table>
		<div class="btnArea">
<!-- 			<span class="button"><input type="button" value="조회" /></span> -->
		</div>
	</fieldset>
	<!--// search -->

	<!-- listTable: Start -->
	<table class="tblType1 tblSpace" summary="목록 테이블입니다.">
		<colgroup>
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">최소</th>
				<th scope="col">연산자</th>
				<th scope="col">결과</th>
				<th scope="col">부등호</th>
				<th scope="col">최대</th>
			</tr>
		</thead>
		<tbody>
		          		  
			
			<%
			dianoIdxSelfMngPVo dia=null;
			//String diatemp=new String[resultList.size()];
			for(int i=0;i<resultList.size();i++){
					dia=(dianoIdxSelfMngPVo)resultList.get(i);
		%>
			
			
			 	<tr id="pointcodetr<%=i%>">
				<td><input type="text" class="text" id="mininput" title="최소값 입력" value="<%=dia.getMUMM()%>" maxlength="3"/></td>
				<td><%="<=" %></td>
				<td><label id="CODENM<%=i%>"><%=dia.getCODENM()%></label></td>
				<td>
				
				<%
					if(i==0){
					%>	
							<%="<=" %>
						<%
					}else{
				%>
				<%="<" %>
				<%
					}
				%>
				
				
				</td>
				<td><input type="text" class="text" id="maxinput" title="최대값 입력" value="<%=dia.getMXMM()%>" maxlength="3"/></td>
				<input type="hidden" id="CODE<%=i %>" value="<%=dia.getCODE()%>">
				<input type="hidden" id="IDXLEVEL<%=i %>" value="<%=dia.getIDXLEVEL()%>">
				<input type="hidden" id="RESULTDC<%=i %>" value="<%=dia.getRESULTDC()%>">
				<input type="hidden" id="EMPHSIDXRESULTDC<%=i %>" value="<%=dia.getEMPHSIDXRESULTDC()%>">
				
				</tr>
			<%	
		
			
			
			
			}
				 %>
			
		
		</tbody>
	</table>
	<!-- //listTable: End -->


	<!-- 버튼영역 -->
	<div class="btnArea btn_taR">
		<span class="button"><input type="button" value="수정" onclick="fn_insert()"/></span>
		<span class="button"><input type="button" value="목록" onClick="fn_cancel()"/></span>
	</div>
	<!--// 버튼영역 -->
</form:form>

<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
