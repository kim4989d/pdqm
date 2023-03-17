package egovframework.pdqm.admin.support.diagnosis.idx.web;





import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ibm.icu.text.SimpleDateFormat;


import java.util.*;
import egovframework.com.cmm.EgovMessageSource;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DianoIdxSelfMngVo;

import egovframework.pdqm.admin.support.diagnosis.idx.service.DianoIdxSelfMngService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import java.util.StringTokenizer;
import egovframework.pdqm.admin.common.tray.Tray;
import egovframework.pdqm.admin.common.tray.NomalTray;
import java.util.StringTokenizer;




@Controller
public class DianoIdxSelfMngController {
	
    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "dianoIdxSelfMngService")
    private DianoIdxSelfMngService dianoIdxSelfMngService;
    
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    
    Tray reqtray=new  NomalTray();
    
    
    @RequestMapping(value="/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do")
	public String selectDiagnosisMngList(@ModelAttribute("searchVO") DianoIdxSelfMngVo searchVO, ModelMap model) 
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
	   
		
		String searchBgnDeView=searchVO.getSearchBgnDeView();
		String searchEndDeView=searchVO.getSearchEndDeView();
		
		String chsearchBgnDeView="";
		String chsearchEndDeView="";
		
		
		if(searchVO.getSearchBgnDeView() !=null &&  !searchVO.getSearchBgnDeView().equals("")){
			
			chsearchBgnDeView=searchBgnDeView.replaceAll("-","");
			searchVO.setSearchBgnDeView(chsearchBgnDeView);
			
			System.out.println("init begin==");
		
			System.out.println(chsearchBgnDeView);
		}
		
		if(searchVO.getSearchEndDeView() !=null &&  !searchVO.getSearchEndDeView().equals("")){
			
			chsearchEndDeView=searchEndDeView.replaceAll("-","");
			searchVO.setSearchEndDeView(chsearchEndDeView);
		}


		List resultList = dianoIdxSelfMngService.selectDianoIdxSelfMngList(searchVO, model);
		List selectbox = dianoIdxSelfMngService.selectDianoIdxSelfMngbox(searchVO, model);
		
		
		
			
		
        
		System.out.println("resultList size:"+resultList.size());
        
        model.addAttribute("resultList", resultList);
        
        
        int totCnt = dianoIdxSelfMngService.selectDianoIdxSelfMngTotalcnt(searchVO, model);
		paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);
          model.addAttribute("selectbox", selectbox);
        
          
          
          
        
       
          searchVO.setSearchBgnDeView(searchBgnDeView); 
  		
          searchVO.setSearchEndDeView(searchEndDeView);
  		
        System.out.println("end=============");
        
        return "egovframework/pdqm/admin/support/diagnosis/idx/self/DianoIdxSelfMngList";
      //"egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngPList";
        
  	}


    
    @RequestMapping(value="/support/diagnosis/idx/self/selectDianoIdxSelfMngCopy.do")
	public String selectDiagnosisMngCopy(@ModelAttribute("searchVO") DianoIdxSelfMngVo searchVO, ModelMap model) 
    			throws Exception {
    	
    	System.out.println("init2222 =====");
    	
       		System.out.println("		searchVo.getHIDXDGNSSNM():  " +searchVO.getHIDXDGNSSNM()       );
			
       		System.out.println("		searchVo.getIDXDGNSSID():  " +		searchVO.getIDXDGNSSID()   );
			
       		
       		System.out.println("		searchVo.getDATABASETYID():" +		searchVO.getDATABASETYID()  );
       		
       		//바뀌는 값
       		System.out.println("		searchVo.getDATABASETYID():" +		searchVO.getHDATABASETYID()  );
			
       		
       		System.out.println("		searchVo.getNTCETYCODE():  " +		searchVO.getNTCETYCODE()    );
			
		
		
		  
         List dbbox= dianoIdxSelfMngService.selectDianoIdxSelfMngDb(searchVO);
         //List dbbox2= dianoIdxSelfMngService.selectDianoIdxSelfMngDb2(searchVO);
          
         
         List sflag=dianoIdxSelfMngService.selectDianoIdxSelfMngSflag(searchVO);
         
          
          
          
          model.addAttribute("sflag", sflag);
          
          
          
          model.addAttribute("dbbox", dbbox);
      //    model.addAttribute("dbbox2", dbbox2);
          
          
          searchVO.setIDXDGNSSNM(searchVO.getHIDXDGNSSNM());
         // searchVO.setHDATABASETYID(searchVO.getDATABASETYID());
          
          
        
          
          
          //model.addAttribute("IDXDGNSSNM",searchVO.getHIDXDGNSSNM());
        
        System.out.println("end22=============");
        
        
        	
        	
        	
        
        
        
        return "egovframework/pdqm/admin/support/diagnosis/idx/self/DianoIdxSelfMngCopy";
      //"egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngPList";
    }


    
    
    
    
    @RequestMapping(value="/support/diagnosis/idx/self/selectDianoIdxSelfMngCopyInsert.do")
	public String selectDiagnosisMngCopyInsert(@ModelAttribute("searchVO") DianoIdxSelfMngVo searchVO, ModelMap model) 
    			throws Exception {
    	
    	System.out.println("init2222 =====");
    	
       	//원본 값	
    	System.out.println("		searchVo.getHIDXDGNSSNM():  " +searchVO.getHIDXDGNSSNM()       );
       		
    	//바뀌는 값
    	System.out.println("		searchVo.getIDXDGNSSNM():  " +searchVO.getIDXDGNSSNM()       );
			
       		System.out.println("		searchVo.getIDXDGNSSID():  " +		searchVO.getIDXDGNSSID()   );
			
       		
       	//바뀐값

       		System.out.println("		searchVo.getHDATABASETYID():" +		searchVO.getHDATABASETYID()  );
			
       		
       		
       		//원본값
           	
       		System.out.println("		searchVo.getNDATABASETYID():" +		searchVO.getNDATABASETYID()  );
	   		System.out.println("		searchVo.getNTCETYCODE():  " +		searchVO.getNTCETYCODE()    );
	   		
	   		
	   		
	   		//searchVO.setHDATABASETYID(searchVO.getDATABASETYID());
	   		
	   		searchVO.setDATABASETYID(searchVO.getHDATABASETYID());
	        
	   		Integer flagcheck=dianoIdxSelfMngService.selectDianoIdxSelfMngCopyCheck(searchVO, model);
            
		  
			String path="";
	        	
			
			int managemax=dianoIdxSelfMngService.DianoIdxSelfMngMANAGEIdMax(searchVO, model);
			int sitmmax=dianoIdxSelfMngService.DianoIdxSelfMngSITMIdMax(searchVO, model);
			
			
			searchVO.setIDXDGNSSIDMANAGETNT( String.valueOf(managemax));
			searchVO.setIDXDGNSSIDSITMTNT(String.valueOf(sitmmax));
			System.out.println("=====searchVO.getCHECKBOXFLAG():"+searchVO.getCHECKBOXFLAG());
			System.out.println("=====flagcheck():"+flagcheck);
				
			
			if(searchVO.getCHECKBOXFLAG().equals("y")){
	       		
       		if(flagcheck==0){
       		
       			
       				dianoIdxSelfMngService.DianoIdxSelfMngCopyCheckMANAGE(searchVO);
       				dianoIdxSelfMngService.DianoIdxSelfMngCopyCheckSITM(searchVO, model);
       				
       				System.out.println("========1");
       				
       				
           			
       		   		
       				path="redirect:/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do";
       		       				
       			}else{
       				
       				//path="forward:/support/diagnosis/idx/self/selectDianoIdxSelfMngCopy.do";
       		
       				path="egovframework/pdqm/admin/support/diagnosis/idx/self/DianoIdxSelfMngCopy";
       				model.addAttribute("msg","해당하는 자가진단 아이디나 데이타베이스 유형이 이미있습니다 .");
       			}
       			
       			
       		}else{
       			
       			
       			
       			
       			dianoIdxSelfMngService.DianoIdxSelfMngCopySITM(searchVO);
       			dianoIdxSelfMngService.DianoIdxSelfMngCopyMANAGE(searchVO, model);
       			
       			
       			
       			
       			
       			path="redirect:/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do";
           		 	
       		//	path="forward:/support/diagnosis/idx/self/selectDianoIdxSelfMngCopy.do";
       		//	path="forward:egovframework/pdqm/admin/support/diagnosis/idx/self/DianoIdxSelfMngCopy";
		  }
       		
       		
    		//searchVO.setHDATABASETYID(searchVO.getNDATABASETYID());
    	
        System.out.println("searchVO.setDATABASETYID:"+searchVO.getHDATABASETYID());
        
        List dbbox= dianoIdxSelfMngService.selectDianoIdxSelfMngDb(searchVO);
        //List dbbox2= dianoIdxSelfMngService.selectDianoIdxSelfMngDb2(searchVO);
         
        
        List sflag=dianoIdxSelfMngService.selectDianoIdxSelfMngSflag(searchVO);
        
         
         
         
         model.addAttribute("sflag", sflag);
         
         
         
         model.addAttribute("dbbox", dbbox);
     //
       
         searchVO.setDATABASETYID(searchVO.getNDATABASETYID());
         
        return path;
      //"egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngPList";
        
  	}

    
    
    
    
    
    
    
    
    
    
    
    

    
    @RequestMapping(value="/support/diagnosis/idx/self/DianoIdxSelfInsertView.do")
	public String InsertDiagnosisMngInsertView(@ModelAttribute("searchVO") DianoIdxSelfMngVo searchVO, ModelMap model) 
    			throws Exception {
    	
    	System.out.println("init2222 =====");
    	
		String searchBgnDeView=searchVO.getSearchBgnDeView();
		String searchEndDeView=searchVO.getSearchEndDeView();
		
		String chsearchBgnDeView="";
		String chsearchEndDeView="";
		
	
		
		
		
		List dbbox =dianoIdxSelfMngService.selectDianoIdxSelfMngDb(searchVO);
		List sflag =dianoIdxSelfMngService.selectDianoIdxSelfMngSflag(searchVO);
        
		
		
		
		//System.out.println("resultList size:"+resultList.size());
         model.addAttribute("sflag", sflag);
         model.addAttribute("dbbox", dbbox);
    
         
         
       
          searchVO.setSearchBgnDeView(searchBgnDeView); 
  		  searchVO.setSearchEndDeView(searchEndDeView);
  	    System.out.println("end=============");
        
  	    
  	    
        return "egovframework/pdqm/admin/support/diagnosis/idx/self/DianoIdxSelfMngRegist";
      //"egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngPList";
       
        
  	}


    
    @RequestMapping(value="/support/diagnosis/idx/self/DianoIdxSelfMngUpdateView.do")
	public String InsertDiagnosisMngUpdateView(@ModelAttribute("searchVO") DianoIdxSelfMngVo searchVO, ModelMap model) 
    			throws Exception {
    	
    	System.out.println("init2222 =====");
    	
		String searchBgnDeView=searchVO.getHsearchBgnDeView();
		String searchEndDeView=searchVO.getHsearchEndDeView();
		
		String chsearchBgnDeView="";
		String chsearchEndDeView="";
		
		System.out.println("searchVO.getIDXDGNSSID():"+searchVO.getIDXDGNSSID());
	
		
		
		if(searchVO.getSearchBgnDeView() !=null &&  !searchVO.getSearchBgnDeView().equals("")){
			
			chsearchBgnDeView=searchBgnDeView.replaceAll("-","");
			searchVO.setSearchBgnDeView(chsearchBgnDeView);
			
			System.out.println("init begin==");
			System.out.println(chsearchBgnDeView);
			
		}
		
		/*
		if(searchVO.getSearchEndDeView() !=null &&  !searchVO.getSearchEndDeView().equals("")){
			chsearchEndDeView=searchEndDeView.replaceAll("-","");
			searchVO.setSearchEndDeView(chsearchEndDeView);
		}
		
		*/
		
		List dbbox =dianoIdxSelfMngService.selectDianoIdxSelfMngDb(searchVO);
		List sflag =dianoIdxSelfMngService.selectDianoIdxSelfMngSflag(searchVO);
        
		
		
		
		//System.out.println("resultList size:"+resultList.size());
         model.addAttribute("sflag", sflag);
         model.addAttribute("dbbox", dbbox);
         
         
         System.out.println("begin:"+searchVO.getHsearchBgnDeView());
         System.out.println("end:"+searchVO.getHsearchEndDeView());
         
       
         
         
          searchVO.setHsearchBgnDeView(searchBgnDeView); 
  		  searchVO.setHsearchEndDeView(searchEndDeView);
  	    System.out.println("end=============");
        
  	    
  //	  frm.HsearchBgnDeView.value     = searchBgnDeView;
  //	frm.HsearchEndDeView.value     = searchEndDeView;
  	
  	    model.addAttribute("IDXDGNSSID",searchVO.getIDXDGNSSID());
  	    
        return "egovframework/pdqm/admin/support/diagnosis/idx/self/DianoIdxSelfMngUpdate";
      //"egovframework/pdqm/admin/support/diagnosis/idx/result/DianoIdxSelfMngPList";
       
        
    	
  	}

    

    
    
    
    @RequestMapping(value="/support/diagnosis/idx/self/DianoIdxSelfMngInsert.do")
	public String ViewDiagnosisMngInsert(@ModelAttribute("searchVO") DianoIdxSelfMngVo searchVO, ModelMap model) 
    			throws Exception {
    
    	
    	
    	
	    	System.out.println("searchVO.getDATABASETYID():	 " + searchVO.getDATABASETYID()    );
	    	System.out.println("searchVO.IDXDGNSSNM()     :   "+ searchVO.getIDXDGNSSNM()         );
	    	
	    	
	    	System.out.println("searchVO.HNTCETYCODE     :   "+ searchVO.getHNTCETYCODE()        );
	    	System.out.println("searchVO.SearchBgnDeView():   "+ searchVO.getSearchBgnDeView()    );
	    	System.out.println("searchVO.SearchEndDeView():   "+ searchVO.getSearchEndDeView()    );
	    	
	    	
	    	
	    	
	     String chsearchBgnDeView=searchVO.getSearchBgnDeView().replaceAll("-","");
	     String chsearchEndDeView=searchVO.getSearchEndDeView().replaceAll("-","");
		
	     
	    
	     if((chsearchBgnDeView==null) || (chsearchBgnDeView.length()==0)){
	    		chsearchBgnDeView="";
	    		   
		 	}else{
	     		 chsearchBgnDeView=chsearchBgnDeView+"000000";
	     		System.out.println("chsearchBgnDeView2:==="+chsearchBgnDeView);
	    	    	 
	     	}
	     
	     	if((chsearchEndDeView==null)  || (chsearchEndDeView.length()==0)){
	     		System.out.println("begin ==="+chsearchEndDeView);
	     		chsearchEndDeView="";
	     	}else{
	     	     chsearchEndDeView=chsearchEndDeView+"235959";    		
	     		
	     	}
	     
	     
	     
	     searchVO.setSearchBgnDeView(chsearchBgnDeView);
	     searchVO.setSearchEndDeView(chsearchEndDeView);
			
	    	
	    	
	    	dianoIdxSelfMngService.DianoIdxSelfMngInsert(searchVO);
	    	
    	
    	
    return "redirect:/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do";
    }


    @RequestMapping(value="/support/diagnosis/idx/self/DianoIdxSelfMngUpdate.do")
	public String ViewDiagnosisMngUpdate(@ModelAttribute("searchVO") DianoIdxSelfMngVo searchVO, ModelMap model) 
    			throws Exception {
    
    	
    	
	    	System.out.println("searchVO.getDATABASETYID():	 " + searchVO.getDATABASETYID()    );
	    	System.out.println("searchVO.IDXDGNSSID()     :   "+ searchVO.getIDXDGNSSID()         );
	    	System.out.println("searchVO.IDXDGNSSNM()     :   "+ searchVO.getHIDXDGNSSNM()         );
	    	System.out.println("searchVO.NTCETYCODE()     :   "+ searchVO.getNTCETYCODE()         );
	    	System.out.println("searchVO.SearchBgnDeView():   "+ searchVO.getHsearchBgnDeView()    );
	    	System.out.println("searchVO.SearchEndDeView():   "+ searchVO.getHsearchEndDeView()    );
	    	
	    	
	    	/*
	    	
	      SET DATABASE_TY_ID=#DATABASETYID#,
        	  IDX_DGNSS_ID=#IDXDGNSSID#,
	          IDX_DGNSS_NM=#IDXDGNSSNM#,
	          NTCE_TY_CODE=#NTCETYCODE#,
	          NTCE_BEGIN_DT=#SearchBgnDeView#,
	          NTCE_END_DT=#SearchEndDeView#,
	         
	    	
	    	자가진단명
	    	HIDXDGNSSNM

	    	데이타베이스 형
	    	DATABASETYID


	    	게시구분
	    	NTCETYCODE

	    	시작일자
	    	searchBgnDeView
	    	HsearchBgnDeView

	    	끝일자 
	    	searchEndDeView
	    	HsearchEndDeView
*/
	    	
	    	
	    	
	    	
	     String chsearchBgnDeView=searchVO.getHsearchBgnDeView().replaceAll("-","");
	     String chsearchEndDeView=searchVO.getHsearchEndDeView().replaceAll("-","");
		 
	     
	 	System.out.println("chsearchBgnDeView:==="+chsearchBgnDeView.length());
	     
	     
	 	if((chsearchBgnDeView==null) || (chsearchBgnDeView.length()==0)){
    		chsearchBgnDeView="";
    		   
	 	}else{
     		 chsearchBgnDeView=chsearchBgnDeView+"000000";
     		System.out.println("chsearchBgnDeView2:==="+chsearchBgnDeView);
    	    	 
     	}
     
     	if((chsearchEndDeView==null)  || (chsearchEndDeView.length()==0)){
     		System.out.println("begin ==="+chsearchEndDeView);
     		chsearchEndDeView="";
     	}else{
     	     chsearchEndDeView=chsearchEndDeView+"235959";    		
     		
     	}
        
	     
	     searchVO.setSearchBgnDeView(chsearchBgnDeView);
	     searchVO.setSearchEndDeView(chsearchEndDeView);
			
	    	
	    	
	  	dianoIdxSelfMngService.DianoIdxSelfMngUpdate(searchVO);
	return "redirect:/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do";
    }

    
    
    @RequestMapping(value="/support/diagnosis/idx/self/DianoIdxSelfMngQList.do")
	public String DianoIdxSelfMngQList(@ModelAttribute("searchVO") DianoIdxSelfMngVo searchVO, ModelMap model) 
    			throws Exception {


    	
    	List resultList=dianoIdxSelfMngService.selectDianoIdxSelfMngQList(searchVO);
    	
    	
    	
    	
    		
    	//	searchVO.setDATABASETYID(dia.getDATABASETYID());
    	//	searchVO.setIDXDGNSSID(dia.getIDXID());
    		
    	for(int i=0;i<resultList.size();i++)
    	{
    		DianoIdxSelfMngVo dia=(DianoIdxSelfMngVo)resultList.get(i);
    		searchVO.setUPPERIDXID(dia.getIDXID());
    	
    		System.out.println("idxid:"+dia.getIDXID());
    		
    		List qdetail=dianoIdxSelfMngService.selectDianoIdxSelfMngQDetail(searchVO);
    		
    		
    		
    		
    		
    		
    		reqtray.setArray( Integer.parseInt(dia.getIDXID()),qdetail);
    		
    		
    		
    		
    		
    	}	
    	    		//System.out.println("getDATABASETYID:"+dia.getDATABASETYID());
    	    		//System.out.println("getIDXDGNSSID:"+dia.getIDXID());
    	
    	
    	
    	model.addAttribute("resultList",resultList);
    	model.addAttribute("resultView",reqtray);
    	model.addAttribute("DATABASETYID",searchVO.getDATABASETYID());
    	model.addAttribute("DATABASETYNM",searchVO.getDATABASETYNM());
    	
    	model.addAttribute("IDXDGNSSID",searchVO.getIDXDGNSSID());
    	model.addAttribute("HIDXDGNSSNM",searchVO.getHIDXDGNSSNM());
        
    	
    	
    	
    	return "egovframework/pdqm/admin/support/diagnosis/idx/self/DianoIdxSelfMngQList";
    	
    }
    
    
    @RequestMapping(value="/support/diagnosis/idx/self/DianoIdxSelfMngQInsert.do")
	public String DianoIdxSelfMngQInsert(@ModelAttribute("searchVO") DianoIdxSelfMngVo searchVO, ModelMap model) 
    			throws Exception {

    	
    	
    	
    	System.out.println("searchVO.getDATABASETYID():"+searchVO.getDATABASETYID());
    	System.out.println("searchVO.getIDXDGNSSID():"+searchVO.getIDXDGNSSID());
    	 System.out.println("searchVO.getQESITMID()"+searchVO.getQESITMID());
    			
    			
    			
    	
    			dianoIdxSelfMngService.selectDianoIdxSelfMngCopyQDelete(searchVO);
    			
    			
    			StringTokenizer strtoken=new StringTokenizer(searchVO.getQESITMID(),"/");
    			
    				while(strtoken.hasMoreElements()){
    					
    					StringTokenizer elementtoken=new StringTokenizer(strtoken.nextToken(),"-");
    						while(elementtoken.hasMoreElements()){
    							
    							String qeid=elementtoken.nextToken();
    							searchVO.setIDXID(qeid);
    							
    							String index=elementtoken.nextToken();
    							searchVO.setQESITMNO(index);
    							
    							dianoIdxSelfMngService.selectDianoIdxSelfMngCopyQInsert(searchVO);
    			    			
    						
    						}
    					
    				}
    			
    			
    			
    			
    			
    return "redirect:/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do";	
    }
    

    @RequestMapping(value="/support/diagnosis/idx/self/selectDiagnosisMngDelete.do")
	public String selectDiagnosisMngDelete(@ModelAttribute("searchVO") DianoIdxSelfMngVo searchVO, ModelMap model) 
    			throws Exception {
    
    	
    	dianoIdxSelfMngService.selectDianoIdxSelfMngCopyDelete(searchVO);
    	dianoIdxSelfMngService.selectDianoIdxSelfMngCopySITMDelete(searchVO);
    	System.out.println("searchVO.getNDATABASETYID()():"+searchVO.getNDATABASETYID());
    	System.out.println("searchVO.getIDXDGNSSID():"+searchVO.getIDXDGNSSID());
    
    //	IDXDGNSSID
    	
    	
    return "redirect:/support/diagnosis/idx/self/selectDianoIdxSelfMngList.do";
    
    }

}
