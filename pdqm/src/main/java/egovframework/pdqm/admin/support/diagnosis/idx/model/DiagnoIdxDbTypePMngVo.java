package egovframework.pdqm.admin.support.diagnosis.idx.model;

import java.io.Serializable;

import org.springframework.ui.ModelMap;
import java.math.BigDecimal;

public class DiagnoIdxDbTypePMngVo extends DiagnosisIdxCommonVo {
	
	private String DATABASETYID			="";
	private String DATABASETYNM      ="";
	private String RESULTDC          ="";
	private String REFERDC           ="";
	private String SORTORDR          ="";
	private String USEAT            ="";
	private String FRSTREGISTPNTTM   ="";
	private String FRSTREGISTERID    ="";
	private String LASTUPDTPNTTM     ="";
	private String LASTUPDUSRID      ="";
	private String IDXLEVEL			 ="";
	/*
	 * 등록자
	 */
	public String frstRegisterId = "";

	private String IDXNM			="";
	/** 상태구분 */
    private String searchSttusCode = "";
	
	/** 진단대상명 */
    private String searchIdxNm = "";
    
    
    /*
	 * 지표ID
	 */
	private String IDXID = "";
	/*
	 * 상위 지표ID
	 */
	private String upperIdxId = "";
	
	
	/*
	 * 지표레벨
	 */
	private String idxLevel = "";
	
	
	/*
	 * 가중치
	 */
	private String wghtval = "";
	
	
	private String  HDATABASETYID ;
	
	
	private String  HDATABASETYNM;
	
	//================search
	private String  SDATABASETYID ;
	
	
	private String  SDATABASETYNM;
	
	private String LIDXNM;
	private String RIDXNM;
	
	private String SLIDXNM;
	private String SRIDXNM;
	
	
	public String getFrstRegisterId() {
		return frstRegisterId;
	}
	public void setFrstRegisterId(String frstRegisterId) {
		this.frstRegisterId = frstRegisterId;
	}
	public String getSLIDXNM() {
		return SLIDXNM;
	}
	public void setSLIDXNM(String sLIDXNM) {
		SLIDXNM = sLIDXNM;
	}
	public String getSRIDXNM() {
		return SRIDXNM;
	}
	public void setSRIDXNM(String sRIDXNM) {
		SRIDXNM = sRIDXNM;
	}
	public String getLIDXNM() {
		return LIDXNM;
	}
	public void setLIDXNM(String lIDXNM) {
		LIDXNM = lIDXNM;
	}
	public String getRIDXNM() {
		return RIDXNM;
	}
	public void setRIDXNM(String rIDXNM) {
		RIDXNM = rIDXNM;
	}
	public String getIDXLEVEL() {
		return IDXLEVEL;
	}
	public void setIDXLEVEL(String iDXLEVEL) {
		IDXLEVEL = iDXLEVEL;
	}
	public String getIDXID() {
		return IDXID;
	}
	public void setIDXID(String iDXID) {
		IDXID = iDXID;
	}
	public String getSDATABASETYID() {
		return SDATABASETYID;
	}
	public void setSDATABASETYID(String sDATABASETYID) {
		SDATABASETYID = sDATABASETYID;
	}
	public String getSDATABASETYNM() {
		return SDATABASETYNM;
	}
	public void setSDATABASETYNM(String sDATABASETYNM) {
		SDATABASETYNM = sDATABASETYNM;
	}
	public String getHDATABASETYNM() {
		return HDATABASETYNM;
	}
	public void setHDATABASETYNM(String hDATABASETYNM) {
		HDATABASETYNM = hDATABASETYNM;
	}
	public String getHDATABASETYID() {
		return HDATABASETYID;
	}
	public void setHDATABASETYID(String hDATABASETYID) {
		HDATABASETYID = hDATABASETYID;
	}
	public String getWghtval() {
		return wghtval;
	}
		public void setWghtval(String wghtval) {
		this.wghtval = wghtval;
	}
	public String getIdxId() {
		return IDXID;
	}
	public void setIdxId(String IDXID) {
		this.IDXID = IDXID;
	}
	public String getUpperIdxId() {
		return upperIdxId;
	}
	public void setUpperIdxId(String upperIdxId) {
		this.upperIdxId = upperIdxId;
	}
	
	
	public String getIdxLevel() {
		return idxLevel;
	}
	public void setIdxLevel(String idxLevel) {
		this.idxLevel = idxLevel;
	}
	public String getIdxDc() {
		return idxDc;
	}
	public void setIdxDc(String idxDc) {
		this.idxDc = idxDc;
	}
	public String getUpperIdxNm() {
		return upperIdxNm;
	}
	public void setUpperIdxNm(String upperIdxNm) {
		this.upperIdxNm = upperIdxNm;
	}
	/*
	 * 지표설명
	 */
	private String idxDc = "";
	
	/*
	 * 특성상위명
	 */
	private String upperIdxNm = "";

	
	public String getSearchSttusCode() {
		return searchSttusCode;
	}
	public void setSearchSttusCode(String searchSttusCode) {
		this.searchSttusCode = searchSttusCode;
	}
	public String getSearchIdxNm() {
		return searchIdxNm;
	}
	public void setSearchIdxNm(String searchIdxNm) {
		this.searchIdxNm = searchIdxNm;
	}
	public String getDATABASETYID() {
		return DATABASETYID;
	}
	public void setDATABASETYID(String dATABASETYID) {
		DATABASETYID = dATABASETYID;
	}
	public String getDATABASETYNM() {
		return DATABASETYNM;
	}
	public void setDATABASETYNM(String dATABASETYNM) {
		DATABASETYNM = dATABASETYNM;
	}
	public String getRESULTDC() {
		return RESULTDC;
	}
	public void setRESULTDC(String rESULTDC) {
		RESULTDC = rESULTDC;
	}
	public String getREFERDC() {
		return REFERDC;
	}
	public void setREFERDC(String rEFERDC) {
		REFERDC = rEFERDC;
	}
	public String getSORTORDR() {
		return SORTORDR;
	}
	public void setSORTORDR(String sORTORDR) {
		SORTORDR = sORTORDR;
	}
	public String getUSEAT() {
		return USEAT;
	}
	public void setUSEAT(String uSEAT) {
		USEAT = uSEAT;
	}
	public String getFRSTREGISTPNTTM() {
		return FRSTREGISTPNTTM;
	}
	public void setFRSTREGISTPNTTM(String fRSTREGISTPNTTM) {
		FRSTREGISTPNTTM = fRSTREGISTPNTTM;
	}
	public String getFRSTREGISTERID() {
		return FRSTREGISTERID;
	}
	public void setFRSTREGISTERID(String fRSTREGISTERID) {
		FRSTREGISTERID = fRSTREGISTERID;
	}
	public String getLASTUPDTPNTTM() {
		return LASTUPDTPNTTM;
	}
	public void setLASTUPDTPNTTM(String lASTUPDTPNTTM) {
		LASTUPDTPNTTM = lASTUPDTPNTTM;
	}
	public String getLASTUPDUSRID() {
		return LASTUPDUSRID;
	}
	public void setLASTUPDUSRID(String lASTUPDUSRID) {
		LASTUPDUSRID = lASTUPDUSRID;
	}
	public String getIDXNM() {
		return IDXNM;
	}
	public void setIDXNM(String iDXNM) {
		IDXNM = iDXNM;
	}
     


}
