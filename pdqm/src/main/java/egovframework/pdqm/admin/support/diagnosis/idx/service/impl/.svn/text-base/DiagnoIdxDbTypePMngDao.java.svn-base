package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;



import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxDbTypePMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxDbTypePMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMngVO;

@Repository("diagnoIdxDbTypePMngDao")
public class DiagnoIdxDbTypePMngDao extends EgovComAbstractDAO {

	
    /**
	 * 데이터베이스유형 관리 목록 조회한다.
	 * @param diagnoIdxDbTypePMngVo DiagnoIdxDbTypePMngVo
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectIdxDbTypePMngList(DiagnoIdxDbTypePMngVo searchVO) throws Exception {
    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
    return  listPaging("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
    
    }
   
    
    
    
    /**
	 * 지표 및 특성 관리 총건수를 조회한다.
	 * @param vo DiagnoIdxDbTypePMngVo
	 * @return int
	 * @exception Exception
	 */
    public int selectIdxDbTypePMngListTotCnt(DiagnoIdxDbTypePMngVo searchVO) {
        return (Integer)getSqlMapClientTemplate().queryForObject("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngListTotCnt", searchVO);
    }	

   
    
    /**
	 * 지표대상 조회한다.
	 * @param searchMap
	 *            - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */

    public List selectDgnssIdxMasterList() throws Exception {
		return list("diagnoIdxDbTypePMngDAO.selectDgnssIdxMasterList", "");
	
	}

    
    
    
    
   public List  selectIdxDbTypePMngViewLeft(DiagnoIdxDbTypePMngVo searchVO) throws Exception {
	   return list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngViewLeft",searchVO);
	   
   }
   public List  selectIdxDbTypePMngViewRight(DiagnoIdxDbTypePMngVo searchVO) throws Exception {
	   return list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngViewRight",searchVO);
	   
   }
    
    
   public List   selectIdxDbTypePMngBox(DiagnoIdxDbTypePMngVo searchVO)throws Exception{
	   return list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngbox",searchVO);
   }
    
    
   public void deleteIdxDbTypePMng(DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
   throws Exception {
	   delete("diagnoIdxDbTypePMngDAO.deleteIdxDbTypePMng",searchVO);
   	
   }
   
   
   public void insertIdxDbTypePMng(DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
   throws Exception 
   {
	   insert("diagnoIdxDbTypePMngDAO.insertIdxDbTypePMng",searchVO);
	   
	   
   }
   public void updateIdxDbTypePMng(DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
   throws Exception 
   {
	   update("diagnoIdxDbTypePMngDAO.updateIdxDbTypePMng",searchVO);
	   
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