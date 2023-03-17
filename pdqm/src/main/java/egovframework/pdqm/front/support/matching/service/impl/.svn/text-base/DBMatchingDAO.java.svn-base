package egovframework.pdqm.front.support.matching.service.impl;

import java.io.InputStream;
import java.util.List;

import org.aspectj.weaver.ast.Call;
import org.springframework.stereotype.Repository;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.front.support.matching.model.CodeInfoVO;
import egovframework.pdqm.front.support.matching.model.DBInfoVO;
import egovframework.pdqm.front.support.matching.model.DBMatching;
import egovframework.pdqm.front.support.matching.model.DBMatchingInfoVO;


/**
 * 
 * 엑셀저장에 대한 데이터 접근 클래스를 정의한다
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
 *
 * </pre>
 */

@Repository("DBMatchingDAO")
public class DBMatchingDAO extends EgovComAbstractDAO {

	/**
	 * DB 엑셀파일을 등록한다.
	 * @param dBMatchingInfoVO 
	 * @param zip
	 * @throws Exception
	 */
	void insertDBExcel(DBMatchingInfoVO dBMatchingInfoVO) throws Exception {
		
		System.out.println("++insertDBExcel+ getDATABASE_ID_max : "+dBMatchingInfoVO.getDATABASE_ID_max());
		System.out.println("++insertDBExcel++getsLoginVO : "+	dBMatchingInfoVO.getsLoginVO());
		
		getSqlMapClientTemplate().queryForObject("PRC_TNINFO", dBMatchingInfoVO);
	}


	public void insertDatabaseInfo(DBMatchingInfoVO dBMatchingInfoVO)throws Exception {
		// TODO Auto-generated method stub
		insert("DBMatchingDAO.insertDBInfo", dBMatchingInfoVO);
	}


	public void insertCodeInfo(DBMatchingInfoVO dBMatchingInfoVO) {
		// TODO Auto-generated method stub
		insert("DBMatchingDAO.insertCodeInfo", dBMatchingInfoVO);
		
	}

    /**
	 * @param 
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectDBMatchigList(DBMatching Dbvo) throws Exception{
		// TODO Auto-generated method stub
		return list("DBMatchingDAO.selectDBMatchigList",Dbvo);
	}

    @SuppressWarnings("unchecked")
	public List<CodeInfoVO> SearchCodeInfoList(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
    	System.out.println(":::: SearchCodeInfoList [" + codeInfoVO.getRegister_id() + "]" + codeInfoVO.getDatabase_nm() + "(" + codeInfoVO.getRecordCountPerPage() + ", " + codeInfoVO.getFirstIndex() + ") ::::");
    	return list("DBMatchingDAO.SearchCodeInfoList", codeInfoVO);
	}


	public int SearchCodeInfoCnt(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
    	System.out.println(":::: SearchCodeInfoCnt [" + codeInfoVO.getRegister_id() + "]" + codeInfoVO.getDatabase_nm() + "(" + codeInfoVO.getRecordCountPerPage() + ", " + codeInfoVO.getFirstIndex() + ") ::::");
		return (Integer)getSqlMapClientTemplate().queryForObject("DBMatchingDAO.SearchCodeInfoCnt", codeInfoVO);
	}

	@SuppressWarnings("unchecked")
	public List<CodeInfoVO> searchFIndCodeInfoList(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		System.out.println(":::: searchFIndCodeInfoList [" + codeInfoVO.getRegister_id() + "]" + codeInfoVO.getCode_nm() + "(" + codeInfoVO.getRecordCountPerPage() + ", " + codeInfoVO.getFirstIndex() + ") ::::");
		return list("DBMatchingDAO.SearchDindCodeInfoList", codeInfoVO);
	}

	public void updateDBInfo(DBInfoVO dBInfoVO) {
		// TODO Auto-generated method stub
		System.out.println(":::: updateDBInfo +++++ Register_id : [" + dBInfoVO.getRegister_id()+ "] getDatabase_id : [" + dBInfoVO.getDatabase_id() + "] getDatabase_nm : [" + dBInfoVO.getDatabase_nm() + " ]  ::::");
		update("DBMatchingDAO.updateDBInfo", dBInfoVO);
	}


	public void deleteDBInfo(DBInfoVO dBInfoVO) {
		// TODO Auto-generated method stub
		System.out.println(":::: deleteDBInfo +++++ Register_id : [" + dBInfoVO.getRegister_id()+ "] getDatabase_id : [" + dBInfoVO.getDatabase_id() + "] getDatabase_nm : [ " + dBInfoVO.getDatabase_nm() + "] ::::");
		delete("DBMatchingDAO.deleteDBInfo", dBInfoVO);
	}

	public void updateCodeModify(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		System.out.println(":::: updateCodeModify +++++ getRegister_id : [" + codeInfoVO.getRegister_id()+ "] getCode_info_id : [" + codeInfoVO.getCode_info_id() + "] getCode_nm : [ " + codeInfoVO.getCode_nm()  + "] ::::");
		update("DBMatchingDAO.updateCodeModify", codeInfoVO);
	}
	public void deleteCodeModify(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		delete("DBMatchingDAO.deleteCodeModify", codeInfoVO);
		System.out.println(":::: deleteCodeModify +++++ getRegister_id : [" + codeInfoVO.getRegister_id()+ "] getCode_info_id : [" + codeInfoVO.getCode_info_id() + "] getCode_nm : [ " + codeInfoVO.getCode_nm()  + "] ::::");
	}

	@SuppressWarnings("unchecked")
	public List<CodeInfoVO> CodeCompList(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		System.out.println(":::: CodeCompList +++++ getRegister_id : [" + codeInfoVO.getRegister_id()+ "] getCode_info_id : [" + codeInfoVO.getCode_info_id() + "] getT_code_info_id : [ " + codeInfoVO.getT_code_info_id()  + "] getRtn_code : [ " + codeInfoVO.getRtn_code()  + "] getChecked : [ " + codeInfoVO.getChecked()  + "]::::");
//		if (codeInfoVO.getRtn_code().equals("")){
			return list("DBMatchingDAO.selectCodeCompList", codeInfoVO);
//		} else {
//			return list("DBMatchingDAO.searchCodeCompList", codeInfoVO);
//		 }
	}


	public int CodeCompCnt(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		System.out.println(":::: CodeCompCnt +++++ getRegister_id : [" + codeInfoVO.getRegister_id()+ "] getCode_info_id : [" + codeInfoVO.getCode_info_id() + "] getT_code_info_id : [ " + codeInfoVO.getT_code_info_id()  + "]getRtn_code : [ " + codeInfoVO.getRtn_code()  + "] getChecked : [ " + codeInfoVO.getChecked()  + "]::::");
//		if (codeInfoVO.getRtn_code().equals("")){
			return (Integer)getSqlMapClientTemplate().queryForObject("DBMatchingDAO.selectCodeCompCnt", codeInfoVO);
//		} else {
//			return (Integer)getSqlMapClientTemplate().queryForObject("DBMatchingDAO.searchCodeCompCnt", codeInfoVO);
//		 }
	}

	@SuppressWarnings("unchecked")
	public List<CodeInfoVO> codeCompTagetList(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		System.out.println(":::: codeCompTagetList +++++ getRegister_id : [" + codeInfoVO.getRegister_id()+ "] getCode_info_id : [" + codeInfoVO.getCode_info_id() + "] getT_code_info_id : [ " + codeInfoVO.getT_code_info_id()  + "] ::::");
		return list("DBMatchingDAO.codeCompTagetList", codeInfoVO);
	}
	
	@SuppressWarnings("unchecked")
	public List<CodeInfoVO> errCodeList(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		return list("DBMatchingDAO.errCodeList", codeInfoVO);
	}


	public CodeInfoVO codeCompTagetList1(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		System.out.println(":::: codeCompTagetList +++++ getRegister_id : [" + codeInfoVO.getRegister_id()+ "] getCode_info_id : [" + codeInfoVO.getCode_info_id() + "] getT_code_info_id : [ " + codeInfoVO.getT_code_info_id()  + "] ::::");
		return  (CodeInfoVO)getSqlMapClientTemplate().queryForObject("DBMatchingDAO.codeCompTagetList", codeInfoVO);
	}
	
	public CodeInfoVO compCodeTgtExl(CodeInfoVO codeInfoVO) {
		return  (CodeInfoVO)getSqlMapClientTemplate().queryForObject("DBMatchingDAO.codeCompTagetList", codeInfoVO);
	}
	public List<CodeInfoVO> compCodeRtnExl(CodeInfoVO codeInfoVO) {
		// TODO Auto-generated method stub
		return list("DBMatchingDAO.selectCodeCompExl", codeInfoVO);
	}


	
}
