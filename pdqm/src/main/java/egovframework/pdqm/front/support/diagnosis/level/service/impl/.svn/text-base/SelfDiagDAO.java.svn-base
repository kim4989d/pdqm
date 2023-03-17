package egovframework.pdqm.front.support.diagnosis.level.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.front.support.diagnosis.level.model.SelfDiag;
import egovframework.pdqm.front.support.diagnosis.level.model.SelfDiagVO;

@Repository("selfDiagDAO")
public class SelfDiagDAO extends EgovComAbstractDAO {
	
	@SuppressWarnings("unchecked")
    public List getNewLevelResultId( SelfDiagVO searchVO ) {
    	return list( "selfDiagDAO.getNewLevelResultId", searchVO ) ;
    }

	public List selectLevelDgnssId( SelfDiagVO searchVO ) {
		return list( "selfDiagDAO.selectLevelDgnssId", searchVO ) ;
	}
	
	public List selectUpperInsttSeCode( SelfDiagVO searchVO ) {
    	return list( "selfDiagDAO.selectUpperInsttSeCode", searchVO ) ;
    	//return ( List )getSqlMapClientTemplate().queryForObject("selfDiagDAO.selectUpperInsttSeCode", searchVO);
    }
	
	public List selectInsttSeCode( SelfDiagVO searchVO ) {
    	return list( "selfDiagDAO.selectInsttSeCode", searchVO ) ;
    }

    public List selectDatabaseTyId( SelfDiagVO searchVO ) {
    	return list( "selfDiagDAO.selectDatabaseTyId", searchVO ) ;
    }	

    public List selectDatabaseScaleCode( SelfDiagVO searchVO ) {
    	return list( "selfDiagDAO.selectDatabaseScaleCode", searchVO ) ;
    }
    
    public List selectCntDgnssTrget( SelfDiagVO searchVO ) {
    	return list( "selfDiagDAO.selectCntDgnssTrget", searchVO ) ;
    }
    
    public List selectListDgnssTrget( SelfDiagVO searchVO ) {
    	return list( "selfDiagDAO.selectListDgnssTrget", searchVO ) ;
    }
    
    public List selectDgnssTrget1Result( SelfDiagVO searchVO ) {
    	return list( "selfDiagDAO.selectDgnssTrget1Result", searchVO ) ;
    }
    
    public List selectCompResult( SelfDiagVO searchVO ) {
    	return list( "selfDiagDAO.selectCompResult", searchVO ) ;
    }
    
	public List selectDetailResult( SelfDiagVO searchVO ) {
		return list( "selfDiagDAO.selectDetailResult", searchVO ) ;
	}
	
	public List selectIngIdxDgnssId( SelfDiagVO searchVO ) {
		return list( "selfDiagDAO.selectIngIdxDgnssId", searchVO ) ;
	}
	
    /**
	 * 관리수준 자가진단 : 0. 수준진단 결과 저장
	 * @param vo DiagLevelSelf2
	 * @exception Exception
	 */
	public void insertDgnssTrget1Result( SelfDiag vo ) throws Exception {
    	insert( "selfDiagDAO.insertDgnssTrget1Result", vo ) ;
    }
    
    /**
	 * 관리수준 자가진단 : 1. 수준진단 답변결과 저장
	 * @param vo DiagLevelSelf2
	 * @exception Exception
	 */    
	public void insertDgnssTrget2Result( SelfDiag vo ) throws Exception {
		insert( "selfDiagDAO.insertDgnssTrget2Result", vo );
	}
    
    /**
	 * 관리수준 자가진단 : 2. 결과 담기(문항)
	 * @param vo DiagLevelSelf2
	 * @exception Exception
	 */    
	public void insertDgnssTrget3Result( SelfDiag vo ) throws Exception {
		insert( "selfDiagDAO.insertDgnssTrget3Result", vo );
	}
	
	/**
	 * 관리수준 자가진단 : 3. 결과 담기(진단관점)
	 * @param vo DiagLevelSelf2
	 * @exception Exception
	 */    
	public void insertDgnssTrget4Result( SelfDiag vo ) throws Exception {
		insert( "selfDiagDAO.insertDgnssTrget4Result", vo );
	}
	
	/**
	 * 관리수준 자가진단 : 4.결과 담기(진단대상)
	 * @param vo DiagLevelSelf2
	 * @exception Exception
	 */    
	public void insertDgnssTrget5Result( SelfDiag vo ) throws Exception {
		insert( "selfDiagDAO.insertDgnssTrget5Result", vo );
	}
	
}
