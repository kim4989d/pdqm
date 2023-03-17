package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.sec.ram.service.AuthorManage;
import egovframework.com.sec.ram.service.AuthorManageVO;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;
import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxDbType;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxDbTypeVO;

/**
 * 지표 및 특성 관리  DAO 클래스를 정의한다.
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

@Repository("diagnosisIdxDbTypeDAO")
public class DiagnosisIdxDbTypeDAO extends EgovComAbstractDAO {

    /**
	 * 데이터베이스유형 관리 목록 조회한다.
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectIdxDbTypeList(DiagnosisIdxDbTypeVO searchVO) throws Exception {
       // return list("diagnosisMngDAO.selectDiagnosisMngList", searchVO);
    	return listPaging("diagnosisIdxDbTypeDAO.selectIdxDbTypeList",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
        
    }

    
    /**
	 * 데이터베이스유형 관리 총건수를 조회한다.
	 * @param vo DiagnosisMngVO
	 * @return int
	 * @exception Exception
	 */
    public int selectIdxDbTypeListTotCnt(DiagnosisIdxDbTypeVO searchVO) {
        return (Integer)getSqlMapClientTemplate().queryForObject("diagnosisIdxDbTypeDAO.selectIdxDbTypeListTotCnt", searchVO);
    }	

	/**
	 * 데이터베이스유형 관리  등록 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void insertIdxDbType(DiagnosisIdxDbType vo){
		insert("diagnosisIdxDbTypeDAO.insertIdxDbType", vo);
	}
	
	/**
	 * 데이터베이스유형 관리 상세 조회한다.
	 * @param vo
	 *            - 조회할 정보가 담긴 SupportUserVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public DiagnosisIdxDbType updateIdxDbTypeView(DiagnosisIdxDbType vo) throws Exception {
		return (DiagnosisIdxDbType) selectByPk("diagnosisIdxDbTypeDAO.updateIdxDbTypeView", vo);
	}
	
	/**
	 * 데이터베이스유형 수정 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void updateIdxDbType(DiagnosisIdxDbType  vo){
		update("diagnosisIdxDbTypeDAO.updateIdxDbType", vo);
	}
	
	/**
	 * 데이터베이스유형 관리 삭제 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void deleteIdxDbType(DiagnosisIdxDbType  vo){
		update("diagnosisIdxDbTypeDAO.deleteIdxDbType", vo);
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
