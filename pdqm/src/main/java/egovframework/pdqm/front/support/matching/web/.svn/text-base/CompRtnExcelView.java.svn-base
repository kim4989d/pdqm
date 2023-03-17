package egovframework.pdqm.front.support.matching.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.hssf.util.Region;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import egovframework.pdqm.front.support.matching.model.COLInfoVO;

public class CompRtnExcelView extends AbstractExcelView {
	
	/**
	 * 엑셀파일을 설정하고 생성한다.
	 * @param model
	 * @param wb
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@Override
	protected void buildExcelDocument(Map<String, Object> model,
			HSSFWorkbook wb, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		
		Map<String, Object> map = (Map<String, Object>)model.get("exlCompCOlRtnMap");
		List<COLInfoVO> compCol1Rtn = (List<COLInfoVO>) map.get("exlCompCOlRtnVO");
		
		HSSFCell cell = null;
		
		HSSFSheet sheet = wb.createSheet((String)map.get("sheetNM"));
		sheet.setDefaultColumnWidth((short) 15);

		HSSFCellStyle topCs = wb.createCellStyle();
		HSSFCellStyle hdCs = wb.createCellStyle();
		HSSFCellStyle cs = wb.createCellStyle();
		
		HSSFFont topFont = wb.createFont();
		HSSFFont hdFont = wb.createFont();
		HSSFFont font = wb.createFont();
		
//		cs.setFillBackgroundColor(IndexedColors.YELLOW.getIndex());
//		cs.setFillForegroundColor(IndexedColors.YELLOW.getIndex());
		
		sheet.addMergedRegion(new Region(0, (short)0, 0, (short)9));
		topFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		topFont.setFontHeight((short)400);
		topCs.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		topCs.setFont(topFont);
		
		// put text in first cell		
		cell = getCell(sheet, 0, 0);
		setText(cell, (String)map.get("titleNM"));
		cell.setCellStyle( topCs );
		
		// set header information  
		
		hdCs.setBorderTop(HSSFCellStyle.BORDER_THIN);
		hdCs.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		hdCs.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		hdCs.setBorderRight(HSSFCellStyle.BORDER_THIN);
		hdCs.setFillForegroundColor(HSSFColor.LIGHT_YELLOW.index);
		hdCs.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
		hdFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		hdFont.setFontHeight((short)200);
		hdCs.setFont(hdFont);
		
	    cell = getCell(sheet, 2, 0);
		setText(cell, "No");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 2, 1);
		setText(cell, "기관명");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 2, 2);
		setText(cell, "데이터베이스 명");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 2, 3);
		setText(cell, "테이블 명");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 2, 4);
		setText(cell, "컬럼 명");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 2, 5);
		setText(cell, "컬럼 한글명");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 2, 6);
		setText(cell, "데이터 타입");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 2, 7);
		setText(cell, "데이터 길이");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 2, 8);
		setText(cell, "소숫점 길이");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 2, 9);
		setText(cell, "불일치 건수");
		cell.setCellStyle(hdCs);
		
//		Map<String, Object> map = (Map<String, Object>)model.get("exlCompCOl1RtnMap");

		
		cs.setBorderTop(HSSFCellStyle.BORDER_THIN);
		cs.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		cs.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		cs.setBorderRight(HSSFCellStyle.BORDER_THIN);
 
		for (int i = 0; i < compCol1Rtn.size(); i++) {
				COLInfoVO compCol1RtnVO = compCol1Rtn.get(i);
 
				cell = getCell(sheet, 3 + i, 0);
				setText(cell, Integer.toString(i+1));
				cell.setCellStyle( cs );
				
				cell = getCell(sheet, 3 + i, 1);
				setText(cell, compCol1RtnVO.getInstt_nm());
				cell.setCellStyle( cs );
				
				cell = getCell(sheet, 3 + i, 2);
				setText(cell, compCol1RtnVO.getDatabase_nm());
				cell.setCellStyle( cs );
				
				cell = getCell(sheet, 3 + i, 3);
				setText(cell, compCol1RtnVO.getTable_nm());
				cell.setCellStyle( cs );
				
				cell = getCell(sheet, 3 + i, 4);
				setText(cell, compCol1RtnVO.getColumn_nm());
				cell.setCellStyle( cs );
				
				cell = getCell(sheet, 3 + i, 5);
				setText(cell, compCol1RtnVO.getColumn_korean_nm());
				cell.setCellStyle( cs );
				
				cell = getCell(sheet, 3 + i, 6);
				setText(cell, compCol1RtnVO.getData_ty());
				cell.setCellStyle( cs );
				
				cell = getCell(sheet, 3 + i, 7);
				setText(cell, compCol1RtnVO.getData_lt());
				cell.setCellStyle( cs );
				
				cell = getCell(sheet, 3 + i, 8);
				setText(cell, compCol1RtnVO.getDcmlpoint_lt());
				cell.setCellStyle( cs );
				
				cell = getCell(sheet, 3 + i, 9);
				setText(cell, compCol1RtnVO.getComp_rtn());
				cell.setCellStyle( cs );
		}
		
	}

}
