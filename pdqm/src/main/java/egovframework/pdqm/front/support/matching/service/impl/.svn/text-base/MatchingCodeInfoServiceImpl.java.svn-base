package egovframework.pdqm.front.support.matching.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.pdqm.front.support.matching.model.CodeInfoVO;
import egovframework.pdqm.front.support.matching.model.DBInfoVO;
import egovframework.pdqm.front.support.matching.service.MatchingCodeInfoService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

@Service("MatchingCodeInfoService")
public class MatchingCodeInfoServiceImpl  extends AbstractServiceImpl implements MatchingCodeInfoService{

	@Resource(name = "DBMatchingDAO")
	private DBMatchingDAO dBMatchingDAO;
	

	public List<CodeInfoVO> SearchCodeInfoList(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		return dBMatchingDAO.SearchCodeInfoList(codeInfoVO);
	}

	public int SearchCodeInfoCnt(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		return dBMatchingDAO.SearchCodeInfoCnt(codeInfoVO);
	}

	public List<CodeInfoVO> searchFIndCodeInfoList(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		return dBMatchingDAO.searchFIndCodeInfoList(codeInfoVO);
	}

	public int searchFIndCodeInCnt(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		return dBMatchingDAO.SearchCodeInfoCnt(codeInfoVO);
	}

	public void updateCodeModify(CodeInfoVO codeInfoVO) throws Exception {
		// TODO Auto-generated method stub
		dBMatchingDAO.updateCodeModify(codeInfoVO);				
	}

	public void deleteCodeModify(CodeInfoVO codeInfoVO) throws Exception {
		// TODO Auto-generated method stub
		dBMatchingDAO.deleteCodeModify(codeInfoVO);	
	}

	public List<CodeInfoVO> CodeCompList(CodeInfoVO codeInfoVO)
			throws Exception {
		// TODO Auto-generated method stub
		return dBMatchingDAO.CodeCompList(codeInfoVO);
	}

	public int CodeCompCnt(CodeInfoVO codeInfoVO) throws Exception {
		// TODO Auto-generated method stub
		return dBMatchingDAO.CodeCompCnt(codeInfoVO);
	}

	public List<CodeInfoVO> codeCompTagetList(CodeInfoVO codeInfoVO)
			throws Exception {
		// TODO Auto-generated method stub
		return dBMatchingDAO.codeCompTagetList(codeInfoVO);
	}

	public List<CodeInfoVO> errCodeList(CodeInfoVO codeInfoVO) throws Exception {
		// TODO Auto-generated method stub
		return dBMatchingDAO.errCodeList(codeInfoVO);
	}

	public CodeInfoVO codeCompTagetList1(CodeInfoVO codeInfoVO)
			throws Exception {
		// TODO Auto-generated method stub
		return dBMatchingDAO.codeCompTagetList1(codeInfoVO);
	}

	public CodeInfoVO excelCodeCompTaget(CodeInfoVO codeInfoVO)
			throws Exception {
		// TODO Auto-generated method stub
		return dBMatchingDAO.compCodeTgtExl(codeInfoVO);
	}

	public List<CodeInfoVO> excelCodeCompList(CodeInfoVO codeInfoVO)
			throws Exception {
		// TODO Auto-generated method stub
		return dBMatchingDAO.compCodeRtnExl(codeInfoVO);
	}

}
