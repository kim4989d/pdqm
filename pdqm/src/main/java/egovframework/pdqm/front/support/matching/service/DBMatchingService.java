package egovframework.pdqm.front.support.matching.service;

import java.io.InputStream;
import java.util.List;


import egovframework.pdqm.front.support.matching.model.DBMatching;
import egovframework.pdqm.front.support.matching.model.DBMatchingInfoVO;


/**
 * 
 *DB 정보를 Excel로 로드 하는데 관한 서비스 인터페이스 클래스를 정의한다
 * @author 
 * @since 2009.04.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.04.01  이중호          최초 생성
 *
 * </pre>
 */
public interface DBMatchingService {
	/**
	 * DB 엑셀파일을 등록한다.
	 * @param dBMatchingInfoVO 
	 * @param file- DB 정보
	 * @throws Exception
	 */
	void insertDBExcel(InputStream file, DBMatchingInfoVO dBMatchingInfoVO) throws Exception;

	void insertDataBaseInfo(DBMatchingInfoVO dBMatchingInfoVO)throws Exception;

	void insertCodeInfo(DBMatchingInfoVO dBMatchingInfoVO ) throws Exception;

	void insertCodeExcel(InputStream inputStream, DBMatchingInfoVO dBMatchingInfoVO) throws Exception;

	List selectDBMatchigList(DBMatching Dbvo, String user) throws Exception;

}
