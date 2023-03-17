package egovframework.pdqm.front.support.matching.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;

import egovframework.pdqm.front.support.matching.model.DBInfoVO;
import egovframework.pdqm.front.support.matching.model.DBMatching;
import egovframework.pdqm.front.support.matching.service.DBMatchingModifyService;
import egovframework.pdqm.front.support.matching.service.DBMatchingService;

@Controller
public class DBMatchingModifyController {
	
	@Resource(name = "MatchingModifyService")
	private DBMatchingModifyService matchingModifyService;
	
	@RequestMapping(value = "/support/matching/DBExcelModify.do")
	public String dBExcelModify(
			//@ModelAttribute("loginVO") LoginVO loginVO,
			@ModelAttribute("DBInfoVO") DBInfoVO dBInfoVO
			, final HttpServletRequest request
			, Map commandMap
			, Model model) throws Exception {
		
		String database_id = request.getParameter("database_id"); //
		String instt_nm = request.getParameter("instt_nm"); //
		String database_dc = request.getParameter("database_dc"); //
		String database_nm = request.getParameter("database_nm"); //
	
		model.addAttribute("instt_nm", instt_nm);
		model.addAttribute("database_id", database_id);
		model.addAttribute("database_nm", database_nm);
		model.addAttribute("database_dc", database_dc);
		
		String sCmd = commandMap.get("cmd") == null ? "" : (String)commandMap.get("cmd");
		instt_nm = commandMap.get("instt_nm") == null ? "" : (String)commandMap.get("instt_nm");
		database_nm = commandMap.get("database_nm") == null ? "" : (String)commandMap.get("database_nm");
		database_id = commandMap.get("database_id") == null ? "" : (String)commandMap.get("database_id");
		database_dc = commandMap.get("database_dc") == null ? "" : (String)commandMap.get("database_dc");
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	
		System.out.println("+++++++++ltk+++++++++[ sCmd ] :" + sCmd );
		System.out.println("+++++++++ltk+++++++++[ instt_nm ] :" + instt_nm );
		System.out.println("+++++++++ltk+++++++++[ database_nm ] :" + database_nm );
		System.out.println("+++++++++ltk+++++++++[ instt_nm ] :" + database_dc );
		System.out.println("+++++++++ltk+++++++++[ System.currentTimeMillis() ] :"+ Long.toString(System.currentTimeMillis()));

		
    	if (sCmd.equals("")) {
    		return "egovframework/pdqm/front/support/matching/DBExcelModify";
    	}

		try {
			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
		}
		
		dBInfoVO.setInstt_nm(instt_nm);
		dBInfoVO.setDatabase_nm(database_nm);
		dBInfoVO.setDatabase_id(database_id);
		dBInfoVO.setDatabase_dc(database_dc);
	
		//DB 정보를 UPDATE 한다.
		matchingModifyService.updateDBInfo(dBInfoVO);
//        return "forward:/sym/ccm/zip/EgovCcmZipList.do";
		return "forward:searchAllDBInfoList.do";
	}
	
	@RequestMapping(value = "/support/matching/DBExcelDelete.do")
	public String dBExcelDelete(
			//@ModelAttribute("loginVO") LoginVO loginVO ,
			@ModelAttribute("DBInfoVO") DBInfoVO dBInfoVO
			, final HttpServletRequest request
			, Map commandMap
			, Model model) throws Exception {
		String sCmd = commandMap.get("cmd") == null ? "" : (String)commandMap.get("cmd");
		String instt_nm = commandMap.get("instt_nm") == null ? "" : (String)commandMap.get("instt_nm");
		String database_nm = commandMap.get("database_nm") == null ? "" : (String)commandMap.get("database_nm");
		String database_id = commandMap.get("database_id") == null ? "" : (String)commandMap.get("database_id");
		String database_dc = commandMap.get("database_dc") == null ? "" : (String)commandMap.get("database_dc");
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	
		System.out.println("+++++++++ltk+++++++++[ sCmd ] :" + sCmd );
		System.out.println("+++++++++ltk+++++++++[ instt_nm ] :" + instt_nm );
		System.out.println("+++++++++ltk+++++++++[ database_nm ] :" + database_nm );
		System.out.println("+++++++++ltk+++++++++[ database_dc ] :" + database_dc );
		System.out.println("+++++++++ltk+++++++++[ System.currentTimeMillis() ] :"+ Long.toString(System.currentTimeMillis()));

		
    	if (sCmd.equals("")) {
    		return "egovframework/pdqm/front/support/matching/DBExcelModify";
    	}

		try {
			System.out.println("+++++++++ltk+++++++++[ user ] :" + user.getId() );
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
		}
		
		dBInfoVO.setInstt_nm(instt_nm);
		dBInfoVO.setDatabase_nm(database_nm);
		dBInfoVO.setDatabase_id(database_id);
		dBInfoVO.setDatabase_dc(database_dc);
	
		//DB 정보를 Delete 한다.
		matchingModifyService.deleteDBInfo(dBInfoVO);
		
//        return "forward:/sym/ccm/zip/EgovCcmZipList.do";
		return "forward:searchAllDBInfoList.do";
	}

}
