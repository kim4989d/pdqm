package egovframework.pdqm.admin.support.diagnosis.level.model;

import java.io.Serializable;

/**
 * 진단대상관리  위한 VO  클래스
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
 *   2009.3.12  이삼섭          최초 생성
 *
 * </pre>
 */

public class DiagnosisLevelSelfVO implements Serializable {
    
	/** 게시구분 */
    private String searchNtceTyCode = "";
    /** 진단명 */
    private String searchLevelDgnssNm = "";
    /** 게시 시작일 */
    private String searchBeginDt = "";
    /** 게시 종료일 */
    private String searchEndDt = "";
    
	public String getSearchNtceTyCode() {
		return searchNtceTyCode;
	}

	public void setSearchNtceTyCode(String searchNtceTyCode) {
		this.searchNtceTyCode = searchNtceTyCode;
	}

	public String getSearchLevelDgnssNm() {
		return searchLevelDgnssNm;
	}

	public void setSearchLevelDgnssNm(String searchLevelDgnssNm) {
		this.searchLevelDgnssNm = searchLevelDgnssNm;
	}

	public String getSearchBeginDt() {
		return searchBeginDt;
	}

	public void setSearchBeginDt(String searchBeginDt) {
		this.searchBeginDt = searchBeginDt;
	}

	public String getSearchEndDt() {
		return searchEndDt;
	}

	public void setSearchEndDt(String searchEndDt) {
		this.searchEndDt = searchEndDt;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageUnit() {
		return pageUnit;
	}

	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getFirstIndex() {
		return firstIndex;
	}

	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}

	public int getLastIndex() {
		return lastIndex;
	}

	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}

	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}

	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}

	public int getRowNo() {
		return rowNo;
	}

	public void setRowNo(int rowNo) {
		this.rowNo = rowNo;
	}

	/** 현재페이지 */
    private int pageIndex = 1;

    /** 페이지갯수 */
    private int pageUnit = 10;

    /** 페이지사이즈 */
    private int pageSize = 10;

    /** firstIndex */
    private int firstIndex = 1;

    /** lastIndex */
    private int lastIndex = 1;

    /** recordCountPerPage */
    private int recordCountPerPage = 10;

    /** rowNo */
    private int rowNo = 0;

}
