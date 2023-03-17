<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> 공공정보 품질관리 지원센터 </title>
<link href="<c:url value='/css/pdqm/admin/admin.css'/>" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/jquery-1.4.2.min.js' />" ></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/utl/EgovCmmUtl.js'/>"></script>
<script type="text/javaScript" language="javascript">

function fn_addRow(){

    var vartr, vartd; 
    var i; 
    var seno = "0" 
    var mrow; 
    var row; 
    var maxno = 0; 

    //vartr = tblist.insertRow(); 
    mrow = tblist.rows.length; 
    vartr = tblist.insertRow(mrow)	
    
    vartr.id = "abbrow_" + maxno; 
    //alert!(maxno); 
    vartd = vartr.insertCell(0); 
    vartd.align = "center"; 
    vartd.width = 25; 
    vartd.innerHTML = "<input type='checkbox' name='checkbtn' value='' />"; 

    vartd = vartr.insertCell(1); 
    vartd.align = "center"; 
    vartd.width = 160; 
    vartd.innerHTML = "<input type='text'name='answer_"+mrow+"' class='text'  style='width:100px;' />"; 

    vartd = vartr.insertCell(2); 
    vartd.align = "center"; 
    vartd.width = 50; 
    vartd.innerHTML = "<input type='text' name='answerStdr_"+mrow+"' value='' class='text' style='width:350px;' />"; 

    vartd = vartr.insertCell(3); 
    vartd.align = "center"; 
    vartd.width = 100; 
    vartd.innerHTML = "<input type='text' name='allot_"+mrow+"' onblur='onlyNum(this)' style='width:100px;'  value='' />"; 

		
}

function fn_delRow() {    
	  for(var i=1;i<tblist.rows.length;i++) {
	    if(tblist.rows[i].firstChild.firstChild.checked==true) {
	    	tblist.rows[i].removeNode(true);
	      i--;
	    }
	  }
}

function fn_answer(searchAnswerTyCode){

	var varForm			= document.form;
		varForm.searchAnswerTyCode.value  = searchAnswerTyCode.value;
	varForm.target 		= "answer_iframe";
	varForm.action      = "<c:url value='/support/diagnosis/level/selectQuizAnswer.do'/>";
	varForm.submit();
		
}

</script>

</head>

<body>


<form:form commandName="searchVO"  name="form" method="post">
	
	<p class="btnArea btn_taR"> 
		<c:if test="${searchVO.searchAnswerTyCode == 'T6000'}">
		<span class="button small"> <input type="button" onclick="fn_addRow()" value="추가" /></span>
		<span class="button small"> <input type="button" onclick="fn_delRow()" value="삭제" /></span>
		</c:if>
	</p>
	
	<table class="tblType1" id="tblist" summary="목록 테이블입니다.">
		<colgroup>
			<col width="8%" />
			<col width="20%" />
			<col width="auto" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">답변</th>
				<th scope="col">답변기준</th>
				<th scope="col">배점</th>
			</tr>
		</thead>
		<tbody  >
			<c:forEach items="${resultList}" var="resultList" varStatus="status">
				<tr>
					<c:if test="${searchVO.searchAnswerTyCode == 'T6000'}">
					<td><input type='checkbox' name='checkbtn' value='${status.count}' /></td>
					</c:if>
					<c:if test="${searchVO.searchAnswerTyCode != 'T6000'}">
					<td>${status.count}</td>
					</c:if>
					
					<input type="hidden" name="answerId_${status.count}" value="${resultList.code}" />
					<td><input type="text" name="answer_${status.count}" value="${resultList.codeNm }" class="text"  style="width:100px;" /></td>
					<td><input type="text" name="answerStdr_${status.count}" value="${resultList.answerStdr}" class="text" style="width:350px;" /></td>
					<td><input type="text" name="allot_${status.count}" value="${resultList.allot }" onblur="onlyNum(this)" class="text" value="" style="width:100px;" /></td>
				</tr>
			</c:forEach>			
		</tbody>
	</table>
</form:form>
</body>
</html>
