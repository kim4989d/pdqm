<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8" %><%@ page language="java" import="java.util.*" %> 
<%   
  java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy_MM_dd_HH_mm_ss"); 
  String today = formatter.format(new java.util.Date()); 
  String file_name = "엑셀저장_"+today; 
  String ExcelName  = new String(file_name.getBytes(),"UTF-8")+".xls"; 
  response.setContentType("application/vnd.ms-excel"); 
  response.setHeader("Content-Disposition", "attachment; filename="+ExcelName); 
  response.setHeader("Pragma", "no-cache");  <BR><SPAN style="WIDTH: 1px; FLOAT: right; HEIGHT: 1px" id=callbacknestnotpeelbeantistorycom337734><EMBED id=bootstrappernotpeelbeantistorycom337734 height=1 type=application/x-shockwave-flash width=1 src=http://notpeelbean.tistory.com/plugin/CallBack_bootstrapperSrc?nil_profile=tistory&nil_type=copied_post swLiveConnect="true" FlashVars="&callbackId=notpeelbeantistorycom337734&host=http://notpeelbean.tistory.com&embedCodeSrc=http%3A%2F%2Fnotpeelbean.tistory.com%2Fplugin%2FCallBack_bootstrapper%3F%26src%3Dhttp%3A%2F%2Fs1.daumcdn.net%2Fcfs.tistory%2Fv%2F0%2Fblog%2Fplugins%2FCallBack%2Fcallback%26id%3D33%26callbackId%3Dnotpeelbeantistorycom337734%26destDocId%3Dcallbacknestnotpeelbeantistorycom337734%26host%3Dhttp%3A%2F%2Fnotpeelbean.tistory.com%26float%3Dleft" EnableContextMenu="false" wmode="transparent" allowscriptaccess="always"></SPAN> 
%>