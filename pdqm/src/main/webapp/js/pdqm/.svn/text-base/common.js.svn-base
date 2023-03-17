//Element ID 불러쓰기
function dEI(elementID){
	return document.getElementById(elementID);
}

// 이미지 롤오버
function imgRollover(imgBoxID){
	var MenuCounts = dEI(imgBoxID).getElementsByTagName("img");
	for (i=0;i<MenuCounts.length;i++) {
		var numImg=MenuCounts.item(i);
		var ImgCheck = numImg.src.substring(numImg.src.length-6,numImg.src.length);
		if (ImgCheck!="on.gif") {
				numImg.onmouseover = function () {
					this.src = this.src.replace(".gif", "on.gif");
				}
				numImg.onmouseout = function () {
					this.src = this.src.replace("on.gif", ".gif");
				}
			}
	}
}
//메인 공지사항 탭
function maintab(dotabid, num){
	var inum=parseInt(num)-1;
	var linkTab=dEI(dotabid).getElementsByTagName("dl");
	for (i=0;i<linkTab.length;i++) {
		var tabimg = linkTab.item(i).getElementsByTagName("img").item(0);
		var tabContents= dEI(dotabid+(1+i));
		if (i==inum) {
			if(tabContents.style.display!="block"){
				tabimg.src=tabimg.src.replace(".gif", "on.gif");
				tabContents.style.display="block";
				}
		}else{
			tabimg.src=tabimg.src.replace("on.gif", ".gif");
			tabContents.style.display="none";
		}
	}
}


/* top navigation */
function initTopMenu(el,depth1) {
	topMenuOut(el.getElementsByTagName("img").item(0));
	if(el.id == "top-menu" + depth1) {
		topMenuOver(el.getElementsByTagName("img").item(0));
	}
}
function topMenuOver(img) {
	img.src = img.src.replace(".gif", "on.gif");
}
function topMenuOut(img) {
	img.src = img.src.replace("on.gif", ".gif");
}

function selectTopmenuByMenuId() {
	var depth1 = this.id.substring("top-menu-head".length,this.id.length);
	//alert(depth1);
	var menuId = "sub-menu" + depth1;
	var selectDepth1 = "top-" + depth1 + "-1";
	var topnav = document.getElementById("gnb");
	if(!topnav) return;
	var topEl = topnav.getElementsByTagName("div");
	for(i = 0 ; i < topEl.length ; i++){
		if(topEl[i].id.substring(0,12) == "top-sub-menu") {
			topEl[i].style.display = "none";
		}
	}
	var topEl2 = topnav.getElementsByTagName("li");
	for(i = 0 , seq = 1; i < topEl2.length ; i++){
		if(topEl2[i].id.substring(0,8) == "top-menu") {
			initTopMenu(topEl2[i],depth1);
		}
	}

	var nav = document.getElementById("top-" + menuId);
	if(!nav) return;
	nav.style.display = "block";
	menuEl = nav.getElementsByTagName("li");
	for(i = 0; i < menuEl.length; i++) {
		var imgEl = menuEl.item(i).getElementsByTagName("img")
		if(imgEl != null && imgEl.length>0) {
			imgEl.item(0).onmouseover = menuOver;
			imgEl.item(0).onmouseout = menuOut;
			imgEl.item(0).onfocus = menuOver;
			imgEl.item(0).onblur = menuOut;
		}
	}
}

function initTopmenuByMenuId(depth1, depth2, depth3, depth4, menuId) {
	
	//debug("menuId==>" + menuId);	
	
	var selectDepth1 = "top-" + depth1 + "-" + depth2;
	var selectDepth2 = "top-" + depth1 + "-" + depth2 + "-" + depth3;
	var selectDepth3 = "top-" + depth1 + "-" + depth2 + "-" + depth3 + "-" + depth4;
	var topnav = document.getElementById("gnb");
	if(!topnav) return;
	var topEl = topnav.getElementsByTagName("div");
	for(var i = 0 ; i < topEl.length ; i++){
		if(topEl[i].id.substring(0,12) == "top-sub-menu") {
			topEl[i].style.display = "none";
		}
	}

	var topEl2 = topnav.getElementsByTagName("a");

	for(i = 0, seq = 0 ; i < topEl2.length ; i++){
		if(topEl2[i].id.substring(0,13) == "top-menu-head") {
			topEl2[i].onmouseover =  selectTopmenuByMenuId;
			topEl2[i].onfocus = selectTopmenuByMenuId;
			if ( topEl2[i].id.substring(13) == depth1) {
				topEl2[i].onmouseover();
			}
			seq++;
		}
	}

	var nav = document.getElementById("top-" + menuId);
	if(!nav) return;
	nav.style.display = "block";
	menuEl = nav.getElementsByTagName("li");
	for(i = 0; i < menuEl.length; i++) {
		var menuElItm = menuEl.item(i);
		var imgEl = menuElItm.getElementsByTagName("img");
		if(imgEl == null || imgEl.length == 0)  {
			var aEl = menuElItm.getElementsByTagName("a");
			var itm = aEl.item(0);
			if (menuElItm.id == selectDepth1 || menuElItm.id == selectDepth2  || menuElItm.id == selectDepth3  ) {
				itm.className = "on";
			}
		} else {
			var itm = imgEl.item(0);
			if (menuElItm.id == selectDepth1 || menuElItm.id == selectDepth2  || menuElItm.id == selectDepth3  ) {
				itm.src = itm.src.replace(".gif", "on.gif");
				itm.onmouseover = null;
				itm.onmouseout = null;
				itm.onfocus = null;
				itm.onblur = null;
			}
			else {
				itm.onmouseover = menuOver;
				itm.onmouseout = menuOut;
				itm.onfocus = menuOver;
				itm.onblur = menuOut;
			}
		}
	}
}


/* leftmenu navigation */
function initSubmenuByMenuId(depth1, depth2, depth3, depth4, menuId) {
	selectDepth1 = "menu" + depth1 + "-" + depth2;
	selectDepth2 = "menu" + depth1 + "-" + depth2 + "-" + depth3;
	selectDepth3 = "menu" + depth1 + "-" + depth2 + "-" + depth3 + "-" + depth4;
	
	
	nav = document.getElementById(menuId);
	if(!nav) return;
	menuEl = nav.getElementsByTagName("li");
	
	
	
	for(i = 0; i < menuEl.length; i++) {
		if (menuEl.item(i).id == selectDepth1 || menuEl.item(i).id == selectDepth2  || menuEl.item(i).id == selectDepth3  ) {
			var im = menuEl.item(i).getElementsByTagName("img");
			if(im && im.length > 0 ) {
				im.item(0).src = im.item(0).src.replace(".gif", "on.gif");
			}
			else {
				var anc = menuEl.item(i).getElementsByTagName("a");
				if(anc && anc.length > 0) {
					anc.item(0).src = anc.item(0).src.replace(".gif", "on.gif");
					//anc.item(0).className = "on";
					if(menuEl.item(i).id == selectDepth3) {
						//anc.item(0).className += " leaf";
						anc.item(0).src = anc.item(0).src.replace("on.gif", ".gif");
					}
				}
			}
		} else {
			var im = menuEl.item(i).getElementsByTagName("img");
			if( im == null || im.length == 0)  continue;
			im.item(0).onmouseover = menuOver;
			im.item(0).onmouseout = menuOut;
			im.item(0).onfocus = menuOver;
			im.item(0).onblur = menuOut;
			if (menuEl.item(i).getElementsByTagName("ul").item(0)) {
				menuEl.item(i).getElementsByTagName("ul").item(0).style.display = "block";
			}
		}
	}
	menuId = "menu" + depth1;

	initTopmenuByMenuId(depth1,depth2,depth3,depth4,menuId);
}


/* roll over-out image */
function menuOver() {
	var s = this.src;
	s = s.replace("on.gif", ".gif");
	this.src = s.replace(".gif", "on.gif");
}

function menuOut() {
	this.src = this.src.replace("on.gif", ".gif");
}

function initImgEffect(ImgEls,SelImg) {

	MenuImg = document.getElementById(ImgEls).getElementsByTagName("img");
	MenuImgLen = MenuImg.length;

	for (i=0; i<MenuImgLen; i++) {
		MenuImg.item(i).onmouseover = menuOver;
		MenuImg.item(i).onmouseout = menuOut;
		if (i == SelImg) {
			MenuImg.item(i).onmouseover();
			MenuImg.item(i).onmouseover = null;
			MenuImg.item(i).onmouseout = null;
		}
	}
}

/******************************************************************************
* Name        : debug()
* Description : 간이 디버그
* Param       : message
* return      :
******************************************************************************/
    function debug(s) {
         var debugWin = open('','x_debug','width=400,height=800,resizable=yes,scrollbars=yes');
         var doc = debugWin.document;
         var debugPane = doc.getElementById('debug');
         if (undefined == debugPane) {
              var body = doc.getElementsByTagName('body')[0];
              debugPane = doc.createElement('div');
              debugPane.id = 'debug';
              debugPane.onclick = function() { this.innerHTML = ''; }
              body.appendChild(debugPane);
         }
         debugPane.innerHTML += s + '<br>\n';
    }



//IE6 png패치
function setPng24(obj) {
	obj.width=obj.height=1;
	obj.className=obj.className.replace(/\bpng24\b/i,'');
	obj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+ obj.src +"',sizingMethod='image');";
	obj.src='';
	return '';
}


//li tab이미지 on_off
function liTab(dotabid, num){
	var inum=parseInt(num);
	var tabimg = document.getElementById(dotabid);
	var linkTab=tabimg.getElementsByTagName("li");
	for (i=0;i<linkTab.length;i++) {
		var tabimg = linkTab.item(i).getElementsByTagName("img").item(0);
		if (i==inum) {
				tabimg.src=tabimg.src.replace(".gif", "on.gif");
		}else{
			tabimg.src=tabimg.src.replace("on.gif", ".gif");
		}
	}
}
