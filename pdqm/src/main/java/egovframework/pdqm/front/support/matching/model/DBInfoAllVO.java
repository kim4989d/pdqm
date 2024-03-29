package egovframework.pdqm.front.support.matching.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class DBInfoAllVO implements Serializable {
    /** rowNo */
    private int rowNo = 0;
	/** 데이터베이스ID */
    private String database_id = "";
    /** 데이터베이스명 */
    private String database_nm = "";
    /** 데이터베이스설명 */
    private String database_dc = "";
    /** 기관명 */
    private String instt_nm	= "";
    /** 파일명 */
    private String file_nm = "";
    /** 등록시점 */
    private String regist_pnttm = "";
    /** 등록자ID */
    private String register_id = "";

	
	public int getRowNo() {
		return rowNo;
	}

	public void setRowNo(int rowNo) {
		this.rowNo = rowNo;
	}
	
	public String getDatabase_id() {
		return database_id;
	}

	public void setDatabase_id(String database_id) {
		this.database_id = database_id;
	}

	public String getDatabase_nm() {
		return database_nm;
	}

	public void setDatabase_nm(String database_nm) {
		this.database_nm = database_nm;
	}

	public String getDatabase_dc() {
		return database_dc;
	}

	public void setDatabase_dc(String database_dc) {
		this.database_dc = database_dc;
	}

	public String getInstt_nm() {
		return instt_nm;
	}

	public void setInstt_nm(String instt_nm) {
		this.instt_nm = instt_nm;
	}

	public String getFile_nm() {
		return file_nm;
	}

	public void setFile_nm(String file_nm) {
		this.file_nm = file_nm;
	}

	public String getRegist_pnttm() {
		return regist_pnttm;
	}

	public void setRegist_pnttm(String regist_pnttm) {
		this.regist_pnttm = regist_pnttm;
	}

	public String getRegister_id() {
		return register_id;
	}

	public void setRegister_id(String register_id) {
		this.register_id = register_id;
	}
}
