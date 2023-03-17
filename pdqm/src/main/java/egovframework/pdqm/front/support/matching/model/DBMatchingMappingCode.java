package egovframework.pdqm.front.support.matching.model;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;

import com.ibm.icu.math.BigDecimal;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.rte.fdl.excel.EgovExcelMapping;
import egovframework.rte.fdl.excel.util.EgovExcelUtil;

public class DBMatchingMappingCode extends EgovExcelMapping {
	
	@SuppressWarnings("deprecation")
	@Override
	public Object mappingColumn(HSSFRow row) throws Exception {
		// TODO Auto-generated method stub
//		COLUMN_NM	COLUMN_KOREAN_NM	DATA_TY	DATA_LT	DCMLPOINT_LT

		HSSFCell cell1 = row.getCell((short) 0);
		HSSFCell cell2 = row.getCell((short) 1);

		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		
		System.out.println("+++ ltk 1+++ : [cell1] "+ row.getCell((short) 0));
		System.out.println("+++ ltk 2+++ : [cell2] "+ row.getCell((short) 1));
;		
		
		DBMatchingCVO vo = new DBMatchingCVO();
		try{
//		vo.setsLoginVO("system");	
		vo.setsLoginVO(user.getId());
		
		vo.setsCODE_ID(cell1.getRichStringCellValue().toString());
		vo.setsCODE_VALUE(cell2.getRichStringCellValue().toString());

		System.out.println("+++ : getsCODE_ID[ "+vo.getsCODE_ID() +
				"] getsCODE_VALUE[ "+vo.getsCODE_VALUE() 
				+ "]getsLoginVO()[ "+vo.getsLoginVO() 
				);
		}catch(Exception e){
			System.out.println("[E]"+ e);
			throw new Exception("1");
		}
		return vo;
	}
}