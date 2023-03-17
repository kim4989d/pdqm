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
public class  DiagnosisLevelSelf implements Serializable {
	

	
	/*
	 * 수준진단ID
	 */
	private String levelDgnssId = "";		
	
	/*
	 * 수준진단New ID
	 */
	private String newLevelDgnssId = "";	
	
	/*
	 * 수준진단명
	 */
	private String levelDgnssNm = "";	
	/*
	 * 게시유형코드
	 */
	private String ntceTyCode = "";	
	/*
	 * 게시시작일시
	 */
	private String ntceBeginDt = "";	
	/*
	 * 게시종료일시
	 */
	private String ntceEndDt = "";	
	/*
	 * 문항수
	 */
	private String qesitmCo = "";
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
	 * 문항번호
	 */
	private int qesitmNo = 0;
	/*
	 * 문항아이디
	 */
	private String qesitmId = "";
	

	public String getQesitmId() {
		return qesitmId;
	}
	public void setQesitmId(String qesitmId) {
		this.qesitmId = qesitmId;
	}
	public int getQesitmNo() {
		return qesitmNo;
	}
	public void setQesitmNo(int qesitmNo) {
		this.qesitmNo = qesitmNo;
	}

	private String dgnssCntTrgetId = null ;		//진단대상ID
	private String dgnssCntTrgetNm = null ;		//진단대상명
	private String dgnssCntTrgetDc = null ;		//진단대상설명
	private int dgnssCntQesitmCount1 ;
	private int dgnssCntQesitmCount2 ;
	
	/*
	 * 체크항목 
	 */
	private String checkValue = "";	
	
	
	public String getCheckValue() {
		return checkValue;
	}
	public void setCheckValue(String checkValue) {
		this.checkValue = checkValue;
	}
	public String getDgnssCntTrgetId() {
		return dgnssCntTrgetId;
	}
	public void setDgnssCntTrgetId(String dgnssCntTrgetId) {
		this.dgnssCntTrgetId = dgnssCntTrgetId;
	}
	public String getDgnssCntTrgetNm() {
		return dgnssCntTrgetNm;
	}
	public void setDgnssCntTrgetNm(String dgnssCntTrgetNm) {
		this.dgnssCntTrgetNm = dgnssCntTrgetNm;
	}
	public String getDgnssCntTrgetDc() {
		return dgnssCntTrgetDc;
	}
	public void setDgnssCntTrgetDc(String dgnssCntTrgetDc) {
		this.dgnssCntTrgetDc = dgnssCntTrgetDc;
	}
	public int getDgnssCntQesitmCount1() {
		return dgnssCntQesitmCount1;
	}
	public void setDgnssCntQesitmCount1(int dgnssCntQesitmCount1) {
		this.dgnssCntQesitmCount1 = dgnssCntQesitmCount1;
	}
	public int getDgnssCntQesitmCount2() {
		return dgnssCntQesitmCount2;
	}
	public void setDgnssCntQesitmCount2(int dgnssCntQesitmCount2) {
		this.dgnssCntQesitmCount2 = dgnssCntQesitmCount2;
	}
	public String getResultCo() {
		return resultCo;
	}
	public void setResultCo(String resultCo) {
		this.resultCo = resultCo;
	}
	
	/*
	 * 응답수
	 */
	private String resultCo = "";
	
	
	
	public String getLevelDgnssId() {
		return levelDgnssId;
	}
	public void setLevelDgnssId(String levelDgnssId) {
		this.levelDgnssId = levelDgnssId;
	}
	public String getNewLevelDgnssId() {
		return newLevelDgnssId;
	}
	public void setNewLevelDgnssId(String newLevelDgnssId) {
		this.newLevelDgnssId = newLevelDgnssId;
	}

	public String getLevelDgnssNm() {
		return levelDgnssNm;
	}
	public void setLevelDgnssNm(String levelDgnssNm) {
		this.levelDgnssNm = levelDgnssNm;
	}
	public String getNtceTyCode() {
		return ntceTyCode;
	}
	public void setNtceTyCode(String ntceTyCode) {
		this.ntceTyCode = ntceTyCode;
	}
	public String getNtceBeginDt() {
		return ntceBeginDt;
	}
	public void setNtceBeginDt(String ntceBeginDt) {
		this.ntceBeginDt = ntceBeginDt;
	}
	public String getNtceEndDt() {
		return ntceEndDt;
	}
	public void setNtceEndDt(String ntceEndDt) {
		this.ntceEndDt = ntceEndDt;
	}
	public String getQesitmCo() {
		return qesitmCo;
	}
	public void setQesitmCo(String qesitmCo) {
		this.qesitmCo = qesitmCo;
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
	
}
