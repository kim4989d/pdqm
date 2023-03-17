package egovframework.pdqm.admin.support.diagnosis.level.util;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.view.AbstractView;

/**
 * @ClassName : DrsAjaxXmlView.java
 * @Description : AJAX 이용시 XML로 데이터를 리턴 할 시에 사용하는 Class
 * @Modification Information

 */

@Service("drsAjaxXmlView")
public class DrsAjaxXmlView extends AbstractView {

	/**
	 * Http Request 요청으로부터 Ajax 응답 메세지를 생성한다. 
	 * @param model - Ajax 응답 대상 메세지를 저장하는 모델 객체
	 * @param request
	 * @param response 
	 * @return void
	 */
	@Override
	@SuppressWarnings("unchecked")
	protected void renderMergedOutputModel(Map model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PrintWriter writer = null;

		try {
			response.setContentType("text/xml");
			response.setHeader("Cache-Control", "no-cache");
			response.setCharacterEncoding("UTF-8");

			writer = response.getWriter();
			writer.write((String) model.get("ajaxData"));
		} finally {
			writer.close();
		}
	}
}
