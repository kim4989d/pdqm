package egovframework.pdqm.front.support.matching.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.pdqm.front.support.matching.model.CompareCodeVO;
import egovframework.pdqm.front.support.matching.service.CompareCodeService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import egovframework.pdqm.admin.common.tray.Tray;
import egovframework.pdqm.admin.common.tray.NomalTray;
import java.util.Iterator;
import java.util.StringTokenizer;

@Controller
public class CompareCodeController {

	@Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "compareCodeService")
    private CompareCodeService compareCodeService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    Tray reqtray=new  NomalTray();
    
    
    
    @RequestMapping(value="/support/matching/compareCodeList.do")
	public String selectCodeList(@ModelAttribute("searchVO") CompareCodeVO searchVO
							   , final HttpServletRequest request
							   , ModelMap model) 
    			throws Exception {
    	System.out.println("CompareCodeController.selectCodeList");

    	//선택시
    	try {
	    	String selected_Id_List = request.getParameter("selected_Id_List"); // 
	    	selected_Id_List = selected_Id_List.replace("▦", ", ");
	    	System.out.println("selected_Id_List [ "+ selected_Id_List+" ]" );
	    	searchVO.setSelected_Id_List(selected_Id_List);
    	} catch(Exception e) {
    		//조회시 오류 발생 방지    		
    	}
    	
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
    	
		
		try {
			LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
			searchVO.setRegister_id(user.getId());
		
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(" ++ ERROR ++++++++"+ e);
	        return "redirect:MatchingCodeInfo.do";
		}
		
		
    	List resultList=compareCodeService.selectCodeList(searchVO, model);
    	
    	   
//    	System.out.println("init===========");
//    	int totCnt = compareCodeService.selectCodeListTotCnt(searchVO);
//    	System.out.println("end===========");
//    	paginationInfo.setTotalRecordCount(totCnt);
//	    model.addAttribute("paginationInfo", paginationInfo);
	    
    	model.addAttribute("resultList",resultList);
    	System.out.println("getS_code_info_id:"+searchVO.getS_code_info_id());
    	System.out.println("getS_code_info_nm:"+searchVO.getS_code_info_nm());
    	System.out.println("getT_code_info_id:"+searchVO.getT_code_info_id());
    	System.out.println("getT_code_info_nm:"+searchVO.getT_code_info_nm());   
    	System.out.println("getT_code_info_nm:"+searchVO.getMaster_yn());  
    	
    	model.addAttribute("s_code_info_id",searchVO.getS_code_info_id());
    	model.addAttribute("s_code_info_nm",searchVO.getS_code_info_nm());
    	model.addAttribute("t_code_info_id",searchVO.getT_code_info_id());
    	model.addAttribute("t_code_info_nm",searchVO.getT_code_info_nm());
    	model.addAttribute("master_yn",searchVO.getMaster_yn());
    	
    	return "/egovframework/pdqm/front/support/matching/CompareCodeList";
    }
    
    @RequestMapping(value="/support/matching/compareCodeResult.do")
	public String compareCodeResult(@ModelAttribute("searchVO") CompareCodeVO searchVO, ModelMap model) 
    			throws Exception {
    	System.out.println("CompareCodeController.compareCodeResult");
    
    	
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
		
//		if (dbInfoVO.getRegister_id().equals("")) {
//		System.out.println("+++++++++++ ID Null back  ++++++++++");
//		return "redirect:MatchingCodeComp.do";				
//	}
	
		try {
			
			LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
			searchVO.setRegister_id(user.getId());
		
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(" ++ ERROR ++++++++"+ e);
	        return "redirect:MatchingCodeInfo.do";
		}
    	
    	
    	List resultList=compareCodeService.selectCodeList(searchVO, model);
    	
    	   
//    	System.out.println("init===========");
//    	int totCnt = compareCodeService.selectCodeListTotCnt(searchVO);
//    	System.out.println("end===========");
//    	paginationInfo.setTotalRecordCount(totCnt);
//	    model.addAttribute("paginationInfo", paginationInfo);
	    
    	model.addAttribute("resultList",resultList);
    	
    	System.out.println("getS_code_info_id:"+searchVO.getS_code_info_id());
    	System.out.println("getS_code_info_nm:"+searchVO.getS_code_info_nm());
    	System.out.println("getT_code_info_id:"+searchVO.getT_code_info_id());
    	System.out.println("getT_code_info_nm:"+searchVO.getT_code_info_nm()); 
    	
    	return "/egovframework/pdqm/front/support/matching/CompareCodeResult";
    }
}
