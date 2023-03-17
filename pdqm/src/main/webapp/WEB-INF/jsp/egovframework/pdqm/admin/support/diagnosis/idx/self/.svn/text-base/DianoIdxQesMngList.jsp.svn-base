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

List resulttab = null; 
if(request.getAttribute("resultList") !=null){
	resulttab=(List)request.getAttribute("resultList");
System.out.println("1:"+resulttab.size());

}
 
 


 
 Tray resultView =null;
 if(request.getAttribute("resultView") !=null){
  resultView=(Tray)request.getAttribute("resultView");
  System.out.println("2:"+resultView.size());


 }
 
 
 
%>
</head>

<body onload="valLoad()">
<%@ include file="/html/pdqm/admin/include/menu.jsp" %>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>


 <script type="text/javascript">
 <!--
 jQuery(function($){
  // List Tab Navigation
  var tab_list = $('div.tab.list');
  var tab_list_i = tab_list.find('>ul>li');
  tab_list.removeClass('jx');
  tab_list_i.find('>dl').hide();
  tab_list.find('>ul>li:first-child').find('>dl').show();
  tab_list.css('height', tab_list.find('>ul>li:first-child>dl').height()+40);
  tab_list.find('>ul>li:first-child').addClass('on');
  
  function listTabMenuToggle(event){
   var t = $(this);
   tab_list_i.find('>dl').hide();
   t.next('dl').show();
   tab_list_i.removeClass('on');
   t.parent('li').addClass('on');
   tab_list.css('height', t.next('dl').height()+40);
   return false;
  }
  tab_list_i.find('>a[href=#]').click(listTabMenuToggle).focus(listTabMenuToggle);
  
  
 
 });

 jQuery(function($){
  $(".qType1").show();
  $(".q_btn").click(function(){
   $(".qType1").hide();
   $(this).next('.qType1').show();
   return false;
  })
 });
 //-->
 </script>
 
 <script type="text/javaScript" language="javascript">
 
 function fn_insert(QESITMID,IDXID){
	
	var regiform =document.regiform;
	
	
	regiform.action = "<c:url value='/support/diagnosis/insertDiagnosisIdxMng.do' />";
	regiform.submit();
	
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
	



function Cancel(){
	location.href = "<c:url value='/support/diagnosis/idx/wghtval/diagnoWghtvalIdxMngList.do' />";	
	
}



	function Qes_insert(QESITMID,IDXID,LEVELNM,IDXNM,TABIDXID,ANSWERTYCODE,flag){
	
	var regiform=document.regiform;
	regiform.QESITMID.value=QESITMID;
	regiform.IDXID.value=IDXID;
	regiform.LEVELNM.value=LEVELNM;
	regiform.IDXNM.value=IDXNM;
	regiform.TABIDXID.value=TABIDXID;
	regiform.ANSWERTYCODE.value=ANSWERTYCODE;
	
	
	
	if(flag=="insert"){
	
	regiform.action = "<c:url value='/support/diagnosis/insertDiagnosisIdxQesMngView.do' />";
	}

	if(flag=="update"){
		regiform.action = "<c:url value='/support/diagnosis/updateDiagnosisIdxQesMngView.do' />";
	}	
	
	regiform.submit();
	
}

	
	
	
	</script>

<form:form commandName="searchVO"  name="regiform" method="post">
<input type="hidden" name="QESITMID">
<input type="hidden" name="IDXID">
<input type="hidden" name="LEVELNM">
<input type="hidden" name="IDXNM">
<input type="hidden" name="TABIDXID">
<input type="hidden" name="ANSWERTYCODE">




<!-- contents: Start -->
	<div class="title">
		<div class="locationMap">품질수준 자가진단관리 > 지표별 자가진단 > 지표별 자가진단 문항 관리</div>
		<h2>지표별 자가진단 문항 관리</h2>
	</div>

	<div class="tab list jx" >
		<ul>
			<%
				
			DianoIdxQesMngVo tabvo=null;
			
			List	 resultreponse =null;
			for(int i=0;i<resulttab.size();i++){
				tabvo=(DianoIdxQesMngVo)resulttab.get(i);
			%>
			<li>
				
				<input type="hidden" id="tab">
				<a href="#"><span><%=tabvo.getIDXNM() %>(<%=tabvo.getQESITMCOUNT() %>)</span></a>
				<dl>
				
					
					<%
					
							 resultreponse=(List)resultView.getArray(Integer.parseInt(tabvo.getIDXID()));
							// System.out.println("resultreponse:"+resultreponse.size());
								
							
					    				String tempid="";									
						    int totalcount=0;
							 
						    String QESITM_ID="";
						    //System.out.println("resultreponse.size():"+resultreponse.size());
							 for(int z=0;z<resultreponse.size();z++){
								 DianoIdxQesMngVo	  dia=(DianoIdxQesMngVo)resultreponse.get(z);
						    
								 
								 if(!dia.getIDXID().equals(tempid)){
						    		//	System.out.println("dia.getIDXID():"+dia.getIDXID()+" tempid:"+tempid+"totalcount:"+totalcount);
						    		%>
				
					
					
					
					<dt><%=dia.getIDXNM() %>(<%=dia.getQESITMCO() %>)
						
						
						<span  style="position:absolute;top:5px;right:10px;height:20px;">
							<em class="button small"  ><input type="button" value="문항등록"  onClick="Qes_insert('<%="" %>','<%=dia.getIDXID()%>','<%=dia.getIDXNM()%>','<%=tabvo.getIDXNM()%>','<%=tabvo.getIDXID()%>','T1000','insert')"/></em>
<!-- 							<em class="button small"><input type="button" value="문항수정" /></em> -->
<!-- 							<em class="button small"><input type="button" value="문항삭제" /></em> -->
						</span>
				
					</dt>
							<%
			
							} 
							tempid=dia.getIDXID();
						  
						//	System.out.println("dia.getQESITMID():"+dia.getQESITMID()+" QESITM_ID:"+QESITM_ID);
					//		System.out.println("answer:"+dia.getANSWER());
						
							
					if( !dia.getQESITMCO().equals("0") && !dia.getQESITMID().equals(QESITM_ID) ){
						  
						  
						  %>
							<dd>
						<ol class="qType1">
							<li><a href="#" onclick="Qes_insert('<%=dia.getQESITMID()%>','<%=dia.getIDXID()%>','<%=dia.getIDXNM()%>','<%=tabvo.getIDXNM()%>','<%=tabvo.getIDXID()%>','<%=dia.getANSWERTYCODE()%>','update')"><label for="q7"><%=dia.getQESITM() %></label></a></li>
												</ol>
							<%
							
							//for(int t=0;t<Integer.parseInt(dia.getANSWERCO());t++){
								// DianoIdxQesMngVo	  answer=(DianoIdxQesMngVo)resultreponse.get(t);
								
								 //System.out.println("answer.getQESITMID():"+answer.getQESITMID()+" answer.getANSWERID():"+answer.getANSWERID());
								// System.out.println("answer.getANSWERID():"+answer.getANSWERID());
								 
								 %>
								
							
						
					</dd>
							
					<%
					  }
					
					if(!dia.getQESITMCO().equals("0"))
					{
							
							
							
							%>
							
							
								<ul>
							
									<li><input type="radio" id="a7_1"  value="<%=dia.getALLOT() %>"/> <label for="a7_1"><%=dia.getANSWER() %></label></li>
					
								</ul>
							
							
							
							<%
					}
							QESITM_ID=dia.getQESITMID();
					
							}
					%>
						</dl>
			</li>
		
		<%
		}
		%>
			
					</ul>
	</div>

	<!-- 버튼영역 -->
	<div class="btnArea tblSpace">
<!--  		<span class="button"><input type="button" value="다음" /></span>  -->
	</div>
	<!--/ 버튼영역 -->

</form:form>
<!-- contents: End -->
<%@ include file="/html/pdqm/admin/include/bottom.jsp" %>
