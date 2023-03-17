package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import egovframework.pdqm.admin.support.diagnosis.idx.model.DianoIdxSelfMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DianoIdxSelfMngExpService;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DianoIdxSelfMngService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;



@Service("dianoIdxSelfMngService")
public class DianoIdxSelfMngImpl  extends AbstractServiceImpl implements DianoIdxSelfMngService{
	
	
	
	@Resource(name="dianoIdxSelfMngDao")
	   DianoIdxSelfMngDao dianoIdxSelfMngDao;
	
	
	
	
	public List selectDianoIdxSelfMngList (DianoIdxSelfMngVo searchVO, ModelMap model)
	throws Exception{
		
		return dianoIdxSelfMngDao.selectDianoIdxSelfMngList(searchVO);
		
	}

	
	public int selectDianoIdxSelfMngTotalcnt (DianoIdxSelfMngVo searchVO, ModelMap model)
	throws Exception{
		
		return dianoIdxSelfMngDao.selectDianoIdxSelfMngTotalcnt(searchVO);
		
	}
	
	
	
	public List selectDianoIdxSelfMngbox (DianoIdxSelfMngVo searchVO, ModelMap model)
	throws Exception{
		
		return dianoIdxSelfMngDao.selectDianoIdxSelfMngbox(searchVO);
		
	}

	
	public List selectDianoIdxSelfMngDb(DianoIdxSelfMngVo searchVO) throws Exception {
		
		return dianoIdxSelfMngDao.selectDianoIdxSelfMngDb(searchVO);
	}
    
    
    
    
	   public List selectDianoIdxSelfMngSflag(DianoIdxSelfMngVo searchVO) throws Exception{
		   return dianoIdxSelfMngDao.selectDianoIdxSelfMngSflag(searchVO);
		   
	   }
	   
	   
	   public void DianoIdxSelfMngInsert(DianoIdxSelfMngVo searchVO) throws Exception{
		   dianoIdxSelfMngDao.DianoIdxSelfMngInsert(searchVO);
	   }
	   
	   public void DianoIdxSelfMngUpdate(DianoIdxSelfMngVo searchVO) throws Exception{
		   
		   dianoIdxSelfMngDao.DianoIdxSelfMngUpdate(searchVO);
	   }
	
	   public List selectDianoIdxSelfMngDb2(DianoIdxSelfMngVo searchVO) throws Exception{
		   
		   
		   return dianoIdxSelfMngDao.selectDianoIdxSelfMngDb2(searchVO);
	   }
	   
	
	   public void DianoIdxSelfMngCopySITM(DianoIdxSelfMngVo searchVO) throws Exception{
		   
		   dianoIdxSelfMngDao.DianoIdxSelfMngCopySITM(searchVO);
	   }

	   public List selectDianoIdxSelfMngQList(DianoIdxSelfMngVo searchVO) throws Exception{
		  return  dianoIdxSelfMngDao.selectDianoIdxSelfMngQList(searchVO);
		   
	   }

	   
	   public List selectDianoIdxSelfMngQDetail(DianoIdxSelfMngVo searchVO) throws Exception{
		   
		   return dianoIdxSelfMngDao.selectDianoIdxSelfMngQDetail(searchVO);
		   
	   }
	   
	   
	   
	   public void DianoIdxSelfMngCopyCheckMANAGE(DianoIdxSelfMngVo searchVO) throws Exception{
		    dianoIdxSelfMngDao.DianoIdxSelfMngCopyCheckMANAGE(searchVO);
		   
	   }
	   
	   public int selectDianoIdxSelfMngCopyCheck (DianoIdxSelfMngVo searchVO, ModelMap model)
		throws Exception{
		   return  dianoIdxSelfMngDao.selectDianoIdxSelfMngCopyCheck(searchVO);
		   
	   }

	   public void DianoIdxSelfMngCopyMANAGE (DianoIdxSelfMngVo searchVO, ModelMap model)
		throws Exception{
		   
		    dianoIdxSelfMngDao.DianoIdxSelfMngCopyMANAGE(searchVO);
	   }

	   
	   public void DianoIdxSelfMngCopyCheckSITM (DianoIdxSelfMngVo searchVO, ModelMap model)
		throws Exception{
		   dianoIdxSelfMngDao.DianoIdxSelfMngCopyCheckSITM(searchVO);
		   
	   }
	   
	   
	   public int DianoIdxSelfMngSITMIdMax (DianoIdxSelfMngVo searchVO, ModelMap model)
		throws Exception{
		   
		  return  dianoIdxSelfMngDao.DianoIdxSelfMngSITMIdMax(searchVO);
	   }

	   
	   public int  DianoIdxSelfMngMANAGEIdMax (DianoIdxSelfMngVo searchVO, ModelMap model)
		throws Exception{
		   
		   return  dianoIdxSelfMngDao.DianoIdxSelfMngMANAGEIdMax(searchVO);
	   }

	   
	   
	   @SuppressWarnings("unchecked")
		public void  selectDianoIdxSelfMngCopyQInsert(DianoIdxSelfMngVo searchVO) throws Exception {
		   dianoIdxSelfMngDao.selectDianoIdxSelfMngCopyQInsert(searchVO);
		   
		   
	   }
	   
	   
	   @SuppressWarnings("unchecked")
		public void  selectDianoIdxSelfMngCopyQDelete(DianoIdxSelfMngVo searchVO) throws Exception {
		   dianoIdxSelfMngDao.selectDianoIdxSelfMngCopyQDelete(searchVO);
		   
	   }
	   
	   @SuppressWarnings("unchecked")
		public void  selectDianoIdxSelfMngCopyDelete(DianoIdxSelfMngVo searchVO) throws Exception {
		   
		   dianoIdxSelfMngDao.selectDianoIdxSelfMngCopyDelete(searchVO);
	   }
	  
	   @SuppressWarnings("unchecked")
		public void  selectDianoIdxSelfMngCopySITMDelete(DianoIdxSelfMngVo searchVO) throws Exception {
		   dianoIdxSelfMngDao.selectDianoIdxSelfMngCopySITMDelete(searchVO);
		  
	   }
	   
	   
}
