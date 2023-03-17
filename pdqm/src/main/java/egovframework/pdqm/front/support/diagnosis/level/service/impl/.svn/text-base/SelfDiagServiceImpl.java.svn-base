package egovframework.pdqm.front.support.diagnosis.level.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.sec.ram.service.EgovAuthorManageService;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;

import egovframework.pdqm.front.support.diagnosis.level.model.SelfDiag;
import egovframework.pdqm.front.support.diagnosis.level.model.SelfDiagVO;
import egovframework.pdqm.front.support.diagnosis.level.service.SelfDiagService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

@Service("selfDiagService")
public class SelfDiagServiceImpl extends AbstractServiceImpl implements SelfDiagService {
    
	@Resource(name="selfDiagDAO")
    private SelfDiagDAO selfDiagDAO ;

    public List getNewLevelResultId( SelfDiagVO searchVO ) {
    	return selfDiagDAO.getNewLevelResultId( searchVO ) ;
    }
    
	public List selectLevelDgnssId( SelfDiagVO searchVO ) throws Exception {
		return selfDiagDAO.selectLevelDgnssId( searchVO ) ;
	}
	
    public List selectUpperInsttSeCode( SelfDiagVO searchVO ) throws Exception {
    	return selfDiagDAO.selectUpperInsttSeCode( searchVO ) ;
    }
    
    public List selectInsttSeCode( SelfDiagVO searchVO ) throws Exception {
    	return selfDiagDAO.selectInsttSeCode( searchVO ) ;
    }

    public List selectDatabaseTyId( SelfDiagVO searchVO ) {
		return selfDiagDAO.selectDatabaseTyId( searchVO ) ;
	}
    
    public List selectDatabaseScaleCode( SelfDiagVO searchVO ) {
		return selfDiagDAO.selectDatabaseScaleCode( searchVO ) ;
	}
    
    public List selectCntDgnssTrget( SelfDiagVO searchVO ) {
		return selfDiagDAO.selectCntDgnssTrget( searchVO ) ;
	}
    
    public List selectListDgnssTrget( SelfDiagVO searchVO ) {
		return selfDiagDAO.selectListDgnssTrget( searchVO ) ;
	}
    
    public List selectDgnssTrget1Result( SelfDiagVO searchVO ) {
    	return selfDiagDAO.selectDgnssTrget1Result( searchVO ) ;
    }
    
    public List selectCompResult( SelfDiagVO searchVO ) {
    	return selfDiagDAO.selectCompResult( searchVO ) ;
    }
	public List selectDetailResult( SelfDiagVO searchVO ) {
		return selfDiagDAO.selectDetailResult( searchVO ) ;
	}
    
	public List selectIngIdxDgnssId( SelfDiagVO searchVO ) {
		return selfDiagDAO.selectIngIdxDgnssId( searchVO );
	}
    
	public void insertDgnssTrget1Result( SelfDiag vo ) throws Exception {
    	selfDiagDAO.insertDgnssTrget1Result( vo );
    }
    public void insertDgnssTrget2Result( SelfDiag vo ) throws Exception {
		selfDiagDAO.insertDgnssTrget2Result( vo );
	}
	public void insertDgnssTrget3Result( SelfDiag vo ) throws Exception {
		selfDiagDAO.insertDgnssTrget3Result( vo );
	}
	public void insertDgnssTrget4Result( SelfDiag vo ) throws Exception {
		selfDiagDAO.insertDgnssTrget4Result( vo );
	}
	public void insertDgnssTrget5Result( SelfDiag vo ) throws Exception {
		selfDiagDAO.insertDgnssTrget5Result( vo );
	}
	
}
