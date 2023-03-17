package egovframework.pdqm.front.support.apply.web;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ibm.icu.text.SimpleDateFormat;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;



import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelf;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelfVO;
import egovframework.pdqm.front.support.apply.model.ApplyVO;
import egovframework.pdqm.front.support.apply.service.ApplyService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * 자원사업 수요조사 관리    controller 클래스를 정의한다.
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
public class ApplyController {

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "applyService")
    private ApplyService applyService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;


	/**
	 * 사업신청 기간조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */ 
    @RequestMapping(value="/support/apply/selectPdqmApply.do")
	public String selectPdqmApply(@ModelAttribute("searchVO") ApplyVO  searchVO, ModelMap model) 
    			throws Exception {
    
    	ApplyVO vo = new ApplyVO();
    	ApplyVO infoVo = new ApplyVO();
    	
    	infoVo = applyService.selectApplyDate(vo);
    	model.addAttribute("infoVo", infoVo);
        model.addAttribute("applyVO", vo);
        
        return "egovframework/pdqm/front/support/apply/PdqmApplyRegist";
        
  	}
	/**
	 * 사업신청  등록 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "redirect:/support/diagnosis/level/selectSelfDiagnosisList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/apply/insertPdqmApply.do")
    public String insertPdqmApply(
    		ApplyVO vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	vo.setFrstRegisterId(user.getUniqId());
    	
    	applyService.insertPdqmApply(vo);

        return "redirect:/support/apply/selectPdqmApply.do";
    }
    
	/**
	 * 사업신청안내조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */ 
    @RequestMapping(value="/support/apply/selectPdqmApplyInfo.do")
	public String selectPdqmApplyInfo(@ModelAttribute("searchVO") ApplyVO  searchVO, ModelMap model) 
    			throws Exception {
    
    	ApplyVO vo = new ApplyVO();
    	ApplyVO infoVo = new ApplyVO();
    	
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	if (user == null){
    		vo.setFrstRegisterId("");
    	}else{
    		vo.setFrstRegisterId(user.getUniqId());
    	}
    	
    	
    	infoVo = applyService.selectApplyDate(vo);
    	
        model.addAttribute("infoVo", infoVo);
        model.addAttribute("applyVO", vo);
        
        return "egovframework/pdqm/front/support/apply/PdqmApplyInfo";
        
  	}
   
}
