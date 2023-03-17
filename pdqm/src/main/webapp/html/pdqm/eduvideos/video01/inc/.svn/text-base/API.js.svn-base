

var altedAPI = null;

var limited_time ;
var mill_time;

//var ttPages ;
//var thisPage =1 ;

var Alt_dtm = new Date(); // will be adjusted after initialize

function FindAPI(win) {
	while ((win.API == null) && (win.parent != null) && (win.parent != win)) {
		nFindAPITries ++;
		if (nFindAPITries > 7) {
			alert("Error in finding LMS API -- too deeply nested.");
			return null
		} 
		win = win.parent
	}
	return win.API
}


function IsAPI()
{
	if(altedAPI == null)
		return false;
	
	return true;
}

function GetAPI()
{
	if(IsAPI() == false)	{
		altedAPI = FindAPI(window.parent);
		if(altedAPI == null)	
			return null;
	}
	
	return altedAPI;
}

function LMSInitialize(parameter)
{
	
	var api = GetAPI();
	if(api == null)	
		return "false";
	
	var result = api.LMSInitialize("");
	
	Alt_dtm = new Date();
	return result;
}


function LMSFinish(parameter)
{
	var api = GetAPI();	
	if(api == null)	
		return "false";
	var results;
	results = SCOReportSessionTime();  
	//results = SCOReportTotalTime();  
	results = LMSCommit("");		
	var result = api.LMSFinish("");
	return result;
}

function LMSGetValue(parameter)
{
	var api = GetAPI();
	if(api == null)
		return "false";
	
	
	var value = api.LMSGetValue(parameter);//, value);
	return value;
}

function LMSSetValue(parameter, value)
{
	var api = GetAPI();
	if(api == null)
		return "false";
	var result = api.LMSSetValue(parameter, value);

	if(parameter == "cmi.core.lesson_location") {
			setCookie( "Sub_Page_Name", value , 1); 
	}
	return result;
}

function LMSCommit(parameter)
{
	var api = GetAPI();
	if(api == null)
		return "false";
		
	var result = api.LMSCommit(parameter);
	return result;
}

function LMSGetLastError()
{
	var api = GetAPI();
	if(api == null)
		return "false";
	var result = api.LMSGetLastError();
	return result;
}

function LMSGetErrorString(errornumber)
{
	var api = GetAPI();
	if(api == null)
		return "false";
	var result = api.LMSGetErrorString(errornumber);
	return result;
}

function LMSGetDiagnostic(parameter)
{
	var api = GetAPI();
	if(api == null)
		return "false";
	var result = api.LMSGetErrorString(errornumber);
	return result;
}

// User Function List


function MillisecondsToCMIDuration(n) {
//Convert duration from milliseconds to 0000:00:00.00 format
	var hms = "";
	var dtm = new Date();	dtm.setTime(n);
	var h = "000" + Math.floor(n / 3600000);
	var m = "0" + dtm.getMinutes();
	var s = "0" + dtm.getSeconds();
	var cs = "0" + Math.round(dtm.getMilliseconds() / 10);
	hms = h.substr(h.length-4)+":"+m.substr(m.length-2)+":";
	hms += s.substr(s.length-2)+"."+cs.substr(cs.length-2);
	return hms
}

// SCOReportSessionTime is called automatically by this script,
// but you may call it at any time also from the SCO
function SCOReportSessionTime() {
	var dtm = new Date();
	var n = dtm.getTime() - Alt_dtm.getTime();
	return LMSSetValue("cmi.core.session_time",MillisecondsToCMIDuration(n))
}

function SCOReportTotalTime() {
	var dtm = new Date();
	var n = dtm.getTime() - Alt_dtm.getTime();
	var s_hours = MillisecondsToCMIDuration(n).substring(0,4);
	var s_minutes = MillisecondsToCMIDuration(n).substring(5,7);
	var s_seconds = MillisecondsToCMIDuration(n).substring(8,10);
	var s_mseconds = MillisecondsToCMIDuration(n).substring(11,13);

	var total_time = LMSGetValue("cmi.core.total_time");
	var t_hours = total_time.substring(0,4) + s_hours;
	var t_minutes = total_time.substring(5,7) + s_minutes;
	var t_seconds = total_time.substring(8,10) + s_seconds;
	var t_mseconds = total_time.substring(11,13) + s_mseconds;
	total_time = t_hours+":"+t_minutes+":"+t_seconds+"."+t_mseconds
	//alert(t_hours);
	//alert(t_minutes);
	//alert(t_seconds);
	//alert(t_mseconds);
	//alert(total_time);
	//var t_hour = total_time;
	//var t_min = total_time;
	//var t_sec = total_time;
	//MillisecondsToCMIDuration(n)
	return LMSSetValue("cmi.core.total_time",total_time)
}



//function displayAlert() 
//{   
	
//	LMSGetValue("cmi.student_data_time_limited_action")
//	alert(LMSGetValue("cmi.student_data_time_limited_action"))
//}


function setCookie( name, value, expiredays )
    {
		var todayDate = new Date();
		todayDate.setDate( todayDate.getDate() + expiredays );
		document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
	}


function getCookie(name) 
{
        var nameOfCookie = name+"=";
        //alert(document.cookie);
        var x = 0;
        while( x <= document.cookie.length ) {
            var y = (x+nameOfCookie.length);
            if( document.cookie.substring(x,y) == nameOfCookie ) {
                if( (endOfCookie = document.cookie.indexOf(";",y)) == -1 ) 
                    endOfCookie = document.cookie.length;
                return unescape( document.cookie.substring(y, endOfCookie) );
            }
            x = document.cookie.indexOf("", x) +1;
            if( x == 0 ) 
                break;
        }
     return "false";
}

var dir = location.href.substring(0,location.href.lastIndexOf('/')+1);

setCookie( "FDir", dir , 1); 

function AltInit(StartPage)
{
	var result = LMSInitialize("");
	if(result == "false")	{
		alert("Not LMSInitialize");
		return ;
	}

// lession_status에 대한 설정  단일 페이지, 멀티 페이지 구분	
	if (LMSGetValue("cmi.core.lesson_status") == "not attempted") {
		result =  LMSSetValue("cmi.core.lesson_status","incomplete");
	}
	//alert("LMSGetValue("cmi.core.total_time")");
	var stotaltime = LMSGetValue("cmi.core.total_time")
	//setCookie( "stotaltime", stotaltime , 1); 
	


// 마지막 학습 위치로 이동시켜주는 함수	
	var SCOLocation = LMSGetValue("cmi.core.lesson_location");

	var code = LMSGetLastError();
 	var msg = LMSGetErrorString(code);
	//var dia = LMSGetDiagnostic(code);

	//if (window.parent.LMSGetValue("cmi.core.lesson_status") = "completed") {
	//	alert("이미 수강된 스코입니다. 복습하시겠습니까?");
	//}
	
   /*
	if (SCOLocation != "" && LMSGetValue("cmi.core.lesson_status") != "completed"){

		myStage.location.href=SCOLocation;

	}
	*/
	if (SCOLocation != "" && LMSGetValue("cmi.core.lesson_status") != "completed" ){
		
			myStage.location.href=SCOLocation;
		  
	}/*else{
		myStage.location.href=StartPage;
	}*/

	/* if (SCOLocation != "" && LMSGetvalue("cmi.core.lesson_status") != "completed"){
		
			myStage.location.href=SCOLocation;
		  
	}else{
		myStage.location.href=StartPage;
	} */

//허용학습 시간 체크
		limited_time = LMSGetValue("cmi.student_data.max_time_allowed");
		setCookie( "limitedtime", limited_time, 1); 
		limited_time =limited_time.split(":");
		mill_time = limited_time[0] * 360000 ;
		mill_time += limited_time[1] * 60000 ;
		mill_time += limited_time[2] * 1000 ;

		setTimeout('displayAlert()',mill_time);
}

function AltFinish()
{
	var result;

	result = LMSSetValue("cmi.core.exit","suspend");
	result = LMSFinish("");
	
	if(result == "false")	{
		return ;
	}
}

function displayAlert()
{
	limited_time = LMSGetValue("cmi.student_data.time_limit_action");
	limited_time =limited_time.split(",");
	if ((limited_time[0] == "continue") &&  (limited_time[1] == "message")) {
//		alert("시간이 경과되었습니다");
	}
	if ((limited_time[0] == "continue") &&  (limited_time[1] == "nomessage")) {
		
	}
	if ((limited_time[0] == "exit") &&  (limited_time[1] == "message") ){
//		alert("시간이 경과되었습니다 학습을 종료합니다.");
		window.parent.close();
		
	}
	if ((limited_time[0] == "exit") &&  (limited_time[1] == "nomessage")) {
		
	}
}

