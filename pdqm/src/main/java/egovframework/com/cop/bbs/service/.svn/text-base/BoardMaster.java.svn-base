package egovframework.com.cop.bbs.service;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 *  게시판 속성정보를 담기위한 엔티티 클래스
 * @author 공통서비스개발팀 이삼섭
 * @since 2009.06.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.03.12  이삼섭          최초 생성
 *   2009.06.26 한성곤		2단계 기능 추가 (댓글관리, 만족도조사)
 *	 2011.10.25 윤경한		게시물분류가능여부 옵션 추가
 * </pre>
 */
@SuppressWarnings("serial")
public class BoardMaster implements Serializable {
    
    /** 게시판 속성코드 */
    private String bbsAttrbCode = "";
    
    /** 게시판 아이디 */
    private String bbsId = "";
    
    /** 게시판 소개 */
    private String bbsIntrcn = "";
    
    /** 게시판 명 */
    private String bbsNm = "";
    
    /** 게시판 유형코드 */
    private String bbsTyCode = "";
    
    /** 파일첨부가능여부 */
    private String fileAtchPosblAt = "N";
    
    /** 최초등록자 아이디 */
    private String frstRegisterId = "";
    
    /** 최초등록시점 */
    private String frstRegisterPnttm = "";
    
    /** 최종수정자 아이디 */
    public String lastUpdusrId = "";
    
    /** 최종수정시점 */
    private String lastUpdusrPnttm = "";
    
    /** 첨부가능파일숫자 */
    private int posblAtchFileNumber = 0;
    
    /** 첨부가능파일사이즈 */
    // khyoon 첨부파일용량 제한은 약 5MB로 설정 2011.10.20
    //private String posblAtchFileSize = null;
    private String posblAtchFileSize = "5000000";
    
    /** 게시물분류가능여부 */
    // khyoon 게시물분류가능여부 옵션 추가 2011.10.25
    private String nttClPosblAt = "N";
    
    /** 게시물분류코드ID */
    // khyoon 게시물분류코드ID 추가 2011.10.25
    private String nttClCodeId = "";

    /** 게시물분류코드명 */
    // khyoon 게시물분류코드명 추가 2011.10.26
    private String nttClCodeNm = "";
    
	// khyoon SNS내보내기가능여부 옵션 추가 2011.10.25
    /** SNS내보내기가능여부 */
    private String snsExportPosblAt = "N";
    
    // khyoon NO컬럼사용여부 2011.11.14 
    private String noColPosblAt = "Y";
    
    // khyoon 등록자컬럼사용여부 2011.11.14
    private String regiColPosblAt = "Y";
    
    // khyoon 내용과목록함께보기 가능여부 2011.11.14
    private String cnWithListPosblAt = "N";
    
    // khyoono 상세목록보기가능여부 2011.11.14
    private String detailListPosblAt = "N";
    
    // khyoon 좌측메뉴 View 이름 2011.11.22
    private String bbsLeftMenuNm = "";
    //~khyoon
    
    public String getbbsLeftMenuNm() {
		return bbsLeftMenuNm;
	}

	public void setbbsLeftMenuNm(String bbsLeftMenuNm) {
		this.bbsLeftMenuNm = bbsLeftMenuNm;
	}

    
    public String getCnWithListPosblAt() {
		return cnWithListPosblAt;
	}

	public void setCnWithListPosblAt(String cnWithListPosblAt) {
		this.cnWithListPosblAt = cnWithListPosblAt;
	}

	public String getDetailListPosblAt() {
		return detailListPosblAt;
	}

	public void setDetailListPosblAt(String detailListPosblAt) {
		this.detailListPosblAt = detailListPosblAt;
	}

	public String getNoColPosblAt() {
		return noColPosblAt;
	}

	public void setNoColPosblAt(String noColPosblAt) {
		this.noColPosblAt = noColPosblAt;
	}

	public String getRegiColPosblAt() {
		return regiColPosblAt;
	}

	public void setRegiColPosblAt(String regiColPosblAt) {
		this.regiColPosblAt = regiColPosblAt;
	}

	public String getNttClCodeId() {
		return nttClCodeId;
	}

	public String getNttClCodeNm() {
		return nttClCodeNm;
	}

	public void setNttClCodeNm(String nttClCodeNm) {
		this.nttClCodeNm = nttClCodeNm;
	}

	public void setNttClCodeId(String nttClCodeId) {
		this.nttClCodeId = nttClCodeId;
	}

	public String getSnsExportPosblAt() {
		return snsExportPosblAt;
	}

	public void setSnsExportPosblAt(String snsExportPosblAt) {
		this.snsExportPosblAt = snsExportPosblAt;
	}
    
    public String getNttClPosblAt() {
		return nttClPosblAt;
	}

	public void setNttClPosblAt(String nttClPosblAt) {
		this.nttClPosblAt = nttClPosblAt;
	}

	/** 답장가능여부 */
    private String replyPosblAt = "N";
    
    /** 템플릿 아이디 */
    private String tmplatId = "";
    
    /** 사용여부 */
    private String useAt = "";
    
    /** 사용플래그 */
    private String bbsUseFlag = "";
    
    /** 대상 아이디 */
    private String trgetId = "";
    
    /** 등록구분코드 */
    private String registSeCode = "";
    
    /** 유일 아이디 */
    private String uniqId = "";
    
    /** 템플릿 명 */
    private String tmplatNm = "";
    
    //---------------------------------
    // 2009.06.26 : 2단계 기능 추가
    //---------------------------------
    /** 추가 option (댓글-comment, 만족도조사-stsfdg) */
    private String option = "";
    
    /** 댓글 여부 */
    private String commentAt = "";
    
    /** 만족도조사 */
    private String stsfdgAt = "";
    ////-------------------------------

    /**
     * bbsAttrbCode attribute를 리턴한다.
     * 
     * @return the bbsAttrbCode
     */
    public String getBbsAttrbCode() {
	return bbsAttrbCode;
    }

    /**
     * bbsAttrbCode attribute 값을 설정한다.
     * 
     * @param bbsAttrbCode
     *            the bbsAttrbCode to set
     */
    public void setBbsAttrbCode(String bbsAttrbCode) {
	this.bbsAttrbCode = bbsAttrbCode;
    }

    /**
     * bbsId attribute를 리턴한다.
     * 
     * @return the bbsId
     */
    public String getBbsId() {
	return bbsId;
    }

    /**
     * bbsId attribute 값을 설정한다.
     * 
     * @param bbsId
     *            the bbsId to set
     */
    public void setBbsId(String bbsId) {
	this.bbsId = bbsId;
    }

    /**
     * bbsIntrcn attribute를 리턴한다.
     * 
     * @return the bbsIntrcn
     */
    public String getBbsIntrcn() {
	return bbsIntrcn;
    }

    /**
     * bbsIntrcn attribute 값을 설정한다.
     * 
     * @param bbsIntrcn
     *            the bbsIntrcn to set
     */
    public void setBbsIntrcn(String bbsIntrcn) {
	this.bbsIntrcn = bbsIntrcn;
    }

    /**
     * bbsNm attribute를 리턴한다.
     * 
     * @return the bbsNm
     */
    public String getBbsNm() {
	return bbsNm;
    }

    /**
     * bbsNm attribute 값을 설정한다.
     * 
     * @param bbsNm
     *            the bbsNm to set
     */
    public void setBbsNm(String bbsNm) {
	this.bbsNm = bbsNm;
    }

    /**
     * bbsTyCode attribute를 리턴한다.
     * 
     * @return the bbsTyCode
     */
    public String getBbsTyCode() {
	return bbsTyCode;
    }

    /**
     * bbsTyCode attribute 값을 설정한다.
     * 
     * @param bbsTyCode
     *            the bbsTyCode to set
     */
    public void setBbsTyCode(String bbsTyCode) {
	this.bbsTyCode = bbsTyCode;
    }

    /**
     * fileAtchPosblAt attribute를 리턴한다.
     * 
     * @return the fileAtchPosblAt
     */
    public String getFileAtchPosblAt() {
	return fileAtchPosblAt;
    }

    /**
     * fileAtchPosblAt attribute 값을 설정한다.
     * 
     * @param fileAtchPosblAt
     *            the fileAtchPosblAt to set
     */
    public void setFileAtchPosblAt(String fileAtchPosblAt) {
	this.fileAtchPosblAt = fileAtchPosblAt;
    }

    /**
     * frstRegisterId attribute를 리턴한다.
     * 
     * @return the frstRegisterId
     */
    public String getFrstRegisterId() {
	return frstRegisterId;
    }

    /**
     * frstRegisterId attribute 값을 설정한다.
     * 
     * @param frstRegisterId
     *            the frstRegisterId to set
     */
    public void setFrstRegisterId(String frstRegisterId) {
	this.frstRegisterId = frstRegisterId;
    }

    /**
     * frstRegisterPnttm attribute를 리턴한다.
     * 
     * @return the frstRegisterPnttm
     */
    public String getFrstRegisterPnttm() {
	return frstRegisterPnttm;
    }

    /**
     * frstRegisterPnttm attribute 값을 설정한다.
     * 
     * @param frstRegisterPnttm
     *            the frstRegisterPnttm to set
     */
    public void setFrstRegisterPnttm(String frstRegisterPnttm) {
	this.frstRegisterPnttm = frstRegisterPnttm;
    }

    /**
     * lastUpdusrId attribute를 리턴한다.
     * 
     * @return the lastUpdusrId
     */
    public String getLastUpdusrId() {
	return lastUpdusrId;
    }

    /**
     * lastUpdusrId attribute 값을 설정한다.
     * 
     * @param lastUpdusrId
     *            the lastUpdusrId to set
     */
    public void setLastUpdusrId(String lastUpdusrId) {
	this.lastUpdusrId = lastUpdusrId;
    }

    /**
     * lastUpdusrPnttm attribute를 리턴한다.
     * 
     * @return the lastUpdusrPnttm
     */
    public String getLastUpdusrPnttm() {
	return lastUpdusrPnttm;
    }

    /**
     * lastUpdusrPnttm attribute 값을 설정한다.
     * 
     * @param lastUpdusrPnttm
     *            the lastUpdusrPnttm to set
     */
    public void setLastUpdusrPnttm(String lastUpdusrPnttm) {
	this.lastUpdusrPnttm = lastUpdusrPnttm;
    }

    /**
     * posblAtchFileNumber attribute를 리턴한다.
     * 
     * @return the posblAtchFileNumber
     */
    public int getPosblAtchFileNumber() {
	return posblAtchFileNumber;
    }

    /**
     * posblAtchFileNumber attribute 값을 설정한다.
     * 
     * @param posblAtchFileNumber
     *            the posblAtchFileNumber to set
     */
    public void setPosblAtchFileNumber(int posblAtchFileNumber) {
	this.posblAtchFileNumber = posblAtchFileNumber;
    }

    /**
     * posblAtchFileSize attribute를 리턴한다.
     * 
     * @return the posblAtchFileSize
     */
    public String getPosblAtchFileSize() {
	return posblAtchFileSize;
    }

    /**
     * posblAtchFileSize attribute 값을 설정한다.
     * 
     * @param posblAtchFileSize
     *            the posblAtchFileSize to set
     */
    public void setPosblAtchFileSize(String posblAtchFileSize) {
	this.posblAtchFileSize = posblAtchFileSize;
    }

    /**
     * replyPosblAt attribute를 리턴한다.
     * 
     * @return the replyPosblAt
     */
    public String getReplyPosblAt() {
	return replyPosblAt;
    }

    /**
     * replyPosblAt attribute 값을 설정한다.
     * 
     * @param replyPosblAt
     *            the replyPosblAt to set
     */
    public void setReplyPosblAt(String replyPosblAt) {
	this.replyPosblAt = replyPosblAt;
    }

    /**
     * tmplatId attribute를 리턴한다.
     * 
     * @return the tmplatId
     */
    public String getTmplatId() {
	return tmplatId;
    }

    /**
     * tmplatId attribute 값을 설정한다.
     * 
     * @param tmplatId
     *            the tmplatId to set
     */
    public void setTmplatId(String tmplatId) {
	this.tmplatId = tmplatId;
    }

    /**
     * useAt attribute를 리턴한다.
     * 
     * @return the useAt
     */
    public String getUseAt() {
	return useAt;
    }

    /**
     * useAt attribute 값을 설정한다.
     * 
     * @param useAt
     *            the useAt to set
     */
    public void setUseAt(String useAt) {
	this.useAt = useAt;
    }

    /**
     * bbsUseFlag attribute를 리턴한다.
     * 
     * @return the bbsUseFlag
     */
    public String getBbsUseFlag() {
	return bbsUseFlag;
    }

    /**
     * bbsUseFlag attribute 값을 설정한다.
     * 
     * @param bbsUseFlag
     *            the bbsUseFlag to set
     */
    public void setBbsUseFlag(String bbsUseFlag) {
	this.bbsUseFlag = bbsUseFlag;
    }

    /**
     * trgetId attribute를 리턴한다.
     * 
     * @return the trgetId
     */
    public String getTrgetId() {
	return trgetId;
    }

    /**
     * trgetId attribute 값을 설정한다.
     * 
     * @param trgetId
     *            the trgetId to set
     */
    public void setTrgetId(String trgetId) {
	this.trgetId = trgetId;
    }

    /**
     * registSeCode attribute를 리턴한다.
     * 
     * @return the registSeCode
     */
    public String getRegistSeCode() {
	return registSeCode;
    }

    /**
     * registSeCode attribute 값을 설정한다.
     * 
     * @param registSeCode
     *            the registSeCode to set
     */
    public void setRegistSeCode(String registSeCode) {
	this.registSeCode = registSeCode;
    }

    /**
     * uniqId attribute를 리턴한다.
     * 
     * @return the uniqId
     */
    public String getUniqId() {
	return uniqId;
    }

    /**
     * uniqId attribute 값을 설정한다.
     * 
     * @param uniqId
     *            the uniqId to set
     */
    public void setUniqId(String uniqId) {
	this.uniqId = uniqId;
    }

    /**
     * tmplatNm attribute를 리턴한다.
     * 
     * @return the tmplatNm
     */
    public String getTmplatNm() {
	return tmplatNm;
    }

    /**
     * tmplatNm attribute 값을 설정한다.
     * 
     * @param tmplatNm
     *            the tmplatNm to set
     */
    public void setTmplatNm(String tmplatNm) {
	this.tmplatNm = tmplatNm;
    }

    /**
     * option attribute를 리턴한다.
     * @return the option
     */
    public String getOption() {
        return option;
    }

    /**
     * option attribute 값을 설정한다.
     * @param option the option to set
     */
    public void setOption(String option) {
        this.option = option;
    }

    /**
     * commentAt attribute를 리턴한다.
     * @return the commentAt
     */
    public String getCommentAt() {
        return commentAt;
    }

    /**
     * commentAt attribute 값을 설정한다.
     * @param commentAt the commentAt to set
     */
    public void setCommentAt(String commentAt) {
        this.commentAt = commentAt;
    }

    /**
     * stsfdgAt attribute를 리턴한다.
     * @return the stsfdgAt
     */
    public String getStsfdgAt() {
        return stsfdgAt;
    }

    /**
     * stsfdg attribute 값을 설정한다.
     * @param stsfdgAt the stsfdgAt to set
     */
    public void setStsfdgAt(String stsfdgAt) {
        this.stsfdgAt = stsfdgAt;
    }

    /**
     * toString 메소드를 대치한다.
     */
    public String toString() {
	return ToStringBuilder.reflectionToString(this);
    }
}
