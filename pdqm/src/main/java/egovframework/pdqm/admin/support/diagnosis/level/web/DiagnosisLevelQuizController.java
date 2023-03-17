package egovframework.pdqm.admin.support.diagnosis.level.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;


import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMngVO;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelQuiz;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelScore;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelScoreVO;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelf;
import egovframework.pdqm.admin.support.diagnosis.level.service.DiagnosisLevelQuizService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * 자가진단 관리    controller 클래스를 정의한다.
 * @author 공통서비스 개발팀 이문준
 * @since 2011.11.09
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.03.11  이문준          최초 생성
 *   2011.09.07  서준식          롤 등록시 이미 등록된 경우 데이터 중복 에러 발생 문제 수정
 * </pre>
 */

@Controller
public class DiagnosisLevelQuizController {

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "diagnosisLevelQuizService")
    private DiagnosisLevelQuizService diagnosisLevelQuizService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;

    /**
	 * 자가진단 문항 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */ 
    @RequestMapping(value="/support/diagnosis/level/selectQuizList.do")
	public String selectCompositionList(@ModelAttribute("searchVO")  
			DiagnosisLevelQuiz vo,
			ModelMap model) 
    			throws Exception {
        List resultTitleList = diagnosisLevelQuizService.selectQuizTitleList();
        model.addAttribute("resultTitleList", resultTitleList);

        int cnt1Level = 0 ;
        for( int i = 0 ; i < resultTitleList.size() ; i++ )
        {
        		cnt1Level++ ;
        }
        model.addAttribute( "cnt1Level", cnt1Level ) ;
        
        List resultList = diagnosisLevelQuizService.selectQuizList();
        model.addAttribute("resultList", resultList);
        return "egovframework/pdqm/admin/support/diagnosis/level/quiz/QuizList";
        
  	}
    
    /**
	 * 자가진단 문항  등록 화면이동 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/level/quiz/QuizRegist";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/level/insertQuizView.do")
    public String insertQuizView(
            @ModelAttribute("diagnosisLevelQuiz") DiagnosisLevelQuiz vo, ModelMap model)
            throws Exception {

    	model.addAttribute("diagnosisLevelQuiz", vo);
    	return "egovframework/pdqm/admin/support/diagnosis/level/quiz/QuizRegist";
    }

	/**
	 * 자가진단 문항  등록 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/level/selectQuizList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/level/insertQuiz.do")
    public String insertQuiz(
    		HttpServletRequest request,
    		DiagnosisLevelQuiz vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	vo.setFrstRegisterId(user.getUniqId());
    	vo.setAnswerStdrs(request.getParameter("answerStdrs1"));
    	diagnosisLevelQuizService.insertQuiz(vo);

        return "forward:/support/diagnosis/level/selectQuizList.do";
    }

    /**
	 * 자가진단 문항  등록 화면이동 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/level/quiz/QuizModity";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/level/updateQuizView.do")
    public String updateQuizView(
            @ModelAttribute("diagnosisLevelQuiz") DiagnosisLevelQuiz vo, ModelMap model)
            throws Exception {
		
		DiagnosisLevelQuiz resultVo = diagnosisLevelQuizService.updateQuizView(vo);
		
    	model.addAttribute("diagnosisLevelQuiz", resultVo);
    	return "egovframework/pdqm/admin/support/diagnosis/level/quiz/QuizModity";
    }
	
	/**
	 * 자가진단 문항  수정 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return return "forward:/support/diagnosis/level/selectQuizList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/level/updateQuiz.do")
    public String updateQuiz(
    		HttpServletRequest request,
    		DiagnosisLevelQuiz vo,    		
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	vo.setLastUpdusrId(user.getUniqId());
    	
    	vo.setAnswerStdrs(request.getParameter("answerStdrs1"));
    	diagnosisLevelQuizService.updateQuiz(vo);

        return "forward:/support/diagnosis/level/selectQuizList.do";
    }
    
	/**
	 * 자가진단 문항  삭제 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return return "forward:/support/diagnosis/level/selectQuizList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/level/deleteQuiz.do")
    public String deleteQuiz(
    		DiagnosisLevelQuiz vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	vo.setLastUpdusrId(user.getUniqId());
    	diagnosisLevelQuizService.deleteQuiz(vo);

        return "forward:/support/diagnosis/level/selectQuizList.do";
    }
 
    /**
	 * 자가진단 문항 답변 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */ 
    @RequestMapping(value="/support/diagnosis/level/selectQuizAnswer.do")
	public String selectQuizAnswer(@ModelAttribute("searchVO")  
			DiagnosisLevelQuiz vo,
			ModelMap model) 
    			throws Exception {
        List resultList = diagnosisLevelQuizService.selectQuizAnswer(vo);
        model.addAttribute("resultList", resultList);

        return "egovframework/pdqm/admin/support/diagnosis/level/quiz/QuizAnswer";
        
  	}
    
    /**
	 * 자가진단 문항 답변 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */ 
    @RequestMapping(value="/support/diagnosis/level/selectQuizAnswer2.do")
	public String selectQuizAnswer2(@ModelAttribute("searchVO")  
			DiagnosisLevelQuiz vo,
			ModelMap model) 
    			throws Exception {
        List resultList = diagnosisLevelQuizService.selectQuizAnswer2(vo);
        model.addAttribute("resultList", resultList);

        return "egovframework/pdqm/admin/support/diagnosis/level/quiz/QuizAnswer";
        
  	}
    
}
