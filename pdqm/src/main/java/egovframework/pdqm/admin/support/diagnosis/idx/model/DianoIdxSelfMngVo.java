package egovframework.pdqm.admin.support.diagnosis.idx.model;

public class DianoIdxSelfMngVo extends DiagnosisIdxCommonVo {

	private String IDXDGNSSID;
	private String IDXDGNSSNM;
	private String DATABASETYID;
	private String HDATABASETYID;

	private String DATABASETYNM;

	private String NTCETYCODE;
	private String USEAT;
	private String NTCETYCODE2;
	private String NTCETYCODE2NM;
	private String NTCEBEGINDT;
	private String NTCEENDDT;
	private String QESITMCO;
	private String RESULTCO;
	private String CODE;
	private String CODENM;
	private String searchBgnDeView;
	private String searchEndDeView;
	private String HsearchBgnDeView;
	private String HsearchEndDeView;
	private String HIDXDGNSSNM;
	private String HNTCETYCODE;
	private String QESITMCOUNT1;
	private String QESITMCOUNT2;
	private String IDXID;
	private String IDXNM;
	private String IDXDC;
	private String UPPERIDXID;
	private String IDXLEVEL;
	private String IDXWGHTVAL;
	private String EMPHSIDXID;
	private String QESITMID;
	private String QESITM;
	private String SQESITM;
	private String ANSWERTYCODE;
	private String QSORTORDR;
	private String ANSWERID;
	private String ANSWER;
	private String ANSWERSTDR;
	private String ALLOT;
	private String ASORTORDR;
	private String ANSWERCO;
	private String CHECKBOXFLAG;
	private String NDATABASETYID;
	private String IDXDGNSSIDMANAGETNT;
	private String IDXDGNSSIDSITMTNT;
	private String QESITMNO;
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

	public String getQESITMNO() {
		return QESITMNO;
	}

	public void setQESITMNO(String qESITMNO) {
		QESITMNO = qESITMNO;
	}

	public String getIDXDGNSSIDSITMTNT() {
		return IDXDGNSSIDSITMTNT;
	}

	public void setIDXDGNSSIDSITMTNT(String iDXDGNSSIDSITMTNT) {
		IDXDGNSSIDSITMTNT = iDXDGNSSIDSITMTNT;
	}

	public String getIDXDGNSSIDMANAGETNT() {
		return IDXDGNSSIDMANAGETNT;
	}

	public void setIDXDGNSSIDMANAGETNT(String iDXDGNSSIDMANAGETNT) {
		IDXDGNSSIDMANAGETNT = iDXDGNSSIDMANAGETNT;
	}

	public String getNDATABASETYID() {
		return NDATABASETYID;
	}

	public void setNDATABASETYID(String nDATABASETYID) {
		NDATABASETYID = nDATABASETYID;
	}

	public String getCHECKBOXFLAG() {
		return CHECKBOXFLAG;
	}

	public void setCHECKBOXFLAG(String cHECKBOXFLAG) {
		CHECKBOXFLAG = cHECKBOXFLAG;
	}

	public String getUPPERIDXID() {
		return UPPERIDXID;
	}

	public void setUPPERIDXID(String uPPERIDXID) {
		UPPERIDXID = uPPERIDXID;
	}

	public String getIDXLEVEL() {
		return IDXLEVEL;
	}

	public void setIDXLEVEL(String iDXLEVEL) {
		IDXLEVEL = iDXLEVEL;
	}

	public String getIDXWGHTVAL() {
		return IDXWGHTVAL;
	}

	public void setIDXWGHTVAL(String iDXWGHTVAL) {
		IDXWGHTVAL = iDXWGHTVAL;
	}

	public String getEMPHSIDXID() {
		return EMPHSIDXID;
	}

	public void setEMPHSIDXID(String eMPHSIDXID) {
		EMPHSIDXID = eMPHSIDXID;
	}

	public String getQESITMID() {
		return QESITMID;
	}

	public void setQESITMID(String qESITMID) {
		QESITMID = qESITMID;
	}

	public String getQESITM() {
		return QESITM;
	}

	public void setQESITM(String qESITM) {
		QESITM = qESITM;
	}

	public String getSQESITM() {
		return SQESITM;
	}

	public void setSQESITM(String sQESITM) {
		SQESITM = sQESITM;
	}

	public String getANSWERTYCODE() {
		return ANSWERTYCODE;
	}

	public void setANSWERTYCODE(String aNSWERTYCODE) {
		ANSWERTYCODE = aNSWERTYCODE;
	}

	public String getQSORTORDR() {
		return QSORTORDR;
	}

	public void setQSORTORDR(String qSORTORDR) {
		QSORTORDR = qSORTORDR;
	}

	public String getANSWERID() {
		return ANSWERID;
	}

	public void setANSWERID(String aNSWERID) {
		ANSWERID = aNSWERID;
	}

	public String getANSWER() {
		return ANSWER;
	}

	public void setANSWER(String aNSWER) {
		ANSWER = aNSWER;
	}

	public String getANSWERSTDR() {
		return ANSWERSTDR;
	}

	public void setANSWERSTDR(String aNSWERSTDR) {
		ANSWERSTDR = aNSWERSTDR;
	}

	public String getALLOT() {
		return ALLOT;
	}

	public void setALLOT(String aLLOT) {
		ALLOT = aLLOT;
	}

	public String getASORTORDR() {
		return ASORTORDR;
	}

	public void setASORTORDR(String aSORTORDR) {
		ASORTORDR = aSORTORDR;
	}

	public String getANSWERCO() {
		return ANSWERCO;
	}

	public void setANSWERCO(String aNSWERCO) {
		ANSWERCO = aNSWERCO;
	}

	public String getIDXNM() {
		return IDXNM;
	}

	public void setIDXNM(String iDXNM) {
		IDXNM = iDXNM;
	}

	public String getIDXDC() {
		return IDXDC;
	}

	public void setIDXDC(String iDXDC) {
		IDXDC = iDXDC;
	}

	public String getIDXID() {
		return IDXID;
	}

	public void setIDXID(String iDXID) {
		IDXID = iDXID;
	}

	public String getQESITMCOUNT1() {
		return QESITMCOUNT1;
	}

	public void setQESITMCOUNT1(String qESITMCOUNT1) {
		QESITMCOUNT1 = qESITMCOUNT1;
	}

	public String getQESITMCOUNT2() {
		return QESITMCOUNT2;
	}

	public void setQESITMCOUNT2(String qESITMCOUNT2) {
		QESITMCOUNT2 = qESITMCOUNT2;
	}

	public String getHDATABASETYID() {
		return HDATABASETYID;
	}

	public void setHDATABASETYID(String hDATABASETYID) {
		HDATABASETYID = hDATABASETYID;
	}

	public String getHNTCETYCODE() {
		return HNTCETYCODE;
	}

	public void setHNTCETYCODE(String hNTCETYCODE) {
		HNTCETYCODE = hNTCETYCODE;
	}

	public String getHIDXDGNSSNM() {
		return HIDXDGNSSNM;
	}

	public void setHIDXDGNSSNM(String hIDXDGNSSNM) {
		HIDXDGNSSNM = hIDXDGNSSNM;
	}

	public String getHsearchBgnDeView() {
		return HsearchBgnDeView;
	}

	public void setHsearchBgnDeView(String hsearchBgnDeView) {
		HsearchBgnDeView = hsearchBgnDeView;
	}

	public String getHsearchEndDeView() {
		return HsearchEndDeView;
	}

	public void setHsearchEndDeView(String hsearchEndDeView) {
		HsearchEndDeView = hsearchEndDeView;
	}

	public String getNTCETYCODE() {
		return NTCETYCODE;
	}

	public void setNTCETYCODE(String nTCETYCODE) {
		NTCETYCODE = nTCETYCODE;
	}

	public String getSearchBgnDeView() {
		return searchBgnDeView;
	}

	public void setSearchBgnDeView(String searchBgnDeView) {
		this.searchBgnDeView = searchBgnDeView;
	}

	public String getSearchEndDeView() {
		return searchEndDeView;
	}

	public void setSearchEndDeView(String searchEndDeView) {
		this.searchEndDeView = searchEndDeView;
	}

	public String getCODENM() {
		return CODENM;
	}

	public void setCODENM(String cODENM) {
		CODENM = cODENM;
	}

	public String getCODE() {
		return CODE;
	}

	public void setCODE(String cODE) {
		CODE = cODE;
	}

	public String getIDXDGNSSID() {
		return IDXDGNSSID;
	}

	public void setIDXDGNSSID(String iDXDGNSSID) {
		IDXDGNSSID = iDXDGNSSID;
	}

	public String getIDXDGNSSNM() {
		return IDXDGNSSNM;
	}

	public void setIDXDGNSSNM(String iDXDGNSSNM) {
		IDXDGNSSNM = iDXDGNSSNM;
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

	public String getUSEAT() {
		return USEAT;
	}

	public void setUSEAT(String uSEAT) {
		USEAT = uSEAT;
	}

	public String getNTCETYCODE2() {
		return NTCETYCODE2;
	}

	public void setNTCETYCODE2(String nTCETYCODE2) {
		NTCETYCODE2 = nTCETYCODE2;
	}

	public String getNTCETYCODE2NM() {
		return NTCETYCODE2NM;
	}

	public void setNTCETYCODE2NM(String nTCETYCODE2NM) {
		NTCETYCODE2NM = nTCETYCODE2NM;
	}

	public String getNTCEBEGINDT() {
		return NTCEBEGINDT;
	}

	public void setNTCEBEGINDT(String nTCEBEGINDT) {
		NTCEBEGINDT = nTCEBEGINDT;
	}

	public String getNTCEENDDT() {
		return NTCEENDDT;
	}

	public void setNTCEENDDT(String nTCEENDDT) {
		NTCEENDDT = nTCEENDDT;
	}

	public String getQESITMCO() {
		return QESITMCO;
	}

	public void setQESITMCO(String qESITMCO) {
		QESITMCO = qESITMCO;
	}

	public String getRESULTCO() {
		return RESULTCO;
	}

	public void setRESULTCO(String rESULTCO) {
		RESULTCO = rESULTCO;
	}

}