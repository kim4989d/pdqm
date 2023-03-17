package egovframework.pdqm.front.support.matching.service;

import java.util.List;

import egovframework.pdqm.front.support.matching.model.COLInfoVO;
import egovframework.pdqm.front.support.matching.model.DBInfoAllVO;
import egovframework.pdqm.front.support.matching.model.DBInfoVO;
import egovframework.pdqm.front.support.matching.model.TBLInfoVO;

public interface MatchingCmmService {
	
	public List<DBInfoVO> SearchAllDBInfoList(DBInfoVO dbInfoVO) throws Exception;
	
    public List<DBInfoAllVO> SearchAllDBInfoList(DBInfoAllVO dbInfoVO) throws Exception;
    
    public List<DBInfoVO> SearchDBInfoList(DBInfoVO dbInfoVO) throws Exception;
    
    public List<DBInfoAllVO> SearchDBInfoList(DBInfoAllVO dbInfoVO) throws Exception;
    
//    public List<DBInfoVO> SearchConDBInfoList(DBInfoVO dbInfoVO) throws Exception;
    
//    public List<DBInfoVO> SearchConItemList(DBInfoVO dbInfoVO) throws Exception;
    
    public int SearchDBInfoCnt(DBInfoVO dbInfoVO) throws Exception;
    
    public List<TBLInfoVO> SearchTBLInfoList(TBLInfoVO tblInfoVO) throws Exception;
    
    public int SearchTBLInfoCnt(TBLInfoVO tblInfoVO) throws Exception;
    
    public List<TBLInfoVO> CompCol1List(TBLInfoVO tblInfoVO) throws Exception;
    
    public int CompCol1Cnt(TBLInfoVO tblInfoVO) throws Exception;
    
	/**
	 * 컬럼 비교 결과를 Excel로 출력한다.(xml, Excel용)
	 * @return List 품목정보 목록
	 * @throws Exception
	 */
	public List<COLInfoVO> selectComp1RtnExl(TBLInfoVO tblInfoVO) throws Exception;
    
    
	public List<COLInfoVO> CompCol1DtlTgt(COLInfoVO colInfoVO) throws Exception;

	public List<COLInfoVO> CompCol1DtlList(COLInfoVO colInfoVO) throws Exception;

	public int CompCol1DtlCnt(COLInfoVO colInfoVO) throws Exception;
    
    public List<TBLInfoVO> CompCol2List(TBLInfoVO tblInfoVO) throws Exception;
    
    public int CompCol2Cnt(TBLInfoVO tblInfoVO) throws Exception;

	public List<COLInfoVO> CompCol2DtlTgt(COLInfoVO colInfoVO) throws Exception;

	public List<COLInfoVO> CompCol2DtlList(COLInfoVO colInfoVO) throws Exception;

	public int CompCol2DtlCnt(COLInfoVO colInfoVO) throws Exception;

	public List<COLInfoVO> selectComp2RtnExl(TBLInfoVO tblInfoVO) throws Exception;
}
