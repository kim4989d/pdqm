package egovframework.pdqm.admin.support.diagnosis.level.model;

import java.io.Serializable;

/**
 * 문항관리 모델 클래스
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
public class  DiagnosisLevelQuiz implements Serializable {
	
	/*
	 * 문항ID
	 */
	private String qesitmId = "";	
	/*
	 * 진단대상ID
	 */
	private String dgnssTrgetId = "";	

	/*
	 * 진단대상명
	 */
	private String dgnssTrgetNm = "";	
	
	/*
	 * 상위진단대상ID
	 */
	private String upperDgnssTrgetId = "";	
	
	/*
	 * 상위진단대상명
	 */
	private String upperDgnssTrgetNm = "";	
	


	/*
	 * 문항
	 */
	private String qesitm = "";	
	/*
	 * 답변유형코드
	 */
	private String answerTyCode = "";	
	
	/*
	 * 답변ID
	 */
	private String answerId = "";	
	/*
	 * 답변
	 */
	private String answer = "";	
	/*
	 * 답변기준
	 */
	private String answerStdr = "";	
	/*
	 * 배점
	 */
	private String allot = "";	
	
	/*
	 * 등록자
	 */
	private String frstRegisterId = "";	
	/*
	 * 수정자
	 */
	private String lastUpdusrId = "";
	
	/*
	 * 답변항목조회
	 */
	private String searchAnswerTyCode = "";
	
	
	/*
	 * 답변s
	 */
	private String answers = "";	
	/*
	 * 답변기준s
	 */
	private String answerStdrs = "";	
	/*
	 * 배점s
	 */
	private String allots = "";	
	
	/*
	 * 순번
	 */
	private int sortOrdr = 0;	
	
	
	public int getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(int sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
	public String getAnswers() {
		return answers;
	}
	public void setAnswers(String answers) {
		this.answers = answers;
	}
	public String getAnswerStdrs() {
		return answerStdrs;
	}
	public void setAnswerStdrs(String answerStdrs) {
		this.answerStdrs = answerStdrs;
	}
	public String getAllots() {
		return allots;
	}
	public void setAllots(String allots) {
		this.allots = allots;
	}
	public String getSearchAnswerTyCode() {
		return searchAnswerTyCode;
	}
	public void setSearchAnswerTyCode(String searchAnswerTyCode) {
		this.searchAnswerTyCode = searchAnswerTyCode;
	}
	public String getQesitmId() {
		return qesitmId;
	}
	public void setQesitmId(String qesitmId) {
		this.qesitmId = qesitmId;
	}
	public String getDgnssTrgetId() {
		return dgnssTrgetId;
	}
	public void setDgnssTrgetId(String dgnssTrgetId) {
		this.dgnssTrgetId = dgnssTrgetId;
	}
	public String getQesitm() {
		return qesitm;
	}
	public void setQesitm(String qesitm) {
		this.qesitm = qesitm;
	}
	public String getAnswerTyCode() {
		return answerTyCode;
	}
	public void setAnswerTyCode(String answerTyCode) {
		this.answerTyCode = answerTyCode;
	}
	public String getAnswerId() {
		return answerId;
	}
	public void setAnswerId(String answerId) {
		this.answerId = answerId;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getAnswerStdr() {
		return answerStdr;
	}
	public void setAnswerStdr(String answerStdr) {
		this.answerStdr = answerStdr;
	}
	public String getAllot() {
		return allot;
	}
	public void setAllot(String allot) {
		this.allot = allot;
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
	public int getDgnssCntQesitmCount() {
		return dgnssCntQesitmCount;
	}
	public void setDgnssCntQesitmCount(int dgnssCntQesitmCount) {
		this.dgnssCntQesitmCount = dgnssCntQesitmCount;
	}
	
	public String getDgnssTrgetNm() {
		return dgnssTrgetNm;
	}
	public void setDgnssTrgetNm(String dgnssTrgetNm) {
		this.dgnssTrgetNm = dgnssTrgetNm;
	}
	public String getUpperDgnssTrgetId() {
		return upperDgnssTrgetId;
	}
	public void setUpperDgnssTrgetId(String upperDgnssTrgetId) {
		this.upperDgnssTrgetId = upperDgnssTrgetId;
	}
	public String getUpperDgnssTrgetNm() {
		return upperDgnssTrgetNm;
	}
	public void setUpperDgnssTrgetNm(String upperDgnssTrgetNm) {
		this.upperDgnssTrgetNm = upperDgnssTrgetNm;
	}
	
	private String dgnssCntTrgetId = null ;		//진단대상ID
	private String dgnssCntTrgetNm = null ;		//진단대상명
	private String dgnssCntTrgetDc = null ;		//진단대상설명
	private int dgnssCntQesitmCount ;

}
