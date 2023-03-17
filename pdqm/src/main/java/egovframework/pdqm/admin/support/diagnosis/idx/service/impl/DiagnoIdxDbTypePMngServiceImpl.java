package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxDbTypePMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxDbTypeVO;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DiagnoIdxDbTypePMngService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;



@Service("diagnoIdxDbTypePMngService")
public class DiagnoIdxDbTypePMngServiceImpl extends AbstractServiceImpl implements DiagnoIdxDbTypePMngService{

	@Resource(name="diagnoIdxDbTypePMngDao")
   DiagnoIdxDbTypePMngDao diagnoIdxDbTypePMngDao;
	public List selectIdxDbTypePMngList( DiagnoIdxDbTypePMngVo searchVO, ModelMap model) 
	throws Exception{
		
		
	return 	diagnoIdxDbTypePMngDao.selectIdxDbTypePMngList(searchVO);
		
	}
	
	
	
	/**
	 * 데이터베이스유형  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    public int selectIdxDbTypePMngListTotCnt(DiagnoIdxDbTypePMngVo searchVO) {
		return diagnoIdxDbTypePMngDao.selectIdxDbTypePMngListTotCnt(searchVO);
	}

	
    public List  selectDgnssIdxMasterList (DiagnoIdxDbTypePMngVo searchVO, ModelMap model) 
	throws Exception{
    	return diagnoIdxDbTypePMngDao.selectDgnssIdxMasterList();
    }
	
    
    
    
    public List  selectIdxDbTypePMngViewLeft (DiagnoIdxDbTypePMngVo searchVO, ModelMap model) 
	throws Exception{
    	
    	return diagnoIdxDbTypePMngDao.selectIdxDbTypePMngViewLeft(searchVO);
    	
    }
    
    public List  selectIdxDbTypePMngViewRight (DiagnoIdxDbTypePMngVo searchVO, ModelMap model) 
	throws Exception{
    	
    	return diagnoIdxDbTypePMngDao.selectIdxDbTypePMngViewRight(searchVO);
    	
    }
    
    

    public List  selectIdxDbTypePMngBox(DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
    throws Exception {
    	
     	return diagnoIdxDbTypePMngDao.selectIdxDbTypePMngBox(searchVO);
         	
    }
    
    
    public void deleteIdxDbTypePMng(DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
    throws Exception {
    	
    	diagnoIdxDbTypePMngDao.deleteIdxDbTypePMng(searchVO, model);
    	
    }
    
    
    public void insertIdxDbTypePMng(DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
    throws Exception 
    {
    	
    	diagnoIdxDbTypePMngDao.insertIdxDbTypePMng(searchVO, model);
    }
    public void updateIdxDbTypePMng(DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
    throws Exception 
    {
    	
    	diagnoIdxDbTypePMngDao.updateIdxDbTypePMng(searchVO, model);
    }
   
    
    
}
