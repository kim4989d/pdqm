package egovframework.pdqm.admin.support.diagnosis.idx.model;

import java.io.Serializable;

/**
 * 지표 및 특성 관리  위한 VO  클래스
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

public class DiagnosisIdxMngVO  extends DiagnosisIdxCommonVo implements Serializable {
	/*
	 * 등록자
	 */
	public String frstRegisterId = "";

	
	public String getFrstRegisterId() {
		return frstRegisterId;
	}

	public void setFrstRegisterId(String frstRegisterId) {
		this.frstRegisterId = frstRegisterId;
	}

	/** 상태구분 */
    private String searchSttusCode = "";
	
	/** 진단대상명 */
    private String searchIdxNm = "";
    
    
	public String getSearchSttusCode() {
		return searchSttusCode;
	}

	public void setSearchSttusCode(String searchSttusCode) {
		this.searchSttusCode = searchSttusCode;
	}

	public String getSearchIdxNm() {
		return searchIdxNm;
	}

	public void setSearchIdxNm(String searchIdxNm) {
		this.searchIdxNm = searchIdxNm;
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
