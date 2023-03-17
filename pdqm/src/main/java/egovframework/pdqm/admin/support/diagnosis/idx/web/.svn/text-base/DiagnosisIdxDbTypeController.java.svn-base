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


import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxDbType;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxDbTypeVO;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DiagnosisIdxDbTypeService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * 데이터베이스유형 관리  controller 클래스를 정의한다.
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
public class DiagnosisIdxDbTypeController {

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "diagnosisIdxDbTypeService")
    private DiagnosisIdxDbTypeService diagnosisIdxDbTypeService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;



	/**
	 * 데이터베이스유형  관리 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping(value="/support/diagnosis/idx/selectIdxDbTypeList.do")
	public String selectIdxDbTypeList(@ModelAttribute("searchVO") DiagnosisIdxDbTypeVO searchVO, ModelMap model) 
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
		
		
        List resultList = diagnosisIdxDbTypeService.selectIdxDbTypeList(searchVO);
        model.addAttribute("resultList", resultList);
        //model.addAttribute("resultList", resultList);
        
        
        
        
        int totCnt = diagnosisIdxDbTypeService.selectIdxDbTypeListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);
        
        return "egovframework/pdqm/admin/support/diagnosis/idx/dbtype/DbTypeList";
        
  	}

/*    
    *//**
	 * 데이터베이스유형 관리  등록 화면이동 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngRegist";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/idx/insertIdxDbTypeView.do")
    public String insertIdxDbTypeView(
            @ModelAttribute("searchVO") DiagnosisIdxDbTypeVO searchVO, ModelMap model)
            throws Exception {
		
    	model.addAttribute("diagnosisIdxDbType", new DiagnosisIdxDbType());
        return "egovframework/pdqm/admin/support/diagnosis/idx/dbtype/DbTypeRegist";
    }

	
	/**
	 * 데이터베이스유형   등록 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/insertDiagnosisIdxMng.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/idx/insertIdxDbType.do")
    public String insertIdxDbType(
    		@ModelAttribute("searchVO") DiagnosisIdxDbTypeVO searchVO,
    		DiagnosisIdxDbType vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	vo.setFrstRegisterId(user.getUniqId());
    	
    	diagnosisIdxDbTypeService.insertIdxDbType(vo);
        return "redirect:/support/diagnosis/idx/selectIdxDbTypeList.do";
    }

    
    /**
	 * 데이터베이스유형 관리  상세 조회 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngModity";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/idx/updateIdxDbTypeView.do")
    public String updateIdxDbTypeView(
            @ModelAttribute("searchVO") DiagnosisIdxDbTypeVO searchVO
            ,DiagnosisIdxDbType vo
            , ModelMap model)
            throws Exception {
		
		DiagnosisIdxDbType resultVo = diagnosisIdxDbTypeService.updateIdxDbTypeView(vo);


		model.addAttribute(resultVo);
		 return "egovframework/pdqm/admin/support/diagnosis/idx/dbtype/DbTypeModity";
    }
    
	/**
	 * 데이터베이스유형 관리  수정 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/idx/updateIdxDbType.do")
    public String updateIdxDbType(
    		@ModelAttribute("searchVO") DiagnosisIdxDbTypeVO searchVO,
    		DiagnosisIdxDbType vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

    	vo.setLastUpdusrId(user.getUniqId());
    	diagnosisIdxDbTypeService.updateIdxDbType(vo);

    	return "redirect:/support/diagnosis/idx/selectIdxDbTypeList.do";
    }

	/**
	 * 데이터베이스유형 관리  삭제 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/idx/deleteIdxDbType.do")
    public String deleteIdxDbType(
    		@ModelAttribute("searchVO") DiagnosisIdxDbTypeVO searchVO,
    		DiagnosisIdxDbType vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

    	vo.setLastUpdusrId(user.getUniqId());
    	diagnosisIdxDbTypeService.deleteIdxDbType(vo);

    	return "redirect:/support/diagnosis/idx/selectIdxDbTypeList.do";
    }
    
}
