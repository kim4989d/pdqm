package egovframework.pdqm.admin.support.diagnosis.idx.web;

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

import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMng;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMngVO;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DiagnosisIdxMngService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * 지표 및 특성 관리  controller 클래스를 정의한다.
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
public class DiagnosisIdxMngController {

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "diagnosisIdxMngService")
    private DiagnosisIdxMngService diagnosisIdxMngService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;



	/**
	 * 지표 및 특성 관리 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping(value="/support/diagnosis/selectDiagnosisIdxMngList.do")
	public String selectDiagnosisMngList(@ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO, ModelMap model) 
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
		
        List resultList = diagnosisIdxMngService.selectDiagnosisIdxMngList(searchVO);
        model.addAttribute("resultList", resultList);
        
        int totCnt = diagnosisIdxMngService.selectDiagnosisIdxMngListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);
        
        return "egovframework/pdqm/admin/support/diagnosis/idx/DiagnosisIdxMngList";

        
  	}

    
    /**
	 * 지표 및 특성 관리  등록 화면이동 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngRegist";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/insertDiagnosisIdxMngView.do")
    public String insertDiagnosisMngView(
            @ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO, ModelMap model)
            throws Exception {

		List dgnssMasterList = diagnosisIdxMngService.selectDgnssIdxMasterList();
		
		model.addAttribute("dgnssMasterList", dgnssMasterList);
		
    	model.addAttribute("diagnosisIdxMng", new DiagnosisIdxMng());
        return "egovframework/pdqm/admin/support/diagnosis/idx/DiagnosisIdxMngRegist";
    }

	
	/**
	 * 지표   등록 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/insertDiagnosisIdxMng.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/insertDiagnosisIdxMng.do")
    public String insertDiagnosisMng(
    		@ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO,
    		DiagnosisIdxMng diagnosisIdxMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	diagnosisIdxMng.setFrstRegisterId(user.getUniqId());
    	
    	diagnosisIdxMngService.insertDiagnosisIdxMng(diagnosisIdxMng);
        return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
    }

    
    /**
	 * 지표 관리  상세 조회 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngModity";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/updateDiagnosisIdxMngView.do")
    public String updateDiagnosisMngView(
            @ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO
            ,DiagnosisIdxMng diagnosisIdxMng
            , ModelMap model)
            throws Exception {
		
		DiagnosisIdxMng resultVo = diagnosisIdxMngService.updateDiagnosisIdxMngView(diagnosisIdxMng);

		List dgnssMasterList = diagnosisIdxMngService.selectDgnssIdxMasterList();
		model.addAttribute("dgnssMasterList", dgnssMasterList);
		
		model.addAttribute(resultVo);
        return "egovframework/pdqm/admin/support/diagnosis/idx/DiagnosisIdxMngModity";
    }
    
	/**
	 * 지표 관리  수정 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/updateDiagnosisIdxMng.do")
    public String updateDiagnosisMng(
    		@ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO,
    		DiagnosisIdxMng diagnosisIdxMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

    	diagnosisIdxMng.setLastUpdusrId(user.getUniqId());
    	diagnosisIdxMngService.updateDiagnosisIdxMng(diagnosisIdxMng);

        return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
    }

	/**
	 * 지표 관리  삭제 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/deleteDiagnosisIdxMng.do")
    public String deleteDiagnosisMng(
    		@ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO,
    		DiagnosisIdxMng diagnosisIdxMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

    	diagnosisIdxMng.setLastUpdusrId(user.getUniqId());
    	diagnosisIdxMngService.deleteDiagnosisIdxMng(diagnosisIdxMng);

        return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
    }
    
    
    /**
	 * 지표 특성  등록 화면이동 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngRegist";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/insertDiagnosisIdxPropertyView.do")
    public String insertDiagnosisIdxPropertyView(
            @ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO, ModelMap model)
            throws Exception {
		
		List dgnssMasterList = diagnosisIdxMngService.selectDgnssIdxMasterList();
		model.addAttribute("dgnssMasterList", dgnssMasterList);
		
    	model.addAttribute("diagnosisIdxMng", new DiagnosisIdxMng());
        return "egovframework/pdqm/admin/support/diagnosis/idx/DiagnosisIdxPropertyRegist";
    }
	
	/**
	 * 지표 특성   등록 한다.
	 * @param k - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/insertDiagnosisIdxProperty.do")
    public String insertDiagnosisProperty(
    		@ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO,
    		DiagnosisIdxMng diagnosisIdxMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	diagnosisIdxMng.setFrstRegisterId(user.getUniqId());
    	
    	diagnosisIdxMngService.insertDiagnosisProperty(diagnosisIdxMng);

        return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
    }
    

    /**
	 * 지표 특성  상세 조회 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisIdxPropertyModity";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/updateDiagnosisIdxPropertyView.do")
    public String updateDiagnosisViewPointView(
            @ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO
            ,DiagnosisIdxMng diagnosisMng
            , ModelMap model)
            throws Exception {
		
		DiagnosisIdxMng resultVo = diagnosisIdxMngService.updateDiagnosisIdxPropertyView(diagnosisMng);
				
		model.addAttribute(resultVo);
        return "egovframework/pdqm/admin/support/diagnosis/idx/DiagnosisIdxPropertyModity";
    }
	
	/**
	 * 진단대상 관리  수정 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/updateDiagnosisIdxProperty.do")
    public String updateDiagnosisViewPoint(
    		@ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO,
    		DiagnosisIdxMng diagnosisMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	diagnosisMng.setLastUpdusrId(user.getUniqId());
    	diagnosisIdxMngService.updateDiagnosisIdxMng(diagnosisMng);

        return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
    }

	/**
	 * 진단대상 관리  삭제 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisLevelMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/deleteDiagnosisIdxProperty.do")
    public String deleteDiagnosisViewPoint(
    		@ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO,
    		DiagnosisIdxMng diagnosisMng,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

    	diagnosisMng.setLastUpdusrId(user.getUniqId());
    	diagnosisIdxMngService.deleteDiagnosisIdxMng(diagnosisMng);

        return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
    }
    
   

	/**
	 * 특성 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping(value="/support/diagnosis/selectIdxPropertyList.do")
	public String selectIdxPropertyList(@ModelAttribute("searchVO") DiagnosisIdxMngVO searchVO, 
			DiagnosisIdxMng diagnosisMng,
			ModelMap model) 
    			throws Exception {
    		
    	List dgnssDetailList = diagnosisIdxMngService.selectDgnssDetailList(diagnosisMng);
		model.addAttribute("dgnssDetailList", dgnssDetailList);
		
        return "egovframework/pdqm/admin/support/diagnosis/idx/DiagnosisIdxPropertyList";
  	}

	
}
