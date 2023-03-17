package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.idx.model.dianoIdxSelfMngPVo;;

@Repository("dianoIdxSelfMngPDao")
public class DianoIdxSelfMngPDao extends EgovComAbstractDAO {
	
	
	
	@SuppressWarnings("unchecked")
	public List selectDianoIdxSelfMngPList(dianoIdxSelfMngPVo searchVO) throws Exception {
    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
		//return  list("dianoIdxSelfMngPDao.selectDianoIdxSelfMngPList", searchVO);
		
		
		return  listPaging("dianoIdxSelfMngPDao.selectDianoIdxSelfMngPList",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
    }
   
	
	
	@SuppressWarnings("unchecked")
	public int selectDianoIdxSelfMngTotalcnt(dianoIdxSelfMngPVo searchVO) throws Exception {
    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
   	
		return    (Integer)getSqlMapClientTemplate().queryForObject("dianoIdxSelfMngPDao.selectDianoIdxSelfMngTotalcnt", searchVO);
    }
   

	@SuppressWarnings("unchecked")
	public List selectDianoIdxSelfMngbox(dianoIdxSelfMngPVo searchVO) throws Exception {
    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
   	
		return    list("dianoIdxSelfMngPDao.selectDianoIdxSelfMngbox", searchVO);
    }


	@SuppressWarnings("unchecked")
	public List selectDianoIdxSelfMngboxIdx(dianoIdxSelfMngPVo searchVO) throws Exception {
    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
   	
		return    list("dianoIdxSelfMngPDao.selectDianoIdxSelfMngboxIdx", searchVO);
    }

	
	
	@SuppressWarnings("unchecked")
	public List selectDianoIdxSelfMngboxResult(dianoIdxSelfMngPVo searchVO) throws Exception {
    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
   	
		return    list("dianoIdxSelfMngPDao.selectDianoIdxSelfMngboxResult", searchVO);
    }

	

	@SuppressWarnings("unchecked")
	public void DianoIdxSelfMngInsert(dianoIdxSelfMngPVo searchVO) throws Exception {
    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
   	   insert("dianoIdxSelfMngPDao.DianoIdxSelfMngInsert", searchVO);
    }

	
	@SuppressWarnings("unchecked")
	public List DianoIdxSelfMngView(dianoIdxSelfMngPVo searchVO) throws Exception {
   	return    list("dianoIdxSelfMngPDao.DianoIdxSelfMngView", searchVO);
    }
	
	
	
	@SuppressWarnings("unchecked")
	public void DianoIdxSelfMngdelete(dianoIdxSelfMngPVo searchVO) throws Exception {
    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
   	   delete("dianoIdxSelfMngPDao.DianoIdxSelfMngdelete", searchVO);
   	   
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
