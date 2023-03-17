package egovframework.pdqm.front.support.matching.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.util.PropertiesHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.pdqm.front.support.matching.model.CodeInfoVO;
import egovframework.pdqm.front.support.matching.model.DBInfoVO;
import egovframework.pdqm.front.support.matching.service.MatchingCmmService;
import egovframework.pdqm.front.support.matching.service.MatchingCodeInfoService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class MatchingCodeInfoController {
	
    @Resource(name = "MatchingCodeInfoService")
    private MatchingCodeInfoService matchingCodeInfoService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    
	@RequestMapping(value="/support/matching/MatchingCodeInfo.do")
	public String searchCodeInfoList(@ModelAttribute("codeInfoVO") CodeInfoVO codeInfoVO,
//									  @ModelAttribute("loginVO") LoginVO loginVO,	
									 ModelMap model) 
    			throws Exception {        
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		codeInfoVO.setPageUnit(propertiesService.getInt("pageUnit"));
		codeInfoVO.setPageSize(propertiesService.getInt("pageSize"));
		
		try {
			
			//
			codeInfoVO.setRegister_id(user.getId());
		
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(" ++ ERROR ++++++++"+ e);
//			return "egovframework/pdqm/front/support/matching/MatchingCodeInfo";
		}
//		if (dbInfoVO.getRegister_id().equals("")) {
//			System.out.println("+++++++++++ ID Null back  ++++++++++");
//			return "egovframework/pdqm/front/support/matching/MatchingCodeInfo";				
//		}
    	/** pageing */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(codeInfoVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(codeInfoVO.getPageUnit());
		paginationInfo.setPageSize(codeInfoVO.getPageSize());
		
		codeInfoVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		codeInfoVO.setLastIndex(paginationInfo.getLastRecordIndex());
		codeInfoVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		
		List<CodeInfoVO> codeInfolist = matchingCodeInfoService.SearchCodeInfoList(codeInfoVO);
		
		int DBInfoCnt = matchingCodeInfoService.SearchCodeInfoCnt(codeInfoVO);
		paginationInfo.setTotalRecordCount(DBInfoCnt); //전체 게시물 건 수
 
		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
		model.addAttribute("paginationInfo", paginationInfo);		
		model.addAttribute("codeInfolist", codeInfolist);
		
		return "egovframework/pdqm/front/support/matching/MatchingCodeInfo";
  	}
	
//	/support/matching/searchFindCodeInfoList.do
	@RequestMapping(value="/support/matching/searchFindCodeInfoList.do")
	public String searchFIndCodeInfoList(@ModelAttribute("codeInfoVO") CodeInfoVO codeInfoVO
//										, @ModelAttribute("LoginVO") LoginVO loginVO
										, @RequestParam(value="pageNo", required=false) String pageNo
										, HttpServletRequest request, ModelMap model) 
    			throws Exception {        
		
		System.out.println( " :::: Begin searchFindCodeInfoList :::: ");
		
		try {
			
			LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
			codeInfoVO.setRegister_id(user.getId());
			System.out.println( " :::searchWrd : [ "+ request.getParameter("searchWrd") + "] getId : [" + user.getId() + "] :::: ");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(" ++ ERROR ++++++++"+ e.toString());
			return "redirect:MatchingCodeInfo.do";
		}
		
		//PaginationInfo에 필수 정보를 넣어 준다.
		codeInfoVO.setPageUnit(propertiesService.getInt("pageUnit"));
		codeInfoVO.setPageSize(propertiesService.getInt("pageSize"));
    	
    	/** pageing */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(codeInfoVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(codeInfoVO.getPageUnit());
		paginationInfo.setPageSize(codeInfoVO.getPageSize());
		
		codeInfoVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		codeInfoVO.setLastIndex(paginationInfo.getLastRecordIndex());
		codeInfoVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		
		
		
		
		codeInfoVO.setCode_nm(request.getParameter("searchWrd"));

		List<CodeInfoVO> codeInfolist = matchingCodeInfoService.searchFIndCodeInfoList(codeInfoVO);
		
		int DBInfoCnt = matchingCodeInfoService.searchFIndCodeInCnt(codeInfoVO);
		paginationInfo.setTotalRecordCount(DBInfoCnt); //전체 게시물 건 수
 
		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
		model.addAttribute("paginationInfo", paginationInfo);		
		model.addAttribute("codeInfolist", codeInfolist);
		
		return "egovframework/pdqm/front/support/matching/MatchingCodeInfo";
  	}

}
