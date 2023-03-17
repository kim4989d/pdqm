package egovframework.pdqm.front.support.matching.service;

import java.util.List;

import org.springframework.ui.ModelMap;

import egovframework.pdqm.front.support.matching.model.CompareCodeVO;

public interface CompareCodeService {
    public List<CompareCodeVO> selectCodeList(CompareCodeVO searchVO, ModelMap model) throws Exception;
    public int selectCodeListTotCnt(CompareCodeVO searchVO) throws Exception;
    //public List<CompareCodeVO> compareCodeList(CompareCodeVO searchVO, ModelMap model) throws Exception;
    //public int compareCodeListTotCnt(CompareCodeVO searchVO) throws Exception;
}
