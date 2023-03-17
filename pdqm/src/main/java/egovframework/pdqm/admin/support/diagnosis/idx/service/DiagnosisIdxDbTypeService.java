package egovframework.pdqm.admin.support.diagnosis.idx.service;

import java.util.List;

import egovframework.com.cmm.service.CmmnDetailCode;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxDbType;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxDbTypeVO;

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

public interface DiagnosisIdxDbTypeService {
    /**
	 * 데이터베이스유형 관리 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
	public List selectIdxDbTypeList(DiagnosisIdxDbTypeVO searchVO) throws Exception;
	
	
    /**
	 * 데이터베이스유형 관리  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    int selectIdxDbTypeListTotCnt(DiagnosisIdxDbTypeVO searchVO);


	/**
	 * 데이터베이스유형  등록 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void insertIdxDbType(DiagnosisIdxDbType vo) throws Exception;
	
	
	/**
	 * 데이터베이스유형  상세항목을 조회한다.
	 * @param diagnosisMng
	 * @return DiagnosisMng(공통상세코드)
	 * @throws Exception
	 */
	DiagnosisIdxDbType updateIdxDbTypeView(DiagnosisIdxDbType vo) throws Exception;
	
	/**
	 * 데이터베이스유형 관리 수정 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void updateIdxDbType(DiagnosisIdxDbType vo) throws Exception;
	
	/**
	 * 데이터베이스유형 관리 삭제 한다.
	 * @param vo DiagnosisMng
	 * @exception Exception
	 */    
	void deleteIdxDbType(DiagnosisIdxDbType vo) throws Exception;

	
}
