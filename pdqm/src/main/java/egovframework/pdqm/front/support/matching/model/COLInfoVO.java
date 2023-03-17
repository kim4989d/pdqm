package egovframework.pdqm.front.support.matching.model;

import java.io.Serializable;
import java.util.Map;

import org.hsqldb.lib.HashMap;

@SuppressWarnings("serial")
public class COLInfoVO implements Serializable {
	/** No */
    private String rn;
	/** 데이터베이스 ID [DATABASE_ID] */
    private String database_id;
	/** 테이블 ID [TABLE_ID]*/
    private String table_id = "";
    /** 기관명 [INSTT_NM] */
    private String instt_nm = "";
    /** 데이터베이스 명 [DATABASE_NM] */
    private String database_nm = "";
    /** 등록자 명 [REGISTER_ID] */
    private String register_id = "";   
    /** 테이블명 [TABLE_NM]*/
    private String table_nm= "";
    /** 정열순서 [SORT_ORDR] */
    private String sort_ordr = ""; 


    /** 컬럼 ID [COLUMN_ID] */
    private String column_id;
	/** 컬럼 명 [COLUMN_NM]*/
    private String column_nm = "";
    /** 컬럼 한글명 [COLUMN_KOREAN_NM] */
    private String column_korean_nm = "";
    /** 데이터 타입 [DATA_TY] */
    private String data_ty = "";
    /** 데이터 길이 [DATA_LT]*/
    private String data_lt= "";    
    /** 소숫점 [DCMLPOINT_LT] */
    private String dcmlpoint_lt = ""; 
    /** 정열순서 [C_SORT_ORDR] */
    private String c_sort_ordr = ""; 
    
    private String comp_rtn = "";
    
    

	/** 사용자 ID [login_id] */
    private String login_id = "";
    
    
    
    private String selected_Id_List = "";
    private String selected_Instt_Nm_List = "";
	private String selected_Database_Nm_List = "";
	
	
	public String getRn() {
		return rn;
	}

	public void setRn(String rn) {
		this.rn = rn;
	}
	
	public String getDatabase_id() {
		return database_id;
	}

	public void setDatabase_id(String database_id) {
		this.database_id = database_id;
	}

	public String getTable_id() {
		return table_id;
	}

	public void setTable_id(String table_id) {
		this.table_id = table_id;
	}

	public String getInstt_nm() {
		return instt_nm;
	}

	public void setInstt_nm(String instt_nm) {
		this.instt_nm = instt_nm;
	}

	public String getDatabase_nm() {
		return database_nm;
	}

	public void setDatabase_nm(String database_nm) {
		this.database_nm = database_nm;
	}
	
	public String getRegister_id() {
		return register_id;
	}

	public void setRegister_id(String register_id) {
		this.register_id = register_id;
	}

	public String getTable_nm() {
		return table_nm;
	}

	public void setTable_nm(String table_nm) {
		this.table_nm = table_nm;
	}

	public String getSort_ordr() {
		return sort_ordr;
	}

	public void setSort_ordr(String sort_ordr) {
		this.sort_ordr = sort_ordr;
	}

	public String getColumn_id() {
		return column_id;
	}

	public void setColumn_id(String column_id) {
		this.column_id = column_id;
	}

	public String getColumn_nm() {
		return column_nm;
	}

	public void setColumn_nm(String column_nm) {
		this.column_nm = column_nm;
	}

	public String getColumn_korean_nm() {
		return column_korean_nm;
	}

	public void setColumn_korean_nm(String column_korean_nm) {
		this.column_korean_nm = column_korean_nm;
	}

	public String getData_ty() {
		return data_ty;
	}

	public void setData_ty(String data_ty) {
		this.data_ty = data_ty;
	}

	public String getData_lt() {
		return data_lt;
	}

	public void setData_lt(String data_lt) {
		this.data_lt = data_lt;
	}

	public String getDcmlpoint_lt() {
		return dcmlpoint_lt;
	}

	public void setDcmlpoint_lt(String dcmlpoint_lt) {
		this.dcmlpoint_lt = dcmlpoint_lt;
	}

	public String getC_sort_ordr() {
		return c_sort_ordr;
	}

	public void setC_sort_ordr(String c_sort_ordr) {
		this.c_sort_ordr = c_sort_ordr;
	}

	public String getLogin_id() {
		return login_id;
	}

	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}

	public String getSelected_Id_List() {
		return selected_Id_List;
	}

	public void setSelected_Id_List(String selected_Id_List) {
		this.selected_Id_List = selected_Id_List;
	}

	public String getSelected_Instt_Nm_List() {
		return selected_Instt_Nm_List;
	}

	public void setSelected_Instt_Nm_List(String selected_Instt_Nm_List) {
		this.selected_Instt_Nm_List = selected_Instt_Nm_List;
	}

	public String getSelected_Database_Nm_List() {
		return selected_Database_Nm_List;
	}

	public void setSelected_Database_Nm_List(String selected_Database_Nm_List) {
		this.selected_Database_Nm_List = selected_Database_Nm_List;
	}

	public String getComp_rtn() {
		return comp_rtn;
	}

	public void setComp_rtn(String comp_rtn) {
		this.comp_rtn = comp_rtn;
	}
	
	
	
	/**
     * 	페이징 처리를 위한 변수처리부
     */
	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageUnit() {
		return pageUnit;
	}

	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getFirstIndex() {
		return firstIndex;
	}

	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}

	public int getLastIndex() {
		return lastIndex;
	}

	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}

	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}

	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}

	public int getRowNo() {
		return rowNo;
	}

	public void setRowNo(int rowNo) {
		this.rowNo = rowNo;
	}

	/** 현재페이지 */
	private int pageIndex = 1;

    /** 페이지갯수 */
    private int pageUnit = 10;

    /** 페이지사이즈 */
    private int pageSize = 10;

    /** firstIndex */
    private int firstIndex = 1;

    /** lastIndex */
    private int lastIndex = 1;

    /** recordCountPerPage */
    private int recordCountPerPage = 10;

    /** rowNo */
    private int rowNo = 0;

}
