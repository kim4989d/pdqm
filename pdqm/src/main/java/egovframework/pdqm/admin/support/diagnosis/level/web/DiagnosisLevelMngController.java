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
import egovframework.pdqm.admin.support.diagnosis.level.service.DiagnosisLevelMngService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * 진단대상관리 controller 클래스를 정의한다.
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
public class DiagnosisLevelMngController {

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "diagnosisMngService")
    private DiagnosisLevelMngService diagnosisMngService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;



	/**
	 * 진단대상 관리 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping(value="/support/diagnosis/selectDiagnosisLevelMngList.do")
	public String selectDiagnosisMngList(@ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO, ModelMap model) 
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
		
        List resultList = diagnosisMngService.selectDiagnosisMngList(searchVO);
        model.addAttribute("resultList", resultList);
        
        int totCnt = diagnosisMngService.selectDiagnosisMngListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);
        
        return "egovframework/pdqm/admin/support/diagnosis/level/DiagnosisLevelMngList";

        
  	}

    
    /**
	 * 진단대상 관리  등록 화면이동 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngRegist";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/insertDiagnosisLevelMngView.do")
    public String insertDiagnosisMngView(
            @ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO, ModelMap model)
            throws Exception {

		List dgnssMasterList = diagnosisMngService.selectDgnssMasterList();
		
		model.addAttribute("dgnssMasterList", dgnssMasterList);
		
    	model.addAttribute("diagnosisMng", new DiagnosisLevelMng());
        return "egovframework/pdqm/admin/support/diagnosis/level/DiagnosisLevelMngRegist";
    }

	
	/**
	 * 진단대상 관리  등록 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/insertDiagnosisLevelMng.do")
    public String insertDiagnosisMng(
    		@ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO,
    		DiagnosisLevelMng diagnosisMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	diagnosisMng.setFrstRegisterId(user.getUniqId());
    	diagnosisMngService.insertDiagnosisMng(diagnosisMng);

        return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
    }

    
    /**
	 * 진단대상 관리  상세 조회 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngModity";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/updateDiagnosisLevelMngView.do")
    public String updateDiagnosisMngView(
            @ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO
            ,DiagnosisLevelMng diagnosisMng
            , ModelMap model)
            throws Exception {
		
		DiagnosisLevelMng resultVo = diagnosisMngService.updateDiagnosisMngView(diagnosisMng);

		List dgnssMasterList = diagnosisMngService.selectDgnssMasterList();
		
		model.addAttribute("dgnssMasterList", dgnssMasterList);
		model.addAttribute(resultVo);
        return "egovframework/pdqm/admin/support/diagnosis/level/DiagnosisLevelMngModity";
    }
    
	/**
	 * 진단대상 관리  수정 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/updateDiagnosisLevelMng.do")
    public String updateDiagnosisMng(
    		@ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO,
    		DiagnosisLevelMng diagnosisMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

    	diagnosisMng.setLastUpdusrId(user.getUniqId());
    	diagnosisMngService.updateDiagnosisMng(diagnosisMng);

        return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
    }

	/**
	 * 진단대상 관리  삭제 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/deleteDiagnosisLevelMng.do")
    public String deleteDiagnosisMng(
    		@ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO,
    		DiagnosisLevelMng diagnosisMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

    	diagnosisMng.setLastUpdusrId(user.getUniqId());
    	diagnosisMngService.deleteDiagnosisMng(diagnosisMng);

        return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
    }
    

    
    /**
	 * 진단대상  관점  등록 화면이동 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngRegist";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/insertDiagnosisLevelViewPointView.do")
    public String insertDiagnosisViewPointView(
            @ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO, ModelMap model)
            throws Exception {
		
		List dgnssMasterList = diagnosisMngService.selectDgnssMasterList();
		model.addAttribute("dgnssMasterList", dgnssMasterList);
		
    	model.addAttribute("diagnosisMng", new DiagnosisLevelMng());
        return "egovframework/pdqm/admin/support/diagnosis/level/DiagnosisLevelViewPointRegist";
    }
	
	/**
	 * 진단대상 관점   등록 한다.
	 * @param k - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/insertDiagnosisLevelViewPoint.do")
    public String insertDiagnosisViewPoint(
    		@ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO,
    		DiagnosisLevelMng diagnosisMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	diagnosisMng.setFrstRegisterId(user.getUniqId());
    	
    	diagnosisMngService.insertDiagnosisViewPoint(diagnosisMng);

        return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
    }
    

    /**
	 * 진단대상 관점  상세 조회 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelViewPointModity";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/updateDiagnosisLevelViewPointView.do")
    public String updateDiagnosisViewPointView(
            @ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO
            ,DiagnosisLevelMng diagnosisMng
            , ModelMap model)
            throws Exception {
		
		DiagnosisLevelMng resultVo = diagnosisMngService.updateDiagnosisViewPointView(diagnosisMng);
		
		List dgnssDetailList = diagnosisMngService.selectDgnssDetailList(diagnosisMng);
		model.addAttribute("dgnssDetailList", dgnssDetailList);
		
		
		model.addAttribute(resultVo);
        return "egovframework/pdqm/admin/support/diagnosis/level/DiagnosisLevelViewPointModity";
    }
	
	/**
	 * 진단대상 관리  수정 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/updateDiagnosisLevelViewPoint.do")
    public String updateDiagnosisViewPoint(
    		@ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO,
    		DiagnosisLevelMng diagnosisMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	diagnosisMng.setLastUpdusrId(user.getUniqId());
    	diagnosisMngService.updateDiagnosisMng(diagnosisMng);

        return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
    }

	/**
	 * 진단대상 관리  삭제 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/deleteDiagnosisLevelViewPoint.do")
    public String deleteDiagnosisViewPoint(
    		@ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO,
    		DiagnosisLevelMng diagnosisMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

    	diagnosisMng.setLastUpdusrId(user.getUniqId());
    	diagnosisMngService.deleteDiagnosisMng(diagnosisMng);

        return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
    }
    


	/**
	 * 진단대상 관리 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping(value="/support/diagnosis/selectViewPointList.do")
	public String selectViewPointList(@ModelAttribute("searchVO") DiagnosisLevelMngVO searchVO, 
			DiagnosisLevelMng diagnosisMng,
			ModelMap model) 
    			throws Exception {
    	
		List dgnssDetailList = diagnosisMngService.selectDgnssDetailList(diagnosisMng);
		model.addAttribute("dgnssDetailList", dgnssDetailList);
     
        return "egovframework/pdqm/admin/support/diagnosis/level/DiagnosisLevelViewPointList";
  	}
    
	
}
