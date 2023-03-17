package egovframework.com.cmm.service;

import java.util.List;
import java.util.Map;

import egovframework.com.cmm.ComCodeVO;
import egovframework.com.cmm.ComDefaultCodeVO;
import egovframework.com.sym.ccm.cca.service.CmmnCode;



/**
 * 
 * 공통코드등 전체 업무에서 공용해서 사용해야 하는 서비스를 정의하기 위한 서비스 인터페이스 
 * @author 공통서비스 개발팀 이삼섭
 * @since 2009.04.01
 * @version 1.0
 * @see
 *@version 1.0
 *@
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.03.11  이삼섭          최초 생성
 *
 * </pre>
 */
public interface EgovCmmUseService {
	
    /**
     * 공통코드를 조회한다.
     * 
     * @param vo
     * @return List(코드)
     * @throws Exception
     */
    public List<CmmnDetailCode> selectCmmCodeDetail(ComDefaultCodeVO vo) throws Exception;

    /**
     * khyoon 공통분류코드를 조회한다. 2011.10.26
     * 
     * @param vo
     * @return List(코드)
     * @throws Exception
     */
    public List<CmmnCode> selectCmmCode(ComCodeVO vo) throws Exception;
    
    /**
     * khyoon ComCodeVO의 리스트를 받아서 여러개의 코드 리스트를 맵에 담아서 리턴한다. 2011.10.26
     * 
     * @param voList
     * @return Map(코드)
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    public Map<String, List<CmmnCode>> selectCmmCodes(List voList) throws Exception;
    
    
    /**
     * ComDefaultCodeVO의 리스트를 받아서 여러개의 코드 리스트를 맵에 담아서 리턴한다.
     * 
     * @param voList
     * @return Map(코드)
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    public Map<String, List<CmmnDetailCode>> selectCmmCodeDetails(List voList) throws Exception;

    /**
     * 조직정보를 코드형태로 리턴한다.
     * 
     * @param 조회조건정보 vo
     * @return 조직정보 List
     * @throws Exception
     */
    public List<CmmnDetailCode> selectOgrnztIdDetail(ComDefaultCodeVO vo) throws Exception;

    /**
     * 그룹정보를 코드형태로 리턴한다.
     * 
     * @param 조회조건정보 vo
     * @return 그룹정보 List
     * @throws Exception
     */
    public List<CmmnDetailCode> selectGroupIdDetail(ComDefaultCodeVO vo) throws Exception;
}
