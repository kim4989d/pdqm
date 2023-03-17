package egovframework.pdqm.front.support.matching.service.impl;

import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.LoginVO;
import egovframework.pdqm.front.support.matching.model.DBMatching;
import egovframework.pdqm.front.support.matching.model.DBMatchingInfoVO;
import egovframework.pdqm.front.support.matching.service.DBMatchingService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;
import egovframework.rte.fdl.excel.EgovExcelService;


@Service("MatchingService")
public class DBMatchingServiceImpl  extends AbstractServiceImpl implements DBMatchingService {
	
	@Resource(name = "DBMatchingDAO")
	private DBMatchingDAO dBMatchingDAO;
	
    @Resource(name = "DBexcelService")
    private EgovExcelService dBexcelService;

    @Resource(name = "DBexcelServiceC")
    private EgovExcelService dBexcelServiceC;
    
	/**
	 *  DB 정보를 입력한다.
	 * @param dBMatchingInfoVO
	 * @throws Exception
	 */
	public void insertDataBaseInfo(DBMatchingInfoVO dBMatchingInfoVO)
			throws Exception {
		// TODO Auto-generated method stub
//		System.out.println(" ++++++++++++ insertDatabaseInfo 저장  +++++++++++++");
//		dBMatchingDAO.insertDatabaseInfo(dBMatchingInfoVO);		//insertDBExcel 함수로 옴겨 같이 Rollback되게함
	}
	
	/**
	 *  엑셀파일을 등록한다.
	 * @param file , dBMatchingInfoVO
	 * @throws Exception
	 */
	public void insertDBExcel(InputStream file,
			DBMatchingInfoVO dBMatchingInfoVO) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(" ++++++++++++ insertDatabaseInfo 저장  +++++++++++++");
		dBMatchingDAO.insertDatabaseInfo(dBMatchingInfoVO);
		System.out.println(" ++++++++++++ insertExcelZip 저장 시작 TABLE +++++++++++++"); 
		dBexcelService.uploadExcel("insertDBMatching.TABLES", file, 2, (long) 5000); 		
		System.out.println(" ++++++++++++ insertExcelZip 테이블저장 완료 +++++++++++++"); 

		dBMatchingDAO.insertDBExcel(dBMatchingInfoVO); //프로시져 실행
	}
	
	/**
	 *  code 정보를 입력한다.
	 * @param dBMatchingInfoVO
	 * @throws Exception
	 */
	public void insertCodeInfo(DBMatchingInfoVO dBMatchingInfoVO) throws Exception  {
		// TODO Auto-generated method stub
//		dBMatchingDAO.insertCodeInfo(dBMatchingInfoVO);	//insertCodeExcel 함수로 옴겨 같이 Rollback되게함
	}
	/**
	 *  code 엑셀파일 정보를 입력한다.
	 * @param dBMatchingInfoVO
	 * @throws Exception
	 */
	public void insertCodeExcel(InputStream file,
			DBMatchingInfoVO dBMatchingInfoVO) throws Exception {
		// TODO Auto-generated method stub
		
		dBMatchingDAO.insertCodeInfo(dBMatchingInfoVO);	
		
		dBexcelServiceC.uploadExcel("DBMatchingDAO.insertCODE", file, 2, (long) 5000); 
	}

	public List selectDBMatchigList(DBMatching Dbvo) throws Exception {
		// TODO Auto-generated method stub
        return dBMatchingDAO.selectDBMatchigList(Dbvo);
	}

	public List selectDBMatchigList(DBMatching Dbvo, String user)
			throws Exception {
		// TODO Auto-generated method stub
		Dbvo.setId(user);
        return dBMatchingDAO.selectDBMatchigList(Dbvo);
	}
}
