package egovframework.pdqm.admin.support.diagnosis.idx.model;

import java.io.Serializable;

import org.springframework.ui.ModelMap;
import java.math.BigDecimal;

public class DianoIdxQesMngVo extends DiagnosisIdxCommonVo {

	private String IDXID;
	private String IDXNM;
	private String IDXDC;
	private String QESITMCOUNT;

	private String UPPERIDXID;
	private String QESITMID;
	private String QESITM;
	private String ANSWERTYCODE;
	private String Q_SORTORDR;
	private String ANSWERID;
	private String ANSWER;
	private String ANSWERSTDR;
	private String ALLOT;
	private String ASORTORDR;
	private String QESITMCO;
	private String ANSWERCO;
	private String LEVELNM;
	private String CODE;
	private String CODENM;
	private String RADIOSELECT;
	private String TABIDXID;
	private String  ANSWRERSTR;
	private String SORTORDR;
	private String CODEID;
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

	public String getCODEID() {
		return CODEID;
	}

	public void setCODEID(String cODEID) {
		CODEID = cODEID;
	}

	public String getSORTORDR() {
		return SORTORDR;
	}

	public void setSORTORDR(String sORTORDR) {
		SORTORDR = sORTORDR;
	}

	
	public String getANSWRERSTR() {
		return ANSWRERSTR;
	}

	public void setANSWRERSTR(String aNSWRERSTR) {
		ANSWRERSTR = aNSWRERSTR;
	}

	public String getTABIDXID() {
		return TABIDXID;
	}

	public void setTABIDXID(String tABIDXID) {
		TABIDXID = tABIDXID;
	}

	public String getRADIOSELECT() {
		return RADIOSELECT;
	}

	public void setRADIOSELECT(String rADIOSELECT) {
		RADIOSELECT = rADIOSELECT;
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

	
	public String getLEVELNM() {
		return LEVELNM;
	}

	public void setLEVELNM(String lEVELNM) {
		LEVELNM = lEVELNM;
	}

	public String getUPPERIDXID() {
		return UPPERIDXID;
	}

	public void setUPPERIDXID(String uPPERIDXID) {
		UPPERIDXID = uPPERIDXID;
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

	public String getANSWERTYCODE() {
		return ANSWERTYCODE;
	}

	public void setANSWERTYCODE(String aNSWERTYCODE) {
		ANSWERTYCODE = aNSWERTYCODE;
	}

	public String getQ_SORTORDR() {
		return Q_SORTORDR;
	}

	public void setQ_SORTORDR(String q_SORTORDR) {
		Q_SORTORDR = q_SORTORDR;
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

	public String getQESITMCO() {
		return QESITMCO;
	}

	public void setQESITMCO(String qESITMCO) {
		QESITMCO = qESITMCO;
	}

	public String getANSWERCO() {
		return ANSWERCO;
	}

	public void setANSWERCO(String aNSWERCO) {
		ANSWERCO = aNSWERCO;
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

	public String getIDXDC() {
		return IDXDC;
	}

	public void setIDXDC(String iDXDC) {
		IDXDC = iDXDC;
	}

	public String getQESITMCOUNT() {
		return QESITMCOUNT;
	}

	public void setQESITMCOUNT(String qESITMCOUNT) {
		QESITMCOUNT = qESITMCOUNT;
	}

}
