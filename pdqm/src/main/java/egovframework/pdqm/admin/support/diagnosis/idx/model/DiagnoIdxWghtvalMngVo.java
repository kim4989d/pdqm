package egovframework.pdqm.admin.support.diagnosis.idx.model;

public class DiagnoIdxWghtvalMngVo extends DiagnosisIdxCommonVo {



	private String DATABASETYID    	  ;	                                                
	private String DATABASETYNM       ;
	private String LASTUPDTPNTTM      ;
	private String LASTUPDUSRID       ;
	private String REGISTNM          ;
	 private String  IDXID             ;
     private String  IDXNM             ;
     private String  UPPERIDXID        ;
     private String  WGHTVALIDXID      ;
     private String  WGHTVAL           ;                              
     private String  IDXWGHTVAL        ;
     private String EMPHSIDXID         ;
     private String HDATABASETYID	;
     private String SORTORDR;
     private String leftkeys;
     private String rightkeys;
     private String IDXLEVEL;
     
 	/*
 	 * 등록자
 	 */
 	public String frstRegisterId = "";

     
     
     
     public String getFrstRegisterId() {
		return frstRegisterId;
	}
	public void setFrstRegisterId(String frstRegisterId) {
		this.frstRegisterId = frstRegisterId;
	}
	public String getIDXLEVEL() {
		return IDXLEVEL;
	}
	public void setIDXLEVEL(String iDXLEVEL) {
		IDXLEVEL = iDXLEVEL;
	}
	public String getLeftkeys() {
		return leftkeys;
	}
	public void setLeftkeys(String leftkeys) {
		this.leftkeys = leftkeys;
	}
	public String getRightkeys() {
		return rightkeys;
	}
	public void setRightkeys(String rightkeys) {
		this.rightkeys = rightkeys;
	}
	public String getSORTORDR() {
		return SORTORDR;
	}
	public void setSORTORDR(String sORTORDR) {
		SORTORDR = sORTORDR;
	}
	public String getHDATABASETYID() {
		return HDATABASETYID;
	}
	public void setHDATABASETYID(String hDATABASETYID) {
		HDATABASETYID = hDATABASETYID;
	}
	public String getEMPHSIDXID() {
		return EMPHSIDXID;
	}
	public void setEMPHSIDXID(String eMPHSIDXID) {
		EMPHSIDXID = eMPHSIDXID;
	}
	public String getIDXID() {
		return IDXID;
	}
	public void setIDXID(String iDXID) {
		IDXID = iDXID;
	}
	public String getIDXNM() {
		return IDXNM;
	}
	public void setIDXNM(String iDXNM) {
		IDXNM = iDXNM;
	}
	public String getUPPERIDXID() {
		return UPPERIDXID;
	}
	public void setUPPERIDXID(String uPPERIDXID) {
		UPPERIDXID = uPPERIDXID;
	}
	public String getWGHTVALIDXID() {
		return WGHTVALIDXID;
	}
	public void setWGHTVALIDXID(String wGHTVALIDXID) {
		WGHTVALIDXID = wGHTVALIDXID;
	}
	public String getWGHTVAL() {
		return WGHTVAL;
	}
	public void setWGHTVAL(String wGHTVAL) {
		WGHTVAL = wGHTVAL;
	}
	public String getIDXWGHTVAL() {
		return IDXWGHTVAL;
	}
	public void setIDXWGHTVAL(String iDXWGHTVAL) {
		IDXWGHTVAL = iDXWGHTVAL;
	}
	public String getREGISTNM() {
		return REGISTNM;
	}
	public void setREGISTNM(String rEGISTNM) {
		REGISTNM = rEGISTNM;
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


}
