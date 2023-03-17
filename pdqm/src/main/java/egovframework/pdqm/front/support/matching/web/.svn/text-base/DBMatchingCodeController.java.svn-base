package egovframework.pdqm.front.support.matching.web;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.pdqm.front.support.matching.model.CodeInfoVO;
import egovframework.pdqm.front.support.matching.model.DBMatching;
import egovframework.pdqm.front.support.matching.model.DBMatchingInfoVO;
import egovframework.pdqm.front.support.matching.service.DBMatchingService;
import egovframework.pdqm.front.support.matching.service.MatchingCodeInfoService;

/**
 * 엑셀파일을 업로드하여 코드정보를 등록한다.
 * @param loginVO
 * @param request
 * @param commandMap
 * @param model
 * @return "egovframework/pdqm/front/support/matching/DBCodeExcelRegist"
 * @throws Exception
 */
@Controller
public class DBMatchingCodeController {
	
	@Resource(name = "MatchingService")
	private DBMatchingService dBMatchingService;

	@Resource(name = "MatchingCodeInfoService")
	private MatchingCodeInfoService matchingCodeInfoService;
	/**
	 * 엑셀파일을 업로드하여 Code정보를 등록한다.
	 * @param loginVO
	 * @param request
	 * @param commandMap
	 * @param model
	 * @return "egovframework/pdqm/front/support/matching/DBCodeExcelRegist"
	 * @throws Exception
	 */
	
	
	@RequestMapping(value = "/support/matching/DBCodeExcelRegist.do")
	public String insertExcelZip(@ModelAttribute("searchVO") DBMatching dBMatching
//			, @ModelAttribute("loginVO") LoginVO loginVO
			, final HttpServletRequest request
			, DBMatchingInfoVO dBMatchingInfoVO
			, Map commandMap
			, Model model) throws Exception {
 
		String sCmd = commandMap.get("cmd") == null ? "" : (String)commandMap.get("cmd");
		String sDescription = commandMap.get("description") == null ? "" : (String)commandMap.get("description");
		String sDatabaseName = commandMap.get("databasename") == null ? "" : (String)commandMap.get("databasename");
		String sDatabaseId = commandMap.get("dbTrgetId") == null ? "" : (String)commandMap.get("dbTrgetId");
		String sCodeName = commandMap.get("codename") == null ? "" : (String)commandMap.get("codename");
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	
		System.out.println("+++++++++ltk+++++++++[ sCmd ] :" + sCmd );
		System.out.println("+++++++++ltk+++++++++[ sDatabaseName ] :" + sDatabaseName );
		System.out.println("+++++++++ltk+++++++++[ sDescription ] :" + sDescription );
		System.out.println("+++++++++ltk+++++++++[ sCodeName ] :" + sCodeName );
		System.out.println("+++++++++ltk+++++++++[ System.currentTimeMillis() ] :"+ Long.toString(System.currentTimeMillis()));
		try {
		
			List <DBMatching> dBMatchigList = dBMatchingService.selectDBMatchigList(dBMatching, user.getId());
			model.addAttribute("dBMatchigList", dBMatchigList);
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("[ERROR] : "+ e);
			return "redirect:MatchingCodeInfo.do";
		}
		
    	if (sCmd.equals("")) {
    		return "egovframework/pdqm/front/support/matching/DBCodeExcelRegist";
    	}
    	 //사용자가 없으면  빠꾸
//    	if (user.getId().equals("")) {
//    		return "egovframework/pdqm/front/support/matching/DBCodeExcelRegist";
//    	}
    	

		
		System.out.println("+++++++++ltk+++++++++[ loginVO.user.getId ] :" + user.getId() );
		
    	final MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
		final Map<String, MultipartFile> files = multiRequest.getFileMap();

    	
    	try{
    	
			Iterator<Entry<String, MultipartFile>> itr = files.entrySet().iterator();
			MultipartFile file;
	
			while (itr.hasNext()) {
				Entry<String, MultipartFile> entry = itr.next();
			
				file = entry.getValue();
				System.out.println("+++++++++ltk+++++++++[ fileName ] :" + file.getOriginalFilename() );
				
				if (!"".equals(file.getOriginalFilename())) {
					
					dBMatchingInfoVO.setsCodeName(sCodeName);
			    	dBMatchingInfoVO.setsDatabaseName(sDatabaseName);
			    	dBMatchingInfoVO.setsDatabaseId(sDatabaseId);
			    	dBMatchingInfoVO.setsCodeNameDesc(sDescription);
			    	dBMatchingInfoVO.setsFileName(file.getOriginalFilename());
			    	dBMatchingInfoVO.setsLoginVO(user.getId());
//			    	dBMatchingInfoVO.setsLoginVO("system");
			    	dBMatchingInfoVO.setREGIST_PNTTM(Long.toString(System.currentTimeMillis()));
			    	
			    	dBMatchingService.insertCodeInfo(dBMatchingInfoVO);
					System.out.println("+++++++++ltk+++++++++[ DBMatchingController-insertDataBaseInfo ] : db정보 저장 "  );
					
					dBMatchingService.insertCodeExcel(file.getInputStream(),dBMatchingInfoVO);  // 임시테이블에 정보 저장
	
					System.out.println("+++++++++ltk+++++++++[ DBMatchingController-insertDBExcel ] : 완료 "  );
				}
			}
		}catch(Exception e){
			System.out.println("엑셀 등록오류시 처리 : "+e.getMessage());
				// 개행이  않되어 메세지가 있을 경우 화면에서 메세지 처리함
		    	model.addAttribute("message", "파일 등록 오류!"+" "+"파일을 등록하는 중에 오류가 발생하였습니다. "+"  "+"탬플릿 양식이 일치하는지 확인후 다시 등록하여 주시기 바랍니다.");
	    		return "egovframework/pdqm/front/support/matching/DBCodeExcelRegist";      
		}

//        return "forward:/sym/ccm/zip/EgovCcmZipList.do";
		return "redirect:MatchingCodeInfo.do";
	}
	
	
	
	
	/**
	 * 등록된 Code 정보를 UPDATE 한다.
	 * @param loginVO
	 * @param request
	 * @param commandMap
	 * @param model
	 * @return "egovframework/pdqm/front/support/matching/searchFindCdoeInfoList"
	 * @throws Exception
	 */	
	
	@RequestMapping(value = "/support/matching/DBCodeExcelModify.do")
	public String updateCodeModify(@ModelAttribute("codeInfoVO") CodeInfoVO codeInfoVO
//			, @ModelAttribute("loginVO") LoginVO loginVO
			, final HttpServletRequest request
			, Map commandMap
			, Model model) throws Exception {
		
		String code_info_id = request.getParameter("code_info_id"); //
		String database_id = request.getParameter("database_id"); //
		String code_nm = request.getParameter("code_nm"); //
		String code_nm_desc = request.getParameter("code_nm_desc"); //
		String database_nm = request.getParameter("database_nm"); //

		
		model.addAttribute("code_info_id", code_info_id);
		model.addAttribute("database_id", database_id);
		model.addAttribute("database_nm", database_nm);
		model.addAttribute("code_nm", code_nm);
		model.addAttribute("code_nm_desc", code_nm_desc);
		
		System.out.println("+++++++++ltk+++++++++[ database_id ] :" + database_id );
		System.out.println("+++++++++ltk+++++++++[ database_nm ] :" + database_nm );
		System.out.println("+++++++++ltk+++++++++[ code_nm ] :" + code_nm );
		System.out.println("+++++++++ltk+++++++++[ code_nm_desc ] :" + code_nm_desc );
		
		String sCmd = commandMap.get("cmd") == null ? "" : (String)commandMap.get("cmd");
		
		code_info_id = commandMap.get("code_info_id") == null ? "" : (String)commandMap.get("code_info_id");
		code_nm_desc = commandMap.get("code_nm_desc") == null ? "" : (String)commandMap.get("code_nm_desc");
		database_id = commandMap.get("database_id") == null ? "" : (String)commandMap.get("database_id");
		database_nm = commandMap.get("databasename") == null ? "" : (String)commandMap.get("databasename");
		code_nm = commandMap.get("code_nm") == null ? "" : (String)commandMap.get("code_nm");
		

		
		System.out.println("+++++++++ltk+++++++++[ sCmd ] :" + sCmd );
		System.out.println("+++++++++ltk+++++++++[ code_info_id ] :" + code_info_id );
		System.out.println("+++++++++ltk+++++++++[ database_id ] :" + database_id );
		System.out.println("+++++++++ltk+++++++++[ code_nm_desc ] :" + code_nm_desc );
		System.out.println("+++++++++ltk+++++++++[ code_nm ] :" + code_nm );
		System.out.println("+++++++++ltk+++++++++[ System.currentTimeMillis() ] :"+ Long.toString(System.currentTimeMillis()));
		

		

    	 //사용자가 없으면  빠꾸
//    	if (user.getId().equals("")) {
//    		return "egovframework/pdqm/front/support/matching/DBCodeExcelRegist";
//    	}
    			
		try	{
			LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
			System.out.println("+++++++++ltk+++++++++[ loginVO.user.getId ] :" + user.getId() );
			codeInfoVO.setRegister_id(user.getId());			
		} catch (Exception e) {
			System.out.println("ERROR : "+ e);
			return "redirect:MatchingCodeInfo.do";
		}		
		
    	if (sCmd.equals("")) {
    		return "egovframework/pdqm/front/support/matching/DBCodeExcelModify";
    	}
		codeInfoVO.setDatabase_id(database_id);				
		codeInfoVO.setCode_nm(code_nm);
		codeInfoVO.setCode_nm_desc(code_nm_desc);
		codeInfoVO.setCode_info_id(code_info_id);
//		codeInfoVO.setRegister_id("system");
		    	
		matchingCodeInfoService.updateCodeModify(codeInfoVO);
		System.out.println("+++++++++ltk+++++++++[ updateCodeModify ] : Code 정보 갱신 "  );

		codeInfoVO.setCode_nm(null); //초기화
		
        return "redirect:MatchingCodeInfo.do";
//		return "egovframework/pdqm/front/support/matching/MatchingCodeInfo";
	}
	
	
	
	
	/**
	 * 등록된 Code 정보를 DELETE 한다.
	 * @param loginVO
	 * @param request
	 * @param commandMap
	 * @param model
	 * @return "egovframework/pdqm/front/support/matching/searchFindCdoeInfoList"
	 * @throws Exception
	 */	
	
	@RequestMapping(value = "/support/matching/DBCodeExcelDelete.do")
	public String deleteCodeModify(@ModelAttribute("codeInfoVO") CodeInfoVO codeInfoVO
//			, @ModelAttribute("loginVO") LoginVO loginVO
			, final HttpServletRequest request
			, Map commandMap
			, Model model) throws Exception {
 
		String sCmd = commandMap.get("cmd") == null ? "" : (String)commandMap.get("cmd");
		String code_info_id = commandMap.get("code_info_id") == null ? "" : (String)commandMap.get("code_info_id");
		String code_nm_desc = commandMap.get("code_nm_desc") == null ? "" : (String)commandMap.get("code_nm_desc");
		String database_id = commandMap.get("databaseId") == null ? "" : (String)commandMap.get("database_id");
		String code_nm = commandMap.get("code_nm") == null ? "" : (String)commandMap.get("code_nm");
    	
		System.out.println("+++++++++ltk+++++++++[ sCmd ] :" + sCmd );
		System.out.println("+++++++++ltk+++++++++[ code_info_id ] :" + code_info_id );
		System.out.println("+++++++++ltk+++++++++[ database_id ] :" + database_id );
		System.out.println("+++++++++ltk+++++++++[ code_nm_desc ] :" + code_nm_desc );
		System.out.println("+++++++++ltk+++++++++[ code_nm ] :" + code_nm );
		System.out.println("+++++++++ltk+++++++++[ System.currentTimeMillis() ] :"+ Long.toString(System.currentTimeMillis()));
		

		
    	if (sCmd.equals("")) {
    		return "forward:DBCodeExcelDelete.do";
//    		return "egovframework/pdqm/front/support/matching/DBCodeExcelDelete";
    	}
    	 //사용자가 없으면  빠꾸
//    	if (user.getId().equals("")) {
//    		return "egovframework/pdqm/front/support/matching/DBCodeExcelRegist";
//    	}
    			
		try	{
			LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
			System.out.println("+++++++++ltk+++++++++[ loginVO.user.getId ] :" + user.getId() );
			codeInfoVO.setRegister_id(user.getId());			
		} catch (Exception e) {
			System.out.println("ERROR : "+ e);
		}
		codeInfoVO.setCode_info_id(code_info_id);
		codeInfoVO.setDatabase_id(database_id);				
		codeInfoVO.setCode_nm(code_nm);
		codeInfoVO.setCode_nm_desc(code_nm_desc);
//		codeInfoVO.setRegister_id("system");
		    	
		matchingCodeInfoService.deleteCodeModify(codeInfoVO);
		System.out.println("+++++++++ltk+++++++++[ deleteCodeModify ] : Code 정보 삭제 "  );
		
		codeInfoVO.setCode_nm(null); //초기화
		
        return "redirect:MatchingCodeInfo.do";
//		return "egovframework/pdqm/front/support/matching/MatchingCodeInfo";
	}
}
