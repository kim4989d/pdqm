package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.sec.ram.service.AuthorManage;
import egovframework.com.sec.ram.service.AuthorManageVO;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;
import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxDbType;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxCommonVo;

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

@Repository("diagnosisIdxDbTypeMngPointDAO")
public class DiagnosisIdxDbTypeMngPointDAO extends EgovComAbstractDAO {

	
    /**
	 * 데이터베이스유형 관리 목록 조회한다.
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectIdxDbTypeMngPointList(DiagnosisIdxCommonVo searchVO) throws Exception {
       // return list("diagnosisMngDAO.selectDiagnosisMngList", searchVO);
    	return listPaging("diagnosisIdxDbTypeMngPointDAO.selectIdxDbTypeMngPointList",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
        
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
