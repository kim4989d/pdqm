package egovframework.pdqm.admin.support.diagnosis.level.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.sec.ram.service.AuthorManage;
import egovframework.com.sec.ram.service.AuthorManageVO;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;
import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelScore;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelScoreVO;

/**
 * 자가진단  점수관리  DAO 클래스를 정의한다.
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

@Repository("diagnosisLevelScoreDAO")
public class DiagnosisLevelScoreDAO extends EgovComAbstractDAO {

    /**
	 * 자가진단 (진단대상) 점수관리  목록 조회한다.
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectLevelScoreDgnssTrgetList(DiagnosisLevelScoreVO searchVO) throws Exception {
    	return listPaging("diagnosisLevelScoreDAO.selectLevelScoreDgnssTrgetList",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());

    }

    /**
	 * 자가진단 (진단대상) 점수관리 총건수를 조회한다.
	 * @param vo DiagnosisMngVO
	 * @return int
	 * @exception Exception
	 */
    public int selectLevelScoreDgnssTrgetListTotCnt(DiagnosisLevelScoreVO searchVO) {
        return (Integer)getSqlMapClientTemplate().queryForObject("diagnosisLevelScoreDAO.selectLevelScoreDgnssTrgetListTotCnt", searchVO);
    }	
    
	/**
	 * 진단대상 조회한다.
	 * @param searchMap
	 *            - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List selectDgnssMasterList() throws Exception {
		return list("diagnosisLevelScoreDAO.selectDgnssLevelMasterList", "");
	}
	
	/**
	 * 자가진단  관리 상세 조회한다.
	 * @param vo
	 *            - 조회할 정보가 담긴 SupportUserVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public List updateLevelScoreDgnssTrgetView(DiagnosisLevelScore vo) throws Exception {
		return list("diagnosisLevelScoreDAO.updateLevelScoreDgnssTrgetView", vo);
	}
	
	/**
	 * 자가진단 수정 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void updateLevelScoreDgnssTrget(DiagnosisLevelScore  vo){
		update("diagnosisLevelScoreDAO.updateLevelScoreDgnssTrget", vo);
	}
    
	/**
	 * 자가진단 (진단관점) 점수관리  목록 조회한다.
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectScoreViewPointList(DiagnosisLevelScoreVO searchVO) throws Exception {
    	return listPaging("diagnosisLevelScoreDAO.selectScoreViewPointList",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());

    }

    /**
	 * 자가진단 (진단관점) 점수관리 총건수를 조회한다.
	 * @param vo DiagnosisMngVO
	 * @return int
	 * @exception Exception
	 */
    public int selectScoreViewPointListTotCnt(DiagnosisLevelScoreVO searchVO) {
        return (Integer)getSqlMapClientTemplate().queryForObject("diagnosisLevelScoreDAO.selectScoreViewPointListTotCnt", searchVO);
    }
	
	/**
	 * 자가진단 결과설명  상세 조회한다.
	 * @param vo
	 *            - 조회할 정보가 담긴 SupportUserVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public DiagnosisLevelScore updateResultExplainView(DiagnosisLevelScore vo) throws Exception {
		return (DiagnosisLevelScore) selectByPk("diagnosisLevelScoreDAO.updateResultExplainView", vo);
	}
	
	/**
	 * 자가진단 결과설명 수정 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void updateResultExplain(DiagnosisLevelScore  vo){
		update("diagnosisLevelScoreDAO.updateResultExplain", vo);
	}
	
	/**
	 * 진단관점 코드 목록을 조회한다. 
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public List<DiagnosisLevelScore> selectViewPointCode(DiagnosisLevelScoreVO searchVO) throws Exception {
		return list("diagnosisLevelScoreDAO.selectViewPointCode", searchVO);
	}
	
    /**
	 * 관리수준 자가진단 결과 설명  엑셀을 조회한다.
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectScoreViewPointExcel(DiagnosisLevelScoreVO searchVO) throws Exception {
    	return list("diagnosisLevelScoreDAO.selectScoreViewPointExcel",searchVO);

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
