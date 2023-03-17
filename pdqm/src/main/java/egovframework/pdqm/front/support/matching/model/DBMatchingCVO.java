package egovframework.pdqm.front.support.matching.model;

import java.io.Serializable;

import egovframework.com.cmm.ComDefaultVO;

public class DBMatchingCVO extends ComDefaultVO implements Serializable {

	private String sCODE_ID =null;	
	private String sCODE_VALUE=null;	
	private String sCODE_INFO_ID=null;	
	private String sCODE_INFO_ID_DASAN=null;
	private String sLoginVO=null;
	private String DATABASE_ID_max=null;
	
	public String getsCODE_INFO_ID_DASAN() {
		return sCODE_INFO_ID_DASAN;
	}
	public void setsCODE_INFO_ID_DASAN(String sCODE_INFO_ID_DASAN) {
		this.sCODE_INFO_ID_DASAN = sCODE_INFO_ID_DASAN;
	}
	
	public String getsCODE_INFO_ID() {
		return sCODE_INFO_ID;
	}
	public void setsCODE_INFO_ID(String sCODE_INFO_ID) {
		this.sCODE_INFO_ID = sCODE_INFO_ID;
	}
	
	public String getsCODE_ID() {
		return sCODE_ID;
	}
	public void setsCODE_ID(String sCODE_ID) {
		this.sCODE_ID = sCODE_ID;
	}
	public String getsCODE_VALUE() {
		return sCODE_VALUE;
	}
	public void setsCODE_VALUE(String sCODE_VALUE) {
		this.sCODE_VALUE = sCODE_VALUE;
	}
	
	public String getsLoginVO() {
		return sLoginVO;
	}
	public void setsLoginVO(String sLoginVO) {
		this.sLoginVO = sLoginVO;
	}
	public String getDATABASE_ID_max() {
		return DATABASE_ID_max;
	}
	public void setDATABASE_ID_max(String dATABASE_ID_max) {
		DATABASE_ID_max = dATABASE_ID_max;
	}
	
    /** rowNo */
    private int rowNo = 0;
    
	public int getRowNo() {
		return rowNo;
	}

	public void setRowNo(int rowNo) {
		this.rowNo = rowNo;
	}
	

}