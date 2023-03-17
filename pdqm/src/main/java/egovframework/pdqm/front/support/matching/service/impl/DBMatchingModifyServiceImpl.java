package egovframework.pdqm.front.support.matching.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.pdqm.front.support.matching.model.DBInfoVO;
import egovframework.pdqm.front.support.matching.service.DBMatchingModifyService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

@Service("MatchingModifyService")
public class DBMatchingModifyServiceImpl  extends AbstractServiceImpl implements DBMatchingModifyService {

	@Resource(name = "DBMatchingDAO")
	private DBMatchingDAO dBMatchingDAO;
	
	public void updateDBInfo(DBInfoVO dBInfoVO) throws Exception {
		// TODO Auto-generated method stub

		System.out.println("+++++++++ltk+++++++++[ getInstt_nm ] :" + dBInfoVO.getInstt_nm() );
		System.out.println("+++++++++ltk+++++++++[ getDatabase_nm ] :" + dBInfoVO.getDatabase_nm() );
		System.out.println("+++++++++ltk+++++++++[ getDatabase_id ] :" + dBInfoVO.getDatabase_id() );
		System.out.println("+++++++++ltk+++++++++[ getDatabase_dc ] :" + dBInfoVO.getDatabase_dc() );

		System.out.println("+++++++++ ltk +++++++ DBMatchingModifyServiceImpl : updateDBInfo ");	
		dBMatchingDAO.updateDBInfo(dBInfoVO);
	}

	public void deleteDBInfo(DBInfoVO dBInfoVO) throws Exception{
		// TODO Auto-generated method stub
		System.out.println("+++++++++ltk+++++++++[ getInstt_nm ] :" + dBInfoVO.getInstt_nm() );
		System.out.println("+++++++++ltk+++++++++[ getDatabase_nm ] :" + dBInfoVO.getDatabase_nm() );
		System.out.println("+++++++++ltk+++++++++[ getDatabase_id ] :" + dBInfoVO.getDatabase_id() );
		System.out.println("+++++++++ltk+++++++++[ getDatabase_dc ] :" + dBInfoVO.getDatabase_dc() );
		
		System.out.println("+++++++++ ltk +++++++ DBMatchingModifyServiceImpl : deleteDBInfo ");	
		dBMatchingDAO.deleteDBInfo(dBInfoVO);
	}

}
