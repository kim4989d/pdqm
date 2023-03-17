package egovframework.pdqm.admin.support.apply.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.apply.model.ApplyMngVO;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMngVO;
import egovframework.pdqm.front.support.apply.model.ApplyVO;

@Repository("applyMngDAO")
public class ApplyMngDAO extends EgovComAbstractDAO {
	
	public void updateSupport(ApplyMngVO applyMngVO) {
		update("applyMngDAO.updateSupport", applyMngVO);
		}

	
    public void insertSupport(ApplyMngVO applyMngVO) throws Exception {
    	insert("applyMngDAO.insertSupport", applyMngVO);
    	}


	public ApplyMngVO selectSupport(ApplyMngVO applyMngVO)  throws Exception {
		return (ApplyMngVO) selectByPk("applyMngDAO.selectSupport", applyMngVO);
		
		}


    /**
	 * 사업신청  목록 조회한다.
	 * @param ApplyMngVO 
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectApplyList(ApplyMngVO searchVO) throws Exception {
        return listPaging("applyMngDAO.selectApplyList",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
        
    }

    
    /**
	 * 사업신청 총건수를 조회한다.
	 * @param vo ApplyMngVO
	 * @return int
	 * @exception Exception
	 */
    public int selectApplyListTotCnt(ApplyMngVO searchVO) {
        return (Integer)getSqlMapClientTemplate().queryForObject("applyMngDAO.selectApplyListTotCnt", searchVO);
    }	

	/**
	 * 사업신청  상세 조회한다.
	 * @param vo
	 *            - 조회할 정보가 담긴 ApplyVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public ApplyVO selectApplyDetailView(ApplyVO vo) throws Exception {
		return (ApplyVO) selectByPk("applyMngDAO.selectApplyDetailView", vo);
	}
	
	/**
	 * 페이징 처리를 위한 목록 조회 함수
	 * @param queryId 쿼리 ID
	 * @param parameterObject 쿼리에 매핑될 정보를 저장하고 있는 객체
	 * @param pageIndex	페이지 인덱스
	 * @param pageSize 페이지 사이즈
	 * @return
	 */
	public List listPaging(
			String queryId,
			Object parameterObject,
			int pageIndex,
			int pageSize) {
		
		int skipCnt = pageIndex * pageSize;

		return getSqlMapClientTemplate().queryForList(queryId, parameterObject,	skipCnt, pageSize);
	}


}