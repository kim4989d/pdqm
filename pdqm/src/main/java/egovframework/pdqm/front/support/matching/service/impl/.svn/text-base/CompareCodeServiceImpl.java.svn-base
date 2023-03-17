package egovframework.pdqm.front.support.matching.service.impl;

import java.util.List;
import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import egovframework.pdqm.front.support.matching.service.CompareCodeService;
import egovframework.pdqm.front.support.matching.model.CompareCodeVO;

import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

@Service("compareCodeService")

public class CompareCodeServiceImpl extends AbstractServiceImpl implements CompareCodeService{
	@Resource(name="compareCodeDAO")
	CompareCodeDAO compareCodeDAO;
	
    public List<CompareCodeVO> selectCodeList(CompareCodeVO searchVO, ModelMap model) throws Exception {
    	return compareCodeDAO.selectCodeList(searchVO, model);
    }
    public int selectCodeListTotCnt(CompareCodeVO searchVO) throws Exception {
    	return compareCodeDAO.selectCodeListTotCnt(searchVO);
    }
/*    
    public List<CompareCodeVO> compareCodeList(CompareCodeVO searchVO, ModelMap model) throws Exception {
    	return compareCodeDAO.selectCodeList(searchVO, model);
    }
    public int compareCodeListTotCnt(CompareCodeVO searchVO) throws Exception {
    	return compareCodeDAO.selectCodeListTotCnt(searchVO);
    }
*/    
}
