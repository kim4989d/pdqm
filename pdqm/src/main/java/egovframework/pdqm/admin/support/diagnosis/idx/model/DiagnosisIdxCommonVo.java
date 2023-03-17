package egovframework.pdqm.admin.support.diagnosis.idx.model;

import java.io.Serializable;
import egovframework.com.cmm.LoginVO;
public class DiagnosisIdxCommonVo extends LoginVO implements Serializable{



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
	public String frstRegisterId = "";
	
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

private static final long serialVersionUID = -8274004534207618049L;
	
	/** 아이디 */
	private String id = "";
	/** 이름 */
	private String name = "";
	/** 주민등록번호 */
	private String ihidNum = "";
	/** 이메일주소 */
	private String email = "";
	/** 비밀번호 */
	private String password = "";
	/** 비밀번호 힌트 */
	private String passwordHint = "";
	/** 비밀번호 정답 */
	private String passwordCnsr = "";
	/** 사용자구분 */
	private String userSe = "";
	/** 조직(부서)ID */
	private String orgnztId = "";
	/** 조직(부서)명 */
	private String orgnztNm = "";
	/** 고유아이디 */
	private String uniqId = "";
	/** 로그인 후 이동할 페이지 */
	private String url = "";
	/** 사용자 IP정보 */
	private String ip = "";
	/** GPKI인증 DN */
	private String dn = "";
	/** 회원구분  */
	private String mberType = "";
	/** 회원구분  */
	private String mberGrp = "";
	
	
	/**
	 * id attribute 를 리턴한다.
	 * @return String
	 */
	public String getId() {
		return id;
	}
	/**
	 * id attribute 값을 설정한다.
	 * @param id String
	 */
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * name attribute 를 리턴한다.
	 * @return String
	 */
	public String getName() {
		return name;
	}
	/**
	 * name attribute 값을 설정한다.
	 * @param name String
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * ihidNum attribute 를 리턴한다.
	 * @return String
	 */
	public String getIhidNum() {
		return ihidNum;
	}
	/**
	 * ihidNum attribute 값을 설정한다.
	 * @param ihidNum String
	 */
	public void setIhidNum(String ihidNum) {
		this.ihidNum = ihidNum;
	}
	/**
	 * email attribute 를 리턴한다.
	 * @return String
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * email attribute 값을 설정한다.
	 * @param email String
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * password attribute 를 리턴한다.
	 * @return String
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * password attribute 값을 설정한다.
	 * @param password String
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * passwordHint attribute 를 리턴한다.
	 * @return String
	 */
	public String getPasswordHint() {
		return passwordHint;
	}
	/**
	 * passwordHint attribute 값을 설정한다.
	 * @param passwordHint String
	 */
	public void setPasswordHint(String passwordHint) {
		this.passwordHint = passwordHint;
	}
	/**
	 * passwordCnsr attribute 를 리턴한다.
	 * @return String
	 */
	public String getPasswordCnsr() {
		return passwordCnsr;
	}
	/**
	 * passwordCnsr attribute 값을 설정한다.
	 * @param passwordCnsr String
	 */
	public void setPasswordCnsr(String passwordCnsr) {
		this.passwordCnsr = passwordCnsr;
	}
	/**
	 * userSe attribute 를 리턴한다.
	 * @return String
	 */
	public String getUserSe() {
		return userSe;
	}
	/**
	 * userSe attribute 값을 설정한다.
	 * @param userSe String
	 */
	public void setUserSe(String userSe) {
		this.userSe = userSe;
	}
	/**
	 * orgnztId attribute 를 리턴한다.
	 * @return String
	 */
	public String getOrgnztId() {
		return orgnztId;
	}
	/**
	 * orgnztId attribute 값을 설정한다.
	 * @param orgnztId String
	 */
	public void setOrgnztId(String orgnztId) {
		this.orgnztId = orgnztId;
	}
	/**
	 * uniqId attribute 를 리턴한다.
	 * @return String
	 */
	public String getUniqId() {
		return uniqId;
	}
	/**
	 * uniqId attribute 값을 설정한다.
	 * @param uniqId String
	 */
	public void setUniqId(String uniqId) {
		this.uniqId = uniqId;
	}
	/**
	 * url attribute 를 리턴한다.
	 * @return String
	 */
	public String getUrl() {
		return url;
	}
	/**
	 * url attribute 값을 설정한다.
	 * @param url String
	 */
	public void setUrl(String url) {
		this.url = url;
	}
	/**
	 * ip attribute 를 리턴한다.
	 * @return String
	 */
	public String getIp() {
		return ip;
	}
	/**
	 * ip attribute 값을 설정한다.
	 * @param ip String
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}
	/**
	 * dn attribute 를 리턴한다.
	 * @return String
	 */
	public String getDn() {
		return dn;
	}
	/**
	 * dn attribute 값을 설정한다.
	 * @param dn String
	 */
	public void setDn(String dn) {
		this.dn = dn;
	}
	/**
	 * @return the orgnztNm
	 */
	public String getOrgnztNm() {
		return orgnztNm;
	}
	/**
	 * @param orgnztNm the orgnztNm to set
	 */
	public void setOrgnztNm(String orgnztNm) {
		this.orgnztNm = orgnztNm;
	}
	public String getMberType() {
		return mberType;
	}
	public void setMberType(String mberType) {
		this.mberType = mberType;
	}
	public String getMberGrp() {
		return mberGrp;
	}
	public void setMberGrp(String mberGrp) {
		this.mberGrp = mberGrp;
	}


}
