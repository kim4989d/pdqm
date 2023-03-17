package egovframework.pdqm.admin.support.diagnosis.level.service;

import java.util.List;

import egovframework.com.cmm.service.CmmnDetailCode;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelQuiz;

/**
 * 자가진단 문항 관리   서비스 인터페이스 클래스를 정의한다.
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

public interface DiagnosisLevelQuizService {

    /**
	 * 자가진단 문항 타이틀 조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectQuizTitleList() throws Exception;
	
    /**
	 * 자가진단 문항 구성  조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectQuizList() throws Exception;
	
	/**
	 * 자가진단 문항  등록 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void insertQuiz(DiagnosisLevelQuiz vo) throws Exception;
	
	/**
	 * 자가진단 문항   상세항목을 조회한다.
	 * @param diagnosisMng
	 * @return DiagnosisMng(공통상세코드)
	 * @throws Exception
	 */
	DiagnosisLevelQuiz updateQuizView(DiagnosisLevelQuiz vo) throws Exception;
	
	/**
	 * 자가진단 문항  수정 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void updateQuiz(DiagnosisLevelQuiz vo) throws Exception;
	
	/**
	 * 자가진단 문항  삭제 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void deleteQuiz(DiagnosisLevelQuiz vo) throws Exception;
	
    /**
	 * 자가진단 문항 답변항목  조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectQuizAnswer(DiagnosisLevelQuiz vo) throws Exception;
	
    /**
	 * 자가진단 문항 답변항목  조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectQuizAnswer2(DiagnosisLevelQuiz vo) throws Exception;
	
}
