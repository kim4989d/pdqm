package egovframework.com.uss.ion.bnr.service;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 메인 관리를 위한 VO 클래스
 * @author 
 * @since 2011.11.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------      --------    ---------------------------
 *   2011.11.01  박상호          최초 생성

 *
 * </pre>
 */
@SuppressWarnings("serial")
public class MainVO  {

    /** 공지사항 제목 */
    private String nttSj = "";
    
    /** 등록일자 */
    private String frstRegistPnttm = "";
    
    /**  */
    private String nttId = "";

    /**  */
    private String bbsId = "";

    private String newFlag = ""; 
    
    private String useAt = "";
    
	public String getNttSj() {
		return nttSj;
	}

	public void setNttSj(String nttSj) {
		this.nttSj = nttSj;
	}

	public String getFrstRegistPnttm() {
		return frstRegistPnttm;
	}

	public void setFrstRegistPnttm(String frstRegistPnttm) {
		this.frstRegistPnttm = frstRegistPnttm;
	}

	public String getNttId() {
		return nttId;
	}

	public void setNttId(String nttId) {
		this.nttId = nttId;
	}

	public String getBbsId() {
		return bbsId;
	}

	public void setBbsId(String bbsId) {
		this.bbsId = bbsId;
	}

	public String getNewFlag() {
		return newFlag;
	}

	public void setNewFlag(String newFlag) {
		this.newFlag = newFlag;
	}

	public String getUseAt() {
		return useAt;
	}

	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}
    

}
