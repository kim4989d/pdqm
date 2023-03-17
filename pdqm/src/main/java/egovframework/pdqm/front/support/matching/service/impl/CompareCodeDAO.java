package egovframework.pdqm.front.support.matching.service.impl;

import java.util.List;
import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
//import egovframework.com.utl.fcc.service.EgovStringUtil;
import egovframework.pdqm.front.support.matching.model.CompareCodeVO;


@Repository("compareCodeDAO")
public class CompareCodeDAO extends EgovComAbstractDAO{
	Logger log = Logger.getLogger(this.getClass());

    @SuppressWarnings("unchecked")
//    public List<CompareCodeVO> selectCodeList(CompareCodeVO searchVO, ModelMap model) throws Exception {
//    	System.out.println("CompareCodeDAO.selectCodeList-----------3");
//    	log.debug(searchVO.getCode_info_nm());
//    	CompareCodeVO vo = new CompareCodeVO();
//    	vo.setDatabase_nm("TEST");
//    	List list = new ArrayList();
//    	list.add(vo);
//    	return list;
//    }
    
//	public List<CompareCodeVO> selectCodeList(CompareCodeVO searchVO, ModelMap model) throws Exception {
//		System.out.println("==========CompareCodeDAO.selectCodeList");
//		return listPaging("CompareCodeDAO.selectCodeList", searchVO,searchVO.getPageIndex()-1,searchVO.getPageSize());
//	}
    public List<CompareCodeVO> selectCodeList(CompareCodeVO searchVO, ModelMap model) throws Exception {
		System.out.println("==========compareCodeDAO.selectCodeList");
		return list("compareCodeDAO.selectCodeList", searchVO);
	}

	public int selectCodeListTotCnt(CompareCodeVO searchVO){
		System.out.println("==========compareCodeDAO.selectCodeListTotCnt");
		return (Integer)getSqlMapClientTemplate().queryForObject("compareCodeDAO.compareCodeListTotCnt", searchVO);
	}
/*	
    public List<CompareCodeVO> compareCodeList(CompareCodeVO searchVO, ModelMap model) throws Exception {
		System.out.println("==========compareCodeDAO.compareCodeList");
		return list("compareCodeDAO.selectCodeList", searchVO);
	}
	
	public int compareCodeListTotCnt(CompareCodeVO searchVO){
		System.out.println("==========compareCodeDAO.compareCodeListTotCnt");
		return (Integer)getSqlMapClientTemplate().queryForObject("compareCodeDAO.compareCodeListTotCnt", searchVO);
	}
*/	
	
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
