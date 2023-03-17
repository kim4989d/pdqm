package egovframework.pdqm.front.support.matching.web;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
//import egovframework.com.sym.ccm.zip.service.EgovCcmZipManageService;
import egovframework.pdqm.front.support.matching.model.DBMatchingInfoVO;
import egovframework.pdqm.front.support.matching.service.DBMatchingService;

@Controller
public class DBMatchingController {
	
	
	@Resource(name = "MatchingService")
	private DBMatchingService dBMatchingService;
	
	/**
	 * 엑셀파일을 업로드하여 DB정보를 등록한다.
	 * @param loginVO
	 * @param request
	 * @param commandMap
	 * @param model
	 * @return "egovframework/pdqm/front/support/matching/DBExcelRegist"
	 * @throws Exception
	 */
	@RequestMapping(value = "/support/matching/DBExcelRegist.do")
	public String insertExcelZip(//@ModelAttribute("loginVO") LoginVO loginVO,
			 final HttpServletRequest request
			, DBMatchingInfoVO dBMatchingInfoVO
			, Map commandMap
			, Model model) throws Exception {

		String sCmd = commandMap.get("cmd") == null ? "" : (String)commandMap.get("cmd");
		String sAgency = commandMap.get("agency") == null ? "" : (String)commandMap.get("agency");
		String sDatabaseName = commandMap.get("databasename") == null ? "" : (String)commandMap.get("databasename");
		String sDescription = commandMap.get("description") == null ? "" : (String)commandMap.get("description");
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	
		System.out.println("+++++++++ltk+++++++++[ sCmd ] :" + sCmd );
		System.out.println("+++++++++ltk+++++++++[ sAgency ] :" + sAgency );
		System.out.println("+++++++++ltk+++++++++[ sDatabaseName ] :" + sDatabaseName );
		System.out.println("+++++++++ltk+++++++++[ sDescription ] :" + sDescription );
		System.out.println("+++++++++ltk+++++++++[ System.currentTimeMillis() ] :"+ Long.toString(System.currentTimeMillis()));

    	

    	try {
    	 //사용자가 없으면  빠꾸
	    	if (user.getId().equals("")) {
				return "egovframework/pdqm/front/support/matching/matching_col_dbinfo";
	    	}
    	} catch(Exception e) {
    		System.out.println("+++ERROR++ "+e);
			return "egovframework/pdqm/front/support/matching/matching_col_dbinfo";
    	}
    	
    	if (sCmd.equals("")) {
    		return "egovframework/pdqm/front/support/matching/DBExcelRegist";
    	}
    	
		System.out.println("+++++++++ltk+++++++++[ loginVO.user.getId ] :" + user.getId() );
		
    	final MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
		final Map<String, MultipartFile> files = multiRequest.getFileMap();

    	String sResult = "";

    	try{
			Iterator<Entry<String, MultipartFile>> itr = files.entrySet().iterator();
			MultipartFile file;
	
			while (itr.hasNext()) {
				Entry<String, MultipartFile> entry = itr.next();
			
				file = entry.getValue();
				System.out.println("+++++++++ltk+++++++++[ fileName ] :" + file.getOriginalFilename() );
				
				if (!"".equals(file.getOriginalFilename())) {
	
			    	dBMatchingInfoVO.setsAgency(sAgency);
			    	dBMatchingInfoVO.setsDatabaseName(sDatabaseName);
			    	dBMatchingInfoVO.setsDescription(sDescription);
			    	dBMatchingInfoVO.setsFileName(file.getOriginalFilename());
			    	dBMatchingInfoVO.setsLoginVO(user.getId());
			    	dBMatchingInfoVO.setREGIST_PNTTM(Long.toString(System.currentTimeMillis()));
			    	
					dBMatchingService.insertDataBaseInfo(dBMatchingInfoVO);
					System.out.println("+++++++++ltk+++++++++[ DBMatchingController-insertDataBaseInfo ] : db정보 저장 "  );
					
					dBMatchingService.insertDBExcel(file.getInputStream(),dBMatchingInfoVO);  // 임시테이블에 정보 저장
	
					System.out.println("+++++++++ltk+++++++++[ DBMatchingController-insertDBExcel ] : 완료 "  );
				}
			}
    	}catch(Exception e){
    		System.out.println("엑셀 등록오류시 처리 : "+e.getMessage());
    			// 개행이  않되어 메세지가 있을 경우 화면에서 메세지 처리함
    	    	model.addAttribute("message", "파일 등록 오류!"+" "+"파일을 등록하는 중에 오류가 발생하였습니다. "+"  "+"탬플릿 양식이 일치하는지 확인후 다시 등록하여 주시기 바랍니다.");
                return "egovframework/pdqm/front/support/matching/DBExcelRegist";      
    	}
    	

//        return "forward:/sym/ccm/zip/EgovCcmZipList.do";
		return "redirect:searchAllDBInfoList.do";
	}

}
