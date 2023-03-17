package egovframework.pdqm.admin.support.diagnosis.idx.service;

import java.util.List;

import org.springframework.ui.ModelMap;

import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxWghtvalMngVo;

public interface DiagnoIdxWghtvalMngService {
	
	
	public List selectIdxWghtvalMngListIndex (DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception;

	public int selectIdxWghtvalMngListTotCnt (DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception;

	public List selectIdxWghtvalMngLeft (DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception;

	
	public List selectIdxWghtvalMngRight (DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception;


	
	public List selectIdxDbTypePMngBox(DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception;

	public void selectIdxWghtvalMngDel(DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception;

	public void selectIdxWghtvalMngInsert(DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception;
	
	
	
	
	
}
