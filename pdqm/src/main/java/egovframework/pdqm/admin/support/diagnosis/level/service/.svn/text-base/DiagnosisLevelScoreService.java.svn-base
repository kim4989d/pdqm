package egovframework.pdqm.admin.support.diagnosis.level.service;

import java.util.List;

import egovframework.com.cmm.service.CmmnDetailCode;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelScore;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelScoreVO;

/**
 * 자가진단  점수관리  서비스 인터페이스 클래스를 정의한다.
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

public interface DiagnosisLevelScoreService {
    /**
	 * 자가진단 (진단대상) 점수관리 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectLevelScoreDgnssTrgetList(DiagnosisLevelScoreVO searchVO) throws Exception;
	
	
    /**
	 * 자가진단 (진단대상) 점수관리  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    int selectLevelScoreDgnssTrgetListTotCnt(DiagnosisLevelScoreVO searchVO);

    /**
	 * 진단대상  조회한다.
	 * @param
	 * @return 글 목록
	 * @exception Exception
	 */
	List selectDgnssMasterList() throws Exception;
	

	
	/**
	 * 자가진단 (진단대상)  상세항목을 조회한다.
	 * @param diagnosisMng
	 * @return DiagnosisMng(공통상세코드)
	 * @throws Exception
	 */
	public List updateLevelScoreDgnssTrgetView(DiagnosisLevelScore vo) throws Exception;
	
	/**
	 * 자가진단  관리 수정 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void updateLevelScoreDgnssTrget(DiagnosisLevelScore vo) throws Exception;
	
    /**
	 * 자가진단 (진단관점) 점수관리 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectScoreViewPointList(DiagnosisLevelScoreVO searchVO) throws Exception;
	
	
    /**
	 * 자가진단 (진단관점) 점수관리  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    int selectScoreViewPointListTotCnt(DiagnosisLevelScoreVO searchVO);

	/**
	 * 자가진단  결과설명  상세항목을 조회한다.
	 * @param DiagnosisLevelScore
	 * @return DiagnosisLevelScore
	 * @throws Exception
	 */
    DiagnosisLevelScore updateResultExplainView(DiagnosisLevelScore vo) throws Exception;
	
	/**
	 * 자가진단  결과설명 수정 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void updateResultExplain(DiagnosisLevelScore vo) throws Exception;
	
	/**
	 * 진단관점 코드 목록을 조회한다. 
	 * @param searchVO :  searchVO
	 * @return List : 진단관점  코드 List
	 * @throws Exception : SQLException
	 */
	@SuppressWarnings("unchecked")
	public List selectViewPointCode(DiagnosisLevelScoreVO searchVO) throws Exception;

    /**
	 * 관리수준 자가진단 결과 설명  엑셀을 조회한다.
	 * @param DiagnosisLevelScoreVO searchVO
	 * @return List<DiagnosisLevelScore>
	 * @exception Exception
	 */
	public List selectScoreViewPointExcel(DiagnosisLevelScoreVO searchVO) throws Exception;
}
