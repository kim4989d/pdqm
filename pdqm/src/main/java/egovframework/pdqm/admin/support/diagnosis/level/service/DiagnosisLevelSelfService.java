package egovframework.pdqm.admin.support.diagnosis.level.service;

import java.util.List;

import egovframework.com.cmm.service.CmmnDetailCode;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelf;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelfVO;

/**
 * 자가진단 관리   서비스 인터페이스 클래스를 정의한다.
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
 *   2009.03.20  이문준          최초 생성
 *
 * </pre>
 */

public interface DiagnosisLevelSelfService {
    /**
	 * 자가진단 관리 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectSelfDiagnosisList(DiagnosisLevelSelfVO searchVO) throws Exception;
	
	
    /**
	 * 자가진단 관리  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    int selectSelfDiagnosisListTotCnt(DiagnosisLevelSelfVO searchVO);

	/**
	 * 자가진단 등록 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void insertSelfDiagnosis(DiagnosisLevelSelf vo) throws Exception;

	/**
	 * 자가진단 상세항목을 조회한다.
	 * @param DiagnosisLevelScore
	 * @return DiagnosisLevelScore
	 * @throws Exception
	 */
	DiagnosisLevelSelf updateSelfDiagnosisView(DiagnosisLevelSelf vo) throws Exception;
	
	/**
	 * 자가진단 수정 한다.
	 * @param vo DiagnosisLevelSelf
	 * @exception Exception
	 */    
	void updateSelfDiagnosis(DiagnosisLevelSelf vo) throws Exception;
	
	/**
	 * 자가진단 삭제 한다.
	 * @param vo DiagnosisLevelSelf
	 * @exception Exception
	 */    
	void deleteSelfDiagnosis(DiagnosisLevelSelf vo) throws Exception;
	
	/**
	 * 자가진단 복사 등록 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void insertCompositionCopy(DiagnosisLevelSelf vo) throws Exception;
	
	/**
	 * 자가진단 등록 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void insertComposition(DiagnosisLevelSelf vo) throws Exception;
	
	
    /**
	 * 자가진단 구성 타이틀 조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectCompositionTitleList() throws Exception;
	
    /**
	 * 자가진단 구성  조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectCompositionList(DiagnosisLevelSelf vo) throws Exception;
}
