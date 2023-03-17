package egovframework.pdqm.front.support.diagnosis.idx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.sec.ram.service.EgovAuthorManageService;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;

import egovframework.pdqm.front.support.diagnosis.idx.model.IdxSelfDiag;
import egovframework.pdqm.front.support.diagnosis.idx.model.IdxSelfDiagVO;
import egovframework.pdqm.front.support.diagnosis.idx.service.IdxSelfDiagService;
import egovframework.pdqm.front.support.diagnosis.level.model.SelfDiagVO;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

@Service("idxSelfDiagService")
public class IdxSelfDiagServiceImpl extends AbstractServiceImpl implements IdxSelfDiagService {
    
	@Resource(name="idxSelfDiagDAO")
    private IdxSelfDiagDAO idxSelfDiagDAO ;

	public List getNewIdxResultId( IdxSelfDiagVO searchVO ) {
		return idxSelfDiagDAO.getNewIdxResultId( searchVO ) ;
	}
	
	public List selectIngIdxDgnssId( IdxSelfDiagVO searchVO ) {
		return idxSelfDiagDAO.selectIngIdxDgnssId( searchVO ) ;
	}

	public List selectCntIdxDec( IdxSelfDiagVO searchVO ) {
		return idxSelfDiagDAO.selectCntIdxDec( searchVO ) ;
	}

	public List selectIdxDgnssList( IdxSelfDiagVO searchVO ) {
		return idxSelfDiagDAO.selectIdxDgnssList( searchVO ) ;
	}

	public void insertIdxDgnss1Result( IdxSelfDiag vo ) {
		idxSelfDiagDAO.insertIdxDgnss1Result( vo ) ;
	}
	
	public void insertIdxDgnss2Result( IdxSelfDiag vo ) {
		idxSelfDiagDAO.insertIdxDgnss2Result( vo ) ;
	}

	public void insertIdxDgnss3Result( IdxSelfDiag vo ) {
		idxSelfDiagDAO.insertIdxDgnss3Result( vo ) ;
	}

	public void insertIdxDgnss4Result( IdxSelfDiag vo ) {
		idxSelfDiagDAO.insertIdxDgnss4Result( vo ) ;
	}
	
	public void insertIdxDgnss5Result( IdxSelfDiag vo ) {
		idxSelfDiagDAO.insertIdxDgnss5Result( vo ) ;
	}

	public void updateIdxDgnss6Result( IdxSelfDiag vo ) {
		idxSelfDiagDAO.updateIdxDgnss6Result( vo ) ;
	}

	public List selectIdxDgnss1Result( IdxSelfDiagVO searchVO ) {
		return idxSelfDiagDAO.selectIdxDgnss1Result( searchVO ) ;
	}

	public List selectIdxDgnss2Result( IdxSelfDiagVO searchVO ) {
		return idxSelfDiagDAO.selectIdxDgnss2Result( searchVO ) ;
	}

	public List selectIdxDgnss3Result( IdxSelfDiagVO searchVO ) {
		return idxSelfDiagDAO.selectIdxDgnss3Result( searchVO ) ;
	}
}
