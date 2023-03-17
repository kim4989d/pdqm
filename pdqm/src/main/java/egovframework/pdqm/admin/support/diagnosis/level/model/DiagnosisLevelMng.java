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
public class  DiagnosisLevelMng implements Serializable {
	
	public String getUpperDgnssTrgetNm() {
		return upperDgnssTrgetNm;
	}
	public void setUpperDgnssTrgetNm(String upperDgnssTrgetNm) {
		this.upperDgnssTrgetNm = upperDgnssTrgetNm;
	}
	/*
	 * 진단대상ID
	 */
	private String dgnssTrgetId = "";
		
	/*
	 * 상위 진단대상ID
	 */
	private String upperDgnssTrgetId = "";
	
	/*
	 * 진단대상명
	 */
	private String dgnssTrgetNm = "";
	
	/*
	 * 진단대상레벨
	 */
	private String dgnssTrgetLevel = "";
	
	/*
	 * 진단대상설명
	 */
	private String dgnssTrgetDc = "";
	
	/*
	 * 진단대상상태코드
	 */
	private String dgnssTrgetSttusCode = "";
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
	
	/*
	 * 상위 진단대상명
	 */
	private String upperDgnssTrgetNm = "";
	
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
	 * 관점목록조회아이디
	 */
	private String viewDgnssTrgetId = "";
	
	
	
	
	public String getViewDgnssTrgetId() {
		return viewDgnssTrgetId;
	}
	public void setViewDgnssTrgetId(String viewDgnssTrgetId) {
		this.viewDgnssTrgetId = viewDgnssTrgetId;
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
	public String getDgnssTrgetId() {
		return dgnssTrgetId;
	}
	public void setDgnssTrgetId(String dgnssTrgetId) {
		this.dgnssTrgetId = dgnssTrgetId;
	}
	public String getUpperDgnssTrgetId() {
		return upperDgnssTrgetId;
	}
	public void setUpperDgnssTrgetId(String upperDgnssTrgetId) {
		this.upperDgnssTrgetId = upperDgnssTrgetId;
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
	public String getDgnssTrgetDc() {
		return dgnssTrgetDc;
	}
	public void setDgnssTrgetDc(String dgnssTrgetDc) {
		this.dgnssTrgetDc = dgnssTrgetDc;
	}
	public String getDgnssTrgetSttusCode() {
		return dgnssTrgetSttusCode;
	}
	public void setDgnssTrgetSttusCode(String dgnssTrgetSttusCode) {
		this.dgnssTrgetSttusCode = dgnssTrgetSttusCode;
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


}
