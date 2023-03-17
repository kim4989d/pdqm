package egovframework.pdqm.admin.support.diagnosis.idx.service;

import java.util.List;

import egovframework.com.cmm.service.CmmnDetailCode;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMng;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMngVO;

/**
 * 지표 및 특성 관리  서비스 인터페이스 클래스를 정의한다.
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

public interface DiagnosisIdxMngService {
    /**
	 * 지표 및 특성 관리 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectDiagnosisIdxMngList(DiagnosisIdxMngVO searchVO) throws Exception;
	
	
    /**
	 * 지표 및 특성 관리  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    int selectDiagnosisIdxMngListTotCnt(DiagnosisIdxMngVO searchVO);


	/**
	 * 지표  등록 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void insertDiagnosisIdxMng(DiagnosisIdxMng vo) throws Exception;
	
	
	/**
	 * 지표  관리  상세항목을 조회한다.
	 * @param diagnosisMng
	 * @return DiagnosisMng(공통상세코드)
	 * @throws Exception
	 */
	DiagnosisIdxMng updateDiagnosisIdxMngView(DiagnosisIdxMng vo) throws Exception;
	
	/**
	 * 지표 관리 수정 한다.
	 * @param vo DiagnosisMng  
	 * @exception Exception
	 */    
	void updateDiagnosisIdxMng(DiagnosisIdxMng vo) throws Exception;
	
	/**
	 * 지표 관리 삭제 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void deleteDiagnosisIdxMng(DiagnosisIdxMng vo) throws Exception;

	
    
	/**
	 * 지표대상  조회한다.
	 * @param
	 * @return 글 목록
	 * @exception Exception
	 */
	List selectDgnssIdxMasterList() throws Exception;
	
	
	
	/**
	 * 지표 특성   등록 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void insertDiagnosisProperty(DiagnosisIdxMng vo) throws Exception;

	/**
	 * 지표 특성  상세항목을 조회한다.
	 * @param diagnosisMng
	 * @return DiagnosisMng(공통상세코드)
	 * @throws Exception
	 */
	DiagnosisIdxMng updateDiagnosisIdxPropertyView(DiagnosisIdxMng vo) throws Exception;
	

    /**
	 * 지표 대상에 대한 특성 조회한다.
	 * @param
	 * @return 글 목록
	 * @exception Exception
	 */
	List selectDgnssDetailList(DiagnosisIdxMng vo) throws Exception;
	
	
	
	
	
	
}
