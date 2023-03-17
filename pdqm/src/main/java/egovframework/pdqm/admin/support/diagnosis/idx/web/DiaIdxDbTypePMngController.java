package egovframework.pdqm.admin.support.diagnosis.idx.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxDbTypePMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxCommonVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMng;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMngVO;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DiagnoIdxDbTypePMngService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import java.util.StringTokenizer;
import java.math.BigDecimal;
@Controller
public class DiaIdxDbTypePMngController {

	 @Resource(name="egovMessageSource")
	    EgovMessageSource egovMessageSource;
	    
	    @Resource(name = "diagnoIdxDbTypePMngService")
	    private DiagnoIdxDbTypePMngService diagnoIdxDbTypePMngService;
	    
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
	    @RequestMapping(value="/support/diagnosis/idx/diagnoIdxDbTypePMngList.do")
		public String selectIdxDbTypeList(@ModelAttribute("searchVO") DiagnoIdxDbTypePMngVo searchVO, ModelMap model) 
	    			throws Exception {
	    	
	    	
	    	System.out.println("HDATABASETYID():"+searchVO.getHDATABASETYID());
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
			
			
			
			
			List resultList = diagnoIdxDbTypePMngService.selectIdxDbTypePMngList(searchVO, model);
		
			List selectbox=diagnoIdxDbTypePMngService.selectIdxDbTypePMngBox(searchVO, model);
	       model.addAttribute("selectbox", selectbox);
	       
	       
	       model.addAttribute("resultList", resultList);
		        
	        int totCnt = diagnoIdxDbTypePMngService.selectIdxDbTypePMngListTotCnt(searchVO);
			paginationInfo.setTotalRecordCount(totCnt);
	        model.addAttribute("paginationInfo", paginationInfo);
	        
	        return "egovframework/pdqm/admin/support/diagnosis/idx/dbtype/DbTypePointMngList";
	        
	  	}

	    
	    
	    @RequestMapping(value="/Test.do")
		public String Test(@ModelAttribute("searchVO") DiagnoIdxDbTypePMngVo searchVO, ModelMap model) 
	    			throws Exception {
	
	    return "Jquery";
	    
	    }
	    
	    /**
		 * 지표 및 특성 관리  등록 화면이동 한다.
		 * @param searchVO - 목록 조회조건 정보가 담긴 VO
		 * @param model
		 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngRegist";
		 * @exception Exception
		 */
		@RequestMapping("/support/diagnosis/insertDiagnoIdxPMngView.do")
	    public String insertDiagnoPMngView(
	            @ModelAttribute("searchVO") DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
	            throws Exception {

			
			System.out.println("print === "+searchVO.getHDATABASETYID());
			
			List resultviewleft=diagnoIdxDbTypePMngService.selectIdxDbTypePMngViewLeft(searchVO, model);
			
			List resultviewright=diagnoIdxDbTypePMngService.selectIdxDbTypePMngViewRight(searchVO, model);
			
			
		//	List dgnssMasterList = diagnoIdxDbTypePMngService.selectDgnssIdxMasterList();
			
		//	model.addAttribute("dgnssMasterList", dgnssMasterList);
		
			
		//	diagnoIdxDbTypePMngService.selectIdxDbTypePMngView(searchVO, model);
			//select 박스 퀴리 
			List selectbox=diagnoIdxDbTypePMngService.selectIdxDbTypePMngBox(searchVO, model);
		       model.addAttribute("selectbox", selectbox);
		    
		       model.addAttribute("resultviewleft", resultviewleft);
		       model.addAttribute("resultviewright", resultviewright);
				   
		       
		       
			
	    	model.addAttribute("diagnosisIdxMng", new DiagnosisIdxMng());
	        return "egovframework/pdqm/admin/support/diagnosis/idx/dbtype/DbTypePointMngRegist";
	   
	        
		}

	    

		
	    
		@RequestMapping("/support/diagnosis/viewDiagnoIdxPMnginsert.do")
	    public String ViewDiagnoPMngInsert(
	            @ModelAttribute("searchVO") DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
	            throws Exception {

			
			
			
			
			System.out.println("HDATABASETYID:"+searchVO.getHDATABASETYID());
			System.out.println("rightidxnm:"+searchVO.getSRIDXNM());
			
			
			
			
			
			System.out.println("=========11");
			
			diagnoIdxDbTypePMngService.deleteIdxDbTypePMng(searchVO, model);
			//BigDecimal.
		StringTokenizer token=new StringTokenizer(searchVO.getSRIDXNM(),"/");
			while(token.hasMoreElements()){
				String tokenstr=String.valueOf(token.nextElement()).trim();
				searchVO.setSLIDXNM(tokenstr);
				System.out.println("token:"+tokenstr+"]");
				diagnoIdxDbTypePMngService.insertIdxDbTypePMng(searchVO, model);
				
			}
			
			diagnoIdxDbTypePMngService.updateIdxDbTypePMng(searchVO, model);
			
			
			
			 
			List resultviewleft=diagnoIdxDbTypePMngService.selectIdxDbTypePMngViewLeft(searchVO, model);
			List resultviewright=diagnoIdxDbTypePMngService.selectIdxDbTypePMngViewRight(searchVO, model);
			
			
			
			
		//	List dgnssMasterList = diagnoIdxDbTypePMngService.selectDgnssIdxMasterList();
			
		//	model.addAttribute("dgnssMasterList", dgnssMasterList);
		
			
		//	diagnoIdxDbTypePMngService.selectIdxDbTypePMngView(searchVO, model);
			//select 박스 퀴리 
			List selectbox=diagnoIdxDbTypePMngService.selectIdxDbTypePMngBox(searchVO, model);
		       model.addAttribute("selectbox", selectbox);
		    
		       model.addAttribute("resultviewleft", resultviewleft);
		       model.addAttribute("resultviewright", resultviewright);
		      
	    //	model.addAttribute("diagnosisIdxMng", new DiagnosisIdxMng());
	
			return "egovframework/pdqm/admin/support/diagnosis/idx/dbtype/DbTypePointMngRegist";
		
		}

	

}
