package egovframework.pdqm.admin.support.diagnosis.level.model;

import java.io.Serializable;

/**
 * 진단대상관리 모델 클래스
 * @author 공통서비스 개발팀 이중호
 * @since 2009.04.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.04.01  이중호          최초 생성
 *
 * </pre>
 */
public class  DiagnosisLevelScore implements Serializable {
	

	/*
	 * 코드ID
	 */
	private String codeId = "";
	
	/*
	 * 코드
	 */
	private String code = "";
	
	/*
	 * 진단대상ID
	 */
	private String dgnssTrgetId = "";
	/*
	 * 진단대상명
	 */
	private String dgnssTrgetNm = "";
	
	/*
	 * 진단대상레벨
	 */
	private String dgnssTrgetLevel = "";
	
	/*
	 * 최소값
	 */
	private String mumm = "";
	
	
	/*
	 * 최대값
	 */
	private String mxmm = "";
	
	/*
	 * 결과설명
	 */
	private String resultDc = "";
	
	/*
	 * 사용여부
	 */
	private String useYn = "";
	
	/*
	 * 수정할 최소값
	 */
	private String mumms = "";
	/*
	 * 수정할 최대값
	 */
	private String mxmms = "";
	
	/*
	 * 상위대상명
	 */
	private String upperDgnssTrgetNm = "";
	
	/*
	 * 수정할 코드값
	 */
	private String codes = "";
	
	/*
	 * 코드명
	 */
	private String codeNm = "";
	
	
	/*
	 * 등록자
	 */
	private String mberNm = "";
	
	
	public String getMberNm() {
		return mberNm;
	}

	public void setMberNm(String mberNm) {
		this.mberNm = mberNm;
	}

	public String getCodeNm() {
		return codeNm;
	}

	public void setCodeNm(String codeNm) {
		this.codeNm = codeNm;
	}

	public String getCodes() {
		return codes;
	}

	public void setCodes(String codes) {
		this.codes = codes;
	}

	public String getUpperDgnssTrgetNm() {
		return upperDgnssTrgetNm;
	}

	public void setUpperDgnssTrgetNm(String upperDgnssTrgetNm) {
		this.upperDgnssTrgetNm = upperDgnssTrgetNm;
	}

	public String getMumms() {
		return mumms;
	}

	public void setMumms(String mumms) {
		this.mumms = mumms;
	}

	public String getMxmms() {
		return mxmms;
	}

	public void setMxmms(String mxmms) {
		this.mxmms = mxmms;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

	public String getCodeId() {
		return codeId;
	}

	public void setCodeId(String codeId) {
		this.codeId = codeId;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDgnssTrgetId() {
		return dgnssTrgetId;
	}

	public void setDgnssTrgetId(String dgnssTrgetId) {
		this.dgnssTrgetId = dgnssTrgetId;
	}
	
	public String getDgnssTrgetNm() {
		return dgnssTrgetNm; 
	}

	public void setDgnssTrgetNm(String dgnssTrgetNm) {
		this.dgnssTrgetNm = dgnssTrgetNm;
	}
	
	public String getDgnssTrgetLevel() {
		return dgnssTrgetLevel;
	}

	public void setDgnssTrgetLevel(String dgnssTrgetLevel) {
		this.dgnssTrgetLevel = dgnssTrgetLevel;
	}

	public String getMumm() {
		return mumm;
	}

	public void setMumm(String mumm) {
		this.mumm = mumm;
	}

	public String getMxmm() {
		return mxmm;
	}

	public void setMxmm(String mxmm) {
		this.mxmm = mxmm;
	}

	public String getResultDc() {
		return resultDc;
	}

	public void setResultDc(String resultDc) {
		this.resultDc = resultDc;
	}

	public String getFrstRegisterId() {
		return frstRegisterId;
	}

	public void setFrstRegisterId(String frstRegisterId) {
		this.frstRegisterId = frstRegisterId;
	}

	public String getLastUpdusrId() {
		return lastUpdusrId;
	}

	public void setLastUpdusrId(String lastUpdusrId) {
		this.lastUpdusrId = lastUpdusrId;
	}

	/*
	 * 등록자
	 */
	private String frstRegisterId = "";
	
	/*
	 * 수정자
	 */
	private String lastUpdusrId = "";
	
	/*
	 * 등록일
	 */
	private String frstRegistPnttm = "";


	public String getFrstRegistPnttm() {
		return frstRegistPnttm;
	}

	public void setFrstRegistPnttm(String frstRegistPnttm) {
		this.frstRegistPnttm = frstRegistPnttm;
	}
	
	
}
