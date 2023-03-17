package egovframework.pdqm.admin.support.diagnosis.level.service;

import java.util.List;

import egovframework.com.cmm.service.CmmnDetailCode;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMngVO;


/**
 * 진단대상관리  서비스 인터페이스 클래스를 정의한다.
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

public interface DiagnosisLevelMngService {
    /**
	 * 진단대상관리 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectDiagnosisMngList(DiagnosisLevelMngVO searchVO) throws Exception;
	
	
    /**
	 * 진단대상관리  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    int selectDiagnosisMngListTotCnt(DiagnosisLevelMngVO searchVO);


	/**
	 * 진단대상 관리  등록 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void insertDiagnosisMng(DiagnosisLevelMng diagnosisMng) throws Exception;
	
	
	/**
	 * 진단대상 관리  상세항목을 조회한다.
	 * @param diagnosisMng
	 * @return DiagnosisMng(공통상세코드)
	 * @throws Exception
	 */
	DiagnosisLevelMng updateDiagnosisMngView(DiagnosisLevelMng diagnosisMng) throws Exception;
	
	/**
	 * 진단대상 관리 수정 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void updateDiagnosisMng(DiagnosisLevelMng diagnosisMng) throws Exception;
	
	/**
	 * 진단대상 관리 삭제 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void deleteDiagnosisMng(DiagnosisLevelMng diagnosisMng) throws Exception;

	
    /**
	 * 진단대상  조회한다.
	 * @param
	 * @return 글 목록
	 * @exception Exception
	 */
	List selectDgnssMasterList() throws Exception;
	
	/**
	 * 진단대상 관점  등록 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void insertDiagnosisViewPoint(DiagnosisLevelMng diagnosisMng) throws Exception;

	/**
	 * 진단대상 관점  상세항목을 조회한다.
	 * @param diagnosisMng
	 * @return DiagnosisMng(공통상세코드)
	 * @throws Exception
	 */
	DiagnosisLevelMng updateDiagnosisViewPointView(DiagnosisLevelMng diagnosisMng) throws Exception;
	

    /**
	 * 진단 대상에 대한 관점을 조회한다.
	 * @param
	 * @return 글 목록
	 * @exception Exception
	 */
	List selectDgnssDetailList(DiagnosisLevelMng diagnosisMng) throws Exception;
}
