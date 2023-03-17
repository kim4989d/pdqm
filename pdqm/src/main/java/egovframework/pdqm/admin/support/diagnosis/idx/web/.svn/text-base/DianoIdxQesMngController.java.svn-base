package egovframework.pdqm.admin.support.diagnosis.idx.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.EgovMessageSource;

import egovframework.pdqm.admin.support.diagnosis.idx.model.DianoIdxQesMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DianoIdxQesMngService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import java.util.StringTokenizer;
import java.math.BigDecimal;
import egovframework.pdqm.admin.common.tray.Tray;
import egovframework.pdqm.admin.common.tray.NomalTray;
import java.util.StringTokenizer;



@Controller
public class DianoIdxQesMngController {

	 @Resource(name="egovMessageSource")
	    EgovMessageSource egovMessageSource;
	    
	    @Resource(name = "dianoIdxQesMngService")
	    private DianoIdxQesMngService dianoIdxQesMngService;
	    
	    /** EgovPropertyService */
	    @Resource(name = "propertiesService")
	    protected EgovPropertyService propertiesService;
	    Tray reqtray=new  NomalTray();
	    
		/**
		 * 데이터베이스유형  관리 목록 조회
		 * 
		 * @param diagnosisLevelMngVO diagnosisLevelMngVO
		 * @return String
		 * @exception Exception
		 */
	    @RequestMapping(value="/support/diagnosis/idx/diagnoDianoIdxQesMngList.do")
		public String selectIdxDbTypeList(@ModelAttribute("searchVO") DianoIdxQesMngVo searchVO, ModelMap model) 
	    			throws Exception {
	    	
	    	DianoIdxQesMngVo researchVo2=null;
	    	List resultreponse2 =null;
	    
	    	
	    	System.out.println("===1111");
	    	List resultList=dianoIdxQesMngService.selectDianoIdxQesMngList(searchVO, model);
	    	//model.addAttribute("resultList",resultList);
	        
	    	DianoIdxQesMngVo researchVo=null;
	    	List resultView   =null;
	    	List resultreponse =null;
	    	for(int i=0;i<resultList.size();i++){
	    	 researchVo = (DianoIdxQesMngVo)resultList.get(i);
	    		
	    	 searchVO.setIDXID(researchVo.getIDXID());
	    	 System.out.println("getIDXID:"+searchVO.getIDXID());
		    	
	    	 reqtray.setArray(Integer.parseInt(searchVO.getIDXID()), dianoIdxQesMngService.selectDianoIdxQesMngView(searchVO, model));
	    	 
	    		resultreponse2=(List)reqtray.getArray(Integer.parseInt(researchVo.getIDXID()));
	    		// DianoIdxQesMngVo dia= (DianoIdxQesMngVo)resultreponse2.get(i);
	    		 //System.out.println("dia.answer2:"+dia.getANSWER()+"  answer.getANSWERID()2 "+dia.getANSWERID());
	    	 
	    	}
	    	
	    	
	    	/*
	    	for(int i=0;i<resultList.size();i++){
	      	  
	    		researchVo2 = (DianoIdxQesMngVo)resultList.get(i);
	 	    	
	    	for(int z=0;z<reqtray.size();z++){
	    		//researchVo2.setIDXID(researchVo.getIDXID());
		    	 
	    		resultreponse2=(List)reqtray.getArray(Integer.parseInt(researchVo2.getIDXID()));
	    		 for(int x=0;x<resultreponse2.size();x++){
	    		 DianoIdxQesMngVo dia= (DianoIdxQesMngVo)resultreponse2.get(x);
		    	//System.out.println("dia.answer:"+dia.getANSWER()+"  answer.getANSWERID()"+dia.getANSWERID());
		   	 }
	    	}
	      	}
	    	
	    	*/
	    //	System.out.println("reqtray size:"+reqtray.size());
	     	//System.out.println("resultreponse size:"+resultreponse.size());
	 	    	
	    	
	    	model.addAttribute("resultList",resultList);
	    	model.addAttribute("resultView",reqtray);
	    	
	    	
	    	
	    	
	    	
	    	
		        
	    	return "egovframework/pdqm/admin/support/diagnosis/idx/self/DianoIdxQesMngList";
	        
	  	}

	    
	  
	    
		    @RequestMapping(value="/support/diagnosis/insertDiagnosisIdxQesMngView.do")
			public String insertDiagnosisIdxQesMngView(@ModelAttribute("searchVO") DianoIdxQesMngVo searchVO, ModelMap model) 
		    			throws Exception {

		    	/*
		    	dianoIdxQesMngService.insertDianoIdxQesMng(searchVO);
		    	dianoIdxQesMngService.updateDianoIdxQesMng(searchVO);
		    	*/
		    	
		    	
		    	if(searchVO.getRADIOSELECT()==null || searchVO.getRADIOSELECT().equals("")){
		    		searchVO.setRADIOSELECT("T1000");
		    		System.out.println("radio");
		    	}
		    
		    	
		    	
		    	
		    		
		    	List AnswerList=	dianoIdxQesMngService.selectIdxQesMngCaseAnswer(searchVO, model);
		    	
		    	
		    	for(int i=0;i<AnswerList.size();i++){
		    		
		    		DianoIdxQesMngVo answer=(DianoIdxQesMngVo)AnswerList.get(i);
		    		
		    		searchVO.setRADIOSELECT(answer.getCODE());
		    		
				     reqtray.setArray(i,dianoIdxQesMngService.selectIdxQesMngCaseAnswerType(searchVO, model));
		    		 
		    		 
						
					//	for(int z=0;z<reqtray.size();z++){
							List map=(List)reqtray.getArray(i);
							
							
							for(int z=0;z<map.size();z++){
							DianoIdxQesMngVo dia=(DianoIdxQesMngVo)map.get(z);
				//			 	System.out.println("dia:"+dia.getIDXNM());
		    	
						}
				}
		    	
		    	
		    	
		    	
		    	//특성 아이디 
		    	System.out.println("getIDXID:"+searchVO.getIDXID());
		    	
		    	//특성 이름 
		    	System.out.println("getIDXNM:"+searchVO.getIDXNM());
		    	
		    	System.out.println("getLEVELNM:"+searchVO.getLEVELNM());
		    	System.out.println("getQESITMID:"+searchVO.getQESITMID());
		    	System.out.println("TABIDXID:"+searchVO.getTABIDXID());
		    	
		    	
		    	
		    	
		    	
			    	
		    	System.out.println("searchVO.getRADIOSELECT():"+searchVO.getRADIOSELECT());
		     	System.out.println("searchVO.getANSWERTYCODE():"+searchVO.getANSWERTYCODE());
		     	System.out.println("searchVO.getANSWERTYCODE():"+searchVO.getANSWERTYCODE());
				
		     	List AnswerListTypeSearch=dianoIdxQesMngService.selectDianoIdxQesMngViewSearch(searchVO, model);
		     	
		    	model.addAttribute("idxid",searchVO.getIDXID());
		    	model.addAttribute("idxnm",searchVO.getIDXNM());
		    	model.addAttribute("levelnm",searchVO.          getLEVELNM());
		    	model.addAttribute("qesitmid",searchVO.getQESITMID());
		    	model.addAttribute("qesitmid",searchVO.getQESITMID());
		    	model.addAttribute("SORTORDR",searchVO.getSORTORDR());
		    	
		    	model.addAttribute("AnswerList",AnswerList);
		    	model.addAttribute("AnswerListType",reqtray);
		    	model.addAttribute("AnswerListTypeSearch",AnswerListTypeSearch);
		    	model.addAttribute("ANSWERTYCODE",searchVO.getANSWERTYCODE());
			    
		    	
				
		    	
		    	
		    	
		    return "egovframework/pdqm/admin/support/diagnosis/idx/self/DianoIdxQesMngRegist";
		    }


		    
		    
		    
		    @RequestMapping(value="/support/diagnosis/updateDiagnosisIdxQesMngView.do")
			public String updateDiagnosisIdxQesMngView(@ModelAttribute("searchVO") DianoIdxQesMngVo searchVO, ModelMap model) 
		    			throws Exception {

		    	/*
		    	dianoIdxQesMngService.insertDianoIdxQesMng(searchVO);
		    	dianoIdxQesMngService.updateDianoIdxQesMng(searchVO);
		    	*/
		    	
		    	
		    	if(searchVO.getRADIOSELECT()==null || searchVO.getRADIOSELECT().equals("")){
		    		searchVO.setRADIOSELECT("T1000");
		    		System.out.println("radio");
		    	}
		    
		    	
		    	
		    	
		    		
		    	List AnswerList=	dianoIdxQesMngService.selectIdxQesMngCaseAnswer(searchVO, model);
		    	
		    	
		    	for(int i=0;i<AnswerList.size();i++){
		    		
		    		DianoIdxQesMngVo answer=(DianoIdxQesMngVo)AnswerList.get(i);
		    		
		    		searchVO.setRADIOSELECT(answer.getCODE());
		    		
				     reqtray.setArray(i,dianoIdxQesMngService.selectIdxQesMngCaseAnswerType(searchVO, model));
		    		 
		    		 
						
					//	for(int z=0;z<reqtray.size();z++){
							List map=(List)reqtray.getArray(i);
							
							
							for(int z=0;z<map.size();z++){
							DianoIdxQesMngVo dia=(DianoIdxQesMngVo)map.get(z);
				//			 	System.out.println("dia:"+dia.getIDXNM());
		    	
						}
				}
		    	
		    	
		    	
		    	
		    	//특성 아이디 
		    	System.out.println("getIDXID:"+searchVO.getIDXID());
		    	
		    	//특성 이름 
		    	System.out.println("getIDXNM:"+searchVO.getIDXNM());
		    	
		    	System.out.println("getLEVELNM:"+searchVO.getLEVELNM());
		    	System.out.println("getQESITMID:"+searchVO.getQESITMID());
		    	System.out.println("TABIDXID:"+searchVO.getTABIDXID());
		    	
		    	
		    	
			    	
		    	System.out.println("searchVO.getRADIOSELECT():"+searchVO.getRADIOSELECT());
		     	System.out.println("searchVO.getANSWERTYCODE():"+searchVO.getANSWERTYCODE());
		     	System.out.println("searchVO.getANSWERTYCODE():"+searchVO.getANSWERTYCODE());
				
		     	List AnswerListTypeSearch=dianoIdxQesMngService.selectDianoIdxQesMngViewSearch(searchVO, model);
		     	
		    	model.addAttribute("idxid",searchVO.getIDXID());
		    	model.addAttribute("idxnm",searchVO.getIDXNM());
		    	model.addAttribute("levelnm",searchVO.          getLEVELNM());
		    	model.addAttribute("qesitmid",searchVO.getQESITMID());
		    	model.addAttribute("ANSWERTYCODE",searchVO.getANSWERTYCODE());
		    	model.addAttribute("SORTORDR",searchVO.getQ_SORTORDR());
			    
		    	
		    	model.addAttribute("AnswerList",AnswerList);
		    	model.addAttribute("AnswerListType",reqtray);
		    	model.addAttribute("AnswerListTypeSearch",AnswerListTypeSearch);
		    	
		    	
				
		    	
		    	
		    	
		    return "egovframework/pdqm/admin/support/diagnosis/idx/self/DianoIdxQesMngUpdate";
		    }

		    
		    
		    
		    
		    
		    
		    
		    @RequestMapping(value="/support/diagnosis/viewDiagnosisIdxQesMngUpdate.do")
			public String viewDiagnosisIdxQesMngUpdate(@ModelAttribute("searchVO") DianoIdxQesMngVo searchVO, ModelMap model) 
		    			throws Exception {

		    		
		    	
		    	
		    	
		    	//StringTokenizer str=new StringTokenizer();
		    	
		    	/*
		    	QESITM:문항 등록 다시 한번 푸하하하하하하하하하하
		    	RADIOSELECT:null
		    	ANSWRERSTR:/-예-111-2/-아니오-222-1
		    	IDXID:15
		    	getSORTORDR():null
		    	getIDXID():15
		    	getQESITMID():9
		    	
		      	#QESITMID#,  
		          (SELECT (MAX(answer_id)+1) answer_id FROM TNIDXQESITMPOOLANSWER),  
		           #ANSWER#,  
		           #ANSWERSTDR#,
		           #ALLOT#,  
		           #SORTORDR#, 
		         
		    	*/
		    	
		    	
		    	/*
		    	getQESITMID():6
		    	IDXID:12
		    	QESITM:논리 데이터 모델의 엔터티와 물리 데이터 모델의 테이블에는 데이터를 유일하게 구별할 수 있도록 식별자와 Primary Key (PK)가 정의되어 있습니까?
		    	ANSWERTYCODE:T2000
		    	getSORTORDR():null
		    	RADIOSELECT:null
		    	ANSWRERSTR:/
		    	*/
		    	
		  //문제 삭제
		    	
		   	//dianoIdxQesMngService.deleteIdxQesMngCaseQes(searchVO, model);
		    
		   	//UPDATE   SET QESITM_ID=#QESITMID# ,IDX_ID=#IDXID# ,QESITM=#QESITM#,ANSWER_TY_CODE=#ANSWERTYCODE#, SORT_ORDR=#SORTORDR#      TNIDXQESITMPOOL   WHERE QESITM_ID=#QESITMID#

		   	System.out.println("getQESITMID():"+searchVO.getQESITMID());
			System.out.println("IDXID:"+searchVO.getIDXID());
			System.out.println("QESITM:"+searchVO.getQESITM());
			
			System.out.println("ANSWERTYCODE:"+searchVO.getANSWERTYCODE());
			System.out.println("getSORTORDR():"+searchVO.getSORTORDR());
	    	
			
		   	System.out.println("RADIOSELECT:"+searchVO.getRADIOSELECT());
	    	System.out.println("ANSWRERSTR:"+searchVO.getANSWRERSTR());
	    	
		   	
		   	//문제업데이트 
		   	dianoIdxQesMngService.updateIdxQesMngCaseQes(searchVO, model);
		    	
		    //답변 삭제 	
		   	dianoIdxQesMngService.deleteIdxQesMngCaseAnswer(searchVO, model);
		   	
		   	//다시 등록 
		   	//여기부터 
		   
		    	//int qESITMID=dianoIdxQesMngService.selectIdxQesMngCaseAnswerMax(searchVO, model);
		    	StringTokenizer casetoken=new StringTokenizer (searchVO.getANSWRERSTR(),"/");
		    	
		    	//-0-1-2-6-예
		    	
		    	//순번- 답변-    답변기준- 배점 
				//sort - answer-ANSWERSTDR - allot 
				
		    	int i=1;
		    	
		    	while(casetoken.hasMoreElements())
		    	{
		    	    		
		    	    String tokenstr=casetoken.nextToken();
		    	   // System.out.println(	"tokenstr:"+tokenstr);
		    		StringTokenizer casetypevalue=new StringTokenizer (tokenstr,"-");
					
		    		
		    			while(casetypevalue.hasMoreElements()){
		    				
		    				searchVO.setQESITMID(String.valueOf(searchVO.getQESITMID()));
		    				String sORTORDR=String.valueOf(i);
		    				searchVO.setSORTORDR(sORTORDR);
		    				System.out.println(	"sort:"+sORTORDR);
		    				String aNSWER=casetypevalue.nextToken();
							searchVO.setANSWER(aNSWER);
							System.out.println(	"aNSWER:"+aNSWER);
							String aNSWERSTDR=casetypevalue.nextToken();
							searchVO.setANSWERSTDR(aNSWERSTDR);
							
							System.out.println(	"aNSWERSTDR:"+aNSWERSTDR);
							String aLLOT=casetypevalue.nextToken();
							searchVO.setALLOT(aLLOT);
							
							System.out.println(	"aLLOT:"+aLLOT);
		    			    		
							
							dianoIdxQesMngService.insertIdxQesMngCaseAnswerType(searchVO, model);
		    			}
				
		    			i++;
		    	}
		    	
		    	
		    	
		    	
		    	
		    return "redirect:/support/diagnosis/idx/diagnoDianoIdxQesMngList.do";
		    
		    }

		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    

		    @RequestMapping(value="/support/diagnosis/viewDiagnosisIdxQesMngInsert.do")
			public String viewDiagnosisIdxQesMngInsert(@ModelAttribute("searchVO") DianoIdxQesMngVo searchVO, ModelMap model) 
		    			throws Exception {

		    		
		    	System.out.println("QESITM:"+searchVO.getQESITM());
		    	System.out.println("RADIOSELECT:"+searchVO.getRADIOSELECT());
		    	System.out.println("ANSWRERSTR:"+searchVO.getANSWRERSTR());
		    	System.out.println("IDXID:"+searchVO.getIDXID());
		    	System.out.println("getSORTORDR():"+searchVO.getSORTORDR());
		    	System.out.println("getIDXID():"+searchVO.getIDXID());
		    	System.out.println("getQESITMID():"+searchVO.getQESITMID());
				
		    	
		    	
		    	//StringTokenizer str=new StringTokenizer();
		    	
		    	/*
		    	QESITM:문항 등록 다시 한번 푸하하하하하하하하하하
		    	RADIOSELECT:null
		    	ANSWRERSTR:/-예-111-2/-아니오-222-1
		    	IDXID:15
		    	getSORTORDR():null
		    	getIDXID():15
		    	getQESITMID():9
		    	
		      	#QESITMID#,  
		          (SELECT (MAX(answer_id)+1) answer_id FROM TNIDXQESITMPOOLANSWER),  
		           #ANSWER#,  
		           #ANSWERSTDR#,
		           #ALLOT#,  
		           #SORTORDR#, 
		         
		    	*/
		    	
		    	dianoIdxQesMngService.insertIdxQesMngCaseQesType(searchVO, model);
		    	
		    	//여기부터 
		   
		    	int qESITMID=dianoIdxQesMngService.selectIdxQesMngCaseAnswerMax(searchVO, model);
		    	StringTokenizer casetoken=new StringTokenizer (searchVO.getANSWRERSTR(),"/");
		    	
		    	//-0-1-2-6-예
		    	
		    	//순번- 답변-    답변기준- 배점 
				//sort - answer-ANSWERSTDR - allot 
				
		    	int i=1;
		    	
		    	while(casetoken.hasMoreElements())
		    	{
		    	    		
		    	    String tokenstr=casetoken.nextToken();
		    	   // System.out.println(	"tokenstr:"+tokenstr);
		    		StringTokenizer casetypevalue=new StringTokenizer (tokenstr,"-");
					
		    		
		    			while(casetypevalue.hasMoreElements()){
		    				
		    				searchVO.setQESITMID(String.valueOf(qESITMID));
		    				String sORTORDR=String.valueOf(i);
		    				searchVO.setSORTORDR(sORTORDR);
		    				System.out.println(	"sort:"+sORTORDR);
		    				String aNSWER=casetypevalue.nextToken();
							searchVO.setANSWER(aNSWER);
							System.out.println(	"aNSWER:"+aNSWER);
							String aNSWERSTDR=casetypevalue.nextToken();
							searchVO.setANSWERSTDR(aNSWERSTDR);
							
							System.out.println(	"aNSWERSTDR:"+aNSWERSTDR);
							String aLLOT=casetypevalue.nextToken();
							searchVO.setALLOT(aLLOT);
							
							System.out.println(	"aLLOT:"+aLLOT);
		    			    		
							
							dianoIdxQesMngService.insertIdxQesMngCaseAnswerType(searchVO, model);
		    			}
				
		    			i++;
		    	}
		    	
		    	
		    	
		    	
		    	
		    return "redirect:/support/diagnosis/idx/diagnoDianoIdxQesMngList.do";
		    
		    }



		    @RequestMapping(value="/support/diagnosis/viewDiagnosisIdxQesMngDelete.do")
			public String viewDiagnosisIdxQesMngDelete(@ModelAttribute("searchVO") DianoIdxQesMngVo searchVO, ModelMap model) 
		    			throws Exception {


		    	System.out.println(	"QESITM_ID:"+searchVO.getQESITMID());
		    	System.out.println(	"getIDXID:"+searchVO.getIDXID());
		    	
		    	
		    	dianoIdxQesMngService.insertIdxQesMngCaseQesPoolDel(searchVO, model);
		    	dianoIdxQesMngService.insertIdxQesMngCaseQesANSWERDel(searchVO, model);
		    	
		    	
		    	
		    	return "redirect:/support/diagnosis/idx/diagnoDianoIdxQesMngList.do";
		    	

		    }
		    
}


