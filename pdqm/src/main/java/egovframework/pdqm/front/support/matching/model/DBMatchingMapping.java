package egovframework.pdqm.front.support.matching.model;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.rte.fdl.excel.EgovExcelMapping;

public class DBMatchingMapping extends EgovExcelMapping {
	
	@SuppressWarnings("deprecation")
	@Override
	public Object mappingColumn(HSSFRow row) throws Exception {
		// TODO Auto-generated method stub
		
		HSSFCell cell0 = row.getCell((short) 0);
		HSSFCell cell1 = row.getCell((short) 1);
		HSSFCell cell2 = row.getCell((short) 2);
		HSSFCell cell3 = row.getCell((short) 3);
		HSSFCell cell4 = row.getCell((short) 4);
		HSSFCell cell5 = row.getCell((short) 5);
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	
		System.out.println("+++ ltk 1+++ : [cell0] "+ row.getCell((short) 0));
		System.out.println("+++ ltk 2+++ : [cell1] "+ row.getCell((short) 1));
		System.out.println("+++ ltk 3+++ : [cell2] "+ row.getCell((short) 2));
		System.out.println("+++ ltk 4+++ : [cell3] "+ row.getCell((short) 3));
		System.out.println("+++ ltk 5+++ : [cell4] "+ row.getCell((short) 4));
		System.out.println("+++ ltk 6+++ : [cell5] "+ row.getCell((short) 5));

		DBMatchingVO vo = new DBMatchingVO();
		try{
//		vo.setEmpNo             (Integer.parseInt(EgovExcelUtil.getValue(cell0)));
//		vo.setEmpName            (EgovExcelUtil.getValue(cell1));
//		vo.setJob                (EgovExcelUtil.getValue(cell2));
		
		vo.setTable_nm(cell0.getRichStringCellValue().toString()); 
		vo.setColumn_nm(cell1.getRichStringCellValue().toString());
		vo.setColumn_korean_nm(cell2.getRichStringCellValue().toString());
		vo.setData_ty(cell3.getRichStringCellValue().toString()); 
		try {
			vo.setData_lt((int)cell4.getNumericCellValue()); 
			vo.setDcmlpoint_lt((int)cell5.getNumericCellValue()); 
		} catch (Exception e ){
			System.out.println("[E.mappingColumn]"+e);
			vo.setData_lt((Integer) null); 
			vo.setDcmlpoint_lt((Integer) null); 
		}
		vo.setsLoginVO(user.getId());
		vo.setREGIST_PNTTM(DBMatchingInfoVO.getREGIST_PNTTM());
		System.out.println("+++ :"+ " getTable_nm()[ "+vo.getTable_nm() + "] getColumn_nm[ "+vo.getColumn_nm() +
				"] getColumn_korean_nm[ "+vo.getColumn_korean_nm() + "] getData_ty[ "+vo.getData_ty() + 
				"] getData_lt[ "+vo.getData_lt() + "] getDcmlpoint_lt[ "+vo.getDcmlpoint_lt() + "]" 
				+ "] getsLoginVO [ "+vo.getsLoginVO() + "]"
				);

		} catch (Exception e){
			System.out.println("[E]"+e);
			throw new Exception("1");
		}
		return vo;

	}
}