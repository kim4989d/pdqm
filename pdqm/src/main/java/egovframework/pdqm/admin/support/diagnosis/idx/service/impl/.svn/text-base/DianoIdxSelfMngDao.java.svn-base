package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DianoIdxSelfMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.dianoIdxSelfMngPVo;





@Repository("dianoIdxSelfMngDao")
public class DianoIdxSelfMngDao extends EgovComAbstractDAO {
	
	
	
	
	@SuppressWarnings("unchecked")
	public int selectDianoIdxSelfMngTotalcnt(DianoIdxSelfMngVo searchVO) throws Exception {
    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
   	
		return    (Integer)getSqlMapClientTemplate().queryForObject("dianoIdxSelfMngDao.selectDianoIdxSelfMngTotalcnt", searchVO);
    }
   
	
	
	/**
	 * 지표 및 특성 관리 목록 조회한다.
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectDianoIdxSelfMngList(DianoIdxSelfMngVo searchVO) throws Exception {
       // return list("diagnosisMngDAO.selectDiagnosisMngList", searchVO);
        return listPaging("dianoIdxSelfMngDao.selectDianoIdxSelfMngList",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
        
    }
    
    
    
    @SuppressWarnings("unchecked")
	public List selectDianoIdxSelfMngbox(DianoIdxSelfMngVo searchVO) throws Exception {
       
          return  list("dianoIdxSelfMngDao.selectDianoIdxSelfMngbox", searchVO);
    }
    
    
    
    
    @SuppressWarnings("unchecked")
	public List selectDianoIdxSelfMngDb(DianoIdxSelfMngVo searchVO) throws Exception {
       
          return  list("dianoIdxSelfMngDao.selectDianoIdxSelfMngDb", searchVO);
    }
    
    
    @SuppressWarnings("unchecked")
	public List selectDianoIdxSelfMngDb2(DianoIdxSelfMngVo searchVO) throws Exception {
       
          return  list("dianoIdxSelfMngDao.selectDianoIdxSelfMngDb2", searchVO);
    }
    
    
    
    
    
    @SuppressWarnings("unchecked")
	public List selectDianoIdxSelfMngSflag(DianoIdxSelfMngVo searchVO) throws Exception {
       
          return  list("dianoIdxSelfMngDao.selectDianoIdxSelfMngSflag", searchVO);
    }
    
    
    
    @SuppressWarnings("unchecked")
	public void DianoIdxSelfMngInsert(DianoIdxSelfMngVo searchVO) throws Exception {
    
    	insert("dianoIdxSelfMngDao.DianoIdxSelfMngInsert", searchVO);
    
    
    }
    
    
    @SuppressWarnings("unchecked")
	public void DianoIdxSelfMngUpdate(DianoIdxSelfMngVo searchVO) throws Exception {
    
    	update("dianoIdxSelfMngDao.DianoIdxSelfMngUpdate", searchVO);
    
    
    }
    
    
    @SuppressWarnings("unchecked")
	public void DianoIdxSelfMngCopySITM(DianoIdxSelfMngVo searchVO) throws Exception {
    
    	insert("dianoIdxSelfMngDao.DianoIdxSelfMngCopySITM", searchVO);
    
    
    }
    
    
    
    @SuppressWarnings("unchecked")
	public List selectDianoIdxSelfMngQList(DianoIdxSelfMngVo searchVO) throws Exception {
       
          return  list("dianoIdxSelfMngDao.selectDianoIdxSelfMngQList", searchVO);
    }
    
    
    
    


    @SuppressWarnings("unchecked")
	public List selectDianoIdxSelfMngQDetail(DianoIdxSelfMngVo searchVO) throws Exception {
       
          return  list("dianoIdxSelfMngDao.selectDianoIdxSelfMngQDetail", searchVO);
    }
    
    
    


    @SuppressWarnings("unchecked")
	public void DianoIdxSelfMngCopy2(DianoIdxSelfMngVo searchVO) throws Exception {
       
            insert("dianoIdxSelfMngDao.DianoIdxSelfMngCopy2", searchVO);
    }
    
    
    
    
    @SuppressWarnings("unchecked")
	public int selectDianoIdxSelfMngCopyCheck(DianoIdxSelfMngVo searchVO) throws Exception {
       
    	return    (Integer)getSqlMapClientTemplate().queryForObject("dianoIdxSelfMngDao.selectDianoIdxSelfMngCopyCheck", searchVO);
    }
    
    
    @SuppressWarnings("unchecked")
	public void DianoIdxSelfMngCopyMANAGE(DianoIdxSelfMngVo searchVO) throws Exception {
       
            insert("dianoIdxSelfMngDao.DianoIdxSelfMngCopyMANAGE", searchVO);
    }
    
    @SuppressWarnings("unchecked")
	public void DianoIdxSelfMngCopyCheckMANAGE(DianoIdxSelfMngVo searchVO) throws Exception {
       
            insert("dianoIdxSelfMngDao.DianoIdxSelfMngCopyCheckMANAGE", searchVO);
    }
    
    
    
    
    
    @SuppressWarnings("unchecked")
	public void DianoIdxSelfMngCopyCheckSITM(DianoIdxSelfMngVo searchVO) throws Exception {
            insert("dianoIdxSelfMngDao.DianoIdxSelfMngCopyCheckSITM", searchVO);
    }
    
    
    
    @SuppressWarnings("unchecked")
	public int  DianoIdxSelfMngSITMIdMax(DianoIdxSelfMngVo searchVO) throws Exception {
    	return  (Integer)getSqlMapClientTemplate().queryForObject("dianoIdxSelfMngDao.DianoIdxSelfMngSITMIdMax", searchVO);
    	
    }
    
    
    
    
    @SuppressWarnings("unchecked")
	public int  DianoIdxSelfMngMANAGEIdMax(DianoIdxSelfMngVo searchVO) throws Exception {
    	return  (Integer)getSqlMapClientTemplate().queryForObject("dianoIdxSelfMngDao.DianoIdxSelfMngMANAGEIdMax", searchVO);
    	
    }
    
    
    @SuppressWarnings("unchecked")
	public void  selectDianoIdxSelfMngCopyQInsert(DianoIdxSelfMngVo searchVO) throws Exception {
    	 insert("dianoIdxSelfMngDao.selectDianoIdxSelfMngCopyQInsert", searchVO);
    	
    }
    
    
    @SuppressWarnings("unchecked")
	public void  selectDianoIdxSelfMngCopyQDelete(DianoIdxSelfMngVo searchVO) throws Exception {
    	 delete("dianoIdxSelfMngDao.selectDianoIdxSelfMngCopyQDelete", searchVO);
    }
    
    
    
    @SuppressWarnings("unchecked")
	public void  selectDianoIdxSelfMngCopyDelete(DianoIdxSelfMngVo searchVO) throws Exception {
    	 delete("dianoIdxSelfMngDao.selectDianoIdxSelfMngCopyDelete", searchVO);
    	
    }
    
    
    @SuppressWarnings("unchecked")
	public void  selectDianoIdxSelfMngCopySITMDelete(DianoIdxSelfMngVo searchVO) throws Exception {
    	 delete("dianoIdxSelfMngDao.selectDianoIdxSelfMngCopySITMDelete", searchVO);
    	
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
