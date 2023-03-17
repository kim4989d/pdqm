package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;



import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxDbTypePMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxDbTypePMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMngVO;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DianoIdxQesMngVo;

@Repository("dianoIdxQesMngDao")
public class DianoIdxQesMngDao extends EgovComAbstractDAO {

	
	
	
    /**
	 * 데이터베이스유형 관리 목록 조회한다.
	 * @param diagnoIdxDbTypePMngVo DiagnoIdxDbTypePMngVo
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectIdxDbTypePMngList(DiagnoIdxDbTypePMngVo searchVO) throws Exception {
    //	return	    list("diagnoIdxDbTypePMngDAO.selectIdxDbTypePMngList", searchVO);
    return  listPaging("dianoIdxQesMngDao",searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
    
    }
   
    
    
    
    /**
	 * 지표 및 특성 관리 총건수를 조회한다.
	 * @param vo DiagnoIdxDbTypePMngVo
	 * @return int
	 * @exception Exception
	 */
    public int selectIdxDbTypePMngListTotCnt(DiagnoIdxDbTypePMngVo searchVO) {
        return (Integer)getSqlMapClientTemplate().queryForObject("dianoIdxQesMngDao", searchVO);
    }	

   
    
    /**
	 * 지표대상 조회한다.
	 * @param searchMap
	 *            - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */

    public List selectDgnssIdxMasterList() throws Exception {
		return list("dianoIdxQesMngDao", "");
	
	}

    
    
    
    
   public List  selectIdxDbTypePMngViewLeft(DiagnoIdxDbTypePMngVo searchVO) throws Exception {
	   return list("dianoIdxQesMngDao",searchVO);
	   
   }
   public List  selectIdxDbTypePMngViewRight(DiagnoIdxDbTypePMngVo searchVO) throws Exception {
	   return list("dianoIdxQesMngDao",searchVO);
	   
   }
    
    
   public List   selectIdxDbTypePMngBox(DiagnoIdxDbTypePMngVo searchVO)throws Exception{
	   return list("dianoIdxQesMngDao",searchVO);
   }
    
    
   public void deleteIdxDbTypePMng(DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
   throws Exception {
	   delete("dianoIdxQesMngDao",searchVO);
   	
   }
   
   
   public void insertIdxDbTypePMng(DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
   throws Exception 
   {
	   insert("dianoIdxQesMngDao",searchVO);
	   
	   
   }
   public void updateIdxDbTypePMng(DiagnoIdxDbTypePMngVo searchVO, ModelMap model)
   throws Exception 
   {
	   update("dianoIdxQesMngDao",searchVO);
	   
   }
   
   
   public List   selectDianoIdxQesMngList(DianoIdxQesMngVo searchVO)throws Exception{
	   return list("dianoIdxQesMngDao.selectIdxQesMngList",searchVO);
   }
    
   
   
   public List   selectDianoIdxQesMngView(DianoIdxQesMngVo searchVO)throws Exception{
	   return list("dianoIdxQesMngDao.selectIdxQesMngView",searchVO);
   }
    
   
   public List   selectDianoIdxQesMngViewSearch(DianoIdxQesMngVo searchVO)throws Exception{
	   return list("dianoIdxQesMngDao.selectIdxQesMngViewSearch",searchVO);
   }
  
   
   
   
   public void   insertDianoIdxQesMng(DianoIdxQesMngVo searchVO)throws Exception{
	    insert("dianoIdxQesMngDao.insertIdxQesMng",searchVO);
   }
    
   
   public void   updateDianoIdxQesMng(DianoIdxQesMngVo searchVO)throws Exception{
	    update("dianoIdxQesMngDao.updataIdxQesMng",searchVO);
  }
   
   
   
   public List   selectIdxQesMngCaseAnswer(DianoIdxQesMngVo searchVO)throws Exception{
	   return list("dianoIdxQesMngDao.selectIdxQesMngCaseAnswer",searchVO);
   }
    
   public List   selectIdxQesMngCaseAnswerType(DianoIdxQesMngVo searchVO)throws Exception{
	   return list("dianoIdxQesMngDao.selectIdxQesMngCaseAnswerType",searchVO);
   }
   
   //답변
   public void   insertIdxQesMngCaseAnswerType(DianoIdxQesMngVo searchVO)throws Exception{
	    insert("dianoIdxQesMngDao.insertIdxQesMngCaseAnswer",searchVO);
   }
   
   //문항 
   public void   insertIdxQesMngCaseQesType(DianoIdxQesMngVo searchVO)throws Exception{
	    insert("dianoIdxQesMngDao.insertIdxQesMngCaseQesType",searchVO);
  }
   
   //문항 
   public int   selectIdxQesMngCaseAnswerMax(DianoIdxQesMngVo searchVO)throws Exception{
	    return (Integer)getSqlMapClientTemplate().queryForObject("dianoIdxQesMngDao.selectIdxQesMngCaseAnswerMax",searchVO);
  }
   
   

   //문항 
   public void   updateIdxQesMngCaseQes(DianoIdxQesMngVo searchVO)throws Exception{
	   delete("dianoIdxQesMngDao.updateIdxQesMngCaseQes",searchVO);
  }
   //문항 
   public void   deleteIdxQesMngCaseAnswer(DianoIdxQesMngVo searchVO)throws Exception{
	   delete("dianoIdxQesMngDao.deleteIdxQesMngCaseAnswer",searchVO);
  }
   
   
   
   //문항 
   public void   insertIdxQesMngCaseQesPoolDel(DianoIdxQesMngVo searchVO)throws Exception{
	   update("dianoIdxQesMngDao.insertIdxQesMngCaseQesPoolDel",searchVO);
  }
   
   
   
   
   
 //문항 
   public void   insertIdxQesMngCaseQesANSWERDel(DianoIdxQesMngVo searchVO)throws Exception{
	   update("dianoIdxQesMngDao.insertIdxQesMngCaseQesANSWERDel",searchVO);
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