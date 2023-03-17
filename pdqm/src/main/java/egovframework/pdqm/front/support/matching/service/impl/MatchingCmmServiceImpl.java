package egovframework.pdqm.front.support.matching.service.impl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import egovframework.pdqm.front.support.matching.model.COLInfoVO;
import egovframework.pdqm.front.support.matching.model.DBInfoAllVO;
import egovframework.pdqm.front.support.matching.model.DBInfoVO;
import egovframework.pdqm.front.support.matching.model.TBLInfoVO;
import egovframework.pdqm.front.support.matching.service.MatchingCmmService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;


@Service("matchingCmmService")
public class MatchingCmmServiceImpl extends AbstractServiceImpl implements MatchingCmmService {
	
    @Resource(name = "matchingCmmDAO")
    private MatchingCmmDAO matchingCmmDAO;

	public List<DBInfoVO> SearchAllDBInfoList(DBInfoVO dbInfoVO) throws Exception {
		// TODO Auto-generated method stub
		return matchingCmmDAO.searchAllDBInfoList(dbInfoVO);
	}
	public List<DBInfoAllVO> SearchAllDBInfoList(DBInfoAllVO dbInfoVO) throws Exception {
		// TODO Auto-generated method stub
		return matchingCmmDAO.searchAllDBInfoList(dbInfoVO);
	}
	
	public List<DBInfoVO> SearchDBInfoList(DBInfoVO dbInfoVO) throws Exception {
		// TODO Auto-generated method stub
		return matchingCmmDAO.searchDBInfoList(dbInfoVO);
	}
	public List<DBInfoAllVO> SearchDBInfoList(DBInfoAllVO dbInfoVO) throws Exception {
		// TODO Auto-generated method stub
		return matchingCmmDAO.searchDBInfoList(dbInfoVO);
	}
	
	public int SearchDBInfoCnt(DBInfoVO dbInfoVO) throws Exception {
		// TODO Auto-generated method stub
//		if(!commandMap.containsKey("database_nm")){
//			System.out.println(":::: commandMap.database_nm is null... ::::");
//			commandMap.put("database_nm", null);
//		}
		
		return matchingCmmDAO.searchDBInfoCnt(dbInfoVO);
	}
	
	public List<TBLInfoVO> SearchTBLInfoList(TBLInfoVO tblInfoVO) throws Exception {
		// TODO Auto-generated method stub
		
		return matchingCmmDAO.searchTBLInfoList(tblInfoVO);
	}
	
	public int SearchTBLInfoCnt(TBLInfoVO tblInfoVO) throws Exception {
		// TODO Auto-generated method stub
	
		return matchingCmmDAO.searchTBLInfoCnt(tblInfoVO);
	}
	
	public List<TBLInfoVO> CompCol1List(TBLInfoVO tblInfoVO) throws Exception {
		// TODO Auto-generated method stub
		
		return matchingCmmDAO.compCol1List(tblInfoVO);
	}
	
	public int CompCol1Cnt(TBLInfoVO tblInfoVO) throws Exception {
		// TODO Auto-generated method stub
	
		return matchingCmmDAO.compCol1Cnt(tblInfoVO);
	}
	
	public List<COLInfoVO> selectComp1RtnExl(TBLInfoVO tblInfoVO) throws Exception{
		return matchingCmmDAO.compCol1RtnExl(tblInfoVO);
	}
	
	
	
	
	public List<COLInfoVO> CompCol1DtlTgt(COLInfoVO colInfoVO) throws Exception {
		// TODO Auto-generated method stub
		return matchingCmmDAO.compCol1DtlTgt(colInfoVO);
	}

	public List<COLInfoVO> CompCol1DtlList(COLInfoVO colInfoVO) throws Exception{
		// TODO Auto-generated method stub
		return matchingCmmDAO.compCol1DtlList(colInfoVO);
	}

	public int CompCol1DtlCnt(COLInfoVO colInfoVO) throws Exception{
		// TODO Auto-generated method stub
		return matchingCmmDAO.compCol1DtlCnt(colInfoVO);
	}	
	
	public List<TBLInfoVO> CompCol2List(TBLInfoVO tblInfoVO) throws Exception {
		// TODO Auto-generated method stub
		
		return matchingCmmDAO.compCol2List(tblInfoVO);
	}
	
	public int CompCol2Cnt(TBLInfoVO tblInfoVO) throws Exception {
		// TODO Auto-generated method stub
	
		return matchingCmmDAO.compCol2Cnt(tblInfoVO);
	}

	public List<COLInfoVO> CompCol2DtlTgt(COLInfoVO colInfoVO) throws Exception {
		// TODO Auto-generated method stub
		return matchingCmmDAO.compCol2DtlTgt(colInfoVO);
	}

	public List<COLInfoVO> CompCol2DtlList(COLInfoVO colInfoVO)
			throws Exception {
		// TODO Auto-generated method stub
		return matchingCmmDAO.compCol2DtlList(colInfoVO);
	}

	public int CompCol2DtlCnt(COLInfoVO colInfoVO) throws Exception {
		// TODO Auto-generated method stub
		return matchingCmmDAO.compCol2DtlCnt(colInfoVO);
	}
	public List<COLInfoVO> selectComp2RtnExl(TBLInfoVO tblInfoVO)
			throws Exception {
		// TODO Auto-generated method stub
		return matchingCmmDAO.compCol2RtnExl(tblInfoVO);
	}	
}
