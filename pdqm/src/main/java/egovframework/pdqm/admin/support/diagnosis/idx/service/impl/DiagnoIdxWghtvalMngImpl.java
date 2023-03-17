package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;


import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxWghtvalMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DiagnoIdxWghtvalMngService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;
import egovframework.pdqm.admin.support.diagnosis.idx.service.impl.DiagnoIdxWghtvalMngDao;


@Service("diagnoIdxWghtvalMngService")
public class DiagnoIdxWghtvalMngImpl  extends AbstractServiceImpl implements DiagnoIdxWghtvalMngService{
	
	
	
	@Resource(name="diagnoIdxWghtvalMngDao")
	DiagnoIdxWghtvalMngDao diagnoIdxWghtvalMngDao;
	
	public List selectIdxWghtvalMngListIndex (DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception{
		System.out.println("==========select");
		return  diagnoIdxWghtvalMngDao.selectIdxWghtvalMngListIndex(searchVO);
		
	}

	

	public int selectIdxWghtvalMngListTotCnt (DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception{
		
		
		return diagnoIdxWghtvalMngDao.selectIdxWghtvalMngListTotCnt(searchVO, model);
		
	}

	
	

	public List selectIdxWghtvalMngLeft (DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception{
		
		return diagnoIdxWghtvalMngDao.selectIdxWghtvalMngLeft(searchVO, model);
		
		
	}

	
	public List selectIdxWghtvalMngRight (DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception{
		
		
		return diagnoIdxWghtvalMngDao.selectIdxWghtvalMngRight(searchVO, model);
	}


	public List selectIdxDbTypePMngBox(DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception{
		
		
		return diagnoIdxWghtvalMngDao.selectIdxDbTypePMngBox(searchVO, model);
	}

	public void selectIdxWghtvalMngDel(DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception{
		diagnoIdxWghtvalMngDao.selectIdxWghtvalMngDel(searchVO, model);
	}

	
	
	public void selectIdxWghtvalMngInsert(DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception{
		diagnoIdxWghtvalMngDao.selectIdxWghtvalMngInsert(searchVO, model);
		
	}
	
	
}
