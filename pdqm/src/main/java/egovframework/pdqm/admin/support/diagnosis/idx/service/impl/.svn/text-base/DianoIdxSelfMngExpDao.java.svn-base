package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DianoIdxSelfMngExpVo;




	@Repository("dianoIdxSelfMngExpDao")
	public class DianoIdxSelfMngExpDao extends EgovComAbstractDAO {
		
		
		
		
		
		@SuppressWarnings("unchecked")
		public List selectDianoIdxSelfMngPList(DianoIdxSelfMngExpVo searchVO) throws Exception {
			
			return  listPaging("dianoIdxSelfMngExpDao.selectDianoIdxSelfMngExpResult",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
	    }
	   
		
		@SuppressWarnings("unchecked")
		public List selectDianoIdxSelfMngExcel(DianoIdxSelfMngExpVo searchVO) throws Exception {
			
			return  list("dianoIdxSelfMngExpDao.selectDianoIdxSelfMngExpResult",searchVO);
	    }
	   
		
		
		
		
		@SuppressWarnings("unchecked")
		public int selectDianoIdxSelfMngExpCnt(DianoIdxSelfMngExpVo searchVO) throws Exception {
	    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
	   	
			return    (Integer)getSqlMapClientTemplate().queryForObject("dianoIdxSelfMngExpDao.selectDianoIdxSelfMngExpCnt", searchVO);
	    }
		

		@SuppressWarnings("unchecked")
		public List selectDianoIdxSelfMngbox(DianoIdxSelfMngExpVo searchVO) throws Exception {
	    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
	   	
			return    list("dianoIdxSelfMngExpDao.selectDianoIdxSelfMngbox", searchVO);
	    }


		@SuppressWarnings("unchecked")
		public List selectDianoIdxSelfMngboxIdx(DianoIdxSelfMngExpVo searchVO) throws Exception {
	    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
	   	
			return    list("dianoIdxSelfMngExpDao.selectDianoIdxSelfMngboxIdx", searchVO);
	    }

		
		
		@SuppressWarnings("unchecked")
		public List selectDianoIdxSelfMngboxResult(DianoIdxSelfMngExpVo searchVO) throws Exception {
	    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
	   	
			return    list("dianoIdxSelfMngExpDao.selectDianoIdxSelfMngboxResult", searchVO);
	    }

		
		@SuppressWarnings("unchecked")
		public void DianoIdxSelfMngDelete(DianoIdxSelfMngExpVo searchVO) throws Exception {
	    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
	   	
			    delete("dianoIdxSelfMngExpDao.DianoIdxSelfMngDelete", searchVO);
	    }
	
		
		
		@SuppressWarnings("unchecked")
		public void DianoIdxSelfMngInsert(DianoIdxSelfMngExpVo searchVO) throws Exception {
	    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
	   	
			    insert("dianoIdxSelfMngExpDao.DianoIdxSelfMngInsert", searchVO);
	    }
		
	
		
		
		@SuppressWarnings("unchecked")
		public List selectDianoIdxSelfMngExpdetail(DianoIdxSelfMngExpVo searchVO) throws Exception {
	    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
	   	
			    return list("dianoIdxSelfMngExpDao.selectDianoIdxSelfMngExpdetail", searchVO);
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
