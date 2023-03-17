document.write("<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0\" width=\"1000\" height=\"620\" id=\"flashload\" align=\"middle\">");
document.write("<param name=\"allowScriptAccess\" value=\"always\" />");
document.write("<param name=\"wmode\" value=\"transparent\">");
document.write("<param name=\"movie\" value=\"swf/"+swf_name+".swf\" />");
document.write("<param name=\"FlashVars\" value=\"cNum="+page_num+"&tNum="+total_page+"\" />");
document.write("<param name=\"quality\" value=\"high\" />");
document.write("<param name=\"bgcolor\" value=\"#ffffff\" />");
document.write("<embed src=\"swf/"+swf_name+".swf\" quality=\"high\" bgcolor=\"#ffffff\" width=\"1000\" height=\"620\" name=\"flashload\" align=\"middle\" allowScriptAccess=\"always\" swLiveConnect=\"true\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />");
document.write("</object>")
