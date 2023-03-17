package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;


import egovframework.pdqm.admin.support.diagnosis.idx.model.DianoIdxQesMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.dianoIdxSelfMngPVo;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DianoIdxSelfMngPService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;


@Service("dianoIdxSelfMngPService")
public class DianoIdxSelfMngPImpl extends AbstractServiceImpl implements DianoIdxSelfMngPService{

	@Resource(name="dianoIdxSelfMngPDao")
   DianoIdxSelfMngPDao dianoIdxSelfMngPDao;


	public List selectDianoIdxSelfMngPList(dianoIdxSelfMngPVo searchVO) throws Exception{
		return  dianoIdxSelfMngPDao.selectDianoIdxSelfMngPList(searchVO);
		
	}
	
	public int  selectDianoIdxSelfMngTotalcnt(dianoIdxSelfMngPVo searchVO) throws Exception{
		
		return dianoIdxSelfMngPDao.selectDianoIdxSelfMngTotalcnt(searchVO);
	}
	


	public List  selectDianoIdxSelfMngbox(dianoIdxSelfMngPVo searchVO) throws Exception{
		
		return dianoIdxSelfMngPDao.selectDianoIdxSelfMngbox(searchVO);
		
	}



public List  selectDianoIdxSelfMngboxIdx(dianoIdxSelfMngPVo searchVO) throws Exception{
	
	
	return dianoIdxSelfMngPDao.selectDianoIdxSelfMngboxIdx(searchVO);
}
	
	



public List  selectDianoIdxSelfMngboxResult(dianoIdxSelfMngPVo searchVO) throws Exception{
	
	
	return dianoIdxSelfMngPDao.selectDianoIdxSelfMngboxResult(searchVO);
	
}


public void  DianoIdxSelfMngInsert(dianoIdxSelfMngPVo searchVO) throws Exception{
	dianoIdxSelfMngPDao.DianoIdxSelfMngInsert(searchVO);
	
	
}




public List  DianoIdxSelfMngView(dianoIdxSelfMngPVo searchVO) throws Exception{
	
	
	return dianoIdxSelfMngPDao.DianoIdxSelfMngView(searchVO);
	
	
}



public void  DianoIdxSelfMngdelete(dianoIdxSelfMngPVo searchVO) throws Exception{
	
	dianoIdxSelfMngPDao.DianoIdxSelfMngdelete(searchVO);
	
}


}



