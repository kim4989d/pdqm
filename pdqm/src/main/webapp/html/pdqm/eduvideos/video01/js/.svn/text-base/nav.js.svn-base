itostr(cha_num)+function itostr(inum){
	return inum<10?"0"+inum:inum;
}

var cha_num = eval(swf_name.slice(0, 2));
var page_num = eval(swf_name.slice(3, 5));
var total_page = "2";

function go_back()
{
    if (page_num > 1)
    {
	   location.href="10"+itostr(page_num-1)+".html";
    }
    else
    {
       alert("처음 페이지 입니다.")
    }
}
function go_next()
{
    if (page_num < total_page)
    {
	   setCurrentPage("10"+itostr(page_num+1)+".html");
	   location.href="10"+itostr(page_num+1)+".html";
    }
    else
    {
       setCurrentPage("10"+itostr(page_num+1)+".html")
		go();

    }
}

function movepage(mp_num)
{
	setCurrentPage("10"+itostr(mp_num)+".html");
	location.href="10"+itostr(mp_num)+".html";
}
