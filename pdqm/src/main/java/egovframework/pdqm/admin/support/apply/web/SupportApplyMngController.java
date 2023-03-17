package egovframework.pdqm.admin.support.apply.web;



import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ibm.icu.text.SimpleDateFormat;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.pdqm.admin.support.apply.model.ApplyMngVO;
import egovframework.pdqm.admin.support.apply.service.SupportApplyMngService;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMngVO;
import egovframework.pdqm.front.support.apply.model.ApplyVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * 
 * 사업신청을 처리하는 비즈니스 구현 클래스
 * @author 신은영
 * @since 2011.12.02
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------  -------- ---------------------------
 *  2011.12.05 신은영          최초생성
 *
 * </pre>
 */

@Controller
public class SupportApplyMngController{

	@Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    
    @Resource(name = "supportApplyMngService")
    private SupportApplyMngService supportApplyMngService;
	

	   /**
     * 등록화면
     * @author 신은영
     * @return	"/egovframework/pdqm/admin/support/apply/SupportApply"
     * @throws Exception
     */
 
    @RequestMapping(value="/support/apply/SupportApply.do")
    public String selectSupport(@ModelAttribute("searchVO")
    		ApplyMngVO applyMngVO,ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	applyMngVO.setFrstRegisterId(user.getUniqId());
       	String	lastUpdusrId = user.getUniqId();
       	applyMngVO.setLastUpdusrId(lastUpdusrId); 


       	ApplyMngVO resultVo = supportApplyMngService.selectSupport(applyMngVO);   	
		model.addAttribute("resultVo",resultVo);

        return "/egovframework/pdqm/admin/support/apply/SupportApply";
    } 
    
    /*
	 * 사업신청기간  등록 한다.
	 * @return "/egovframework/pdqm/admin/support/apply/SupportApply";
	 * @exception Exception
	 */
    @RequestMapping("/support/apply/SupportApplyInsert.do")
    public String insertSupport(
    		@ModelAttribute("searchVO")
    		ApplyMngVO applyMngVO,ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	applyMngVO.setFrstRegisterId(user.getUniqId());
       	String	lastUpdusrId = user.getUniqId();
       	applyMngVO.setLastUpdusrId(lastUpdusrId); 
  
    	supportApplyMngService.insertSupport(applyMngVO);

        return "forward:/support/apply/SupportApply.do";
    }
    
	/**
	 * 사업신청기간 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping(value="/support/apply/selectApplyList.do")
	public String selectApplyList(@ModelAttribute("searchVO") ApplyMngVO searchVO, ModelMap model) 
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

		String nowDate = null;
		SimpleDateFormat formatter =
	          new SimpleDateFormat("yyyyMMdd", java.util.Locale.KOREA);
	      Date date = new Date();
	      nowDate = formatter.format(date);
	      
		if (searchVO.getStartDt() == null || searchVO.getStartDt().equals("")){
			searchVO.setStartDt(nowDate.substring(0, 6)+"01");
			searchVO.setEndDt(nowDate);
		}
		
        List resultList = supportApplyMngService.selectApplyList(searchVO);
        model.addAttribute("resultList", resultList);
        
        int totCnt = supportApplyMngService.selectApplyListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);
        
        return "egovframework/pdqm/admin/support/apply/PdqmApplyList";

  	}

    /**
	 * 사업신청기간  상세 조회 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/apply/PdqmApplyDetail";
	 * @exception Exception
	 */
	@RequestMapping("/support/apply/selectApplyDetailView.do")
    public String selectApplyDetailView(
            @ModelAttribute("searchVO") ApplyMngVO searchVO
            ,ApplyVO vo
            , ModelMap model)
            throws Exception {
		
		ApplyVO resultVo = supportApplyMngService.selectApplyDetailView(vo);

		model.addAttribute(resultVo);
        return "egovframework/pdqm/admin/support/apply/PdqmApplyDetail";
    }

}
