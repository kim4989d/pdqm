package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxDbTypePMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxWghtvalMngVo;

@Repository("diagnoIdxWghtvalMngDao")
public class DiagnoIdxWghtvalMngDao extends EgovComAbstractDAO {
	
	
	
	public List selectIdxWghtvalMngListIndex(DiagnoIdxWghtvalMngVo searchVO) throws Exception {
		System.out.println("==========daoselect");
     return list("diagnoIdxWghtvalMngDao.selectIdxWghtvalMngList", searchVO);
	//return listPaging("diagnoIdxWghtvalMngDao.selectIdxWghtvalMngList2",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
	}
	
	
	
	public int selectIdxWghtvalMngListTotCnt (DiagnoIdxWghtvalMngVo searchVO, ModelMap model){
		return (Integer)getSqlMapClientTemplate().queryForObject("diagnoIdxWghtvalMngDao.selectIdxWghtvalMngListTotCnt", searchVO);
	}
	
	
	public List selectIdxWghtvalMngLeft (DiagnoIdxWghtvalMngVo searchVO, ModelMap model){
		return list("diagnoIdxWghtvalMngDao.selectIdxWghtvalMngLeft", searchVO);
	}
	
	public List selectIdxWghtvalMngRight (DiagnoIdxWghtvalMngVo searchVO, ModelMap model){
		return list("diagnoIdxWghtvalMngDao.selectIdxWghtvalMngRight", searchVO);
	}
	

	public List selectIdxDbTypePMngBox (DiagnoIdxWghtvalMngVo searchVO, ModelMap model){
		return list("diagnoIdxWghtvalMngDao.selectIdxWghtvalMngBox", searchVO);
	}
	
	
	
	public void selectIdxWghtvalMngDel (DiagnoIdxWghtvalMngVo searchVO, ModelMap model){
		 delete("diagnoIdxWghtvalMngDao.selectIdxWghtvalMngDel", searchVO);
	}
	
	
	
	public void selectIdxWghtvalMngInsert(DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
	throws Exception{
		   insert("diagnoIdxWghtvalMngDao.selectIdxWghtvalMngInsert",searchVO);
				
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
