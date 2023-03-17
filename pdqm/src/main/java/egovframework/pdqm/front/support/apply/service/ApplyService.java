package egovframework.pdqm.front.support.apply.service;

import java.util.List;

import egovframework.com.cmm.service.CmmnDetailCode;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelf;
import egovframework.pdqm.front.support.apply.model.ApplyVO;


/**
 * 자원사업 수요조사  서비스 인터페이스 클래스를 정의한다.
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

public interface ApplyService {
 
	/**
	 * 사업신청 기간조회
	 * @param DiagnosisLevelScore
	 * @return DiagnosisLevelScore
	 * @throws Exception
	 */
	ApplyVO selectApplyDate(ApplyVO vo) throws Exception;
	
	/**
	 * 사업신청 등록 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void insertPdqmApply(ApplyVO vo) throws Exception;
}
