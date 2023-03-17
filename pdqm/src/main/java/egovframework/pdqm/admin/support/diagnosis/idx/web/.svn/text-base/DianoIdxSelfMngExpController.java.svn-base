package egovframework.pdqm.admin.support.diagnosis.idx.web;

	import java.util.List;

	import javax.annotation.Resource;

	import org.springframework.stereotype.Controller;
	import org.springframework.ui.ModelMap;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.RequestMapping;

	import egovframework.com.cmm.EgovMessageSource;
	import egovframework.pdqm.admin.support.diagnosis.idx.model.DianoIdxSelfMngExpVo;
	import egovframework.pdqm.admin.support.diagnosis.idx.service.DianoIdxSelfMngExpService;
	import egovframework.rte.fdl.property.EgovPropertyService;
	import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
	import java.util.StringTokenizer;





	@Controller

	public class DianoIdxSelfMngExpController {


			 @Resource(name="egovMessageSource")
			    EgovMessageSource egovMessageSource;
			    
			    @Resource(name = "dianoIdxSelfMngExpService")
			    private DianoIdxSelfMngExpService dianoIdxSelfMngExpService;
			    
			    /** EgovPropertyService */
			    @Resource(name = "propertiesService")
			    protected EgovPropertyService propertiesService;


			    @RequestMapping(value="/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPList.do")
				public String selectDiagnosisMngList(@ModelAttribute("searchVO") DianoIdxSelfMngExpVo searchVO, ModelMap model) 
			    			throws Exception {
			    	
			    	System.out.println("init2222 =====");
			    	
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
				   
					
					
					
					//db select 
					List dbselect=dianoIdxSelfMngExpService.selectDianoIdxSelfMngbox(searchVO);
					List idxselect=dianoIdxSelfMngExpService.selectDianoIdxSelfMngboxIdx(searchVO);
					List resultselect=dianoIdxSelfMngExpService.selectDianoIdxSelfMngboxResult(searchVO);
					
				
					List resultList = dianoIdxSelfMngExpService.selectDianoIdxSelfMngPList(searchVO);
					List excelList=dianoIdxSelfMngExpService.selectDianoIdxSelfMngExcel(searchVO);
					
					
					System.out.println("resultList size:"+resultList.size());
			        
			        model.addAttribute("resultList", resultList);
			        
			        int totCnt = dianoIdxSelfMngExpService.selectDianoIdxSelfMngExpCnt(searchVO);
					paginationInfo.setTotalRecordCount(totCnt);
			        model.addAttribute("paginationInfo", paginationInfo);
			        model.addAttribute("dbselect", dbselect);
			        model.addAttribute("idxselect", idxselect);
			        model.addAttribute("resultselect", resultselect);
			        model.addAttribute("excelList", excelList);
				        
			        
			        
			        
			        System.out.println("end=============");
			        
			        return "egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngExpList";
			      //"egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngPList";
			        
			  	}


			    
			    
			    @RequestMapping(value="/support/diagnosis/idx/result/selectDianoIdxSelfMngExpExcel.do")
				public String selectDiagnosisMngExcel(@ModelAttribute("searchVO") DianoIdxSelfMngExpVo searchVO, ModelMap model) 
			    			throws Exception {
			    	
			    	System.out.println("init2222 =====");
			    	
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
				   
					
					
					
					//db select 
					List resultList = dianoIdxSelfMngExpService.selectDianoIdxSelfMngPList(searchVO);
					List excelList=dianoIdxSelfMngExpService.selectDianoIdxSelfMngExcel(searchVO);
					
					
					System.out.println("resultList size:"+resultList.size());
			        
			        model.addAttribute("resultList", resultList);
			        
			        int totCnt = dianoIdxSelfMngExpService.selectDianoIdxSelfMngExpCnt(searchVO);
					paginationInfo.setTotalRecordCount(totCnt);
			        model.addAttribute("excelList", excelList);
				    
			        
			        System.out.println("end=============");
			        
			        return "egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngExcel";
			      //"egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngPList";
			        
			  	}

			    
			    
			    
			    

			    
			    
			    @RequestMapping(value="/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPView.do")
				public String selectDiagnosisMngView(@ModelAttribute("searchVO") DianoIdxSelfMngExpVo searchVO, ModelMap model) 
			    			throws Exception {
			    
					List dbselect=dianoIdxSelfMngExpService.selectDianoIdxSelfMngbox(searchVO);
					List idxselect=dianoIdxSelfMngExpService.selectDianoIdxSelfMngboxIdx(searchVO);
					List resultselect=dianoIdxSelfMngExpService.selectDianoIdxSelfMngboxResult(searchVO);
			    	
					List resultList=dianoIdxSelfMngExpService.selectDianoIdxSelfMngExpdetail(searchVO);
					
					
					DianoIdxSelfMngExpVo dia=null;
					for(int i=0;i<resultList.size();i++){
						 dia=(DianoIdxSelfMngExpVo)resultList.get(0);
						
						
					}
					
					
					searchVO.setMUMM(dia.getMUMM());
					searchVO.setMXMM(dia.getMXMM());
						
					
					searchVO.setRESULTDCSTR(dia.getRESULTDCSTR());
					searchVO.setEMPHSIDXRESULTDCSTR(dia.getEMPHSIDXRESULTDCSTR());
					System.out.println("DATABASETYID:"+searchVO.getDATABASETYID());
					System.out.println("IDXID:"+searchVO.getIDXID());
					System.out.println("CODE:"+searchVO.getCODE());
					
					
					System.out.println("MUMM:"+searchVO.getMUMM());
					System.out.println("MXMM:"+searchVO.getMXMM());
					
					System.out.println("RESULTDCSTR:"+searchVO.getRESULTDCSTR());
					System.out.println("EMPHSIDXRESULTDCSTR:"+searchVO.getEMPHSIDXRESULTDCSTR());
					
					
			    	
					
					
					if(searchVO.getRESULTDCSTR()==null || searchVO.getRESULTDCSTR().equals("null")){
						searchVO.setRESULTDCSTR("");
						
					}
					
					if(searchVO.getEMPHSIDXRESULTDCSTR()==null || searchVO.getEMPHSIDXRESULTDCSTR().equals("null")){
						searchVO.setEMPHSIDXRESULTDCSTR("");
								
					}
					
					
				    model.addAttribute("dbselect", dbselect);
			        model.addAttribute("idxselect", idxselect);
			        model.addAttribute("resultselect", resultselect);
			      
			        
			        model.addAttribute("MUMM", searchVO.getMUMM());
			        model.addAttribute("MXMM", searchVO.getMXMM());
			        model.addAttribute("resultList", resultList);
				    
			        
			    return "egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngExpRegist";
			    }
			    			    
			    
			    
			    
			    @RequestMapping(value="/support/diagnosis/idx/result/viewDianoIdxSelfMngExpInsert.do")
				public String viewDiagnosisMngInsert(@ModelAttribute("searchVO") DianoIdxSelfMngExpVo searchVO, ModelMap model) 
			    			throws Exception {
		
			    	System.out.println("HDATABASETYID:"+searchVO.getHDATABASETYID());
					System.out.println("HIDXID:"+searchVO.getHIDXID());
					System.out.println("HCODE:"+searchVO.getHCODE());
					
					
					
					System.out.println("MUMM:"+searchVO.getMUMM());
					System.out.println("MXMM:"+searchVO.getMXMM());
					
					System.out.println("RESULTDCSTR:"+searchVO.getRESULTDCSTR());
					System.out.println("EMPHSIDXRESULTDCSTR:"+searchVO.getEMPHSIDXRESULTDCSTR());
					
					
					
					dianoIdxSelfMngExpService.DianoIdxSelfMngDelete(searchVO);
					dianoIdxSelfMngExpService.DianoIdxSelfMngInsert(searchVO);
					
					
			    	
			    	
			    return "redirect:/support/diagnosis/idx/result/selectDianoIdxSelfMngExpPList.do";	
			    }
			    
			    
			    
			    
			    
}
