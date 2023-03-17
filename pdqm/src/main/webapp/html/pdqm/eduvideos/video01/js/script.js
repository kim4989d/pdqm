//*************************************************
// 오픈창 - 드림위버
//*************************************************

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

//*************************************************
// 이미지 롤오버관련 - 드림위버
//*************************************************

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}

//*************************************************
// ShowHide Layer - 드림위버
//*************************************************

function MM_showHideLayers() { //v3.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v='hide')?'hidden':v; }
    obj.visibility=v; }
}



//*************************************************
// 기타 나모 웹에디터용 function
//*************************************************

function na_restore_img_src(name, nsdoc)
{
  var img = eval((navigator.appName == 'Netscape') ? nsdoc+'.'+name : 'document.all.'+name);
  if (name == '')
    return;
  if (img && img.altsrc) {
    img.src    = img.altsrc;
    img.altsrc = null;
  } 
}

function na_preload_img()
{ 
  var img_list = na_preload_img.arguments;
  if (document.preloadlist == null) 
    document.preloadlist = new Array();
  var top = document.preloadlist.length;
  for (var i=0; i < img_list.length; i++) {
    document.preloadlist[top+i]     = new Image;
    document.preloadlist[top+i].src = img_list[i+1];
  } 
}

function na_change_img_src(name, nsdoc, rpath, preload)
{ 
  var img = eval((navigator.appName == 'Netscape') ? nsdoc+'.'+name : 'document.all.'+name);
  if (name == '')
    return;
  if (img) {
    img.altsrc = img.src;
    img.src    = rpath;
  } 
}

//*************************************************
// 경고창
//*************************************************

 function diary(){
	window.open('diary.html','','status=no,scrollbars=no,resizable=no,width=900,height=600'); 
	//alert('준비중입니다!');
}

function winclose(){
	window.close();
}

function rightmenu(num){
	if(num==1){
		window.open('../help/help.html','','status=no,scrollbars=no,resizable=no,width=800,height=600'); //<-------alert대신 여기추가//
	}
	if(num==2){
		window.open('../down/01.zip'); //<-------alert대신 여기추가//
	}
	if(num==3){
	    alert('토론방-준비중입니다.');
	}
	if(num==4){
	    alert('자료실-준비중입니다.');
	}
	if(num==5){
	    alert('리포트-준비중입니다.');
	}
	if(num==6){
	    alert('용어사전-준비중입니다.');
	}
	if(num==7){
	    alert('다른사람의견보기-준비중입니다.');
	}
}
//*************************************************
// 오픈창
//*************************************************

function openwin(URL){ 
window.open(URL,'','status=no,scrollbars=no,resizable=no,width=600,height=500'); 
}
function note(){ 
window.open('../help/gallery.html','','status=no,scrollbars=no,resizable=no,width=915,height=540'); 
	//alert('프포토타입에서는 지원하지 않습니다.');
}
function tip(){ 
window.open('../help/know.html','','status=no,scrollbars=no,resizable=no,width=915,height=540');
	//alert('프포토타입에서는 지원하지 않습니다.');
}

function workdown() {
	alert('준비중입니다.');
}

//*************************************************
// 프린트
//*************************************************

function print01() {
	var t = document.f1.t;
	if(t.value) window.open("pop_print01.html","print01","toolbar=no,scrollbars=no,location=no,status=no,menubar=no,resizable=no,width=10,height=10");
	else alert('내용을 넣어주세요~!');
}
function print02() {
	var t = document.f2.t;
	if(t.value) window.open("pop_print02.html","print02","toolbar=no,scrollbars=no,location=no,status=no,menubar=no,resizable=no,width=10,height=10");
	else {
		alert('내용을 넣어주세요~!');
}

}


function opSend(){ 
	go2(args);
}

function opList(){ 
	mm.whenOpList();
}

function fulls(){
alert("aa");
}
