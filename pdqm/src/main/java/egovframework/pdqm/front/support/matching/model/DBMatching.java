package egovframework.pdqm.front.support.matching.model;

import java.io.Serializable;

import egovframework.com.cmm.LoginVO;


public class DBMatching extends LoginVO {

	
	private String dbTrgetId ;
	private String dgnssTrgetNm;
	
	public String getDbTrgetId() {
		return dbTrgetId;
	}

	public void setDbTrgetId(String dbTrgetId) {
		this.dbTrgetId = dbTrgetId;
	}
	public String getDgnssTrgetNm() {
		return dgnssTrgetNm;
	}
	public void setDgnssTrgetNm(String dgnssTrgetNm) {
		this.dgnssTrgetNm = dgnssTrgetNm;
	}
	
}
