package egovframework.pdqm.front.support.matching.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.front.support.matching.model.COLInfoVO;
import egovframework.pdqm.front.support.matching.model.DBInfoAllVO;
import egovframework.pdqm.front.support.matching.model.DBInfoVO;
import egovframework.pdqm.front.support.matching.model.TBLInfoVO;

@Repository("matchingCmmDAO")
public class MatchingCmmDAO extends EgovComAbstractDAO{
	Logger log = Logger.getLogger(this.getClass());

    /**
     * 전체 DB 정보 목록을 조회한다.
     * 
     * @param vo
     * @return list(vo)
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    public List<DBInfoVO> searchAllDBInfoList(DBInfoVO dbInfoVO) throws Exception {
    	System.out.println(":::: searchAllDBInfoList [" + dbInfoVO.getRegister_id() + "]" + dbInfoVO.getDatabase_nm() + "(" + dbInfoVO.getRecordCountPerPage() + ", " + dbInfoVO.getFirstIndex() + ") ::::");
    	return list("matchingCmmDAO.searchAllDBInfoPgList", dbInfoVO);
    }
    @SuppressWarnings("unchecked")
    public List<DBInfoAllVO> searchAllDBInfoList(DBInfoAllVO dbInfoVO) throws Exception {
    	System.out.println(":::: searchAllDBInfoList [" + dbInfoVO.getRegister_id() + "]" + dbInfoVO.getDatabase_nm() + " ::::");
    	return list("matchingCmmDAO.searchAllDBInfoList", dbInfoVO);
    }
    /**
     * 특정 DB 정보 목록을 조회한다.
     * 
     * @param vo
     * @return list(vo)
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    public List<DBInfoVO> searchDBInfoList(DBInfoVO dbInfoVO) throws Exception {
    	System.out.println(":::: searchAllDBInfoPgList [" + dbInfoVO.getRegister_id() + "]" + dbInfoVO.getDatabase_nm() + "(" + dbInfoVO.getRecordCountPerPage() + ", " + dbInfoVO.getFirstIndex() + ") ::::");
    	dbInfoVO.setRecordCountPerPage(0);
    	return list("matchingCmmDAO.searchDBInfoList", dbInfoVO);
    }
    
    @SuppressWarnings("unchecked")
    public List<DBInfoAllVO> searchDBInfoList(DBInfoAllVO dbInfoVO) throws Exception {
    	System.out.println(":::: searchAllDBInfoList [" + dbInfoVO.getRegister_id() + "]" + dbInfoVO.getDatabase_nm() + " ::::");
    	return list("matchingCmmDAO.searchDBInfoList", dbInfoVO);
    }
    
    public int searchDBInfoCnt(DBInfoVO dbInfoVO) throws Exception {
    	System.out.println(":::: searchAllDBInfoList [" + dbInfoVO.getRegister_id() + "]" + dbInfoVO.getDatabase_nm() + "(" + dbInfoVO.getRecordCountPerPage() + ", " + dbInfoVO.getFirstIndex() + ") ::::");
    	return (Integer)getSqlMapClientTemplate().queryForObject("matchingCmmDAO.searchDBInfoPgCnt", dbInfoVO);
    }
    /**
     * 특정 DB 정보 목록(DB_ID 목록)을 조회한다.
     * 
     * @param vo
     * @return list(vo)
     * @throws Exception
     */
//    @SuppressWarnings("unchecked")
//    public List<DBInfoVO> searchConItemList(DBInfoVO dbInfoVO) throws Exception {
//    	System.out.println(":::: searchConItemList [" + dbInfoVO.getRegister_id() + "]" + dbInfoVO.getDatabase_nm() + "(" + dbInfoVO.getRecordCountPerPage() + ", " + dbInfoVO.getFirstIndex() + ") ::::");
//    	return list("matchingCmmDAO.searchConItemList", dbInfoVO);
//    }
    /**
     * 특정 DB 정보 목록(DB_ID 목록)을 조회한다.
     * 
     * @param vo
     * @return list(vo)
     * @throws Exception
     */
//    @SuppressWarnings("unchecked")
//    public List<DBInfoVO> searchConDBInfoList(DBInfoVO dbInfoVO) throws Exception {
//    	System.out.println(":::: searchConDBInfoList [" + dbInfoVO.getRegister_id() + "]" + dbInfoVO.getDatabase_nm() + "(" + dbInfoVO.getRecordCountPerPage() + ", " + dbInfoVO.getFirstIndex() + ") ::::");
//    	return list("matchingCmmDAO.searchConDBInfoList", dbInfoVO);
//    }
    /**
     * 테이블 정보 목록을 조회한다.
     * 
     * @param vo
     * @return list(vo)
     * @throws Exception
     */
    
    @SuppressWarnings("unchecked")
    public List<TBLInfoVO> searchTBLInfoList(TBLInfoVO tblInfoVO) throws Exception {
    	System.out.println(":::: searchTBLInfoList [" + tblInfoVO.getDatabase_id() + "] ::::");
    	return list("matchingCmmDAO.searchTBLInfoList", tblInfoVO);
    }
    
    public int searchTBLInfoCnt(TBLInfoVO tblInfoVO) throws Exception {
    	System.out.println(":::: searchTBLInfoCnt [" + tblInfoVO.getDatabase_id() + "] ::::");
    	return (Integer)getSqlMapClientTemplate().queryForObject("matchingCmmDAO.searchTBLInfoCnt", tblInfoVO);
    }
    
    
    /**
     * 컬럼비교 정보 목록을 조회한다.
     * 
     * @param vo
     * @return list(vo)
     * @throws Exception
     */
    
    @SuppressWarnings("unchecked")
    public List<TBLInfoVO> compCol1List(TBLInfoVO tblInfoVO) throws Exception {
    	System.out.println(":::: compCol1List [" + tblInfoVO.getDatabase_id() + "] ::::");
    	return list("matchingCmmDAO.compCol1List", tblInfoVO);
    }
    
    public int compCol1Cnt(TBLInfoVO tblInfoVO) throws Exception {
    	System.out.println(":::: compCol1Cnt [" + tblInfoVO.getDatabase_id() + "] ::::");
    	return (Integer)getSqlMapClientTemplate().queryForObject("matchingCmmDAO.compCol1Cnt", tblInfoVO);
    }
    
    /**
     * 컬럼비교 정보 목록을 엑셀 출력 조회한다.
     * 
     * @param vo
     * @return list(vo)
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    public List<COLInfoVO> compCol1RtnExl(TBLInfoVO tblInfoVO) throws Exception {
    	System.out.println(":::: compCol1RtnExl [" + tblInfoVO.getDatabase_id() + "] ::::");
    	return list("matchingCmmDAO.compCol1RtnExl", tblInfoVO);
    }
    
    /**
     * 타입비교 정보 목록을 조회한다.
     * 
     * @param vo
     * @return list(vo)
     * @throws Exception
     */
    
    @SuppressWarnings("unchecked")
    public List<TBLInfoVO> compCol2List(TBLInfoVO tblInfoVO) throws Exception {
    	System.out.println(":::: compCol2List [" + tblInfoVO.getDatabase_id() + "] ::::");
    	return list("matchingCmmDAO.compCol2List", tblInfoVO);
    }
    
    public int compCol2Cnt(TBLInfoVO tblInfoVO) throws Exception {
    	System.out.println(":::: compCol2Cnt [" + tblInfoVO.getDatabase_id() + "] ::::");
    	return (Integer)getSqlMapClientTemplate().queryForObject("matchingCmmDAO.compCol2Cnt", tblInfoVO);
    }
    
    /**
     * 타입비교 정보 목록을 엑셀 출력 조회한다.
     * 
     * @param vo
     * @return list(vo)
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    public List<COLInfoVO> compCol2RtnExl(TBLInfoVO tblInfoVO) throws Exception {
    	System.out.println(":::: compCol2RtnExl [" + tblInfoVO.getDatabase_id() + "] ::::");
    	return list("matchingCmmDAO.compCol2RtnExl", tblInfoVO);
    }
    
    /**
     * 컬럼비교 상세 정보 목록을 조회한다.
     * 
     * @param vo
     * @return list(vo)
     * @throws Exception
     */
    
    @SuppressWarnings("unchecked")
    public List<COLInfoVO> compCol1DtlTgt(COLInfoVO colInfoVO) throws Exception {
    	System.out.println(":::: compCol1List [" + colInfoVO.getColumn_id() + "] ::::");
    	return list("matchingCmmDAO.compCol1DtlTgt", colInfoVO);
    }
    
    @SuppressWarnings("unchecked")
	public List<COLInfoVO> compCol1DtlList(COLInfoVO colInfoVO) throws Exception {
    	System.out.println(":::: compCol1List [" + colInfoVO.getColumn_id() + "] ::::");
    	return list("matchingCmmDAO.compCol1DtlList", colInfoVO);
    }
    
    public int compCol1DtlCnt(COLInfoVO colInfoVO) throws Exception {
    	System.out.println(":::: compCol1DtlCnt [" + colInfoVO.getColumn_id() + "] ::::");
    	return (Integer)getSqlMapClientTemplate().queryForObject("matchingCmmDAO.compCol1DtlCnt", colInfoVO);
    }
    
    
    /**
     * 타입비교 상세 정보 목록을 조회한다.
     * 
     * @param vo
     * @return list(vo)
     * @throws Exception
     */
    
    @SuppressWarnings("unchecked")
    public List<COLInfoVO> compCol2DtlTgt(COLInfoVO colInfoVO) throws Exception {
    	System.out.println(":::: compCol2List [" + colInfoVO.getColumn_id() + "] ::::");
    	return list("matchingCmmDAO.compCol2DtlTgt", colInfoVO);
    }
    
    @SuppressWarnings("unchecked")
	public List<COLInfoVO> compCol2DtlList(COLInfoVO colInfoVO) throws Exception {
    	System.out.println(":::: compCol2List [" + colInfoVO.getColumn_id() + "] ::::");
    	return list("matchingCmmDAO.compCol2DtlList", colInfoVO);
    }
    
    public int compCol2DtlCnt(COLInfoVO colInfoVO) throws Exception {
    	System.out.println(":::: compCol2DtlCnt [" + colInfoVO.getColumn_id() + "] ::::");
    	return (Integer)getSqlMapClientTemplate().queryForObject("matchingCmmDAO.compCol2DtlCnt", colInfoVO);
    }
}
