package egovframework.com.uss.olh.faq.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.com.uss.olh.faq.service.FaqManageDefaultVO;
import egovframework.com.uss.olh.faq.service.FaqManageVO;



/**
 * 
 * FAQ를 처리하는 DAO 클래스
 * @author 신은영
 * @since 2011.11.22
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------  -------- ---------------------------
 *  2011.11.22 신은영          최초생성
 *
 * </pre>
 */
@Repository("FaqManageDAO")
public class FaqManageDAO extends EgovComAbstractDAO {


    /**
	 * FAQ 글 목록에 대한 상세내용을 조회한다.
	 * @param vo
	 * @return 조회한 글
	 * @exception Exception
	 */
    public FaqManageVO selectFaqListDetail(FaqManageVO vo) throws Exception {
    	
        return (FaqManageVO) selectByPk("FaqManageDAO.selectFaqListDetail", vo);
        
    }

	/**
	 * FAQ 조회수를 수정한다.
	 * @param vo
	 * @exception Exception
	 */
    public void updateFaqInqireCo(FaqManageVO vo) throws Exception {
    	
        update("FaqManageDAO.updateFaqInqireCo", vo);
        
    }

    /**
	 * FAQ 글 목록을 조회한다.
	 * @param searchVO
	 * @return 글 목록
	 * @exception Exception
	 */
    public List selectFaqList(FaqManageDefaultVO searchVO) throws Exception {
    	
        return list("FaqManageDAO.selectFaqList", searchVO);
        
    }

    /**
	 * FAQ 글 총 갯수를 조회한다.
	 * @param searchVO
	 * @return 글 총 갯수
	 */
    public int selectFaqListTotCnt(FaqManageDefaultVO searchVO) {
    	
        return (Integer)getSqlMapClientTemplate().queryForObject("FaqManageDAO.selectFaqListTotCnt", searchVO);
        
    }
    
	/**
	 * FAQ 글을 등록한다.
	 * @param vo
	 * @exception Exception
	 */
    public void insertFaqCn(FaqManageVO vo) throws Exception {
    	
        insert("FaqManageDAO.insertFaqCn", vo);
        
    }
    
	/**
	 * FAQ 글을 수정한다.
	 * @param vo
	 * @exception Exception
	 */
    public void updateFaqCn(FaqManageVO vo) throws Exception {
    	
        update("FaqManageDAO.updateFaqCn", vo);
        
    }

	/**
	 * FAQ 글을 삭제한다.
	 * @param vo
	 * @exception Exception
	 */
    public void deleteFaqCn(FaqManageVO vo) throws Exception {
    	
        delete("FaqManageDAO.deleteFaqCn", vo);
        
    }

/** sey : selectFaq 추가 start **/
    /**
	 * FAQ 제목과 내용을 조회한다.
	 * @author 신은영
	 * @param vo
	 * @return 조회한 글
	 * @exception Exception
	 */
    public List selectFaq(FaqManageVO vo) throws Exception {
    	
        return list("FaqManageDAO.selectFaq", vo);
        
    }
/** sey : selectFaq 추가 end **/

    

}
