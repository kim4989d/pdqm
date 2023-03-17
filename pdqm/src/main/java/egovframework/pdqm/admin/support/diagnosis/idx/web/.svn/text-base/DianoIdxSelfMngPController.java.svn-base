package egovframework.pdqm.admin.support.diagnosis.idx.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.pdqm.admin.support.diagnosis.idx.model.dianoIdxSelfMngPVo;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DianoIdxSelfMngPService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import java.util.StringTokenizer;





@Controller

public class DianoIdxSelfMngPController {


		 @Resource(name="egovMessageSource")
		    EgovMessageSource egovMessageSource;
		    
		    @Resource(name = "dianoIdxSelfMngPService")
		    private DianoIdxSelfMngPService dianoIdxSelfMngPService;
		    
		    /** EgovPropertyService */
		    @Resource(name = "propertiesService")
		    protected EgovPropertyService propertiesService;


		    @RequestMapping(value="/support/diagnosis/idx/result/selectDianoIdxSelfMngPList.do")
			public String selectDiagnosisMngList(@ModelAttribute("searchVO") dianoIdxSelfMngPVo searchVO, ModelMap model) 
		    			throws Exception {
		    	
		    	System.out.println("init =====");
		    	
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
				List dbselect=dianoIdxSelfMngPService.selectDianoIdxSelfMngbox(searchVO);
				List idxselect=dianoIdxSelfMngPService.selectDianoIdxSelfMngboxIdx(searchVO);
				List resultselect=dianoIdxSelfMngPService.selectDianoIdxSelfMngboxResult(searchVO);
				
			
				List resultList = dianoIdxSelfMngPService.selectDianoIdxSelfMngPList(searchVO);
		        
				System.out.println("resultList size:"+resultList.size());
		        
		        model.addAttribute("resultList", resultList);
		        
		        int totCnt = dianoIdxSelfMngPService.selectDianoIdxSelfMngTotalcnt(searchVO);
				paginationInfo.setTotalRecordCount(totCnt);
		        model.addAttribute("paginationInfo", paginationInfo);
		        model.addAttribute("dbselect", dbselect);
		        model.addAttribute("idxselect", idxselect);
		        model.addAttribute("resultselect", resultselect);
		        
		        
		        return "egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngPList";

		        
		  	}
		    
		    
		    
		    
		    @RequestMapping(value="/support/diagnosis/idx/result/insertDiagnosisMngView.do")
			public String insertDiagnosisMngView(@ModelAttribute("searchVO") dianoIdxSelfMngPVo searchVO, ModelMap model) 
		    			throws Exception {
		    	
		    	System.out.println("insertDiagnosisMngView =====");
		    	
		    	System.out.println("getDATABASETYID"+searchVO.getDATABASETYID());
		    	System.out.println("getIDXID"+searchVO.getIDXID());
		    			
		    					
				//db select 
				List dbselect=dianoIdxSelfMngPService.selectDianoIdxSelfMngbox(searchVO);
				List idxselect=dianoIdxSelfMngPService.selectDianoIdxSelfMngboxIdx(searchVO);
			//	List resultselect=dianoIdxSelfMngPService.selectDianoIdxSelfMngboxResult(searchVO);
				
			
				//List resultList = dianoIdxSelfMngPService.selectDianoIdxSelfMngPList(searchVO);
		        
		        
				List resultList=dianoIdxSelfMngPService.DianoIdxSelfMngView(searchVO);
		        //model.addAttribute("resultList", resultList);
		        
		        model.addAttribute("dbselect", dbselect);
		        model.addAttribute("idxselect", idxselect);
		         model.addAttribute("resultList", resultList);
		        
		        return "egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngRegist";
		        
		  	}

		    

		    @RequestMapping(value="/support/diagnosis/idx/result/viewDiagnosisMngInsert.do")
			public String viewDiagnosisMngInsert(@ModelAttribute("searchVO") dianoIdxSelfMngPVo searchVO, ModelMap model) 
		    			throws Exception {
		    	
		    	System.out.println("init =====");
		    	
		    	
		    	
		    	
		    	//해당하는 점수별 삭제 
		    	dianoIdxSelfMngPService.DianoIdxSelfMngdelete(searchVO);
		    	
		    	
		    	//해당하는 점수별 등록 
		    	/*   	 ,#CODE# 
           				,#IDXID# 
           				,#IDXLEVEL# 
           				,#MUMM# 
           				,#MXMM# 
       */
		    	
		    /*	
		    	System.out.println("CODE:"+searchVO.getCODE());
		    	System.out.println("IDXLEVEL:"+searchVO.getIDXLEVEL());
		    	System.out.println("CODE:"+searchVO.MUMM());
		    	System.out.println("CODE:"+searchVO.getCODE());
		    	System.out.println("CODE:"+searchVO.getCODE());
			  */  
		    	
		    	
		    	
		    	StringTokenizer pointcase=new StringTokenizer(searchVO.getPOINTSTR(),"/");
		      	   
		    	while(pointcase.hasMoreElements()){
		    		StringTokenizer pointelement=new StringTokenizer(pointcase.nextToken(),"#");
					
		    		
		    		while(pointelement.hasMoreElements()){
		    			//minpoint-maxpoint-ldxlevel-code
				    	
		    			String mUMM=pointelement.nextToken();
		    			
		    			
		    			searchVO.setMUMM(mUMM);
		    			
		    			String mXMM=pointelement.nextToken();
		    			searchVO.setMXMM(mXMM);
		    			
		    			String iDXLEVEL=pointelement.nextToken();
		    			
		    			searchVO.setIDXLEVEL("1");
		    			
		    			String cODE=pointelement.nextToken();
		    			searchVO.setCODE(cODE);
		    			
		    			String rESULTDC=pointelement.nextToken();
		    			searchVO.setRESULTDC(rESULTDC);
		    			
		    			String eMPHSIDXRESULTDC=pointelement.nextToken();
		    			searchVO.setEMPHSIDXRESULTDC(eMPHSIDXRESULTDC);
		    			
		    		
		    			System.out.print("mUMM:"+mUMM);
		    			System.out.print("mXMM:"+mXMM);
		    			System.out.print("iDXLEVEL:"+iDXLEVEL);
		    			System.out.print("cODE:"+cODE);
		    			
		    		
		    			
		    			dianoIdxSelfMngPService.DianoIdxSelfMngInsert(searchVO);		
		    		}
		    		
		    		
		    	
		    		
		    	}
		    	
		    	
		    	
		    	
		    	System.out.println("getDATABASETYID"+searchVO.getHDATABASETYID());
		    	System.out.println("getIDXID"+searchVO.getHIDXID());
		    	
		    	
		        
		        return "redirect:/support/diagnosis/idx/result/selectDianoIdxSelfMngPList.do";

		        
		  	}


		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
}
