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
public class  DiagnosisIdxMng implements Serializable {

	/*
	 * 지표ID
	 */
	private String idxId = "";
	
	/*
	 * 상위 지표ID
	 */
	private String upperIdxId = "";
	
	
	/*
	 * 지표명
	 */
	private String idxNm = "";
	
	
	/*
	 * 지표레벨
	 */
	private String idxLevel = "";
	
	/*
	 * 지표설명
	 */
	private String idxDc = "";
	
	/*
	 * 특성상위명
	 */
	private String upperIdxNm = "";
	
	/*
	 * 업데이트 상태
	 */
	private String state = "";
	
	/*
	 * 정렬순서
	 */
	private String oldSortOrdr = "";
	
	/*
	 * 순번 업데이트 YN
	 */
	private String orderUpChk = "";
	
	/*
	 * 특성목록조회아이디
	 */
	private String propertyIdxLevelId = "";
	
	public String getPropertyIdxLevelId() {
		return propertyIdxLevelId;
	}

	public void setPropertyIdxLevelId(String propertyIdxLevelId) {
		this.propertyIdxLevelId = propertyIdxLevelId;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getOldSortOrdr() {
		return oldSortOrdr;
	}

	public void setOldSortOrdr(String oldSortOrdr) {
		this.oldSortOrdr = oldSortOrdr;
	}

	public String getOrderUpChk() {
		return orderUpChk;
	}

	public void setOrderUpChk(String orderUpChk) {
		this.orderUpChk = orderUpChk;
	}

	public String getUpperIdxNm() {
		return upperIdxNm;
	}

	public void setUpperIdxNm(String upperIdxNm) {
		this.upperIdxNm = upperIdxNm;
	}

	public String getIdxId() {
		return idxId;
	}

	public void setIdxId(String idxId) {
		this.idxId = idxId;
	}

	public String getUpperIdxId() {
		return upperIdxId;
	}

	public void setUpperIdxId(String upperIdxId) {
		this.upperIdxId = upperIdxId;
	}

	public String getIdxNm() {
		return idxNm;
	}

	public void setIdxNm(String idxNm) {
		this.idxNm = idxNm;
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

	public String getIdxSttusCode() {
		return idxSttusCode;
	}

	public void setIdxSttusCode(String idxSttusCode) {
		this.idxSttusCode = idxSttusCode;
	}

	public float getWghtval() {
		return wghtval;
	}

	public void setWghtval(float wghtval) {
		this.wghtval = wghtval;
	}

	public String getSortOrdr() {
		return sortOrdr;
	}

	public void setSortOrdr(String sortOrdr) {
		this.sortOrdr = sortOrdr;
	}

	public String getUseAt() {
		return useAt;
	}

	public void setUseAt(String useAt) {
		this.useAt = useAt;
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
	 * 지표상태코드
	 */
	private String idxSttusCode = "";
	
	/*
	 * 가중치
	 */
	private float wghtval;
	
	/*
	 * 정렬순서
	 */
	private String sortOrdr = "";
	/*
	 * 사용여부
	 */
	private String useAt = "";
	
	/*
	 * 등록자
	 */
	private String frstRegisterId = "";
	
	/*
	 * 수정자
	 */
	private String lastUpdusrId = "";

	

}
