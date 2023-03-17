package egovframework.pdqm.admin.support.diagnosis.level.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.sec.ram.service.AuthorManage;
import egovframework.com.sec.ram.service.AuthorManageVO;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;
import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelf;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelfVO;

/**
 * 자가진단 관리  클래스를 정의한다.
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

@Repository("diagnosisLevelSelfDAO")
public class DiagnosisLevelSelfDAO extends EgovComAbstractDAO {

    /**
	 * 자가진단 관리  목록 조회한다.
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectSelfDiagnosisList(DiagnosisLevelSelfVO searchVO) throws Exception {
    	return listPaging("diagnosisLevelSelfDAO.selectSelfDiagnosisList",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());

    }

    /**
	 * 자가진단 관리 총건수를 조회한다.
	 * @param vo DiagnosisMngVO
	 * @return int
	 * @exception Exception
	 */
    public int selectSelfDiagnosisListTotCnt(DiagnosisLevelSelfVO searchVO) {
        return (Integer)getSqlMapClientTemplate().queryForObject("diagnosisLevelSelfDAO.selectSelfDiagnosisListTotCnt", searchVO);
    }	

	/**
	 * 자가진단 관리  등록 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void insertSelfDiagnosis(DiagnosisLevelSelf  vo){
		insert("diagnosisLevelSelfDAO.insertSelfDiagnosis", vo);
	}
	
	/**
	 * 자가진단  상세 조회한다.
	 * @param vo
	 *            - 조회할 정보가 담긴 SupportUserVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public DiagnosisLevelSelf updateSelfDiagnosisView(DiagnosisLevelSelf vo) throws Exception {
		return (DiagnosisLevelSelf) selectByPk("diagnosisLevelSelfDAO.updateSelfDiagnosisView", vo);
	}

	/**
	 * 자가진단 관리 수정 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void updateSelfDiagnosis(DiagnosisLevelSelf  vo){
		update("diagnosisLevelSelfDAO.updateSelfDiagnosis", vo);
	}
	
	/**
	 * 자가진단 관리 삭제 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void deleteSelfDiagnosis(DiagnosisLevelSelf  vo){
		update("diagnosisLevelSelfDAO.deleteSelfDiagnosis", vo);
	}

	/**
	 * 자가진단 복사  등록 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void insertCompositionCopy(DiagnosisLevelSelf  vo){
		insert("diagnosisLevelSelfDAO.insertCompositionCopy", vo);
	}
	
    /**
	 * 자가진단 구성 타이틀 조회
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectCompositionTitleList() throws Exception {
    	return list("diagnosisLevelSelfDAO.selectCompositionTitleList","");

    }
    
    /**
	 * 자가진단 구성  조회
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectCompositionList(DiagnosisLevelSelf vo) throws Exception {
    	return list("diagnosisLevelSelfDAO.selectCompositionList",vo);

    }

	/**
	 * 자가진단  삭제 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void deleteComposition(DiagnosisLevelSelf  vo){
		delete("diagnosisLevelSelfDAO.deleteComposition", vo);
	}
    
	/**
	 * 자가진단  등록 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void insertComposition(DiagnosisLevelSelf  vo){
		insert("diagnosisLevelSelfDAO.insertComposition", vo);
	}
	
	
	/**
	 * 수준진단관리 항목수 수정  한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void updateQesitmCo(DiagnosisLevelSelf  vo){
		update("diagnosisLevelSelfDAO.updateQesitmCo", vo);
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
