package egovframework.pdqm.front.support.matching.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.pdqm.front.support.matching.model.COLInfoVO;
import egovframework.pdqm.front.support.matching.model.CodeInfoVO;
import egovframework.pdqm.front.support.matching.model.DBInfoVO;
import egovframework.pdqm.front.support.matching.model.TBLInfoVO;
import egovframework.pdqm.front.support.matching.service.MatchingCodeInfoService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class MatchingCodeCompController {
	
    @Resource(name = "MatchingCodeInfoService")
    private MatchingCodeInfoService matchingCodeInfoService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    
	@RequestMapping(value="/support/matching/MatchingCodeComp.do")
	public String MatchingCodeComp(   @ModelAttribute("searchVO") CodeInfoVO codeInfoVO
//									 , @ModelAttribute("loginVO") LoginVO loginVO	
									 , final HttpServletRequest request
									 , ModelMap model
									 , Map commandMap
									 ) 
    			throws Exception {        
		
		
		
		String code_info_id1 = request.getParameter("s_code_info_id"); // CompareCode 화면에서 받은 값
		String t_code_info_id1 = request.getParameter("t_code_info_id"); //
		String check1 = request.getParameter("master_yn"); //
		
		System.out.println("+++++ltk++++  code_info_id1: "+code_info_id1);
		System.out.println("+++++ltk++++  t_code_info_id1: "+t_code_info_id1);
		System.out.println("+++++ltk++++  check1: "+check1);
		
		if (code_info_id1!=null){
			
			System.out.println("+++++ltk++++  code_info_id1!=null ");

			model.addAttribute("code_info_id", code_info_id1);
			model.addAttribute("t_code_info_id", t_code_info_id1);
			model.addAttribute("check", check1);
			model.addAttribute("checked", check1);
			codeInfoVO.setChecked(check1);
		}
		
		

		String rtn_code = commandMap.get("rtn_code") == null ? "" : (String)commandMap.get("rtn_code");
		String code_info_id2 = commandMap.get("code_info_id") == null ? "" : (String)commandMap.get("code_info_id");
		String t_code_info_id2 = commandMap.get("t_code_info_id") == null ? "" : (String)commandMap.get("t_code_info_id");
		String check5 = commandMap.get("checked") == null ? "" : (String)commandMap.get("checked");

		System.out.println("+++++++++ltk+++++++++[ code_info_id2 ] :" + code_info_id2 );
		System.out.println("+++++++++ltk+++++++++[ t_code_info_id2 ] :" + t_code_info_id2 );
		System.out.println("+++++++++ltk+++++++++[ check1 ] :" + check1 );
		System.out.println("+++++++++ltk+++++++++[ checked ] :" + check5 );

		
		codeInfoVO.setPageUnit(propertiesService.getInt("pageUnit"));
		codeInfoVO.setPageSize(propertiesService.getInt("pageSize"));
		

//		if (dbInfoVO.getRegister_id().equals("")) {
//			System.out.println("+++++++++++ ID Null back  ++++++++++");
//			return "redirect:MatchingCodeComp.do";				
//		}
		
		try {
			
			LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
			codeInfoVO.setRegister_id(user.getId());
		
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(" ++ ERROR ++++++++"+ e);
	        return "redirect:MatchingCodeInfo.do";
		}

		if (code_info_id1!=null){
			System.out.println("+++++ltk++++  code_info_id1!=null : code_info_id1 ");
			
			codeInfoVO.setChecked(check1);
			codeInfoVO.setCode_info_id(code_info_id1);
			codeInfoVO.setT_code_info_id(t_code_info_id1);
			codeInfoVO.setRtn_code("");
			
		} else {
			System.out.println("+++++ltk++++  code_info_id1!=null : code_info_id2");
			model.addAttribute("checked", check5);
			model.addAttribute("check", check5);
			codeInfoVO.setChecked(check5);
			codeInfoVO.setCode_info_id(code_info_id2);
			codeInfoVO.setT_code_info_id(t_code_info_id2);
			codeInfoVO.setRtn_code(rtn_code);
		}

		
		/** 임시로 파라메터 값 입력 */
//		codeInfoVO.setRegister_id("POLL");		
		
    	/** pageing */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(codeInfoVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(codeInfoVO.getPageUnit());
		paginationInfo.setPageSize(codeInfoVO.getPageSize());
		
		codeInfoVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		codeInfoVO.setLastIndex(paginationInfo.getLastRecordIndex());
		codeInfoVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<CodeInfoVO> errCodeList = matchingCodeInfoService.errCodeList(codeInfoVO);
//		List<CodeInfoVO> codeCompTagetList = matchingCodeInfoService.codeCompTagetList(codeInfoVO);
		CodeInfoVO codeCompTagetList1 = matchingCodeInfoService.codeCompTagetList1(codeInfoVO);
		List<CodeInfoVO> codeCompList = matchingCodeInfoService.CodeCompList(codeInfoVO);
		
		int DBInfoCnt = matchingCodeInfoService.CodeCompCnt(codeInfoVO);
		paginationInfo.setTotalRecordCount(DBInfoCnt); //전체 게시물 건 수
 
		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
		model.addAttribute("paginationInfo", paginationInfo);	
		model.addAttribute("errCodeList", errCodeList);
		model.addAttribute("codeCompTagetList", codeCompTagetList1);
		model.addAttribute("codeCompList", codeCompList);

		System.out.println("+++++++++ltk+++++++++"+ codeInfoVO.getRowNo() );
//		return "egovframework/pdqm/front/support/matching/MatchingCodeComp";
		return "egovframework/pdqm/front/support/matching/MatchingCodeComp";
  	}
	
//	/support/matching/searchCodeComp.do
	@RequestMapping(value="/support/matching/searchCodeComp.do")
	public String SearchCodeComp(   @ModelAttribute("searchVO") CodeInfoVO codeInfoVO
//									 , @ModelAttribute("loginVO") LoginVO loginVO	
									 , ModelMap model
									 , final HttpServletRequest request
									 , Map commandMap
									 ) 
    			throws Exception {        
		
		String checked = request.getParameter("checked"); //
		System.out.println("+++++++++ltk++++1+++++[ checked ] :" + checked );
		model.addAttribute("checked", checked);
		model.addAttribute("check", checked);
		
		codeInfoVO.setPageUnit(propertiesService.getInt("pageUnit"));
		codeInfoVO.setPageSize(propertiesService.getInt("pageSize"));
		 

//		if (dbInfoVO.getRegister_id().equals("")) {
//			System.out.println("+++++++++++ ID Null back  ++++++++++");
//			return "egovframework/pdqm/front/support/matching/MatchingCodeInfo";				
//		}
		
		String t_code_info_id = commandMap.get("t_code_info_id") == null ? "" : (String)commandMap.get("t_code_info_id");
		String code_info_id = commandMap.get("code_info_id") == null ? "" : (String)commandMap.get("code_info_id");
		String rtn_code = commandMap.get("rtn_code") == null ? "" : (String)commandMap.get("rtn_code");
		checked = commandMap.get("checked") == null ? "" : (String)commandMap.get("checked");
		
		System.out.println("+++++++++ltk+++++++++[ t_code_info_id ] :" + t_code_info_id );
		System.out.println("+++++++++ltk+++++++++[ code_info_id ] :" + code_info_id );
		System.out.println("+++++++++ltk+++++++++[ rtn_code ] :" + rtn_code );
		System.out.println("+++++++++ltk++++3+++++[ checked ] :" + checked );
		
		try {
			
			LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
			codeInfoVO.setRegister_id(user.getId());
		
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(" ++ ERROR ++++++++"+ e);
			return "redirect:MatchingCodeInfo.do";
		}
		
		codeInfoVO.setChecked(checked);
		codeInfoVO.setCode_info_id(code_info_id);
		codeInfoVO.setT_code_info_id(t_code_info_id);
		codeInfoVO.setRtn_code(rtn_code);
		
		/** 임시로 파라메터 값 입력 */
//		codeInfoVO.setRegister_id("POLL");	


		
    	/** pageing */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(codeInfoVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(codeInfoVO.getPageUnit());
		paginationInfo.setPageSize(codeInfoVO.getPageSize());
		
		codeInfoVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		codeInfoVO.setLastIndex(paginationInfo.getLastRecordIndex());
		codeInfoVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<CodeInfoVO> errCodeList = matchingCodeInfoService.errCodeList(codeInfoVO);
		System.out.println("+++++++++ltk+++++++++[ matchingCodeInfoService.errCodeList ]");
//		List<CodeInfoVO> codeCompTagetList = matchingCodeInfoService.codeCompTagetList(codeInfoVO);
		CodeInfoVO codeCompTagetList1 = matchingCodeInfoService.codeCompTagetList1(codeInfoVO);
		System.out.println("+++++++++ltk+++++++++[ matchingCodeInfoService.codeCompTagetList ]");
		List<CodeInfoVO> codeCompList = matchingCodeInfoService.CodeCompList(codeInfoVO);
		System.out.println("+++++++++ltk+++++++++[ matchingCodeInfoService.CodeCompList ]");
		
		int DBInfoCnt = matchingCodeInfoService.CodeCompCnt(codeInfoVO);
		paginationInfo.setTotalRecordCount(DBInfoCnt); //전체 게시물 건 수
		System.out.println("+++++++++ltk+++++++++[ matchingCodeInfoService.CodeCompCnt ]");
		
		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
		model.addAttribute("paginationInfo", paginationInfo);	
		model.addAttribute("errCodeList", errCodeList);
		model.addAttribute("codeCompTagetList", codeCompTagetList1);
		model.addAttribute("codeCompList", codeCompList);

		System.out.println("+++++++++ltk+++++++++[ SearchCodeComp END ]");
		return "egovframework/pdqm/front/support/matching/MatchingCodeComp";
  	}
	
	/**
	 * 컬럼비교 결과리스트를 엑셀파일로 출력한다.
	 * @param tblInfoVO 검색조건
	 * @return 엑셀파일
	 * @throws Exception
	 */
	@RequestMapping("/support/matching/excelCodeComp.do")
	public ModelAndView excelCodeComp(	@ModelAttribute("searchVO") CodeInfoVO codeInfoVO
//										, @ModelAttribute("loginVO") LoginVO loginVO	
										, ModelMap model
										, final HttpServletRequest request
										, Map commandMap
			 						) throws Exception{
		
		System.out.println(":::: in the excelCodeComp ::::");
		
		String code_info_id1 = request.getParameter("s_code_info_id"); // CompareCode 화면에서 받은 값
		String t_code_info_id1 = request.getParameter("t_code_info_id"); //
		String check1 = request.getParameter("master_yn"); //
		
		System.out.println("+++++ltk++++  code_info_id1: "+code_info_id1);
		System.out.println("+++++ltk++++  t_code_info_id1: "+t_code_info_id1);
		System.out.println("+++++ltk++++  check1: "+check1);
		
		if (code_info_id1!=null){
			
			System.out.println("+++++ltk++++  code_info_id1!=null ");

			model.addAttribute("code_info_id", code_info_id1);
			model.addAttribute("t_code_info_id", t_code_info_id1);
			model.addAttribute("check", check1);
			model.addAttribute("checked", check1);
			codeInfoVO.setChecked(check1);
		}	

		String rtn_code = commandMap.get("rtn_code") == null ? "" : (String)commandMap.get("rtn_code");
		String code_info_id2 = commandMap.get("code_info_id") == null ? "" : (String)commandMap.get("code_info_id");
		String t_code_info_id2 = commandMap.get("t_code_info_id") == null ? "" : (String)commandMap.get("t_code_info_id");
		String check5 = commandMap.get("checked") == null ? "" : (String)commandMap.get("checked");

		System.out.println("+++++++++ltk+++++++++[ code_info_id2 ] :" + code_info_id2 );
		System.out.println("+++++++++ltk+++++++++[ t_code_info_id2 ] :" + t_code_info_id2 );
		System.out.println("+++++++++ltk+++++++++[ check1 ] :" + check1 );
		System.out.println("+++++++++ltk+++++++++[ checked ] :" + check5 );

		
		codeInfoVO.setPageUnit(propertiesService.getInt("pageUnit"));
		codeInfoVO.setPageSize(propertiesService.getInt("pageSize"));
		
		try {
			
			LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
			codeInfoVO.setRegister_id(user.getId());
		
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(" ++ ERROR ++++++++"+ e);
		}

		if (code_info_id1!=null){
			System.out.println("+++++ltk++++  code_info_id1!=null : code_info_id1 ");
			
			codeInfoVO.setChecked(check1);
			codeInfoVO.setCode_info_id(code_info_id1);
			codeInfoVO.setT_code_info_id(t_code_info_id1);
			codeInfoVO.setRtn_code("");
			
		} else {
			System.out.println("+++++ltk++++  code_info_id1!=null : code_info_id2");
			model.addAttribute("checked", check5);
			model.addAttribute("check", check5);
			codeInfoVO.setChecked(check5);
			codeInfoVO.setCode_info_id(code_info_id2);
			codeInfoVO.setT_code_info_id(t_code_info_id2);
			codeInfoVO.setRtn_code(rtn_code);
		}

		
		/** 임시로 파라메터 값 입력 */
		CodeInfoVO codeCompTargetVO = matchingCodeInfoService.excelCodeCompTaget(codeInfoVO);
		List<CodeInfoVO> codeCompList = matchingCodeInfoService.excelCodeCompList(codeInfoVO);
 
		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
		model.addAttribute("codeCompTarget", codeCompTargetVO);
		model.addAttribute("codeCompList", codeCompList);

		System.out.println("+++++++++ltk+++++++++"+ codeInfoVO.getRowNo() );
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("codeCompTarget", codeCompTargetVO);
		map.put("codeCompList", codeCompList);
		map.put("rtn_code", codeInfoVO.getErr_code_nm());
		
		return new ModelAndView("CompCodeRtnExcel", "exlCompCodeRtnMap", map);
	}

}
