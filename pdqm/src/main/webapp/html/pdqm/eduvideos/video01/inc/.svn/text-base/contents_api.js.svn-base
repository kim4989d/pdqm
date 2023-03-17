var altedAPI = null;
var nFindAPITries = 0; 
var limited_time ;
var mill_time;

//var ttPages ;
//var thisPage =1 ;
url = unescape(window.location.href)
s1 = url.lastIndexOf("/") + 1
s2 = url.length

pageInfo = url.substring(s1,s2-5)
pageID1 = pageInfo.substring(0,2)
pageID2 = pageInfo.substring(2,4)

//parent.right.location.reload(false)


var Alt_dtm = new Date(); // will be adjusted after initialize

function FindAPI(win) {
	while ((win.API_1484_11 == null) && (win.API_1484_11 == null) && (win.parent != null) && (win.parent != win)) {	
		nFindAPITries ++;
		if (nFindAPITries > 500) {
			alert("Error in finding LMS API -- too deeply nested.");
			return null
		} 
		win = win.parent
	}
	return win.API_1484_11;
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

function Initialize(parameter)
{

	var api = GetAPI();
	if(api == null)	
		return "true"; // 원래 false 이나 true 로 임시 처리 (신규 강의창을 위해)
	
	var result = api.Initialize("");
	Alt_dtm = new Date();

	
	return result;
}


function Terminate(parameter)
{
	var api = GetAPI();	

	if(api == null)	
		return "false";
	var results;
	
	results = SCOReportSessionTime();
	
	//results = SCOReportTotalTime();  
	
	results = Commit("");		

	var result = api.Terminate("");
   
	return result;
}

function GetValue(parameter)
{
	var api = GetAPI();
	if(api == null)
		return "false";
	
	
	var value = api.GetValue(parameter);//, value);
	return value;
}

function SetValue(parameter, value)
{
	var api = GetAPI();
	if(api == null)
		return "false";
	var result = api.SetValue(parameter, value);

	if(parameter == "cmi.completion_status") {
			setCookie( "Sub_Page_Name", value , 1); 
	}
	return result;
}

function Commit(parameter)
{
	var api = GetAPI();
	if(api == null)
		return "false";
		
	var result = api.Commit(parameter);
	return result;
}

function GetLastError()
{
	var api = GetAPI();
	if(api == null)
		return "false";
	var result = api.GetLastError();
	return result;
}

function GetErrorString(errornumber)
{
	var api = GetAPI();
	if(api == null)
		return "false";
	var result = api.GetErrorString(errornumber);
	return result;
}

function GetDiagnostic(parameter)
{
	var api = GetAPI();
	if(api == null)
		return "false";
	var result = api.GetErrorString(errornumber);
	return result;
}

// User Function List


function MillisecondsToCMIDuration(n) {
//Convert duration from milliseconds to 0000:00:00.00 format
	var hms = "";
	var dtm = new Date();	dtm.setTime(n);
	var h = "0" + Math.floor(n / 3600000);
	var m = "0" + dtm.getMinutes();
	var s = "0" + dtm.getSeconds();
	var cs = "0" + Math.round(dtm.getMilliseconds() / 10);
	hms =  "PT" + h.substr(h.length-2)+"H"+m.substr(m.length-2)+"M";
	hms += s.substr(s.length-2)+"."+cs.substr(cs.length-2)+ "S";
	
	//hms =   h.substr(h.length-4)+":"+m.substr(m.length-2)+":";
	//hms += s.substr(s.length-2)+"."+cs.substr(cs.length-2)+ ":";
	
	return hms;
}

// SCOReportSessionTime is called automatically by this script,
// but you may call it at any time also from the SCO
function SCOReportSessionTime() {
	var dtm = new Date();
	var n = dtm.getTime() - Alt_dtm.getTime();

	return SetValue("cmi.session_time",MillisecondsToCMIDuration(n));
}

function SCOReportTotalTime() {
	var dtm = new Date();
	var n = dtm.getTime() - Alt_dtm.getTime();
	var s_hours = MillisecondsToCMIDuration(n).substring(0,4);
	var s_minutes = MillisecondsToCMIDuration(n).substring(5,7);
	var s_seconds = MillisecondsToCMIDuration(n).substring(8,10);
	var s_mseconds = MillisecondsToCMIDuration(n).substring(11,13);

	var total_time = GetValue("cmi.total_time");
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
	return SetValue("cmi.total_time",total_time)
}

//function displayAlert() 
//{   
	
//	GetValue("cmi.student_data_time_limited_action")
//	alert(GetValue("cmi.student_data_time_limited_action"))
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

function AltInit()
{

	// 책갈피가 있는 경우 동작 하도록 처리
	try {
		if (top.gotoBookMk > 0) {
			goFrame(top.ctn_flash_info);
			top.gotoBookMk = 0;
			//setTimeout("goFrame(top.ctn_flash_info);",500);
		}
	} catch(e) {}

	var result = Initialize("");
	if(result == "false")	{
		alert("Not Initialize");
		return ;
	}

	// lession_status�� ���� ��d  ���� ������, ��Ƽ ������ ����	
	if (GetValue("cmi.completion_status") == "not attempted") {
		result =  SetValue("cmi.completion_status","incomplete");
	}

	var stotaltime = GetValue("cmi.total_time")

	// ���� �н� 'ġ�� �̵������ִ� �Լ�	
	var SCOLocation = GetValue("cmi.location");

	var code = GetLastError();
 	var msg = GetErrorString(code);

/*	2004-11-10 ����������� ����� '�� ��f
	if (SCOLocation != "")
	{
		if (confirm("���� �н��� ���� �н� ������� �̵��Ͻðڽ4ϱ�?")) {
			myStage.location.href=SCOLocation;
		}else {
			myStage.location.href=StartPage;
		}
	}else{
		myStage.location.href=StartPage;
	}
*/

	limited_time = GetValue("cmi.max_time_allowed");
	setCookie( "limitedtime", limited_time , 1); 
	limited_time =limited_time.split(":");
	mill_time = limited_time[0] * 360000 ;
	mill_time += limited_time[1] * 60000 ;
	mill_time += limited_time[2] * 1000 ;

	setTimeout('displayAlert()',mill_time);

	var dir = location.href.substring(0,location.href.lastIndexOf('/')+1);
	var url = location.href.substring(dir.length,location.href.length+1);

	SetValue("cmi.location",location.href) ;

//	API_FRAME = FindAPI_FRAME(window.parent);
	API_FRAME = this;

	if(API_FRAME == null)
		alert("FindAPI_FRAME Error");

	if (GetValue("cmi.completion_status") != "completed") {
		//API_FRAME.SCO.SetNIC("i");
	}	
}

function MultiInit(parameter)
{

	// 책갈피가 있는 경우 동작 하도록 처리
	try {
		if (top.gotoBookMk > 0) {
			goFrame(top.ctn_flash_info);
			top.gotoBookMk = 0;
			//setTimeout("goFrame(top.ctn_flash_info);",500);
		}
	} catch(e) {}
	
	var result = Initialize("");
	if(result == "false")	{
		alert("Not Initialize");
		return ;
	}
	// lession_status�� ���� ��d  ���� ������, ��Ƽ ������ ����	
	if (GetValue("cmi.completion_status") == "not attempted" || GetValue("cmi.completion_status") == "incomplete") {
		//alert(GetValue("cmi.completion_status"));
		if(parameter == "start" || parameter == "common"){
					
			result = SetValue("cmi.completion_status","incomplete");
		}else{
								
			resutl = SetValue("cmi.completion_status","complete");
		}		
	}

	var stotaltime = GetValue("cmi.total_time")

	// ���� �н� 'ġ�� �̵������ִ� �Լ�	
	var SCOLocation = GetValue("cmi.location");

	var code = GetLastError();
 	var msg = GetErrorString(code);

/*	2004-11-10 ����������� ����� '�� ��f
	if (SCOLocation != "")
	{
		if (confirm("���� �н��� ���� �н� ������� �̵��Ͻðڽ4ϱ�?")) {
			myStage.location.href=SCOLocation;
		}else {
			myStage.location.href=StartPage;
		}
	}else{
		myStage.location.href=StartPage;
	}
*/

	limited_time = GetValue("cmi.max_time_allowed");
	setCookie( "limitedtime", limited_time , 1); 
	limited_time =limited_time.split(":");
	mill_time = limited_time[0] * 360000 ;
	mill_time += limited_time[1] * 60000 ;
	mill_time += limited_time[2] * 1000 ;

	setTimeout('displayAlert()',mill_time);

	var dir = location.href.substring(0,location.href.lastIndexOf('/')+1);
	var url = location.href.substring(dir.length,location.href.length+1);

	SetValue("cmi.location",location.href) ;

//	API_FRAME = FindAPI_FRAME(window.parent);
	API_FRAME = this;

	if(API_FRAME == null)
		alert("FindAPI_FRAME Error");

	if (GetValue("cmi.completion_status") != "completed") {
		//API_FRAME.SCO.SetNIC("i");
	}	
}

function AltFinish()
{

	var dir = location.href.substring(0,location.href.lastIndexOf('/')+1);
	var url = location.href.substring(dir.length,location.href.length+1);

	SetValue("cmi.location",url) ;
	SetValue("cmi.completion_status","completed");

	API_FRAME = this;
	if(API_FRAME == null)
		alert("FindAPI_FRAME Error");

	var result;
	result = SetValue("cmi.exit","suspend");
	result = Terminate("");

	if(result == "false")	{
		return ;
	}
}

function MultiFinish(parameter)
{

	var dir = location.href.substring(0,location.href.lastIndexOf('/')+1);
	var url = location.href.substring(dir.length,location.href.length+1);

	SetValue("cmi.location",url);

	if(parameter == "end"){
		SetValue("cmi.completion_status","completed");		
	}else{		
		SetValue("cmi.completion_status","incomplete");		
	}

	API_FRAME = this;
	if(API_FRAME == null)
		alert("FindAPI_FRAME Error");

	var result;
	result = SetValue("cmi.exit","suspend");
	result = Terminate("");
	
	if(result == "false"){
		return ;
	}
}



function displayAlert()
{
	limited_time = GetValue("cmi.time_limit_action");
/*	limited_time =limited_time.split(",");
	if ((limited_time[0] == "continue") &&  (limited_time[1] == "message")) {
		//alert("�ð��� ���Ǿ�4ϴ�");
	}
	if ((limited_time[0] == "continue") &&  (limited_time[1] == "nomessage")) {
		
	}
	if ((limited_time[0] == "exit") &&  (limited_time[1] == "message") ){
//		alert("�ð��� ���Ǿ�4ϴ� �н�; ~���մϴ�.");
		window.parent.close();
		
	}
	if ((limited_time[0] == "exit") &&  (limited_time[1] == "nomessage")) {
		
	}
*/
	if(limited_time == "exit_message"){
		//alert("�ð��� ���Ǿ�4ϴ� �н�; ~���մϴ�.");
		window.parent.close();
	}
	if(limited_time == "continue_message"){
		//alert("�ð��� ���Ǿ�4ϴ�");
	}
	if(limited_time == "exit_no_message"){
		
	}
	if(limited_time == "continue_no_message"){
		
	}
}