package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxDbTypePMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxDbTypeVO;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DianoIdxQesMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DianoIdxQesMngService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;



@Service("dianoIdxQesMngService")
public class DianoIdxQesMngImpl extends AbstractServiceImpl implements DianoIdxQesMngService{

	@Resource(name="dianoIdxQesMngDao")
   DianoIdxQesMngDao dianoIdxQesMngDao;
	
	
	
	
    public List  selectDianoIdxQesMngList(DianoIdxQesMngVo searchVO, ModelMap model)
    throws Exception {
    	return dianoIdxQesMngDao.selectDianoIdxQesMngList(searchVO);
    }

    public List  selectDianoIdxQesMngView(DianoIdxQesMngVo searchVO, ModelMap model)
    throws Exception {
    	return dianoIdxQesMngDao.selectDianoIdxQesMngView(searchVO);
    }
    
    
    public void   insertDianoIdxQesMng(DianoIdxQesMngVo searchVO)throws Exception
    {
    	dianoIdxQesMngDao.insertDianoIdxQesMng(searchVO);
    }
	   
	   public void   updateDianoIdxQesMng(DianoIdxQesMngVo searchVO)throws Exception
	  
	   {
		   dianoIdxQesMngDao.updateDianoIdxQesMng(searchVO);
		   
	   }
    
    
	   
	   public List  	   selectIdxQesMngCaseAnswer(DianoIdxQesMngVo searchVO, ModelMap model)
	    throws Exception{
		   return dianoIdxQesMngDao.selectIdxQesMngCaseAnswer(searchVO);
	   }

	   
	   public List  	   selectIdxQesMngCaseAnswerType(DianoIdxQesMngVo searchVO, ModelMap model)
	    throws Exception{
		   
		   return dianoIdxQesMngDao.selectIdxQesMngCaseAnswerType(searchVO);
	   }

	   
	   
	  //답변  
	   public void insertIdxQesMngCaseAnswerType(DianoIdxQesMngVo searchVO, ModelMap model)
	   throws Exception{
		   
		   dianoIdxQesMngDao.insertIdxQesMngCaseAnswerType(searchVO);
		   
	   }
	 //문항 
	   public void insertIdxQesMngCaseQesType(DianoIdxQesMngVo searchVO, ModelMap model)
	   throws Exception{
		   
		   dianoIdxQesMngDao.insertIdxQesMngCaseQesType(searchVO);
		   
	   }
	   
	   public int selectIdxQesMngCaseAnswerMax(DianoIdxQesMngVo searchVO, ModelMap model)
	   throws Exception{
		   
		   return dianoIdxQesMngDao.selectIdxQesMngCaseAnswerMax(searchVO);
		   
	   }
	
	   
	   public List selectDianoIdxQesMngViewSearch(DianoIdxQesMngVo searchVO, ModelMap model)
	   throws Exception{
	   
		   return dianoIdxQesMngDao.selectDianoIdxQesMngViewSearch(searchVO);
	   }   
	
	   public void updateIdxQesMngCaseQes(DianoIdxQesMngVo searchVO, ModelMap model)
	   throws Exception{
		   
		   dianoIdxQesMngDao.updateIdxQesMngCaseQes(searchVO);
		   
	   }
	  
	   public void deleteIdxQesMngCaseAnswer(DianoIdxQesMngVo searchVO, ModelMap model)
	   throws Exception{
		   dianoIdxQesMngDao.deleteIdxQesMngCaseAnswer(searchVO);
	   }
	   
	  
	   public void insertIdxQesMngCaseQesANSWERDel(DianoIdxQesMngVo searchVO, ModelMap model)
	   throws Exception{
		   dianoIdxQesMngDao.insertIdxQesMngCaseQesANSWERDel(searchVO);
	   }
	   
	   public void insertIdxQesMngCaseQesPoolDel(DianoIdxQesMngVo searchVO, ModelMap model)
	   throws Exception{
		   dianoIdxQesMngDao.insertIdxQesMngCaseQesPoolDel(searchVO);
		   
	   }
	
	   
}
