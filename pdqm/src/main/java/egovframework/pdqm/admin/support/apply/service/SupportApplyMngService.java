package egovframework.pdqm.admin.support.apply.service;

import java.util.List;

import egovframework.pdqm.admin.support.apply.model.ApplyMngVO;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelfVO;
import egovframework.pdqm.front.support.apply.model.ApplyVO;

public interface SupportApplyMngService {
	

	/**
	 * 사업신청 등록
	 * @param applyMngVO
	 * @exception Exception
	 */ 
	
	ApplyMngVO selectSupport(ApplyMngVO applyMngVO) throws Exception;

	
	
	public void insertSupport(ApplyMngVO applyMngVO) throws Exception;


    /**
	 * 사업신청 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectApplyList(ApplyMngVO searchVO) throws Exception;
	
	
    /**
	 * 사업신청  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    int selectApplyListTotCnt(ApplyMngVO searchVO);
    
	
	/**
	 * 사업신청  상세항목을 조회한다.
	 * @param ApplyVO
	 * @return ApplyVO(사업신청)
	 * @throws Exception
	 */
    ApplyVO selectApplyDetailView(ApplyVO vo) throws Exception;
	

}





