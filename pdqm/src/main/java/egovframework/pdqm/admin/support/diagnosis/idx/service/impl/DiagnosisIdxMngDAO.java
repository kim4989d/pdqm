package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.sec.ram.service.AuthorManage;
import egovframework.com.sec.ram.service.AuthorManageVO;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;
import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMng;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMngVO;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;

/**
 * 지표 및 특성 관리  DAO 클래스를 정의한다.
 * @author 공통서비스 개발팀 이문준
 * @since 2009.06.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.03.11  이문준          최초 생성
 *
 * </pre>
 */

@Repository("diagnosisIdxMngDAO")
public class DiagnosisIdxMngDAO extends EgovComAbstractDAO {

    /**
	 * 지표 및 특성 관리 목록 조회한다.
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectDiagnosisIdxMngList(DiagnosisIdxMngVO searchVO) throws Exception {
       // return list("diagnosisMngDAO.selectDiagnosisMngList", searchVO);
        return listPaging("diagnosisIdxMngDAO.selectDiagnosisIdxMngList",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
        
    }

    
    /**
	 * 지표 및 특성 관리 총건수를 조회한다.
	 * @param vo DiagnosisIdxMngVO
	 * @return int
	 * @exception Exception
	 */
    public int selectDiagnosisIdxMngListTotCnt(DiagnosisIdxMngVO searchVO) {
        return (Integer)getSqlMapClientTemplate().queryForObject("diagnosisIdxMngDAO.selectDiagnosisIdxMngListTotCnt", searchVO);
    }	

	/**
	 * 지표  관리  순번 수정 한다.
	 * @param vo DiagnosisIdxMng 
	 * @exception Exception
	 */
	public void updateSortOrder(DiagnosisIdxMng  vo){
		update("diagnosisIdxMngDAO.updateSortOrder", vo);
	}
	
	/**
	 * 지표 관리  등록 한다.
	 * @param vo DiagnosisIdxMng 
	 * @exception Exception
	 */
	public void insertDiagnosisIdxMng(DiagnosisIdxMng  vo){
		insert("diagnosisIdxMngDAO.insertDiagnosisIdxMng", vo);
	}
	
	/**
	 * 지표 관리 상세 조회한다.
	 * @param vo
	 *            - 조회할 정보가 담긴 SupportUserVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public DiagnosisIdxMng updateDiagnosisIdxMngView(DiagnosisIdxMng vo) throws Exception {
		return (DiagnosisIdxMng) selectByPk("diagnosisIdxMngDAO.updateDiagnosisIdxMngView", vo);
	}
	
	/**
	 * 지표 수정 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void updateDiagnosisIdxMng(DiagnosisIdxMng  vo){
		update("diagnosisIdxMngDAO.updateDiagnosisIdxMng", vo);
	}
	
	/**
	 * 지표 관리 삭제 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void deleteDiagnosisIdxMng(DiagnosisIdxMng  vo){
		update("diagnosisIdxMngDAO.deleteDiagnosisIdxMng", vo);
	}

	/**
	 * 지표대상 조회한다.
	 * @param searchMap
	 *            - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List selectDgnssIdxMasterList() throws Exception {
		return list("diagnosisIdxMngDAO.selectDgnssIdxMasterList", "");
	}
	
	/**
	 * 지표 특성  등록 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void insertDiagnosisProperty(DiagnosisIdxMng  vo){
		insert("diagnosisIdxMngDAO.insertDiagnosisProperty", vo);
	}
	
	/**
	 * 진단대상 관점 상세 조회한다.
	 * @param vo
	 *            - 조회할 정보가 담긴 SupportUserVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public DiagnosisIdxMng updateDiagnosisIdxPropertyView(DiagnosisIdxMng vo) throws Exception {
		return (DiagnosisIdxMng) selectByPk("diagnosisIdxMngDAO.updateDiagnosisIdxPropertyView", vo);
	}
	
	/**
	 * 진단 대상에 대한 관점을 조회한다.
	 * @param searchMap
	 *            - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List selectDgnssDetailList(DiagnosisIdxMng vo) throws Exception {
		return list("diagnosisIdxMngDAO.selectDgnssDetailList", vo);
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
