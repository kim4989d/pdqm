package egovframework.pdqm.admin.support.diagnosis.level.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sourceforge.ajaxtags.xml.AjaxXmlBuilder;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;


import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelScore;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelScoreVO;
import egovframework.pdqm.admin.support.diagnosis.level.service.DiagnosisLevelScoreService;
import egovframework.pdqm.admin.support.diagnosis.level.util.DrsAjaxXmlView;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * 자가진단  결과 관리   controller 클래스를 정의한다.
 * @author 공통서비스 개발팀 이문준
 * @since 2011.11.09
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.03.11  이문준          최초 생성
 *   2011.09.07  서준식          롤 등록시 이미 등록된 경우 데이터 중복 에러 발생 문제 수정
 * </pre>
 */

@Controller
public class DiagnosisLevelScoreController {

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "diagnosisLevelScoreService")
    private DiagnosisLevelScoreService diagnosisLevelScoreService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;



	/**
	 * 자가진단 (진단대상) 점수관리 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */ 
    @RequestMapping(value="/support/diagnosis/level/selectScoreDgnssTrgetList.do")
	public String selectIdxDbTypeList(@ModelAttribute("searchVO") DiagnosisLevelScoreVO searchVO, ModelMap model) 
    			throws Exception {
    	
    	/** EgovPropertyService.SiteList */
    	searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
    	searchVO.setPageSize(propertiesService.getInt("pageSize"));
    	
    	/** pageing */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());
		
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
        List resultList = diagnosisLevelScoreService.selectLevelScoreDgnssTrgetList(searchVO);
        model.addAttribute("resultList", resultList);
        
        int totCnt = diagnosisLevelScoreService.selectLevelScoreDgnssTrgetListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);

    	List dgnssMasterList = diagnosisLevelScoreService.selectDgnssMasterList();
		model.addAttribute("dgnssMasterList", dgnssMasterList);
		
		
        return "egovframework/pdqm/admin/support/diagnosis/level/result/ScoreDgnssTrgetList";
        
  	}

    
    /**
	 * 자가진단 (진단대상) 점수관리  등록 화면이동 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngRegist";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/level/insertScoreDgnssTrgetView.do")
    public String insertIdxDbTypeView(
            @ModelAttribute("searchVO") DiagnosisLevelScoreVO searchVO, ModelMap model)
            throws Exception {

		List dgnssMasterList = diagnosisLevelScoreService.selectDgnssMasterList();
		model.addAttribute("dgnssMasterList", dgnssMasterList);
		
    	model.addAttribute("diagnosisLevelScore", new DiagnosisLevelScore());
        return "egovframework/pdqm/admin/support/diagnosis/level/result/ScoreDgnssTrgetRegist";
    }

	

    /**
	 * 자가진단 (진단대상) 점수 관리  상세 조회 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngModity";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/level/updateScoreDgnssTrgetView.do")
    public String updateLevelScoreDgnssTrgetView(
            @ModelAttribute("searchVO") DiagnosisLevelScoreVO searchVO
            ,DiagnosisLevelScore vo
            , ModelMap model)
            throws Exception {
		
		List  resultList = diagnosisLevelScoreService.updateLevelScoreDgnssTrgetView(vo);
		
		model.addAttribute("diagnosisLevelScore", vo);
		model.addAttribute("resultList", resultList);
        return "egovframework/pdqm/admin/support/diagnosis/level/result/ScoreDgnssTrgetModity";
    }
    
	/** 
	 * 자가진단 (진단대상) 점수  수정 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
	 * @exception Exception
	 */
    @RequestMapping("/support/diagnosis/level/updateScoreDgnssTrget.do")
    public String updateLevelScoreDgnssTrget(
    		@ModelAttribute("searchVO") DiagnosisLevelScoreVO searchVO,
    		DiagnosisLevelScore vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

    	vo.setLastUpdusrId(user.getUniqId());
    	diagnosisLevelScoreService.updateLevelScoreDgnssTrget(vo);

		return "forward:/support/diagnosis/level/selectScoreDgnssTrgetList.do";

    }



	/**
	 * 자가진단 (진단대상) 점수관리 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */ 
    @RequestMapping(value="/support/diagnosis/level/selectScoreViewPointList.do")
	public String selectScoreViewPointList(@ModelAttribute("searchVO") DiagnosisLevelScoreVO searchVO, ModelMap model) 
    			throws Exception {
    	
    	/** EgovPropertyService.SiteList */
    	searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
    	searchVO.setPageSize(propertiesService.getInt("pageSize"));
    	
    	/** pageing */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());
		
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
        List resultList = diagnosisLevelScoreService.selectScoreViewPointList(searchVO);
        model.addAttribute("resultList", resultList);
        
        int totCnt = diagnosisLevelScoreService.selectScoreViewPointListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);
        
      	List dgnssMasterList = diagnosisLevelScoreService.selectDgnssMasterList();
		model.addAttribute("dgnssMasterList", dgnssMasterList);
		
        return "egovframework/pdqm/admin/support/diagnosis/level/result/ScoreViewPointList";

  	}
    

    /**
	 * 자가진단 (진단관점) 점수 관리  상세 조회 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngModity";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/level/updateScoreViewPointView.do")
    public String updateScoreViewPointView(
            @ModelAttribute("searchVO") DiagnosisLevelScoreVO searchVO
            ,DiagnosisLevelScore vo
            , ModelMap model)
            throws Exception {
		
		List  resultList = diagnosisLevelScoreService.updateLevelScoreDgnssTrgetView(vo);
		
		model.addAttribute("diagnosisLevelScore", vo);
		model.addAttribute("resultList", resultList);
        return "egovframework/pdqm/admin/support/diagnosis/level/result/ScoreViewPointModity";
    }
    
	/** 
	 * 자가진단 (진단관점) 점수  수정 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
	 * @exception Exception
	 */ 
    @RequestMapping("/support/diagnosis/level/updateScoreViewPoint.do")
    public String updateScoreViewPoint(
    		@ModelAttribute("searchVO") DiagnosisLevelScoreVO searchVO,
    		DiagnosisLevelScore vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	vo.setLastUpdusrId(user.getUniqId());
    	diagnosisLevelScoreService.updateLevelScoreDgnssTrget(vo);
 
    	return "forward:/support/diagnosis/level/selectScoreViewPointList.do";
    }
	

	/**
	 * 자가진단  결과설명 관리 목록 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */ 
    @RequestMapping(value="/support/diagnosis/level/selectResultExplainList.do")
	public String selectResultExplainList(@ModelAttribute("searchVO") DiagnosisLevelScoreVO searchVO, ModelMap model) 
    			throws Exception {
    	
       	/** EgovPropertyService.SiteList */
    	searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
    	searchVO.setPageSize(propertiesService.getInt("pageSize"));
    	
    	/** pageing */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());
		
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
        List resultList = diagnosisLevelScoreService.selectScoreViewPointList(searchVO);
        model.addAttribute("resultList", resultList);
        
        int totCnt = diagnosisLevelScoreService.selectScoreViewPointListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);
        
      	List dgnssMasterList = diagnosisLevelScoreService.selectDgnssMasterList();
		model.addAttribute("dgnssMasterList", dgnssMasterList);
		
        return "egovframework/pdqm/admin/support/diagnosis/level/result/ResultExplainList";
        
  	}


	/**
	 * 자가진단  결과설명 관리 excel 저장 조회
	 * 
	 * @param diagnosisLevelMngVO diagnosisLevelMngVO
	 * @return String
	 * @exception Exception
	 */ 
    @RequestMapping(value="/support/diagnosis/level/selectResultExplainExcel.do")
	protected ModelAndView selectResultExplainExcel(@ModelAttribute("searchVO") 
			DiagnosisLevelScoreVO searchVO, 
			HttpServletResponse response, HttpServletRequest request) throws Exception {

        List<DiagnosisLevelScore> resultList = diagnosisLevelScoreService.selectScoreViewPointExcel(searchVO);
        String filename = "자가진단 결과 설명 현황.xls";
        
		String titlerow[] = {
				"번호",
				"진단대상",
				"진단관점",
				"결과",
				"설명",
				"등록자",
				"등록일자 "
		     };
		
		HSSFWorkbook workbook = new HSSFWorkbook();         //workbook생성
		HSSFSheet sheet = workbook.createSheet("협회담당자목록"); //worksheet에 new sheet생성
		// 셀의 크기
		sheet.setDefaultColumnWidth(16);

		HSSFRow titleRow = sheet.createRow(0);             //첫번째줄에 Title 세팅           
		HSSFCellStyle titlestyle = this.titleStyleSetting(workbook); //첫번째줄 타이틀에 세팅할 셀스타일
		
	    HSSFCell titleCell=null; 
	    
	    for(int i=0; i<titlerow.length; i++){	

			titleCell = titleRow.createCell(i);
			titleCell.setCellStyle(titlestyle);
			titleCell.setCellValue(new HSSFRichTextString(titlerow[i]));
		}
	    
	    if (resultList != null) {
	    	for(int i=0; i<resultList.size(); i++){
	    		DiagnosisLevelScore vo = resultList.get(i);
	    		HSSFRow row = sheet.createRow(i+1);
	    		
	    		row.createCell(0).setCellValue(i+1);   //순번
	    		row.createCell(1).setCellValue(new HSSFRichTextString(vo.getUpperDgnssTrgetNm()));   //진단대상
	    		row.createCell(2).setCellValue(new HSSFRichTextString(vo.getDgnssTrgetNm()));   //진단관점
	    		
	    		row.createCell(3).setCellValue(new HSSFRichTextString(vo.getCodeNm()));   //결과
	    		row.createCell(4).setCellValue(new HSSFRichTextString(vo.getResultDc()));   //설명
	    		row.createCell(5).setCellValue(new HSSFRichTextString(vo.getMberNm()));   //등록자
	    		row.createCell(6).setCellValue(new HSSFRichTextString(vo.getFrstRegistPnttm()));   //등록일자
	    	}
	    }

	    response = headerSetting(response, request,filename);
    	workbook.write(response.getOutputStream());
        return null;
        
  	}

    
    /**
	 * 자가진단  설명 관리  상세 조회 한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovframework/pdqm/admin/support/diagnosis/DiagnosisLevelMngModity";
	 * @exception Exception
	 */
	@RequestMapping("/support/diagnosis/level/updateResultExplainView.do")
    public String updateResultExplainView(
            @ModelAttribute("searchVO") DiagnosisLevelScoreVO searchVO
            ,DiagnosisLevelScore vo
            , ModelMap model)
            throws Exception {
		
		DiagnosisLevelScore  resultVo = diagnosisLevelScoreService.updateResultExplainView(vo);
		  
		model.addAttribute(resultVo);
        return "egovframework/pdqm/admin/support/diagnosis/level/result/ResultExplainModity";
    }
	
	/** 
	 * 자가진단  결과 설명  수정 한다.
	 * @param diagnosisMng - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO 
	 * @param status
	 * @return "forward:/support/diagnosis/selectDiagnosisIdxMngList.do";
	 * @exception Exception
	 */ 
    @RequestMapping("/support/diagnosis/level/updateResultExplain.do")
    public String updateResultExplain(
    		@ModelAttribute("searchVO") DiagnosisLevelScoreVO searchVO,
    		DiagnosisLevelScore vo,
            BindingResult bindingResult, ModelMap model) 
    throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	vo.setLastUpdusrId(user.getUniqId());
    	diagnosisLevelScoreService.updateResultExplain(vo);
 
    	return "forward:/support/diagnosis/level/selectResultExplainList.do";
    }

    
	/**
	 * select ajax request 를 처리하여 결과값을 Model 로 리턴한다.
	 * @param request
	 * @return ajax response 
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/support/diagnosis/level/selectViewPointCode.do")
	public synchronized ModelAndView selectViewPointCode(
			@ModelAttribute("codeSearchVO") DiagnosisLevelScoreVO codeSearchVO,
			HttpServletRequest request) throws Exception {

		ModelAndView model = new ModelAndView(new DrsAjaxXmlView());
		AjaxXmlBuilder axBuilder = new AjaxXmlBuilder();

		String strVal = (String) request.getParameter("val");

		// TODO
		// ======================================================
		// Need to be Modified.
		// ======================================================
		// 공통 코드를 조회하여 저장하기 위한 List
		List<DiagnosisLevelScore> viewPointCodeList = null;
		codeSearchVO.setSearchDgnssTrger(strVal);

		viewPointCodeList = diagnosisLevelScoreService.selectViewPointCode(codeSearchVO);

		if (!viewPointCodeList.isEmpty()) {
			axBuilder.addItem("----- 전체 -----", "",  true);
			for (DiagnosisLevelScore codeVO : viewPointCodeList) {
				axBuilder.addItem(codeVO.getDgnssTrgetNm(), codeVO.getDgnssTrgetId(), true);
			} 
		} else {
			axBuilder.addItem("----- 전체 -----", "", true);
		}
		// ======================================================
 
		model.addObject("ajaxData", axBuilder.toString());

		return model;
	}
	
	/**
	 * Excel Title Cell 설정
	 * @param workbook - HSSFWorkbook 객체
	 * @return styleCenter
	 * @exception Exception
	 */
	

			
	private HSSFCellStyle titleStyleSetting(HSSFWorkbook workbook){
		
		HSSFCellStyle style = workbook.createCellStyle();
		  style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		  style.setBottomBorderColor(HSSFColor.BLACK.index);
		  style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		  style.setLeftBorderColor(HSSFColor.BLACK.index);
		  style.setBorderRight(HSSFCellStyle.BORDER_THIN);
		  style.setRightBorderColor(HSSFColor.BLACK.index);
		  style.setBorderTop(HSSFCellStyle.BORDER_THIN);
		  style.setTopBorderColor(HSSFColor.BLACK.index);
		  style.setAlignment(HSSFCellStyle.ALIGN_CENTER_SELECTION);
		  style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
		  HSSFFont font = workbook.createFont(); //폰트 객체 생성
		  font.setFontHeightInPoints((short)10); //폰트 크기
		  font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD); //폰트 굵게
		 
		  style.setWrapText(true);
		
		  //셀 컬러 추가
		  style.setFillBackgroundColor(HSSFColor.WHITE.index);
		  style.setFillForegroundColor(HSSFColor.SKY_BLUE.index);
		  style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
		  //폰트 스타일 적용
		  style.setFont(font);
		
		return style;
	
	}
	
	 /**
	 * Response header 설정
	 * @param fileName - 다운로드할 Excel 파일 명
	 * @param request
	 * @param response
	 * @return excelFile
	 * @exception Exception
	 */
	private HttpServletResponse headerSetting(HttpServletResponse response, HttpServletRequest request, 
			String fileName) throws Exception {
		
		fileName = new String(fileName.getBytes("euc-kr"), "8859_1");
		response.reset();
		response.setContentType("application/octet-stream");
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.setHeader("Pragma", "no-cache;");
		 response.setHeader("Expires", "-1;");
		if (request.getHeader("User-Agent").indexOf("MSIE 5.5") > -1) {
			response.setHeader("Content-disposition", "filename=" + fileName);
	
		} else {
			response.setHeader("Content-disposition", "attachment;filename=" + fileName);
		}
		return response;
    }
}
