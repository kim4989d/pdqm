package egovframework.pdqm.admin.support.diagnosis.level.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.sec.ram.service.AuthorManage;
import egovframework.com.sec.ram.service.AuthorManageVO;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;
import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMngVO;


/**
 * 진단대상관리  DAO 클래스를 정의한다.
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

@Repository("diagnosisMngDAO")
public class DiagnosisLevelMngDAO extends EgovComAbstractDAO {

    /**
	 * 진단대상관리 목록 조회한다.
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectDiagnosisMngList(DiagnosisLevelMngVO searchVO) throws Exception {
       // return list("diagnosisMngDAO.selectDiagnosisMngList", searchVO);
        return listPaging("diagnosisLevelMngDAO.selectDiagnosisLevelMngList",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
        
    }

    
    /**
	 * 진단대상관리 총건수를 조회한다.
	 * @param vo DiagnosisMngVO
	 * @return int
	 * @exception Exception
	 */
    public int selectDiagnosisMngListTotCnt(DiagnosisLevelMngVO searchVO) {
        return (Integer)getSqlMapClientTemplate().queryForObject("diagnosisLevelMngDAO.selectDiagnosisLevelMngListTotCnt", searchVO);
    }	

	/**
	 * 진단대상 관리  순번 수정 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void updateSortOrder(DiagnosisLevelMng  vo){
		update("diagnosisLevelMngDAO.updateSortOrder", vo);
	}
	
	/**
	 * 진단대상 관리  등록 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void insertDiagnosisMng(DiagnosisLevelMng  vo){
		insert("diagnosisLevelMngDAO.insertDiagnosisLevelMng", vo);
	}
	
	/**
	 * 진단점수등록  등록 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void insertLevelScore(DiagnosisLevelMng  vo){
		insert("diagnosisLevelMngDAO.insertLevelScore", vo);
	}
	
	/**
	 * 진단대상 관리 상세 조회한다.
	 * @param vo
	 *            - 조회할 정보가 담긴 SupportUserVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public DiagnosisLevelMng updateDiagnosisMngView(DiagnosisLevelMng vo) throws Exception {
		return (DiagnosisLevelMng) selectByPk("diagnosisLevelMngDAO.updateDiagnosisLevelMngView", vo);
	}
	
	/**
	 * 진단대상 관리 수정 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void updateDiagnosisMng(DiagnosisLevelMng  vo){
		update("diagnosisLevelMngDAO.updateDiagnosisLevelMng", vo);
	}
	
	/**
	 * 진단대상 관리 삭제 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void deleteDiagnosisMng(DiagnosisLevelMng  vo){
		update("diagnosisLevelMngDAO.deleteDiagnosisLevelMng", vo);
	}

	/**
	 * 진단대상 조회한다.
	 * @param searchMap
	 *            - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List selectDgnssMasterList() throws Exception {
		return list("diagnosisLevelMngDAO.selectDgnssLevelMasterList", "");
	}
	
	/**
	 * 진단대상 관점  등록 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void insertDiagnosisViewPoint(DiagnosisLevelMng  vo){
		insert("diagnosisLevelMngDAO.insertDiagnosisLevelViewPoint", vo);
	}
	
	/**
	 * 진단대상 관점 상세 조회한다.
	 * @param vo
	 *            - 조회할 정보가 담긴 SupportUserVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public DiagnosisLevelMng updateDiagnosisViewPointView(DiagnosisLevelMng vo) throws Exception {
		return (DiagnosisLevelMng) selectByPk("diagnosisLevelMngDAO.updateDiagnosisLevelViewPointView", vo);
	}
	
	/**
	 * 진단 대상에 대한 관점을 조회한다.
	 * @param searchMap
	 *            - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List selectDgnssDetailList(DiagnosisLevelMng vo) throws Exception {
		return list("diagnosisLevelMngDAO.selectDgnssDetailList", vo);
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
