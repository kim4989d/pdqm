/**
 * 개요
 * - 통계에 대한 controller 클래스를 정의한다.
 *
 * @author psh
 * @version 1.0
 * @created 03-8-2009 오후 2:07:11
 *  * <pre>
 * << 개정이력(Modification Information) >>
 * 
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2011.11.21	psh          최초 생성 
 *  
 *  </pre>
 */

package egovframework.pdqm.admin.stats.web;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.com.sym.log.lgm.service.EgovSysLogService;
import egovframework.com.sym.log.lgm.service.SysLog;
import egovframework.com.utl.sim.service.EgovClntInfo;
import egovframework.pdqm.admin.stats.service.StatisticsService;
import egovframework.pdqm.admin.stats.service.StatisticsVO;


@Controller
public class StatisticsController {
	
    @Resource(name = "statisticsService")
    private StatisticsService statisticsService;

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;

	@Resource(name="EgovSysLogService")
	private EgovSysLogService sysLogService;

    /**
	 * 가입통계화면 이동
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping("/admin/stats/selectJoinCountView.do")
    public String selectJoinCountView(@ModelAttribute("statisticsVO") StatisticsVO statisticsVO,
     		ModelMap model) throws Exception {

    	// 현재월 가져오기.
    	Date today = new Date();
    	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM" );
    	String strDate =  formatter.format( today );

    	statisticsVO.setDateFrom(strDate);
    	statisticsVO.setDateTo(strDate);    	
    	
        return "egovframework/pdqm/admin/stats/selectJoinCount";
    }

	/**
	 * 회원가입통계를 조회한다.
	 * @param bannerVO - 가입통계 VO
	 * @return String - 리턴 URL
	 * @throws Exception
	 */
    @RequestMapping(value="/admin/stats/selectJoinCount.do")
	public String selectJoinCount(@ModelAttribute("statisticsVO") StatisticsVO statisticsVO,
                             		ModelMap model) throws Exception{

    	statisticsVO.setStatisticsList(statisticsService.selectJoinCount(statisticsVO));

		model.addAttribute("statisticsList", statisticsVO.getStatisticsList());
        
        model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));

		return "egovframework/pdqm/admin/stats/selectJoinCount";
	}    
    
    /**
	 * 접속현황화면 이동
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping("/admin/stats/selectAccessCountView.do")
    public String selectAccessCountView(@ModelAttribute("statisticsVO") StatisticsVO statisticsVO,
     		ModelMap model) throws Exception {
    	
    	// 현재월 가져오기.
    	Date today = new Date();
    	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM" );
    	String strDate =  formatter.format( today );

    	statisticsVO.setDateFrom(strDate);
    	statisticsVO.setDateTo(strDate);  
    	
        return "egovframework/pdqm/admin/stats/selectAccessCount";
    }

	/**
	 * 접속통계를 조회한다.
	 * @param bannerVO - 접속통계 VO
	 * @return String - 리턴 URL
	 * @throws Exception
	 */
    @RequestMapping(value="/admin/stats/selectAccessCount.do")
	public String selectAccessCount(@ModelAttribute("statisticsVO") StatisticsVO statisticsVO,
                             		ModelMap model) throws Exception{

    	statisticsVO.setStatisticsList(statisticsService.selectAccessCount(statisticsVO));

		model.addAttribute("statisticsList", statisticsVO.getStatisticsList());
        model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));

		return "egovframework/pdqm/admin/stats/selectAccessCount";
	}        

    /**
	 * 접속현황화면 이동
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping("/admin/stats/selectUseCountView.do")
    public String selectUseCountView(@ModelAttribute("statisticsVO") StatisticsVO statisticsVO,
     		ModelMap model) throws Exception {

    	// 현재월 가져오기.
    	Date today = new Date();
    	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM" );
    	String strDate =  formatter.format( today );

    	statisticsVO.setDateFrom(strDate);
    	statisticsVO.setDateTo(strDate);  
    	
        return "egovframework/pdqm/admin/stats/selectUseCount";
    }
    
	/**
	 * 이용통계를 Log 남기기
	 * @param bannerVO - 이용통계 VO
	 * @return String - 리턴 URL
	 * @throws Exception
	 */
    @RequestMapping(value="/admin/stats/selectUseCount.do")
	public String selectUseCount(@ModelAttribute("loginVO") LoginVO loginVO,
								 @ModelAttribute("sysLog") SysLog sysLog,
								 HttpServletRequest request,
                             		ModelMap model) throws Exception{

    	// 2-2 로그온 사용자를 시스템로그(COMTNSYSLOG)테이블에 저장한다. psh
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	String userIp = EgovClntInfo.getClntIP(request);
    	
    	if (user != null){
//    		System.out.println("getUniqId============>"+user.getUniqId());
    		sysLog.setMberType(user.getMberType()); // 회원구분
    		sysLog.setRqesterId(user.getUniqId()); // 요청자ID
    		
    	}
//		System.out.println("getIp============>"+userIp);
//		System.out.println("sysLog.getSrvcNm()===========>"+sysLog.getSrvcNm());
//		System.out.println("request===========>"+request.getRequestURI());
		
		sysLog.setRqesterIp(userIp); // 요청자IP			
		
    	sysLogService.logInsertSysLog(sysLog);

		//return "egovframework/pdqm/admin/stats/selectUseCount";
		return request.getRequestURI();		
	}        

}
