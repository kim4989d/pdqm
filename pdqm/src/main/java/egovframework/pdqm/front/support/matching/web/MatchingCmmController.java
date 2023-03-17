package egovframework.pdqm.front.support.matching.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import egovframework.com.cmm.EgovMessageSource;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import egovframework.rte.fdl.excel.EgovExcelService;
import egovframework.rte.fdl.property.EgovPropertyService;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.pdqm.front.support.matching.model.COLInfoVO;
import egovframework.pdqm.front.support.matching.model.DBInfoAllVO;
import egovframework.pdqm.front.support.matching.model.DBInfoVO;
import egovframework.pdqm.front.support.matching.model.TBLInfoVO;
import egovframework.pdqm.front.support.matching.service.MatchingCmmService;

@Controller
public class MatchingCmmController {
    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "matchingCmmService")
    private MatchingCmmService matchingCmmService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    
    @Resource(name = "DBexcelService")
    private EgovExcelService dBexcelService;
	
	@RequestMapping(value="/support/matching/searchAllDBInfoList.do")
	public String searchAllDBInfoList(@ModelAttribute("dbInfoVO") DBInfoAllVO dbInfoVO
//										, @ModelAttribute("LoginVO") LoginVO loginVO
										, ModelMap model) 
    			throws Exception {	
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		
		try {
			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
			return "egovframework/pdqm/front/support/matching/matching_col_dbinfo";
		}
		
		dbInfoVO.setRegister_id(user.getId());
		
		List<DBInfoAllVO> dbInfolist = matchingCmmService.SearchAllDBInfoList(dbInfoVO);
		model.addAttribute("dbInfolist", dbInfolist);
		
		return "egovframework/pdqm/front/support/matching/matching_col_dbinfo";
  	}
	
//	@RequestMapping(value="/support/matching/searchDBInfoList.do")
//	public String searchDBInfoList(	@ModelAttribute("dbInfoVO") DBInfoVO dbInfoVO
//								, @ModelAttribute("LoginVO") LoginVO loginVO
//								, @RequestParam(value="pageNo", required=false) String pageNo
//								, HttpServletRequest request, ModelMap model) 
//    			throws Exception {
//		System.out.println( " :::: Begin searchDBInfoList :::: ");
//		
//		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
//		
//		try {
//			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
//		}
//		catch (Exception e) {
//			// TODO: handle exception
//			System.out.println("[ERROR] : "+ e);
//		}
//		
//		//PaginationInfo에 필수 정보를 넣어 준다.
//		dbInfoVO.setPageUnit(propertiesService.getInt("pageUnit"));
//		dbInfoVO.setPageSize(propertiesService.getInt("pageSize"));
//    	
//    	/** pageing */
//    	PaginationInfo paginationInfo = new PaginationInfo();
//		paginationInfo.setCurrentPageNo(dbInfoVO.getPageIndex());
//		paginationInfo.setRecordCountPerPage(dbInfoVO.getPageUnit());
//		paginationInfo.setPageSize(dbInfoVO.getPageSize());
//		
//		dbInfoVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
//		dbInfoVO.setLastIndex(paginationInfo.getLastRecordIndex());
//		dbInfoVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
//		
////		PaginationInfo paginationInfo = new PaginationInfo();
////		paginationInfo.setCurrentPageNo(currentPageNo); //현재 페이지 번호
////		paginationInfo.setRecordCountPerPage(10); //한 페이지에 게시되는 게시물 건수
////		paginationInfo.setPageSize(5); //페이징 리스트의 사이즈
//		
//		System.out.println( " :::: "+ request.getParameter("searchWrd") + "[" + loginVO.getId() + "] :::: ");
//		
////		Map<String, Object> commandMap = new HashMap<String, Object>();
////		commandMap.put("database_nm", request.getParameter("searchWrd"));
////		commandMap.put("register_id", "POLL");
//		
//		dbInfoVO.setDatabase_nm(request.getParameter("searchWrd"));
//		dbInfoVO.setRegister_id(user.getId());
//
//		List<DBInfoVO> dbInfolist = matchingCmmService.SearchDBInfoList(dbInfoVO);
//		
//		int DBInfoCnt = matchingCmmService.SearchDBInfoCnt(dbInfoVO);
//		paginationInfo.setTotalRecordCount(DBInfoCnt); //전체 게시물 건 수
// 
//		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
//		model.addAttribute("paginationInfo", paginationInfo);		
//		model.addAttribute("dbInfolist", dbInfolist);
//        
//        return "egovframework/pdqm/front/support/matching/matching_col_dbinfo";
//  	}

	@RequestMapping(value="/support/matching/searchDBInfoList.do")
	public String searchDBInfoList(	@ModelAttribute("dbInfoVO") DBInfoAllVO dbInfoVO
//								, @ModelAttribute("LoginVO") LoginVO loginVO
								, HttpServletRequest request, ModelMap model) 
    			throws Exception {
		System.out.println( " :::: Begin searchDBInfoList :::: ");
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		
		try {
			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
			return "egovframework/pdqm/front/support/matching/matching_col_dbinfo";
		}
		
		System.out.println( " :::: "+ request.getParameter("searchWrd") + "[" + user.getId() + "] :::: ");
				
		dbInfoVO.setDatabase_nm(request.getParameter("searchWrd"));
		dbInfoVO.setRegister_id(user.getId());

		List<DBInfoAllVO> dbInfolist = matchingCmmService.SearchDBInfoList(dbInfoVO);
 
		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
		model.addAttribute("dbInfolist", dbInfolist);
        
        return "egovframework/pdqm/front/support/matching/matching_col_dbinfo";
  	}
	
	
	/**
	 * 
	 * @param dbInfoVO
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 * 
	 * 연계정합성 첫화면(테이블 목록 화면)
	 */
	
	@RequestMapping(value="/support/matching/compDBInfoMain.do")
	public String compDBInfoMain(@ModelAttribute("dbInfoVO") DBInfoVO dbInfoVO
								, @ModelAttribute("tblInfoVO") TBLInfoVO tblInfoVO
								, HttpServletRequest request
								, ModelMap model) 
    			throws Exception {
		System.out.println(":::: " + request.getParameter("selected_Id_List") + " ::::");
		System.out.println(":::: forward:/support/matching/searchTBLInfoList.do ::::");
		
		return "forward:/support/matching/searchTBLInfoList.do";
	}
	
	public List<Integer> ParsingParamInt(String str_Param){
		List<Integer> list_param = new ArrayList<Integer>();
		System.out.println(":::: ParsingParam[" + str_Param + "] ::::");
		for(int idx = 0; idx < str_Param.length();){
			int temp_idx = str_Param.indexOf("▦", idx);
			
			if (temp_idx != -1){
				System.out.println(":::: " + str_Param.substring(idx, temp_idx) + " ::::");
				int temp_DbId = Integer.parseInt(str_Param.substring(idx, temp_idx));
				list_param.add(temp_DbId);
				idx = temp_idx+1;
			}else{
				int temp_DbId = Integer.parseInt(str_Param.substring(idx));
				list_param.add(temp_DbId);
				break;
			}
		}		
		return list_param;
	}
	
	public List<String> ParsingParamStr(String str_Param){
		List<String> list_param = new ArrayList<String>();
		System.out.println(":::: ParsingParam[" + str_Param + "] ::::");
		for(int idx = 0; idx < str_Param.length();){
			int temp_idx = str_Param.indexOf("▦", idx);
			
			if (temp_idx != -1){
				System.out.println(":::: " + str_Param.substring(idx, temp_idx) + " ::::");
				String temp_DbId = str_Param.substring(idx, temp_idx);
				list_param.add(temp_DbId);
				idx = temp_idx+1;
			}else{
				String temp_DbId = str_Param.substring(idx);
				list_param.add(temp_DbId);
				break;
			}
		}		
		return list_param;
	}
	
	@RequestMapping(value="/support/matching/searchTBLInfoList.do")
	public String SearchTBLInfoList(@ModelAttribute("dbInfoVO") DBInfoVO dbInfoVO
								, @ModelAttribute("tblInfoVO") TBLInfoVO tblInfoVO
//								, @ModelAttribute("loginVO") LoginVO loginVO
								, HttpServletRequest request
								, ModelMap model) 
    			throws Exception {
		System.out.println(":::: in the SearchTBLInfo ::::");
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		
		try {
			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
		}
		
		List<Integer> 	arr_tgt_DbId 	= new ArrayList<Integer>();
		List<String>	arr_tgt_InsttNm = new ArrayList<String>();
		List<String> 	arr_tgt_DbNm 	= new ArrayList<String>();
		
		List<DBInfoVO> 	arr_tgt_dbinfo	= new ArrayList<DBInfoVO>();
		
		String tgt_DbId 	= request.getParameter("selected_Id_List");
		String tgt_InsttNm 	= request.getParameter("selected_Instt_Nm_List");
		String tgt_DbNm 	= request.getParameter("selected_Database_Nm_List");
		
		arr_tgt_DbId 	= (List<Integer>)ParsingParamInt(tgt_DbId);
		arr_tgt_InsttNm = (List<String>)ParsingParamStr(tgt_InsttNm);
		arr_tgt_DbNm 	= (List<String>)ParsingParamStr(tgt_DbNm);
		
		tblInfoVO.setPageUnit(propertiesService.getInt("pageUnit"));
		tblInfoVO.setPageSize(propertiesService.getInt("pageSize"));
		
    	/** paging */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(tblInfoVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(tblInfoVO.getPageUnit());
		paginationInfo.setPageSize(tblInfoVO.getPageSize());
		
		tblInfoVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		tblInfoVO.setLastIndex(paginationInfo.getLastRecordIndex());
		tblInfoVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		System.out.println( " :::: Search Param... "+ request.getParameter("searchWrd") + "[" + user.getId() + "] :::: ");
		
		tblInfoVO.setTable_nm(request.getParameter("searchWrd"));
		tblInfoVO.setLogin_id(user.getId());

		String tmp_db_id		= "";
		String tmp_db_id_sql 	= "";
//		String tmp_db_nm_sql 	= "";
//		String tmp_instt_nm_sql	= "";
		
		java.util.Iterator<Integer> it = arr_tgt_DbId.iterator();
		
		int idx = 0;

//		Map arr_database_id = new HashMap();
		
		while(it.hasNext()){

			if(idx==0){
				tmp_db_id = it.next().toString();
			}else{
				tmp_db_id = tmp_db_id + ", " + it.next().toString();
			}
			
//			arr_database_id.put(idx, it.next());
			
			DBInfoVO dbInfoParam = new DBInfoVO();
			
			dbInfoParam.setInstt_nm(arr_tgt_InsttNm.get(idx));
			dbInfoParam.setDatabase_nm(arr_tgt_DbNm.get(idx));
			arr_tgt_dbinfo.add(dbInfoParam); 
			idx++;
		}
		tmp_db_id_sql 		= "select DATABASE_ID 	from TNDATABASEMANAGE where DATABASE_ID in (" + tmp_db_id + ")";
//		tmp_db_nm_sql 		= "select DATABASE_NM 	from TNDATABASEMANAGE where DATABASE_ID in (" + tmp_db_id + ")";
//		tmp_instt_nm_sql 	= "select INSTT_NM 		from TNDATABASEMANAGE where DATABASE_ID in (" + tmp_db_id + ")";
		
		dbInfoVO.setDatabase_id(tmp_db_id_sql);
		
		System.out.println(":::: [tmp_db_id] " + tmp_db_id_sql + " ::::");
		tblInfoVO.setDatabase_id(tmp_db_id_sql);
		
//		tblInfoVO.setArr_database_id(arr_database_id);
		
//		List<DBInfoVO> conItemList = matchingCmmService.SearchConItemList(dbInfoVO);
//		model.addAttribute("conItemList", conItemList);
		
		
//		List<DBInfoVO> dbInfoList = matchingCmmService.SearchConDBInfoList(dbInfoVO);
//		model.addAttribute("dbInfoList", dbInfoList);
		
		List<TBLInfoVO> tblInfolist = matchingCmmService.SearchTBLInfoList(tblInfoVO);
		int TBLInfoCnt = matchingCmmService.SearchTBLInfoCnt(tblInfoVO);
		
		paginationInfo.setTotalRecordCount(TBLInfoCnt); //전체 게시물 건 수
		
		
		
		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
		model.addAttribute("paginationInfo", paginationInfo);
		
//		request.setAttribute("selected_Id_List", tgt_DbId);
//		request.setAttribute("selected_Instt_Nm_List", tgt_InsttNm);
//		request.setAttribute("selected_Database_Nm_List", tgt_DbNm);
		
		tblInfoVO.setSelected_Id_List(tgt_DbId);
		tblInfoVO.setSelected_Instt_Nm_List(tgt_InsttNm);
		tblInfoVO.setSelected_Database_Nm_List(tgt_DbNm);
				 	
		model.addAttribute("tblInfolist", tblInfolist);
//		model.addAttribute("Selected_Id_List", tgt_DbId);
		model.addAttribute("arr_tgt_DbId", arr_tgt_DbId);
		model.addAttribute("arr_tgt_InsttNm", arr_tgt_InsttNm);
		model.addAttribute("arr_tgt_DbNm", arr_tgt_DbNm);
		model.addAttribute("arr_tgt_dbinfo", arr_tgt_dbinfo);
		

		
		return "egovframework/pdqm/front/support/matching/matching_col_tblinfo";
  	}
	
	@RequestMapping(value="/support/matching/compCol1List.do")
	public String compCol1List(@ModelAttribute("dbInfoVO") DBInfoVO dbInfoVO
								, @ModelAttribute("tblInfoVO") TBLInfoVO tblInfoVO
//								, @ModelAttribute("loginVO") LoginVO loginVO
								, HttpServletRequest request
								, ModelMap model) 
    			throws Exception {
		System.out.println(":::: in the compCol1List ::::");
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		
		try {
			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
		}
		
		List<Integer> 	arr_tgt_DbId 	= new ArrayList<Integer>();
		List<String>	arr_tgt_InsttNm = new ArrayList<String>();
		List<String> 	arr_tgt_DbNm 	= new ArrayList<String>();
		
		List<DBInfoVO> 	arr_tgt_dbinfo	= new ArrayList<DBInfoVO>();
		
		String tgt_DbId 	= request.getParameter("selected_Id_List");
		String tgt_InsttNm 	= request.getParameter("selected_Instt_Nm_List");
		String tgt_DbNm 	= request.getParameter("selected_Database_Nm_List");
		
		arr_tgt_DbId 	= (List<Integer>)ParsingParamInt(tgt_DbId);
		arr_tgt_InsttNm = (List<String>)ParsingParamStr(tgt_InsttNm);
		arr_tgt_DbNm 	= (List<String>)ParsingParamStr(tgt_DbNm);
		
		String tmp_db_id		= "";
		String tmp_db_id_sql	= "";
		java.util.Iterator<Integer> it = arr_tgt_DbId.iterator();
		
		int idx = 0;
		
		while(it.hasNext()){
			if(idx==0){
				tmp_db_id = it.next().toString();
			}else{
				tmp_db_id = tmp_db_id + ", " + it.next().toString();
			}
			
			DBInfoVO dbInfoParam = new DBInfoVO();
			
			dbInfoParam.setInstt_nm(arr_tgt_InsttNm.get(idx));
			dbInfoParam.setDatabase_nm(arr_tgt_DbNm.get(idx));
			arr_tgt_dbinfo.add(dbInfoParam); 
			idx++;
		}
		tmp_db_id_sql = "select DATABASE_ID 	from TNDATABASEMANAGE where DATABASE_ID in (" + tmp_db_id + ")";
		tblInfoVO.setDatabase_id(tmp_db_id_sql);
		
		tblInfoVO.setPageUnit(propertiesService.getInt("pageUnit"));
		tblInfoVO.setPageSize(propertiesService.getInt("pageSize"));
		
    	/** paging */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(tblInfoVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(tblInfoVO.getPageUnit());
		paginationInfo.setPageSize(tblInfoVO.getPageSize());
		
		tblInfoVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		tblInfoVO.setLastIndex(paginationInfo.getLastRecordIndex());
		tblInfoVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		System.out.println(":::: [" + request.getParameter("tgt_tbl_id")+"||"+tblInfoVO.getDatabase_id() + "] ::::");
		tblInfoVO.setTable_id(request.getParameter("tgt_tbl_id"));
		tblInfoVO.setLogin_id(user.getId());
		
		List<TBLInfoVO> compCol1Rtnlist = matchingCmmService.CompCol1List(tblInfoVO);
		int compCol1Cnt = matchingCmmService.CompCol1Cnt(tblInfoVO);
		
		paginationInfo.setTotalRecordCount(compCol1Cnt); //전체 게시물 건 수		
		
		
		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
		model.addAttribute("paginationInfo", paginationInfo);
		
		tblInfoVO.setSelected_Id_List(tgt_DbId);
		tblInfoVO.setSelected_Instt_Nm_List(tgt_InsttNm);
		tblInfoVO.setSelected_Database_Nm_List(tgt_DbNm);
				 	
		model.addAttribute("compCol1Rtnlist", compCol1Rtnlist);

		model.addAttribute("arr_tgt_InsttNm", arr_tgt_InsttNm);
		model.addAttribute("arr_tgt_DbNm", arr_tgt_DbNm);
		model.addAttribute("arr_tgt_dbinfo", arr_tgt_dbinfo);
		
		return "egovframework/pdqm/front/support/matching/matching_col_comp1";
  	}
	
	/**
	 * 컬럼비교 결과리스트를 엑셀파일로 출력한다.
	 * @param tblInfoVO 검색조건
	 * @return 엑셀파일
	 * @throws Exception
	 */
	@RequestMapping("/support/matching/excelComp1Rtn.do")
	public ModelAndView excelComp1Rtn(@ModelAttribute("dbInfoVO") DBInfoVO dbInfoVO
										, @ModelAttribute("tblInfoVO") TBLInfoVO tblInfoVO
//										, @ModelAttribute("loginVO") LoginVO loginVO
										, HttpServletRequest request
										, ModelMap model) throws Exception{
		
		System.out.println(":::: in the excelComp1Rtn ["+request.getParameter("database_id_list") +"] ::::");
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		
		try {
			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
		}
		
		tblInfoVO.setDatabase_id(request.getParameter("database_id_list"));
		
//		System.out.println(":::: [" + request.getParameter("tgt_tbl_id")+"||"+tblInfoVO.getDatabase_id() + "] ::::");
//		tblInfoVO.setTable_id(request.getParameter("tgt_tbl_id"));
		
		System.out.println(":::: [" + tblInfoVO.getTable_id()+"||"+tblInfoVO.getDatabase_id() + "] ::::");
		tblInfoVO.setLogin_id(user.getId());		
		
		List<COLInfoVO> exlTblInfoVO = matchingCmmService.selectComp1RtnExl(tblInfoVO);
		if (exlTblInfoVO == null){
			System.out.println(":::: exlTblInfoVO is null... ::::");
		}else{
			System.out.println(":::: exlTblInfoVO is not null... ::::");
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("exlCompCOlRtnVO", exlTblInfoVO);
		map.put("sheetNM", "컬럼비교 분석 결과");
		map.put("titleNM", "컬럼비교 분석 결과");
		
		return new ModelAndView("CompRtnExcelView", "exlCompCOlRtnMap", map);
	}
	
	@RequestMapping(value="/support/matching/viewComp1DtlRtn.do")
	public String viewComp1DtlRtn(@ModelAttribute("colInfoVO") COLInfoVO colInfoVO
//								, @ModelAttribute("loginVO") LoginVO loginVO
								, HttpServletRequest request
								, ModelMap model) 
    			throws Exception {
		System.out.println(":::: in the viewCompDtlRtn ::::");
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		
		try {
			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
		}
		
		String tgt_dbId 	= request.getParameter("database_id_list");
		String tgt_colId 	= request.getParameter("tgt_col_id");
//		String tgt_colId 	= colInfoVO.getColumn_id();
		String logInId 		= user.getId();
		
		colInfoVO.setDatabase_id(tgt_dbId);		
		colInfoVO.setColumn_id(tgt_colId);
//		colInfoVO.setRegister_id(logInId);
		colInfoVO.setRegister_id(user.getId());
		
		System.out.println(":::: tgt_dbId[" + tgt_dbId + "] ::::");
		
		colInfoVO.setPageUnit(propertiesService.getInt("pageUnit"));
		colInfoVO.setPageSize(propertiesService.getInt("pageSize"));
		
    	/** paging */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(colInfoVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(colInfoVO.getPageUnit());
		paginationInfo.setPageSize(colInfoVO.getPageSize());
		
		colInfoVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		colInfoVO.setLastIndex(paginationInfo.getLastRecordIndex());
		colInfoVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		System.out.println(":::: [" + tgt_dbId + "||" + tgt_colId + "||" + logInId + "] ::::");
		
		List<COLInfoVO> compCol1DtlRtnTgt = matchingCmmService.CompCol1DtlTgt(colInfoVO);
		List<COLInfoVO> compCol1DtlRtnList = matchingCmmService.CompCol1DtlList(colInfoVO);
		int compCol1DtlCnt = matchingCmmService.CompCol1DtlCnt(colInfoVO);
		
		paginationInfo.setTotalRecordCount(compCol1DtlCnt); //전체 게시물 건 수		
		
		
		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
		model.addAttribute("paginationInfo", paginationInfo);
				 	
		model.addAttribute("compCol1DtlRtnTgt", compCol1DtlRtnTgt);
		model.addAttribute("compCol1DtlRtnList", compCol1DtlRtnList);
		model.addAttribute("compCol1DtlCnt", compCol1DtlCnt);
		
		return "egovframework/pdqm/front/support/matching/matching_col_comp1_dtl";
  	}
	
	
	
	
	@RequestMapping(value="/support/matching/compCol2List.do")
	public String compCol2List(@ModelAttribute("dbInfoVO") DBInfoVO dbInfoVO
								, @ModelAttribute("tblInfoVO") TBLInfoVO tblInfoVO
//								, @ModelAttribute("loginVO") LoginVO loginVO
								, HttpServletRequest request
								, ModelMap model) 
    			throws Exception {
		System.out.println(":::: in the compCol1List ::::");
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		
		try {
			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
		}
		
		List<Integer> 	arr_tgt_DbId 	= new ArrayList<Integer>();
		List<String>	arr_tgt_InsttNm = new ArrayList<String>();
		List<String> 	arr_tgt_DbNm 	= new ArrayList<String>();
		
		List<DBInfoVO> 	arr_tgt_dbinfo	= new ArrayList<DBInfoVO>();
		
		String tgt_DbId 	= request.getParameter("selected_Id_List");
		String tgt_InsttNm 	= request.getParameter("selected_Instt_Nm_List");
		String tgt_DbNm 	= request.getParameter("selected_Database_Nm_List");
		
		arr_tgt_DbId 	= (List<Integer>)ParsingParamInt(tgt_DbId);
		arr_tgt_InsttNm = (List<String>)ParsingParamStr(tgt_InsttNm);
		arr_tgt_DbNm 	= (List<String>)ParsingParamStr(tgt_DbNm);
		
		String tmp_db_id		= "";
		String tmp_db_id_sql	= "";
		java.util.Iterator<Integer> it = arr_tgt_DbId.iterator();
		
		int idx = 0;
		
		while(it.hasNext()){
			if(idx==0){
				tmp_db_id = it.next().toString();
			}else{
				tmp_db_id = tmp_db_id + ", " + it.next().toString();
			}
			
			DBInfoVO dbInfoParam = new DBInfoVO();
			
			dbInfoParam.setInstt_nm(arr_tgt_InsttNm.get(idx));
			dbInfoParam.setDatabase_nm(arr_tgt_DbNm.get(idx));
			arr_tgt_dbinfo.add(dbInfoParam); 
			idx++;
		}
		tmp_db_id_sql = "select DATABASE_ID 	from TNDATABASEMANAGE where DATABASE_ID in (" + tmp_db_id + ")";
		tblInfoVO.setDatabase_id(tmp_db_id_sql);
		
		tblInfoVO.setPageUnit(propertiesService.getInt("pageUnit"));
		tblInfoVO.setPageSize(propertiesService.getInt("pageSize"));
		
    	/** paging */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(tblInfoVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(tblInfoVO.getPageUnit());
		paginationInfo.setPageSize(tblInfoVO.getPageSize());
		
		tblInfoVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		tblInfoVO.setLastIndex(paginationInfo.getLastRecordIndex());
		tblInfoVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		System.out.println(":::: [" + request.getParameter("tgt_tbl_id")+"||"+tblInfoVO.getDatabase_id() + "] ::::");
		tblInfoVO.setTable_id(request.getParameter("tgt_tbl_id"));
		tblInfoVO.setLogin_id(user.getId());
		
		List<TBLInfoVO> compCol2Rtnlist = matchingCmmService.CompCol2List(tblInfoVO);
		int compCol2Cnt = matchingCmmService.CompCol2Cnt(tblInfoVO);
		
		paginationInfo.setTotalRecordCount(compCol2Cnt); //전체 게시물 건 수		
		
		
		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
		model.addAttribute("paginationInfo", paginationInfo);
		
		tblInfoVO.setSelected_Id_List(tgt_DbId);
		tblInfoVO.setSelected_Instt_Nm_List(tgt_InsttNm);
		tblInfoVO.setSelected_Database_Nm_List(tgt_DbNm);
				 	
		model.addAttribute("compCol2Rtnlist", compCol2Rtnlist);

		model.addAttribute("arr_tgt_InsttNm", arr_tgt_InsttNm);
		model.addAttribute("arr_tgt_DbNm", arr_tgt_DbNm);
		model.addAttribute("arr_tgt_dbinfo", arr_tgt_dbinfo);
		
		model.addAttribute("arr_tgt_dbinfo", arr_tgt_dbinfo);
		
		return "egovframework/pdqm/front/support/matching/matching_col_comp2";
  	}
	
	
	
	/**
	 * 컬럼비교 결과리스트를 엑셀파일로 출력한다.
	 * @param tblInfoVO 검색조건
	 * @return 엑셀파일
	 * @throws Exception
	 */
	@RequestMapping("/support/matching/excelComp2Rtn.do")
	public ModelAndView excelComp2Rtn(@ModelAttribute("dbInfoVO") DBInfoVO dbInfoVO
										, @ModelAttribute("tblInfoVO") TBLInfoVO tblInfoVO
//										, @ModelAttribute("loginVO") LoginVO loginVO
										, HttpServletRequest request
										, ModelMap model) throws Exception{
		
		System.out.println(":::: in the excelComp1Rtn ["+request.getParameter("database_id_list") +"] ::::");
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		
		try {
			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
		}
		
		tblInfoVO.setDatabase_id(request.getParameter("database_id_list"));
		
//		System.out.println(":::: [" + request.getParameter("tgt_tbl_id")+"||"+tblInfoVO.getDatabase_id() + "] ::::");
//		tblInfoVO.setTable_id(request.getParameter("tgt_tbl_id"));
		
		System.out.println(":::: [" + tblInfoVO.getTable_id()+"||"+tblInfoVO.getDatabase_id() + "] ::::");
		tblInfoVO.setLogin_id(user.getId());		
		
		List<COLInfoVO> exlTblInfoVO = matchingCmmService.selectComp2RtnExl(tblInfoVO);
		if (exlTblInfoVO == null){
			System.out.println(":::: exlTblInfoVO is null... ::::");
		}else{
			System.out.println(":::: exlTblInfoVO is not null... ::::");
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("exlCompCOlRtnVO", exlTblInfoVO);
		map.put("sheetNM", "타입비교 분석 결과");
		map.put("titleNM", "타입비교 분석 결과");
		System.out.println("==== " + map.get("sheetNM") + " ====");
		return new ModelAndView("CompRtnExcelView", "exlCompCOlRtnMap", map);
	}
	
	
	
	@RequestMapping(value="/support/matching/viewComp2DtlRtn.do")
	public String viewComp2DtlRtn(@ModelAttribute("colInfoVO") COLInfoVO colInfoVO
//								, @ModelAttribute("loginVO") LoginVO loginVO
								, HttpServletRequest request
								, ModelMap model) 
    			throws Exception {
		System.out.println(":::: in the viewComp2DtlRtn ::::");
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		
		try {
			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
		}
		
		String tgt_dbId 	= request.getParameter("database_id_list");
		String tgt_colId 	= request.getParameter("tgt_col_id");
		String logInId 		= user.getId();
		
		colInfoVO.setDatabase_id(tgt_dbId);		
		colInfoVO.setColumn_id(tgt_colId);
		colInfoVO.setRegister_id(user.getId());
		
		System.out.println(":::: tgt_dbId[" + tgt_dbId + "] ["+colInfoVO.getColumn_id()+"]::::");
		
		colInfoVO.setPageUnit(propertiesService.getInt("pageUnit"));
		colInfoVO.setPageSize(propertiesService.getInt("pageSize"));
		
    	/** paging */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(colInfoVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(colInfoVO.getPageUnit());
		paginationInfo.setPageSize(colInfoVO.getPageSize());
		
		colInfoVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		colInfoVO.setLastIndex(paginationInfo.getLastRecordIndex());
		colInfoVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		System.out.println(":::: [" + tgt_dbId + "||" + tgt_colId + "||" + logInId + "] ::::");
		
		List<COLInfoVO> compCol2DtlRtnTgt = matchingCmmService.CompCol2DtlTgt(colInfoVO);
		List<COLInfoVO> compCol2DtlRtnList = matchingCmmService.CompCol2DtlList(colInfoVO);
		int compCol2DtlCnt = matchingCmmService.CompCol2DtlCnt(colInfoVO);
		
		paginationInfo.setTotalRecordCount(compCol2DtlCnt); //전체 게시물 건 수		
		
		
		//페이징 관련 정보가 있는 PaginationInfo 객체를 모델에 반드시 넣어준다.
		model.addAttribute("paginationInfo", paginationInfo);
				 	
		model.addAttribute("compCol2DtlRtnTgt", compCol2DtlRtnTgt);
		model.addAttribute("compCol2DtlRtnList", compCol2DtlRtnList);
		model.addAttribute("compCol2DtlCnt", compCol2DtlCnt);
		
		return "egovframework/pdqm/front/support/matching/matching_col_comp2_dtl";
  	}
}
