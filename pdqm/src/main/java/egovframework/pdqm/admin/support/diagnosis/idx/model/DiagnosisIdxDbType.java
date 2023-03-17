package egovframework.pdqm.admin.support.diagnosis.idx.model;

import java.io.Serializable;

/**
 * 지표 및 특성 관리 모델 클래스
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
public class  DiagnosisIdxDbType implements Serializable {

	public String getDatabaseTyId() {
		return databaseTyId;
	}

	public void setDatabaseTyId(String databaseTyId) {
		this.databaseTyId = databaseTyId;
	}

	public String getDatabaseTyNm() {
		return databaseTyNm;
	}

	public void setDatabaseTyNm(String databaseTyNm) {
		this.databaseTyNm = databaseTyNm;
	}

	public String getResultDc() {
		return resultDc;
	}

	public void setResultDc(String resultDc) {
		this.resultDc = resultDc;
	}

	public String getReferDc() {
		return referDc;
	}

	public void setReferDc(String referDc) {
		this.referDc = referDc;
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
	 * 데이터베이스유형ID
	 */
	private String databaseTyId = "";

	/*
	 * 데이터베이스유형명
	 */
	private String databaseTyNm = "";

	/*
	 * 결과설명
	 */
	private String resultDc = "";

	/*
	 * 참고설명
	 */
	private String referDc = "";

	/*
	 * 최초등록자ID
	 */
	private String frstRegisterId = "";

	/*
	 * 최종수정자ID
	 */
	private String lastUpdusrId = "";

	
}
