package egovframework.pdqm.admin.support.diagnosis.idx.service;


import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import egovframework.pdqm.admin.support.diagnosis.idx.model.DianoIdxSelfMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxCommonVo;
import java.util.List;

public interface  DianoIdxSelfMngService {

		
	public List selectDianoIdxSelfMngList (DianoIdxSelfMngVo searchVO, ModelMap model)
	throws Exception;

	public int selectDianoIdxSelfMngTotalcnt (DianoIdxSelfMngVo searchVO, ModelMap model)
	throws Exception;


	public List selectDianoIdxSelfMngbox (DianoIdxSelfMngVo searchVO, ModelMap model)
	throws Exception;

	

	
	public List selectDianoIdxSelfMngDb(DianoIdxSelfMngVo searchVO) throws Exception ;
       
     
    
    
   public List selectDianoIdxSelfMngSflag(DianoIdxSelfMngVo searchVO) throws Exception;
    
   
   
   public void DianoIdxSelfMngInsert(DianoIdxSelfMngVo searchVO) throws Exception;
   
   public void DianoIdxSelfMngUpdate(DianoIdxSelfMngVo searchVO) throws Exception;
   
   
   public List selectDianoIdxSelfMngDb2(DianoIdxSelfMngVo searchVO) throws Exception;
   
   
   public void DianoIdxSelfMngCopySITM(DianoIdxSelfMngVo searchVO) throws Exception;
   
   
   public List selectDianoIdxSelfMngQList(DianoIdxSelfMngVo searchVO) throws Exception;
   
   
   public List selectDianoIdxSelfMngQDetail(DianoIdxSelfMngVo searchVO) throws Exception;
   
   public void DianoIdxSelfMngCopyCheckMANAGE(DianoIdxSelfMngVo searchVO) throws Exception;
   
   public int selectDianoIdxSelfMngCopyCheck (DianoIdxSelfMngVo searchVO, ModelMap model)
	throws Exception;


   
   public void DianoIdxSelfMngCopyMANAGE (DianoIdxSelfMngVo searchVO, ModelMap model)
	throws Exception;

   
   public void DianoIdxSelfMngCopyCheckSITM (DianoIdxSelfMngVo searchVO, ModelMap model)
	throws Exception;

   
   
   
   public int DianoIdxSelfMngSITMIdMax (DianoIdxSelfMngVo searchVO, ModelMap model)
	throws Exception;

   
   public int DianoIdxSelfMngMANAGEIdMax (DianoIdxSelfMngVo searchVO, ModelMap model)
	throws Exception;

   
   
   

   @SuppressWarnings("unchecked")
	public void  selectDianoIdxSelfMngCopyQInsert(DianoIdxSelfMngVo searchVO) throws Exception ;
   
   
   @SuppressWarnings("unchecked")
	public void  selectDianoIdxSelfMngCopyQDelete(DianoIdxSelfMngVo searchVO) throws Exception ;
   
   @SuppressWarnings("unchecked")
	public void  selectDianoIdxSelfMngCopyDelete(DianoIdxSelfMngVo searchVO) throws Exception ;
  
   @SuppressWarnings("unchecked")
	public void  selectDianoIdxSelfMngCopySITMDelete(DianoIdxSelfMngVo searchVO) throws Exception ;
   
   
   
   
}
