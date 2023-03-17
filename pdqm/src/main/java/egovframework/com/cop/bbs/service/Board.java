package egovframework.com.cop.bbs.service;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * @Class Name  : Board.java
 * @Description : 게시물에 대한 데이터 처리 모델
 * @Modification Information
 * 
 *     수정일         수정자                   수정내용
 *     -------          --------        ---------------------------
 *   2009.03.06       이삼섭                  최초 생성
 *
 * @author 공통 서비스 개발팀 이삼섭
 * @since 2009. 02. 13
 * @version 1.0
 * @see 
 * 
 */
@SuppressWarnings("serial")
public class Board implements Serializable {

	/**
	 * 게시물 첨부파일 아이디
	 */
	private String atchFileId = "";
	/**
	 * 게시판 아이디
	 */
	private String bbsId = "";
	/**
	 * 최초등록자 아이디
	 */
	private String frstRegisterId = "";
	/**
	 * 최초등록시점
	 */
	private String frstRegisterPnttm = "";
	/**
	 * 최종수정자 아이디
	 */
	private String lastUpdusrId = "";
	/**
	 * 최종수정시점
	 */
	private String lastUpdusrPnttm = "";
	/**
	 * 게시시작일
	 */
	private String ntceBgnde = "";
	/**
	 * 게시종료일
	 */
	private String ntceEndde = "";
	/**
	 * 게시자 아이디
	 */
	private String ntcrId = "";
	/**
	 * 게시자명
	 */
	private String ntcrNm = "";
	/**
	 * 게시물 내용
	 */
	private String nttCn = "";
	/**
	 * 게시물 아이디
	 */
	private long nttId = 0L;
	/**
	 * 게시물 번호
	 */
	private long nttNo = 0L;
	/**
	 * 게시물 제목
	 */
	private String nttSj = "";
	/**
	 * 부모글번호
	 */
	private String parnts = "0";
	/**
	 * 패스워드
	 */
	private String password = "";
	/**
	 * 조회수
	 */
	private int inqireCo = 0;
	/**
	 * 답장여부
	 */
	private String replyAt = "";
	/**
	 * 답장위치
	 */
	private String replyLc = "0";
	/**
	 * 정렬순서
	 */
	private long sortOrdr = 0L;
	/**
	 * 사용여부
	 */
	private String useAt = "";
	/**
	 * 게시 종료일
	 */
	private String ntceEnddeView = ""; 
	/**
	 * 게시 시작일
	 */
	private String ntceBgndeView = "";
	
	/** khyoon 게시물분류코드 2011.10.27 */
	private String nttClCode = "";
	
    /** khyoon 파일다운로드 횟수 2011.10.27 */
	private int fileDownCnt = 0;

	/** khyoon 게시물분류코드ID 추가 2011.10.25 */
	private String nttClCodeId = "";
	
	/** khyoon 게시물분류코드명 추가 2011.10.26 */
	private String nttClCodeNm = "";
	
	/** khyoon SNS내보내기가능여부 옵션 추가 2011.10.25 */
	private String snsExportPosblAt = "N";
	
	/** khyoon 언론사명 2011.10.27 */
	private String pressNm = "";

	/** khyoon 조회 게시글 이전글 2011.11.01 */
	private String previousNttSj = "";
	private String previousNttId = "";

	/** khyoon 조회 게시글 다음글 2011.11.01 */
	private String nextNttSj = "";
	private String nextNttId = "";
	
	/** khyoon 발행월, 블로그/트위터/페이스북주소 2011.11.15 */
	private String pubDate = "";
	
	/** khyoon 뉴스레터폼형식 2011.11.23 */
	private String newsletterForm = "";
	
	/** khyoon 제목 줄임 : 메인 공지사항 표시용 2011.12.08 */
	private String summaryNttSj = "";
	
	/** khyoon 제목 줄임 : 일반 게시판 목록용 2011.12.20 */
	private String autoAbbrNttSj80 = ""; 
	private String autoAbbrNttSj92 = "";
	
	public String getSummaryNttSj() {
		summaryNttSj = getMakeAbbreviation(nttSj, 52);
		return summaryNttSj;
	}
	
	public String getAutoAbbrNttSj80() {
		autoAbbrNttSj80 = getMakeAbbreviation(nttSj, 80);
		return autoAbbrNttSj80;
	}
	
	public String getAutoAbbrNttSj92() {
		autoAbbrNttSj92 = getMakeAbbreviation(nttSj, 92);
		return autoAbbrNttSj92;
	}	
	
	private String getMakeAbbreviation(String subject, int bMaxLength) {
		String abbrSubject = subject;
		int bLength = subject.getBytes().length;
		if(bLength > bMaxLength) {
			abbrSubject = subject.substring(0,getEndIndex((bMaxLength-2),subject)) + "...";
		}
		return abbrSubject;		
	}

	private int getEndIndex(int bLength, String str) {
		for(int i=0; i<str.length(); i++) {
			int bCurrLength = str.substring(0,i).getBytes().length;
			if(bCurrLength >= bLength) {
				return i;
			}
		}
		
		return str.length();
	}

	public void setSummaryNttSj(String summaryNttSj) {
		this.summaryNttSj = summaryNttSj;
	}

	public String getNewsletterForm() {
		return newsletterForm;
	}

	public void setNewsletterForm(String newsletterForm) {
		this.newsletterForm = newsletterForm;
	}

	public String getPubDate() {
		return pubDate;
	}

	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}

	private String pubYear = "";
	private String pubMonth = "";
	private String blogUrl = "";
	private String twitterUrl = "";
	private String facebookUrl = "";
	/*~khyoon */

	public String getPubYear() {
		return pubYear;
	}

	public void setPubYear(String pubYear) {
		this.pubYear = pubYear;
	}

	public String getPubMonth() {
		return pubMonth;
	}

	public void setPubMonth(String pubMonth) {
		this.pubMonth = pubMonth;
	}

	public String getBlogUrl() {
		return blogUrl;
	}

	public void setBlogUrl(String blogUrl) {
		this.blogUrl = blogUrl;
	}

	public String getTwitterUrl() {
		return twitterUrl;
	}

	public void setTwitterUrl(String twitterUrl) {
		this.twitterUrl = twitterUrl;
	}

	public String getFacebookUrl() {
		return facebookUrl;
	}

	public void setFacebookUrl(String facebookUrl) {
		this.facebookUrl = facebookUrl;
	}

	public String getPreviousNttId() {
		return previousNttId;
	}

	public void setPreviousNttId(String previousNttId) {
		this.previousNttId = previousNttId;
	}

	public String getNextNttId() {
		return nextNttId;
	}

	public void setNextNttId(String nextNttId) {
		this.nextNttId = nextNttId;
	}

	/** khyoon 출처 2011.10.27 */
	private String sourceUrl = "";

	/** khyoon 보도일자 2011.10.27 */
	private String newsDay = "";

	/** khyoon 보도일자View 2011.11.02 */
	private String newsDayView = "";
	
	public String getNewsDayView() {
		return newsDayView;
	}

	public void setNewsDayView(String newsDayView) {
		this.newsDayView = newsDayView;
	}

	public String getPressNm() {
		return pressNm;
	}

	public void setPressNm(String pressNm) {
		this.pressNm = pressNm;
	}

	public String getSourceUrl() {
		return sourceUrl;
	}

	public void setSourceUrl(String sourceUrl) {
		this.sourceUrl = sourceUrl;
	}

	public String getNewsDay() {
		return newsDay;
	}

	public void setNewsDay(String newsDay) {
		this.newsDay = newsDay;
	}
	
    public int getFileDownCnt() {
		return fileDownCnt;
	}

	public void setFileDownCnt(int fileDownCnt) {
		this.fileDownCnt = fileDownCnt;
	}

	public String getPreviousNttSj() {
		return previousNttSj;
	}

	public void setPreviousNttSj(String previousNttSj) {
		this.previousNttSj = previousNttSj;
	}

	public String getNextNttSj() {
		return nextNttSj;
	}

	public void setNextNttSj(String nextNttSj) {
		this.nextNttSj = nextNttSj;
	}
    
    
    public String getNttClCodeId() {
		return nttClCodeId;
	}

	public void setNttClCodeId(String nttClCodeId) {
		this.nttClCodeId = nttClCodeId;
	}

	public String getNttClCodeNm() {
		return nttClCodeNm;
	}

	public void setNttClCodeNm(String nttClCodeNm) {
		this.nttClCodeNm = nttClCodeNm;
	}

	public String getSnsExportPosblAt() {
		return snsExportPosblAt;
	}

	public void setSnsExportPosblAt(String snsExportPosblAt) {
		this.snsExportPosblAt = snsExportPosblAt;
	}

	/**
	 * atchFileId attribute를 리턴한다.
	 * @return the atchFileId
	 */
	public String getAtchFileId() {
		return atchFileId;
	}

	/**
	 * atchFileId attribute 값을 설정한다.
	 * @param atchFileId the atchFileId to set
	 */
	public void setAtchFileId(String atchFileId) {
		this.atchFileId = atchFileId;
	}

	public String getNttClCode() {
		return nttClCode;
	}

	public void setNttClCode(String nttClCode) {
		this.nttClCode = nttClCode;
	}

	/**
	 * bbsId attribute를 리턴한다.
	 * @return the bbsId
	 */
	public String getBbsId() {
		return bbsId;
	}

	/**
	 * bbsId attribute 값을 설정한다.
	 * @param bbsId the bbsId to set
	 */
	public void setBbsId(String bbsId) {
		this.bbsId = bbsId;
	}

	/**
	 * frstRegisterId attribute를 리턴한다.
	 * @return the frstRegisterId
	 */
	public String getFrstRegisterId() {
		return frstRegisterId;
	}

	/**
	 * frstRegisterId attribute 값을 설정한다.
	 * @param frstRegisterId the frstRegisterId to set
	 */
	public void setFrstRegisterId(String frstRegisterId) {
		this.frstRegisterId = frstRegisterId;
	}

	/**
	 * frstRegisterPnttm attribute를 리턴한다.
	 * @return the frstRegisterPnttm
	 */
	public String getFrstRegisterPnttm() {
		return frstRegisterPnttm;
	}

	/**
	 * frstRegisterPnttm attribute 값을 설정한다.
	 * @param frstRegisterPnttm the frstRegisterPnttm to set
	 */
	public void setFrstRegisterPnttm(String frstRegisterPnttm) {
		this.frstRegisterPnttm = frstRegisterPnttm;
	}

	/**
	 * lastUpdusrId attribute를 리턴한다.
	 * @return the lastUpdusrId
	 */
	public String getLastUpdusrId() {
		return lastUpdusrId;
	}

	/**
	 * lastUpdusrId attribute 값을 설정한다.
	 * @param lastUpdusrId the lastUpdusrId to set
	 */
	public void setLastUpdusrId(String lastUpdusrId) {
		this.lastUpdusrId = lastUpdusrId;
	}

	/**
	 * lastUpdusrPnttm attribute를 리턴한다.
	 * @return the lastUpdusrPnttm
	 */
	public String getLastUpdusrPnttm() {
		return lastUpdusrPnttm;
	}

	/**
	 * lastUpdusrPnttm attribute 값을 설정한다.
	 * @param lastUpdusrPnttm the lastUpdusrPnttm to set
	 */
	public void setLastUpdusrPnttm(String lastUpdusrPnttm) {
		this.lastUpdusrPnttm = lastUpdusrPnttm;
	}

	/**
	 * ntceBgnde attribute를 리턴한다.
	 * @return the ntceBgnde
	 */
	public String getNtceBgnde() {
		return ntceBgnde;
	}

	/**
	 * ntceBgnde attribute 값을 설정한다.
	 * @param ntceBgnde the ntceBgnde to set
	 */
	public void setNtceBgnde(String ntceBgnde) {
		this.ntceBgnde = ntceBgnde;
	}

	/**
	 * ntceEndde attribute를 리턴한다.
	 * @return the ntceEndde
	 */
	public String getNtceEndde() {
		return ntceEndde;
	}

	/**
	 * ntceEndde attribute 값을 설정한다.
	 * @param ntceEndde the ntceEndde to set
	 */
	public void setNtceEndde(String ntceEndde) {
		this.ntceEndde = ntceEndde;
	}

	/**
	 * ntcrId attribute를 리턴한다.
	 * @return the ntcrId
	 */
	public String getNtcrId() {
		return ntcrId;
	}

	/**
	 * ntcrId attribute 값을 설정한다.
	 * @param ntcrId the ntcrId to set
	 */
	public void setNtcrId(String ntcrId) {
		this.ntcrId = ntcrId;
	}

	/**
	 * ntcrNm attribute를 리턴한다.
	 * @return the ntcrNm
	 */
	public String getNtcrNm() {
		return ntcrNm;
	}

	/**
	 * ntcrNm attribute 값을 설정한다.
	 * @param ntcrNm the ntcrNm to set
	 */
	public void setNtcrNm(String ntcrNm) {
		this.ntcrNm = ntcrNm;
	}

	/**
	 * nttCn attribute를 리턴한다.
	 * @return the nttCn
	 */
	public String getNttCn() {
		return nttCn;
	}

	/**
	 * nttCn attribute 값을 설정한다.
	 * @param nttCn the nttCn to set
	 */
	public void setNttCn(String nttCn) {
		this.nttCn = nttCn;
	}

	/**
	 * nttId attribute를 리턴한다.
	 * @return the nttId
	 */
	public long getNttId() {
		return nttId;
	}

	/**
	 * nttId attribute 값을 설정한다.
	 * @param nttId the nttId to set
	 */
	public void setNttId(long nttId) {
		this.nttId = nttId;
	}

	/**
	 * nttNo attribute를 리턴한다.
	 * @return the nttNo
	 */
	public long getNttNo() {
		return nttNo;
	}

	/**
	 * nttNo attribute 값을 설정한다.
	 * @param nttNo the nttNo to set
	 */
	public void setNttNo(long nttNo) {
		this.nttNo = nttNo;
	}

	/**
	 * nttSj attribute를 리턴한다.
	 * @return the nttSj
	 */
	public String getNttSj() {
		return nttSj;
	}

	/**
	 * nttSj attribute 값을 설정한다.
	 * @param nttSj the nttSj to set
	 */
	public void setNttSj(String nttSj) {
		this.nttSj = nttSj;
	}

	/**
	 * parnts attribute를 리턴한다.
	 * @return the parnts
	 */
	public String getParnts() {
		return parnts;
	}

	/**
	 * parnts attribute 값을 설정한다.
	 * @param parnts the parnts to set
	 */
	public void setParnts(String parnts) {
		this.parnts = parnts;
	}

	/**
	 * password attribute를 리턴한다.
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * password attribute 값을 설정한다.
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * inqireCo attribute를 리턴한다.
	 * @return the inqireCo
	 */
	public int getInqireCo() {
		return inqireCo;
	}

	/**
	 * inqireCo attribute 값을 설정한다.
	 * @param inqireCo the inqireCo to set
	 */
	public void setInqireCo(int inqireCo) {
		this.inqireCo = inqireCo;
	}

	/**
	 * replyAt attribute를 리턴한다.
	 * @return the replyAt
	 */
	public String getReplyAt() {
		return replyAt;
	}

	/**
	 * replyAt attribute 값을 설정한다.
	 * @param replyAt the replyAt to set
	 */
	public void setReplyAt(String replyAt) {
		this.replyAt = replyAt;
	}

	/**
	 * replyLc attribute를 리턴한다.
	 * @return the replyLc
	 */
	public String getReplyLc() {
		return replyLc;
	}

	/**
	 * replyLc attribute 값을 설정한다.
	 * @param replyLc the replyLc to set
	 */
	public void setReplyLc(String replyLc) {
		this.replyLc = replyLc;
	}

	/**
	 * sortOrdr attribute를 리턴한다.
	 * @return the sortOrdr
	 */
	public long getSortOrdr() {
		return sortOrdr;
	}

	/**
	 * sortOrdr attribute 값을 설정한다.
	 * @param sortOrdr the sortOrdr to set
	 */
	public void setSortOrdr(long sortOrdr) {
		this.sortOrdr = sortOrdr;
	}

	/**
	 * useAt attribute를 리턴한다.
	 * @return the useAt
	 */
	public String getUseAt() {
		return useAt;
	}

	/**
	 * useAt attribute 값을 설정한다.
	 * @param useAt the useAt to set
	 */
	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}

	/**
	 * ntceEnddeView attribute를 리턴한다.
	 * @return the ntceEnddeView
	 */
	public String getNtceEnddeView() {
		return ntceEnddeView;
	}

	/**
	 * ntceEnddeView attribute 값을 설정한다.
	 * @param ntceEnddeView the ntceEnddeView to set
	 */
	public void setNtceEnddeView(String ntceEnddeView) {
		this.ntceEnddeView = ntceEnddeView;
	}

	/**
	 * ntceBgndeView attribute를 리턴한다.
	 * @return the ntceBgndeView
	 */
	public String getNtceBgndeView() {
		return ntceBgndeView;
	}

	/**
	 * ntceBgndeView attribute 값을 설정한다.
	 * @param ntceBgndeView the ntceBgndeView to set
	 */
	public void setNtceBgndeView(String ntceBgndeView) {
		this.ntceBgndeView = ntceBgndeView;
	}

	/**
	 * toString 메소드를 대치한다.
	 */
	public String toString(){
		return ToStringBuilder.reflectionToString(this);
	}
}
