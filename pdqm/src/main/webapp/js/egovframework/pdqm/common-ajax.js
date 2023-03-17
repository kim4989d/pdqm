

/***********************************************************************************************
   함수명 : fn_ajax_select                                   
   설  명 : SELECT 리스트를 AJAX로 가져올 수 있도록 해준다. 특정 값이 selected 되게 합니다.               
   인  자 : startDt(시작일 control명)    endDt(종료일 control명)
   			1) prnt  : 문자열 - 선택되는 셀렉트박스 ID
    		2) chld  : 문자열 - 출력되는 셀렉트박스 ID
   			3) url   : 문자열 - AJAX를 호출할 주소
 			4) data  : 객체형 - AJAX를 호출하면서 넘길 데이터. JSON 방식으로 넘긴다
   			5) selectedValue : 문자열 - 해당 값이 selected되게 합니다 (optional)
                               
***********************************************************************************************/
function fn_ajax_select(prnt, chld, url, param, selectedValue) {	
	 $(document).ready(function() {    	
	        $("#"+prnt).change(function() {        	
	            $.ajax({
	                type: "POST",
	                url: url,
	                data: { "val" : param.val() },
	                dataType: "xml",
	                success: function (data) {                	
	                    $("#"+chld).find("option").each(function() { $(this).remove(); });
	                    $(data).find("response").find("item").each(function() {
	                        var oOption = $("<option/>").appendTo("#"+chld);
	                        oOption
	                            .attr("value", $(this).find("value").text())
	                            .text($(this).find("name").text())
	                        	.css("width", "auto");
	                        if ($(this).find("value").text() == selectedValue)
	                        {
	                            oOption.attr('selected', 'selected');
	                            
	                        }
	                    });
	                }
	            });
	        });
	    });
}
