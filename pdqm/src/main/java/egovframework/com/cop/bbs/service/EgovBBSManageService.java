package egovframework.com.cop.bbs.service;

import java.util.List;
import java.util.Map;


/**
 * 게시물 관리를 위한 서비스 인터페이스  클래스
 * @author 공통서비스개발팀 이삼섭
 * @since 2009.06.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------      --------    ---------------------------
 *   2009.3.19  이삼섭          최초 생성
 *
 * </pre>
 */
public interface EgovBBSManageService {

    /**
     * 뉴스레터 수신 대상 수 조회
     * khyoon 2011.11.28
     * @param 
     * @throws Exception
     */
    public long selectNewsletterTargetListCnt() throws Exception;	

    /**
     * 뉴스레터 수신 대상 수 조회
     * khyoon 2011.11.28
     * @param 
     * @throws Exception
     */
    public List<String> selectNewsletterTargetList() throws Exception;    
    
    
    /**
     * 게시물 한 건을 삭제 한다.
     * 
     * @param Board
     * @throws Exception
     */
    public void deleteBoardArticle(Board Board) throws Exception;

    /**
     * 게시판에 게시물 또는 답변 게시물을 등록 한다.
     * 
     * @param Board
     * @throws Exception
     */
    public void insertBoardArticle(Board Board) throws Exception;

    /**
     * 게시물 대하여 상세 내용을 조회 한다.
     * 
     * @param boardVO
     * @return
     * @throws Exception
     */
    public BoardVO selectBoardArticle(BoardVO boardVO) throws Exception;

    /**
     * 조건에 맞는 게시물 목록을 조회 한다.
     * 
     * @param boardVO
     * @return
     * @throws Exception
     */
    public Map<String, Object> selectBoardArticles(BoardVO boardVO, String attrbFlag) throws Exception;

    /**
     * 게시물 한 건의 내용을 수정 한다.
     * 
     * @param Board
     * @throws Exception
     */
    public void updateBoardArticle(Board Board) throws Exception;

    /**
     * 방명록에 대한 목록을 조회 한다.
     * 
     * @param boardVO
     * @return
     * @throws Exception
     */
    public Map<String, Object> selectGuestList(BoardVO boardVO) throws Exception;

    /**
     * 방명록 내용을 삭제 한다.
     * 
     * @param boardVO
     * @throws Exception
     */
    public void deleteGuestList(BoardVO boardVO) throws Exception;

    /**
     * 방명록에 대한 패스워드를 조회 한다.
     * 
     * @param Board
     * @return
     * @throws Exception
     */
    public String getPasswordInf(Board Board) throws Exception;
    
    

}
