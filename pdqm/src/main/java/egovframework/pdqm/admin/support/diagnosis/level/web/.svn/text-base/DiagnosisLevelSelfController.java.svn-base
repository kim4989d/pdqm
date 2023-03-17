package egovframework.pdqm.admin.support.diagnosis.level.web;

import java.util.List;

import javax.annotation.Resource;

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
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelf;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelfVO;
import egovframework.pdqm.admin.support.diagnosis.level.service.DiagnosisLevelSelfService;
import egovframework.pdqm.front.support.diagnosis.level.model.SelfDiag;
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
public class DiagnosisLevelSelfController {

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "diagnosisLevelSelfService")
    private DiagnosisLevelSelfService diagnosisLevelSelfService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;


	/**
	 * 자가진단 관리 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */ 
    @RequestMapping(value="/support/diagnosis/level/selectSelfDiagnosisList.do")
	public String selectSelfDiagnosisList(@ModelAttribute("searchVO") DiagnosisLevelSelfVO  searchVO, ModelMap model) 
    			throws Exception {
    	
    	/** EgovPropertyService.SiteList */
    	searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
    	searchVO.setPageSize(propertiesService.getInt("pageSize"));
    	
    	/** pageing */ 
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());
		
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
        List resultList = diagnosisLevelSelfService.selectSelfDiagnosisList(searchVO);
        model.addAttribute("resultList", resultList);
        
        int totCnt = diagnosisLevelSelfService.selectSelfDiagnosisListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);
    		
        return "egovframework/pdqm/admin/support/diagnosis/level/self/SelfDiagnosisList";
        
  	}

    
    /**
	 * 자가진단  등록 화면이동 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/level/self/SelfDiagnosisRegist";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/level/insertSelfDiagnosisView.do")
    public String insertIdxDbTypeView(
            @ModelAttribute("searchVO") DiagnosisLevelSelfVO  searchVO, ModelMap model)
            throws Exception {

    	model.addAttribute("diagnosisLevelSelf", new DiagnosisLevelSelf());
        return "egovframework/pdqm/admin/support/diagnosis/level/self/SelfDiagnosisRegist";
    }
	
		

	/**
	 * 자가진단  등록 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "redirect:/support/diagnosis/level/selectSelfDiagnosisList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/level/insertSelfDiagnosis.do")
    public String insertSelfDiagnosis(
    		@ModelAttribute("searchVO") DiagnosisLevelSelfVO searchVO,
    		DiagnosisLevelSelf vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	vo.setFrstRegisterId(user.getUniqId());
    	diagnosisLevelSelfService.insertSelfDiagnosis(vo);

        return "redirect:/support/diagnosis/level/selectSelfDiagnosisList.do";
    }

	
    /**
	 * 자가진단  상세 조회 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngModity";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/level/updateSelfDiagnosisView.do")
    public String updateSelfDiagnosisView(
            @ModelAttribute("searchVO") DiagnosisLevelSelfVO  searchVO
            ,DiagnosisLevelSelf vo
            , ModelMap model)
            throws Exception {
		
		DiagnosisLevelSelf resultVo = diagnosisLevelSelfService.updateSelfDiagnosisView(vo);
  
		model.addAttribute(resultVo);
        return "egovframework/pdqm/admin/support/diagnosis/level/self/SelfDiagnosisModity";
    }


	/**
	 * 자가진단  수정 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "redirect:/support/diagnosis/selectDiagnosisLevelMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/level/updateSelfDiagnosis.do")
    public String updateSelfDiagnosis(
    		@ModelAttribute("searchVO") DiagnosisLevelSelfVO searchVO,
    		DiagnosisLevelSelf vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

    	vo.setLastUpdusrId(user.getUniqId());
    	diagnosisLevelSelfService.updateSelfDiagnosis(vo);

    	return "redirect:/support/diagnosis/level/selectSelfDiagnosisList.do";
    }

	/**
	 * 자가진단  삭제 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "redirect:/support/diagnosis/selectDiagnosisLevelMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/level/deleteSelfDiagnosis.do")
    public String deleteSelfDiagnosis(
    		@ModelAttribute("searchVO") DiagnosisLevelSelfVO searchVO,
    		DiagnosisLevelSelf vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

    	vo.setLastUpdusrId(user.getUniqId());
    	diagnosisLevelSelfService.deleteSelfDiagnosis(vo);

    	return "redirect:/support/diagnosis/level/selectSelfDiagnosisList.do";
    }
    
    /**
	 * 자가진단  구성복사 상세 조회 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngModity";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/level/compositionCopyView.do")
    public String compositionCopyView(
            @ModelAttribute("searchVO") DiagnosisLevelSelfVO  searchVO
            ,DiagnosisLevelSelf vo
            , ModelMap model)
            throws Exception {
		
		DiagnosisLevelSelf resultVo = diagnosisLevelSelfService.updateSelfDiagnosisView(vo);
  
		model.addAttribute(resultVo);
        return "egovframework/pdqm/admin/support/diagnosis/level/self/CompositionCopyRegist";
    }

	/**
	 * 자가진단 등록 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "redirect:/support/diagnosis/level/selectSelfDiagnosisList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/level/insertComposition.do")
    public String insertComposition(
    		@ModelAttribute("searchVO") DiagnosisLevelSelfVO searchVO,
    		DiagnosisLevelSelf vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	vo.setLastUpdusrId(user.getUniqId());
    	diagnosisLevelSelfService.insertComposition(vo);

        return "redirect:/support/diagnosis/level/selectSelfDiagnosisList.do";
    }
    
	/**
	 * 자가진단 복사  등록 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "redirect:/support/diagnosis/level/selectSelfDiagnosisList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/level/insertCompositionCopy.do")
    public String insertCompositionCopy(
    		@ModelAttribute("searchVO") DiagnosisLevelSelfVO searchVO,
    		DiagnosisLevelSelf vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	vo.setFrstRegisterId(user.getUniqId());
    	diagnosisLevelSelfService.insertCompositionCopy(vo);

        return "redirect:/support/diagnosis/level/selectSelfDiagnosisList.do";
    }

    /**
	 * 자가진단 구성 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */ 
    @RequestMapping(value="/support/diagnosis/level/selectCompositionList.do")
	public String selectCompositionList(@ModelAttribute("searchVO") DiagnosisLevelSelfVO  searchVO, 
			DiagnosisLevelSelf vo,
			ModelMap model) 
    			throws Exception {
        List resultTitleList = diagnosisLevelSelfService.selectCompositionTitleList();
        model.addAttribute("resultTitleList", resultTitleList);
        
        int cnt1Level = 0 ;
        for( int i = 0 ; i < resultTitleList.size() ; i++ )
        {
        		cnt1Level++ ;

        } 
       
        model.addAttribute( "cnt1Level", cnt1Level ) ;
        
        List resultList = diagnosisLevelSelfService.selectCompositionList(vo);
        
        model.addAttribute("resultList", resultList);
        return "egovframework/pdqm/admin/support/diagnosis/level/self/CompositionRegist";
        
  	}
}
