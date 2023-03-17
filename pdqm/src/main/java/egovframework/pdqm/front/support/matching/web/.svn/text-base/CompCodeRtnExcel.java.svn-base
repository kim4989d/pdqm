/*
 * Copyright 2011 MOPAS(Ministry of Public Administration and Security).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
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
import org.springframework.web.servlet.view.document.AbstractExcelView;

import egovframework.pdqm.front.support.matching.model.COLInfoVO;
import egovframework.pdqm.front.support.matching.model.CodeInfoVO;
import egovframework.pdqm.front.support.matching.model.TBLInfoVO;

/**
 * 엑셀파일을 생성하는 클래스를 정의한다.
 * @author 
 * @since 
 * @version 1.0
 * @see
 */
public class CompCodeRtnExcel extends AbstractExcelView {

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
		
		Map<String, Object> map 			= (Map<String, Object>)	model.get("exlCompCodeRtnMap");
		List<CodeInfoVO> 	codeCompList 	= (List<CodeInfoVO>) 	map.get("codeCompList");
		CodeInfoVO 			codeCompTarget 	= (CodeInfoVO) 			map.get("codeCompTarget");
		
		String rtn_code = (String) map.get("rtn_code");
		
		HSSFCell cell = null;
		 
		HSSFSheet sheet = wb.createSheet("코드분석 결과");
		sheet.setDefaultColumnWidth((short) 12);
		
		HSSFCellStyle topCs = wb.createCellStyle();
		HSSFCellStyle hdCs = wb.createCellStyle();
		HSSFCellStyle cs = wb.createCellStyle();
		
		HSSFFont topFont = wb.createFont();
		HSSFFont hdFont = wb.createFont();
		HSSFFont font = wb.createFont();

		sheet.addMergedRegion(new Region(0, (short)0, 0, (short)5));
		topFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		topFont.setFontHeight((short)400);
		topCs.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		topCs.setFont(topFont);
		
		cs.setBorderTop(HSSFCellStyle.BORDER_THIN);
		cs.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		cs.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		cs.setBorderRight(HSSFCellStyle.BORDER_THIN);
		
		// put text in first cell
		cell = getCell(sheet, 0, 0);
		setText(cell, "코드분석 결과");
		cell.setCellStyle( topCs );
		//setText(getCell(sheet, 0, 1), " 결과 범위[" + rtn_code + "]");
		
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
		setText(cell, "기준 코드");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 2, 1);
		setText(cell, "분석대상 코드");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 3, 0);
		setText(cell, codeCompTarget.getCode_info_nm());
		cell.setCellStyle(cs);
		
		cell = getCell(sheet, 3, 1);
		setText(cell, codeCompTarget.getT_code_info_nm());
		cell.setCellStyle(cs);
		
		cell = getCell(sheet, 5, 0);
		setText(cell, "NO");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 5, 1);
		setText(cell, "기준 코드값");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 5, 2);
		setText(cell, "기준 코드값 의미");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 5, 3);
		setText(cell, "대상 코드값");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 5, 4);
		setText(cell, "대상코드값 의미");
		cell.setCellStyle(hdCs);
		
		cell = getCell(sheet, 5, 5);
		setText(cell, "상태");
		cell.setCellStyle(hdCs);
		
		for (int i = 0; i < codeCompList.size(); i++) {
				CodeInfoVO compCodeRtnVO = codeCompList.get(i);
 
				cell = getCell(sheet, 6 + i, 0);
				setText(cell, Integer.toString(i+1));
				cell.setCellStyle(cs);
 
				cell = getCell(sheet, 6 + i, 1);
				setText(cell, compCodeRtnVO.getCode_id());
				cell.setCellStyle(cs);
				
				cell = getCell(sheet, 6 + i, 2);
				setText(cell, compCodeRtnVO.getCode_value());
				cell.setCellStyle(cs);
				
				cell = getCell(sheet, 6 + i, 3);
				setText(cell, compCodeRtnVO.getT_code_id());
				cell.setCellStyle(cs);
				
				cell = getCell(sheet, 6 + i, 4);
				setText(cell, compCodeRtnVO.getT_code_value());
				cell.setCellStyle(cs);
				
				cell = getCell(sheet, 6 + i, 5);
				setText(cell, compCodeRtnVO.getErr_code_nm());
				cell.setCellStyle(cs);
		}		
	}
}
