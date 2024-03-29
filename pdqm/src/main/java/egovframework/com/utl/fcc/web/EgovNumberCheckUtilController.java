package egovframework.com.utl.fcc.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * 번호유효성체크 에 대한 Util 테스트를 위한 화면 controller
 * @author 공통컴포넌트 개발팀 윤성록
 * @since 2009.06.10
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.06.10  윤성록          최초 생성
 *
 * </pre>
 */
@Controller
public class EgovNumberCheckUtilController {
	protected final Log logger = LogFactory.getLog(getClass());

    @RequestMapping(value="/utl/fcc/EgovNumberCheckUtil.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.info("EgovNumberCheckUtil start....");
        Map<String, Object> cmdModel = new HashMap<String, Object>();

        // 이동할 JSP
        String jspStr = "";
        // 결과정보
        String resultStr = "";
        // 실행명령어
        String cmdStr = request.getParameter("cmdStr");

        if(cmdStr==null||cmdStr.equals("")){
        	cmdStr="";
        }
				// 실행명령어에 따른 JSP 할당
				if(cmdStr.equals("ComUtlFccJuminNumberCheck")){ // test 샘플용 경로
					jspStr = "egovframework/com/utl/fcc/EgovNumberCheck";
					try {
						cmdModel.put("resultStr", "UTILITY 직접 호출");
					} catch (Exception e) {
						// TODO Auto-generated catch block
						jspStr = "/index";
						e.printStackTrace();
					}
				} else if(cmdStr.equals("ComUtlFccBubinNumberCheck")){ // test 샘플용 경로
					jspStr = "egovframework/com/utl/fcc/EgovNumberCheck";
					try {
						cmdModel.put("resultStr", "UTILITY 직접 호출");
					} catch (Exception e) {
						// TODO Auto-generated catch block
						jspStr = "/index";
						e.printStackTrace();
					}
				} else if (cmdStr.equals("ComUtlFccCompNumberCheck")) {
					jspStr = "egovframework/com/utl/fcc/EgovNumberCheck";
					try {
						cmdModel.put("resultStr", "UTILITY 직접 호출");
					} catch (Exception e) {
						// TODO Auto-generated catch block
						jspStr = "/index";
						e.printStackTrace();
					}
				} else if (cmdStr.equals("ComUtlFccForeignCheck")) {
					jspStr = "egovframework/com/utl/fcc/EgovNumberCheck";
					try {
						cmdModel.put("resultStr", "UTILITY 직접 호출");
					} catch (Exception e) {
						// TODO Auto-generated catch block
						jspStr = "/index";
						e.printStackTrace();
					}

				} else {
					jspStr = "/index";
				}

				logger.info("Returning EgovNumberCheckUtil view with cmdStr, resultStr : " + cmdStr +" , "+ resultStr);
				logger.info("EgovNumberCheckUtil end....");
				return new ModelAndView(jspStr, "cmdModel", cmdModel);
		}
}

