<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="ko">
    <head>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>탭 컨트롤 만들어보기</title>
    	<style type="text/css">
		/*<![CDATA[*/
			body {
				font-size:9pt; font-family:굴림, 돋움; color:#666666;
			}
			.tabControl { width:400px; padding:0px; border:1px solid #d0d0d0; }
			.tabControlMenuHead { width:100%; margin:0px; padding:0px; background-color:#f0f0f0;}
			.tabControlMenu { text-align:center; width:33%;height:30px; margin:0px; }
			.tabContent { display:none; overflow:auto; height:200px; padding:20px; line-height:16px; color:#111111}
			.tabContentMenuHover { background-color:#f6f6f6; }

			.selectedMenu { background-color:#ffffff; color:#222222}
			.nonSelectedMenu {  border-bottom:1px solid #d0d0d0; }
			.leftBorder { border-left:1px solid #d0d0d0; }
			.rightBorder { border-right:1px solid #d0d0d0; }
		/*]]>*/
		</style>
		<script type="text/javascript" src="http://jqueryjs.googlecode.com/files/jquery-1.3.2.min.js"></script>
		<script type="text/javascript">
		//<![CDATA[
			$(document).ready(function(){
				$("td.tabControlMenu").hover(
					function(){
						$(this).addClass("tabContentMenuHover");
					}, 
					function(){
						$(this).removeClass("tabContentMenuHover");
					}
				);

				// 메뉴 클릭 설정
				$("td.tabControlMenu").click(function(){
					var id = $(this).attr("id").replace("m", "");
					$("div.tabContent").each(function(){
						$(this).css("display", "none");
					});

					$("td.tabControlMenu").each(function(){
						if($(this).hasClass("selectedMenu"))
							$(this).removeClass("selectedMenu");
						$(this).addClass("nonSelectedMenu");

						$(this).removeClass("leftBorder");
						$(this).removeClass("rightBorder");
					});
					$(this).removeClass("nonSelectedMenu");
					$(this).addClass("selectedMenu");

					var maxMenu = $(this).parent().find(".tabControlMenu").length;

					if(id == 1)
						$(this).addClass("rightBorder");
					else if(id == maxMenu)
						$(this).addClass("leftBorder");
					else
					{
						$(this).addClass("leftBorder");
						$(this).addClass("rightBorder");
					}

					//$("div#tabContent"+id).css("display", "block");
					//$("div#tabContent"+id).show("slow");
					$("div#tabContent"+id).fadeIn("slow");
				});

				$("td#m1").click();
			});
		//]]>
		</script>
	</head>
    <body>
        <div id="tabControl" class="tabControl">	
			<table class="tabControlMenuHead" cellspacing="0" cellpadding="0">
				<tr>
					<td id="m1" class="tabControlMenu">서시</td>
					<td id="m2" class="tabControlMenu">참회록</td>
					<td id="m3" class="tabControlMenu">또 다른 고향</td>
				</tr>
			</table>
			<div id="tabContent1" class="tabContent">
				죽는 날까지 하늘을 우러러<br/>
				한 점 부끄럼이 없기를<br/>
				잎새에 이는 바람에도<br/>
				나는 괴로워했다.<br/>
				별을 노래하는 마음으로<br/>
				모두 죽어가는 것을 사랑해야지.<br/>
				그리고 나에게 주어진 길을<br/>
				걸어가야겠다<br/>
				<br/><br/>
				오늘 밤에도 별이 바람에 스치운다
			</div>
			<div id="tabContent2" class="tabContent">
				파란 녹이 낀 구리 거울 속에<br/>
				내 얼굴이 남아 있는 것은<br/>
				어느 왕조의 유물이기에<br/>
				이다지도 욕될까.<br/>
				<br/><br/>
				나는 나의 참회의 글을 한 줄에 줄이자.<br/>
				ㅡ 만 이십 사 년 일 개월을<br/>
				무슨 기쁨을 바라 살아왔던가.<br/>
				<br/><br/>
				내일이나 모레나 그 어느 즐거운 날에<br/>
				나는 또 한 줄의 참회록을 써야 한다.<br/>
				<br/><br/>
				밤이면 밤마다 나의 거울을<br/>
				손바닥으로 발바닥으로 닦아 보자.<br/>
				<br/><br/>
				그러면 어느 운석 밑으로 홀로 걸어가는<br/>
				슬픈 사람의 뒷모양이 거울 속에 나타나 온다
			</div>
			<div id="tabContent3" class="tabContent">
				故鄕(고향)에 돌아온 날 밤에<br/>
				내 白骨(백골)이 따라와 한 방에 누웠다.<br/>
				<br/><br/>
				어둔 방은 宇宙(우주)로 통하고<br/>
				하늘에선가 소리처럼 바람이 불어온다.<br/>
				<br/><br/>
				어둠 속에서 곱게 風化作用(풍화작용)하는<br/>
				白骨(백골)을 들여다보며<br/>
				눈물짓는 것이 내가 우는 것이냐<br/>
				白骨(백골)이 우는 것이냐<br/>
				아름다운 혼이 우는 것이냐<br/>
				<br/><br/>
				志操(지조) 높은 개는<br/>
				밤을 새워 어둠을 짖는다.<br/>
				<br/><br/>
				어둠을 짖는 개는<br/>
				나를 쫓는 것일 게다.<br/>
				<br/><br/>
				가자 가자<br/>
				쫓기우는 사람처럼 가자.<br/>
				白骨(백골) 몰래<br/>
				아름다운 또 다른 故鄕(고향)에 가자
			</div>
		</div>
    </body>
</html>
