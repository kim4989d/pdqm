package egovframework.com.uss.umt.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.com.cmm.ComDefaultCodeVO;
import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.annotation.IncludedInfo;
import egovframework.com.cmm.service.EgovCmmUseService;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.com.cop.ems.service.EgovSndngMailRegistService;
import egovframework.com.cop.ems.service.SndngMailVO;
import egovframework.com.sec.rnc.service.EgovRlnmManageService;
import egovframework.com.uat.uia.service.EgovLoginService;
import egovframework.com.uss.umt.service.EgovMberManageService;
import egovframework.com.uss.umt.service.EgovUserManageService;
import egovframework.com.uss.umt.service.MberManageVO;
import egovframework.com.uss.umt.service.UserDefaultVO;
import egovframework.com.utl.sim.service.EgovFileScrty;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;



/**
 * 일반회원관련 요청을  비지니스 클래스로 전달하고 처리된결과를  해당   웹 화면으로 전달하는  Controller를 정의한다
 * @author 공통서비스 개발팀 조재영
 * @since 2009.04.10
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.04.10  조재영          최초 생성
 *   2011.8.26	정진오			IncludedInfo annotation 추가
 *
 * </pre>
 */

@Controller
public class EgovMberManageController {

	/** EgovSndngMailRegistService */
	@Resource(name = "sndngMailRegistService")
    private EgovSndngMailRegistService sndngMailRegistService;
	
    /** EgovLoginService */
	@Resource(name = "loginService")
    private EgovLoginService loginService;

    /** rlnmManageService psh */
    @Resource(name = "rlnmManageService")
    private EgovRlnmManageService rlnmManageService;
    
    /** userManageService */
    @Resource(name = "userManageService")
    private EgovUserManageService userManageService;
    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;

    /** mberManageService */
    @Resource(name = "mberManageService")
    private EgovMberManageService mberManageService;
    
    /** cmmUseService */
    @Resource(name="EgovCmmUseService")
    private EgovCmmUseService cmmUseService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    
    /** Log Info */
    protected Log log = LogFactory.getLog(this.getClass());
    
    /** DefaultBeanValidator beanValidator */
    @Autowired
	private DefaultBeanValidator beanValidator;
    
    /**
     * 일반회원목록을 조회한다. (pageing)
     * @param userSearchVO 검색조건정보
     * @param model 화면모델
     * @return uss/umt/EgovMberManage
     * @throws Exception
     */
    @IncludedInfo(name="일반회원관리", order = 470 ,gid = 50)
    @RequestMapping(value="/uss/umt/EgovMberManage.do")
    public String selectMberList(
    		@ModelAttribute("userSearchVO") UserDefaultVO userSearchVO,
            ModelMap model
            )throws Exception {
    	
        /** EgovPropertyService.sample */
    	userSearchVO.setPageUnit(propertiesService.getInt("pageUnit"));
    	userSearchVO.setPageSize(propertiesService.getInt("pageSize"));
        
        /** pageing */
        PaginationInfo paginationInfo = new PaginationInfo();
        paginationInfo.setCurrentPageNo(userSearchVO.getPageIndex());
        paginationInfo.setRecordCountPerPage(userSearchVO.getPageUnit());
        paginationInfo.setPageSize(userSearchVO.getPageSize());
        
        userSearchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
        userSearchVO.setLastIndex(paginationInfo.getLastRecordIndex());
        userSearchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
        
        List mberList = mberManageService.selectMberList(userSearchVO);
        model.addAttribute("resultList", mberList);
        
        int totCnt = mberManageService.selectMberListTotCnt(userSearchVO);
        paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);
        
        //일반회원 상태코드를 코드정보로부터 조회
        ComDefaultCodeVO vo = new ComDefaultCodeVO();
        vo.setCodeId("COM013");
        List mberSttus_result = cmmUseService.selectCmmCodeDetail(vo);
        model.addAttribute("entrprsMberSttus_result",mberSttus_result);//기업회원상태코드목록

        vo.setCodeId("COM200");
        List mberType_result = cmmUseService.selectCmmCodeDetail(vo);
        model.addAttribute("mberType_result",mberType_result);//회원구분코드목록
        
        vo.setCodeId("COM201");
        List mberGrp_result = cmmUseService.selectCmmCodeDetail(vo);
        model.addAttribute("mberGrp_result",mberGrp_result);//회원그룹코드목록

		// 수정진행중 psh
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();		
		
		String mberType= user.getMberType();
		
		if (mberType.equals("A")) {
	        //model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));
			return "egovframework/com/uss/umt/EgovMberManage";
		}else {
			model.addAttribute("message", "관리자권한이 없습니다."); 
			return "redirect:/index.do";
		}
//        return "egovframework/com/uss/umt/EgovMberManage";
    } 
    
    /**
     * 일반회원등록화면으로 이동한다.
     * @param userSearchVO 검색조건정보
     * @param mberManageVO 일반회원초기화정보
     * @param model 화면모델
     * @return uss/umt/EgovMberInsert
     * @throws Exception
     */
    @RequestMapping("/uss/umt/EgovMberInsertView.do")
    public String insertMberView(
            @ModelAttribute("userSearchVO") UserDefaultVO userSearchVO,
            @ModelAttribute("mberManageVO") MberManageVO mberManageVO,
            Model model
            )throws Exception {

        ComDefaultCodeVO vo = new ComDefaultCodeVO();
        
        //패스워드힌트목록을 코드정보로부터 조회
        vo.setCodeId("COM022");
        List passwordHint_result = cmmUseService.selectCmmCodeDetail(vo);
        //성별구분코드를 코드정보로부터 조회
        vo.setCodeId("COM014");
        List sexdstnCode_result = cmmUseService.selectCmmCodeDetail(vo);
        //사용자상태코드를 코드정보로부터 조회
        vo.setCodeId("COM013");
        List mberSttus_result = cmmUseService.selectCmmCodeDetail(vo);        
        //회원구분코드를 코드정보로부터 조회
        vo.setCodeId("COM200");
        List mberType_result = cmmUseService.selectCmmCodeDetail(vo);        
        //회원그룹코드를 코드정보로부터 조회
        vo.setCodeId("COM201");
        List mberGrp_result = cmmUseService.selectCmmCodeDetail(vo);        
        //그룹정보를 조회 - GROUP_ID정보
        vo.setTableNm("COMTNORGNZTINFO");
        List groupId_result = cmmUseService.selectGroupIdDetail(vo);
        
        model.addAttribute("passwordHint_result",      passwordHint_result);     //패스워트힌트목록
        model.addAttribute("sexdstnCode_result",       sexdstnCode_result);      //성별구분코드목록
        model.addAttribute("mberSttus_result",  mberSttus_result);  //사용자상태코드목록
        model.addAttribute("mberType_result",  mberType_result);  //회원구분코드목록        
        model.addAttribute("mberGrp_result",  mberGrp_result);  	//회원그룹코드목록        
        model.addAttribute("groupId_result",  groupId_result);  //그룹코드목록        
        model.addAttribute("groupId_result",         groupId_result);        //그룹정보 목록
        
 
        
        return "egovframework/com/uss/umt/EgovMberInsert";
    }
    
    /**
     * 일반회원등록처리후 목록화면으로 이동한다.
     * @param mberManageVO 일반회원등록정보
     * @param bindingResult 입력값검증용 bindingResult 
     * @param model 화면모델
     * @return forward:/uss/umt/EgovMberManage.do
     * @throws Exception
     */
    @RequestMapping("/uss/umt/EgovMberInsert.do")
    public String insertMber(
            @ModelAttribute("entrprsManageVO") MberManageVO mberManageVO, 
            BindingResult bindingResult,
            Model model
            )throws Exception {
    	
        beanValidator.validate(mberManageVO, bindingResult);
    	if (bindingResult.hasErrors()){
    		return "egovframework/com/uss/umt/EgovMberInsert";
		}else{
			if(mberManageVO.getGroupId().equals("")){
				mberManageVO.setGroupId(null);
			}
			mberManageService.insertMber(mberManageVO);
	        //Exception 없이 진행시 등록 성공메시지
	        model.addAttribute("resultMsg", egovMessageSource.getMessage("success.common.insert"));
		}
    	return "forward:/uss/umt/EgovMberManage.do";
    }
   
    /**
     * 일반회원정보 수정을 위해 일반회원정보를 상세조회한다.
     * @param mberId 상세조회대상 일반회원아이디
     * @param userSearchVO 검색조건
     * @param model 화면모델
     * @return uss/umt/EgovMberSelectUpdt
     * @throws Exception
     */
    @RequestMapping("/uss/umt/EgovMberSelectUpdtView.do")
    public String updateMberView(
            @RequestParam("selectedId") String mberId ,
            @ModelAttribute("searchVO") UserDefaultVO userSearchVO, 
            Model model
            )throws Exception {
        
        ComDefaultCodeVO vo = new ComDefaultCodeVO();
        
//        //패스워드힌트목록을 코드정보로부터 조회
//        vo.setCodeId("COM022");
//        List passwordHint_result = cmmUseService.selectCmmCodeDetail(vo);
//        
//        //성별구분코드를 코드정보로부터 조회
//        vo.setCodeId("COM014");
//        List sexdstnCode_result = cmmUseService.selectCmmCodeDetail(vo);
//        
//        //사용자상태코드를 코드정보로부터 조회
//        vo.setCodeId("COM013");
//        List mberSttus_result = cmmUseService.selectCmmCodeDetail(vo);     

        //회원구분코드를 코드정보로부터 조회
        vo.setCodeId("COM200");
        List mberType_result = cmmUseService.selectCmmCodeDetail(vo);     

        //회원그룹코드를 코드정보로부터 조회
        vo.setCodeId("COM201");
        List mberGrp_result = cmmUseService.selectCmmCodeDetail(vo);     
        
//        //그룹정보를 조회 - GROUP_ID정보
//        vo.setTableNm("COMTNORGNZTINFO");
//        List groupId_result = cmmUseService.selectGroupIdDetail(vo);
        
//        model.addAttribute("passwordHint_result",      passwordHint_result);     //패스워트힌트목록
//        model.addAttribute("sexdstnCode_result",       sexdstnCode_result);      //성별구분코드목록
//        model.addAttribute("mberSttus_result",  mberSttus_result);  //사용자상태코드목록
        model.addAttribute("mberType_result",  mberType_result);  //회원구분코드목록        
        model.addAttribute("mberGrp_result",  mberGrp_result);  //회원그룹코드목록        
//        model.addAttribute("groupId_result",         groupId_result);        //그룹정보 목록
        
        MberManageVO mberManageVO = mberManageService.selectMber(mberId);
        
//System.out.println("userSearchVO========>"+userSearchVO.getDateFrom());

        model.addAttribute("mberManageVO", mberManageVO);
        model.addAttribute("userSearchVO", userSearchVO);
        
        return "egovframework/com/uss/umt/EgovMberSelectUpdt";
    }

    /**
     * 일반회원정보 수정을 위해 일반회원정보를 상세조회한다.
     * @param mberId 상세조회대상 일반회원아이디
     * @param userSearchVO 검색조건
     * @param model 화면모델
     * @return uss/umt/EgovMberSelectUpdt
     * @throws Exception
     */
    @RequestMapping("/uss/umt/MberSelectUpdtView.do")
    public String mberSelectUpdtView(
            @RequestParam("selectedId") String mberId ,
            @ModelAttribute("searchVO") UserDefaultVO userSearchVO, 
            Model model
            )throws Exception {
        
        ComDefaultCodeVO vo = new ComDefaultCodeVO();
        

        //회원구분코드를 코드정보로부터 조회
        vo.setCodeId("COM200");
        List mberType_result = cmmUseService.selectCmmCodeDetail(vo);     

        //회원그룹코드를 코드정보로부터 조회
        vo.setCodeId("COM201");
        List mberGrp_result = cmmUseService.selectCmmCodeDetail(vo);     
        
        model.addAttribute("mberType_result",  mberType_result);  //회원구분코드목록        
        model.addAttribute("mberGrp_result",  mberGrp_result);  //회원그룹코드목록        
        
        MberManageVO mberManageVO = mberManageService.selectMber(mberId);
        
        model.addAttribute("mberManageVO", mberManageVO);
        model.addAttribute("userSearchVO", userSearchVO);
        
        return "egovframework/pdqm/front/main/MberSelectUpdtView";
    }
    /**
     * 회원탈퇴 뷰화면
     * @param mberId 상세조회대상 일반회원아이디
     * @param userSearchVO 검색조건
     * @param model 화면모델
     * @return uss/umt/EgovMberSelectUpdt
     * @throws Exception
     */
    @RequestMapping("/uss/umt/MberQuitView.do")
    public String mberQuitView(
            @ModelAttribute("searchVO") UserDefaultVO userSearchVO, 
            Model model
            )throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

        MberManageVO mberManageVO = mberManageService.selectMber(user.getUniqId());
        model.addAttribute("mberManageVO", mberManageVO);
        
        return "egovframework/pdqm/front/main/MberQuitView";
    }     

    /**
     * 회원탈퇴 update
     * @param mberManageVO 일반회원수정정보
     * @param bindingResult 입력값검증용 bindingResult
     * @param model 화면모델
     * @return forward:/uss/umt/EgovMberGrpSelectUpdt.do
     * @throws Exception
     */
    @RequestMapping("/uss/umt/MberQuit.do")
    public String updateMberQuit(
            @ModelAttribute("mberManageVO") MberManageVO mberManageVO,
            Model model
            )throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	
    	// 파라메터에서 가져온값
    	String pPassword = EgovFileScrty.encryptPassword(mberManageVO.getPassword());
        MberManageVO resultVO = new MberManageVO();
        // 디비에서 가져온 값
    	resultVO = mberManageService.selectPassword(mberManageVO);
    	String dPassword = resultVO.getPassword();
    	//패스워드 암호화
    	if (pPassword.equals(dPassword)){
    		mberManageService.updateMberQuit(user.getUniqId());
            //Exception 없이 진행시 수정성공메시지
            model.addAttribute("message", egovMessageSource.getMessage("success.common.delete"));
            model.addAttribute("sucess", "1"); 	// 성공           
            return "forward:/uss/umt/MberQuitView.do";
    	}else{
            model.addAttribute("message", egovMessageSource.getMessage("fail.user.passwordUpdate1"));
            model.addAttribute("sucess", "0");	//실패
            return "forward:/uss/umt/MberQuitView.do";
    	}
        
    }     
    /**
     * 일반회원정보 수정후 목록조회 화면으로 이동한다.
     * @param mberManageVO 일반회원수정정보
     * @param bindingResult 입력값검증용 bindingResult
     * @param model 화면모델
     * @return forward:/uss/umt/EgovMberManage.do
     * @throws Exception
     */
    @RequestMapping("/uss/umt/EgovMberSelectUpdt.do")
    public String updateMber(
            @ModelAttribute("mberManageVO") MberManageVO mberManageVO,
            BindingResult bindingResult,
            Model model
            )throws Exception {
        
//        beanValidator.validate(mberManageVO, bindingResult);
//System.out.println("Error Count ==>"+bindingResult.getErrorCount());        
//    	if (bindingResult.hasErrors()){
//    		return "egovframework/com/uss/umt/EgovEntrprsMberSelectUpdt";
//		}else{
//			if(mberManageVO.getGroupId().equals("")){
//				mberManageVO.setGroupId(null);
//			}
			mberManageService.updateMber(mberManageVO);
	        //Exception 없이 진행시 수정성공메시지
	        model.addAttribute("resultMsg", egovMessageSource.getMessage("success.common.update"));
	        return "forward:/uss/umt/EgovMberManage.do";
//		}
    }

    /**
     * 프론트 단에서 수정 일반회원정보 수정후 목록조회 화면으로 이동한다.
     * @param mberManageVO 일반회원수정정보
     * @param bindingResult 입력값검증용 bindingResult
     * @param model psh
     * @return forward:/uss/umt/EgovMberManage.do
     * @throws Exception
     */
    @RequestMapping("/uss/umt/MberSelectUpdt.do")
    public String MberSelectUpdt(
            @ModelAttribute("mberManageVO") MberManageVO mberManageVO,
            BindingResult bindingResult,
            Model model
            )throws Exception {
    	
        beanValidator.validate(mberManageVO, bindingResult);
    	if (bindingResult.hasErrors()){
    		return "egovframework/com/uss/umt/MberSelectUpdtView.do";
		}else{

			String pPassword = EgovFileScrty.encryptPassword(mberManageVO.getOldPassword());			
			MberManageVO tempVO = mberManageService.selectPassword(mberManageVO);
			
			System.out.println("파라메터 패스워드=>"+pPassword);
			System.out.println("DB 패스워드=>"+tempVO.getPassword());	
			
			if( !tempVO.getPassword().equals(pPassword)) {
				model.addAttribute("errorCode", "1");
				model.addAttribute("resultMsg", "기존 비밀번호가 다릅니다.");
			} else {
				model.addAttribute("errorCode", "0");
				mberManageService.mberSelectUpdt(mberManageVO);
		        //Exception 없이 진행시 수정성공메시지
		        model.addAttribute("resultMsg", egovMessageSource.getMessage("success.common.update"));
			}

	        return "egovframework/pdqm/front/main/MberSelectUpdtView";
//	        return "redirect:/index.do";
		}
    }    
    /**
     * 일반회원정보 수정후 그룹 목록조회 화면으로 이동한다.
     * @param mberManageVO 일반회원수정정보
     * @param bindingResult 입력값검증용 bindingResult
     * @param model 화면모델
     * @return forward:/uss/umt/EgovMberGrpSelectUpdt.do
     * @throws Exception
     */
    @RequestMapping("/uss/umt/EgovMberGrpSelectUpdt.do")
    public String updateMberGrp(@RequestParam("checkedIdForDel") String checkedId,
            @ModelAttribute("mberManageVO") MberManageVO mberManageVO,
            BindingResult bindingResult,
            Model model,@RequestParam("updateMberGrp") String mberGrp
            )throws Exception {

    	
//    	mberManageVO.setMberGrp(mberGrp);
		mberManageService.updateMberGrp(checkedId, mberGrp);
        //Exception 없이 진행시 수정성공메시지
        model.addAttribute("resultMsg", egovMessageSource.getMessage("success.common.update"));
        return "forward:/uss/umt/EgovMberManage.do";
        
    } 
    
    /**
     * 일반회원정보삭제후 목록조회 화면으로 이동한다.
     * @param checkedIdForDel 삭제대상 아이디 정보
     * @param userSearchVO 검색조건정보
     * @param model 화면모델
     * @return forward:/uss/umt/EgovMberManage.do
     * @throws Exception
     */
    @RequestMapping("/uss/umt/EgovMberDelete.do")
    public String deleteMber(
            @RequestParam("checkedIdForDel") String checkedIdForDel ,
            @ModelAttribute("searchVO") UserDefaultVO userSearchVO,
            Model model
            )throws Exception {
        mberManageService.deleteMber(checkedIdForDel);
        //Exception 없이 진행시 삭제성공메시지
        model.addAttribute("resultMsg", egovMessageSource.getMessage("success.common.delete"));
        return "forward:/uss/umt/EgovMberManage.do";
    }
    
    /**
     * 일반회원가입신청 등록화면으로 이동한다.
     * @param userSearchVO 검색조건
     * @param mberManageVO 일반회원가입신청정보
     * @param commandMap 파라메터전달용 commandMap
     * @param model 화면모델
     * @return uss/umt/EgovMberSbscrb
     * @throws Exception
     */
    @RequestMapping("/uss/umt/EgovMberSbscrbView.do")
    public String sbscrbMberView(
            @ModelAttribute("userSearchVO") UserDefaultVO userSearchVO,
            @ModelAttribute("mberManageVO") MberManageVO mberManageVO,
            Map<String, Object> commandMap, 
            Model model
            )throws Exception {
        ComDefaultCodeVO vo = new ComDefaultCodeVO();
        
        //패스워드힌트목록을 코드정보로부터 조회
        vo.setCodeId("COM022");
        List passwordHint_result = cmmUseService.selectCmmCodeDetail(vo);
        //성별구분코드를 코드정보로부터 조회
        vo.setCodeId("COM014");
        List sexdstnCode_result = cmmUseService.selectCmmCodeDetail(vo);
                
        model.addAttribute("passwordHint_result",      passwordHint_result);     //패스워트힌트목록
        model.addAttribute("sexdstnCode_result",       sexdstnCode_result);      //성별구분코드목록
        if(!"".equals((String)commandMap.get("realname"))){
        	model.addAttribute("mberNm",   (String)commandMap.get("realname"));    //실명인증된 이름 - 주민번호 인증
            model.addAttribute("ihidnum",   (String)commandMap.get("ihidnum"));      //실명인증된 주민등록번호 - 주민번호 인증
        }
        if(!"".equals((String)commandMap.get("realName"))){
        	model.addAttribute("mberNm",   (String)commandMap.get("realName"));      //실명인증된 이름 - ipin인증
        }
        
        //mberManageVO.setGroupId("DEFAULT");
        mberManageVO.setMberSttus("DEFAULT");
        
       
        
        return "egovframework/com/uss/umt/EgovMberSbscrb";
    }
    
    /**
     * 일반회원가입신청등록처리후로그인화면으로 이동한다.
     * @param userManageVO - 신규일반회원정보 , 검색조건정보
     * @param status - 세션상태정보
     * @return "forward:/uss/umt/EgovUserManage.do"
     * @exception Exception
     */    
    
    /**
     * 일반회원가입신청등록처리후로그인화면으로 이동한다.
     * @param mberManageVO 일반회원가입신청정보
     * @return forward:/uat/uia/egovLoginUsr.do
     * @throws Exception
     */
    @RequestMapping("/uss/umt/EgovMberSbscrb.do")
    public String sbscrbMber(
            @ModelAttribute("mberManageVO") MberManageVO mberManageVO)
            throws Exception {
    	
    	//가입상태 초기화
    	mberManageVO.setMberSttus("A");
    	//그룹정보 초기화
    	//mberManageVO.setGroupId("1");
    	//일반회원가입신청 등록시 일반회원등록기능을 사용하여 등록한다. 
    	mberManageService.insertMber(mberManageVO);
        return "forward:/uat/uia/egovLoginUsr.do";
    }
    
    /**
     * 일반회원 약관확인
     * @param model 화면모델
     * @return uss/umt/EgovStplatCnfirm
     * @throws Exception
     */
    @RequestMapping("/uss/umt/EgovStplatCnfirmMber.do")
    public String sbscrbEntrprsMber(Model model)
            throws Exception {
        //일반회원용 약관 아이디 설정
        String stplatId = "STPLAT_0000000000001";
        //회원가입유형 설정-일반회원
        String sbscrbTy = "USR01";
        //약관정보 조회 
        List stplatList = mberManageService.selectStplat(stplatId);
        model.addAttribute("stplatList",      stplatList);   //약관정보 포함
        model.addAttribute("sbscrbTy"  ,      sbscrbTy);     //회원가입유형 포함
        
        return "egovframework/com/uss/umt/EgovStplatCnfirm";
    }


    /**
     * @param model 화면모델
     * @param commandMap 파라메터전달용 commandMap
     * @param userSearchVO 검색조건
     * @param mberManageVO 일반회원수정정보(비밀번호)
     * @return uss/umt/EgovMberPasswordUpdt
     * @throws Exception
     */
    @RequestMapping(value="/uss/umt/EgovMberPasswordUpdt.do")
    public String updatePassword(ModelMap model, 
    		  					 Map<String, Object> commandMap,
    		  					 @ModelAttribute("searchVO") UserDefaultVO userSearchVO,
    		  					 @ModelAttribute("mberManageVO") MberManageVO mberManageVO) 
    							throws Exception {
    	String oldPassword = (String)commandMap.get("oldPassword");
        String newPassword = (String)commandMap.get("newPassword");
        String newPassword2 = (String)commandMap.get("newPassword2");
        String uniqId = (String)commandMap.get("uniqId");
        
        boolean isCorrectPassword=false;
        MberManageVO resultVO = new MberManageVO();
        mberManageVO.setPassword(newPassword);
        mberManageVO.setOldPassword(oldPassword);
        mberManageVO.setUniqId(uniqId);
        
    	String resultMsg = "";
    	resultVO = mberManageService.selectPassword(mberManageVO);
    	//패스워드 암호화
		String encryptPass = EgovFileScrty.encryptPassword(oldPassword);
    	if (encryptPass.equals(resultVO.getPassword())){
    		if (newPassword.equals(newPassword2)){
        		isCorrectPassword = true;
        	}else{
        		isCorrectPassword = false;
        		resultMsg="fail.user.passwordUpdate2";
        	}
    	}else{
    		isCorrectPassword = false;
    		resultMsg="fail.user.passwordUpdate1";
    	}
    	
    	if (isCorrectPassword){
    		mberManageVO.setPassword(EgovFileScrty.encryptPassword(newPassword));
    		mberManageService.updatePassword(mberManageVO);
            model.addAttribute("mberManageVO", mberManageVO);      
            resultMsg = "success.common.update";
        }else{
        	model.addAttribute("mberManageVO", mberManageVO);      
        }
    	model.addAttribute("userSearchVO", userSearchVO); 
    	model.addAttribute("resultMsg", resultMsg);
        
        return "egovframework/com/uss/umt/EgovMberPasswordUpdt";
    }
    
    /**
     * 일반회원 암호 수정 화면 이동
     * @param model 화면모델
     * @param commandMap 파라메터전달용 commandMap
     * @param userSearchVO 검색조건
     * @param mberManageVO 일반회원수정정보(비밀번호)
     * @return uss/umt/EgovMberPasswordUpdt
     * @throws Exception
     */
    @RequestMapping(value="/uss/umt/EgovMberPasswordUpdtView.do")
    public String updatePasswordView(ModelMap model, 
    								Map<String, Object> commandMap,
    								@ModelAttribute("searchVO") UserDefaultVO userSearchVO,
    								@ModelAttribute("mberManageVO") MberManageVO mberManageVO) throws Exception {
    	String userTyForPassword = (String)commandMap.get("userTyForPassword");
    	mberManageVO.setUserTy(userTyForPassword);
    	
        model.addAttribute("userSearchVO", userSearchVO);
        model.addAttribute("mberManageVO", mberManageVO);
    	return "egovframework/com/uss/umt/EgovMberPasswordUpdt";
    }
  
    /**
     * 회원구분 psh
     * @param model 화면모델
     * @return uss/umt/EgovStplatCnfirm
     * @throws Exception
     */
    @RequestMapping("/uss/umt/MberTypeView.do")
    public String mberTypeView(Model model, @ModelAttribute("mberManageVO") MberManageVO mberManageVO)
            throws Exception {
    	model.addAttribute("mberManageVO", mberManageVO);
        return "egovframework/pdqm/front/main/MberTypeView";
    }

    /**
     * 본인인증 뷰 페이지  psh
     * @param model 화면모델
     * @return uss/umt/EgovStplatCnfirm
     * @throws Exception
     */
    @RequestMapping("/uss/umt/MberCertification.do")
    public String MberCertification(Model model, @ModelAttribute("mberManageVO") MberManageVO mberManageVO)
            throws Exception {
    	model.addAttribute("mberManageVO", mberManageVO);
        return "egovframework/pdqm/front/main/MberCertification";
    }
    
    /**
     * 인증번호 psh
     * @param model 화면모델
     * @return uss/umt/MberCertiNumber
     * @throws Exception
     */

    @RequestMapping("/uss/umt/MberCertiNumber.do")
    public String MberCertiNumber( Map<String, Object> commandMap 
    							   , @ModelAttribute("mberManageVO") MberManageVO mberManageVO
    							   , Model model) throws Exception {
    	
    	MberManageVO dMberManaveVO = mberManageService.selectEmail(mberManageVO);
    	String dEmail = (String)dMberManaveVO.getMberEmailAdres();

    	//이메일 비교
    	if (dEmail.equals("1")){
            //Exception 없이 진행시 수정성공메시지
            model.addAttribute("message", "이미 가입한 회원입니다.");
            return "egovframework/pdqm/front/main/MberCertification";
    	}else{
    		// 인증번호 발송 처리 해야함.
    		boolean result = loginService.certiNumber(mberManageVO);
    		
    		//System.out.println("CertiNumber=========>"+mberManageVO.getCertiNumber());
    		if (result) {
	    		model.addAttribute("mberManageVO", mberManageVO);
	    		model.addAttribute("message", "입력한 e-mail로 인증번호가 발송 되었습니다.");
    		} else {
	    		model.addAttribute("mberManageVO", mberManageVO);
	    		model.addAttribute("message", "메일 발송이 실패 하였습니다.");
    		}
    		
            return "egovframework/pdqm/front/main/MberCertification";   
        }    	
    }    
    
    /**
     * 약관동의 psh
     * @param model 화면모델
     * @return uss/umt/EgovStplatCnfirm
     * @throws Exception
     */

    @RequestMapping("/uss/umt/MberAgreementView.do")
    public String MberAgreementView(Model model, Map<String, Object> commandMap, @ModelAttribute("mberManageVO") MberManageVO mberManageVO) throws Exception {
    	
    	/* 실명인증은 아직 테스트 할 수 없기 때문에 주석 처리 psh
    	model.addAttribute("ihidnum",     (String)commandMap.get("ihidnum"));     //주민번호
    	model.addAttribute("realname",    (String)commandMap.get("realname"));    //사용자이름
    	model.addAttribute("sbscrbTy",    (String)commandMap.get("sbscrbTy"));    //사용자유형
    	model.addAttribute("nextUrlName", (String)commandMap.get("nextUrlName")); //다음단계버튼명(이동할 URL에 따른)
    	model.addAttribute("nextUrl",     (String)commandMap.get("nextUrl"));     //다음단계로 이동할 URL
    	String result="";
    	
    	if("".equals((String)commandMap.get("ihidnum"))) {
    		result="info.user.rlnmCnfirm";
    		model.addAttribute("result",     result);   //실명확인 결과
    		return "egovframework/com/sec/rnc/EgovRlnmCnfirm";
    	}
    	//방화벽 오픈전 테스트를 위해 임시추가 - 성공강제셋팅
    	 	
    	
        try{
             result = rlnmManageService.rlnmCnfirm(
        		(String)commandMap.get("ihidnum"), 
        		(String)commandMap.get("realname"),
        		(String)commandMap.get("sbscrbTy"));
        }catch(Exception e){
        	e.printStackTrace();
        }finally{
        	model.addAttribute("result_tmp",result+"__"+result.substring(0,2));
        	if (result.substring(0,2).equals("00")){
            	result = "success.user.rlnmCnfirm";
            }else if(result.substring(0,2).equals("01")){
            	result = "fail.user.rlnmCnfirm";
            }else{
            	result = "fail.user.connectFail";
            }
        	model.addAttribute("result",     result);   //실명확인 결과
        	
//            return "egovframework/com/sec/rnc/EgovRlnmCnfirm";
        } */
    	// 파라메터에서 가져온값
    	String pEmail = mberManageVO.getMberEmailAdres();
    	MberManageVO dMberManaveVO = mberManageService.selectEmail(mberManageVO);
    	String dEmail = (String)dMberManaveVO.getMberEmailAdres();

    	//이메일 비교
    	if (dEmail.equals("1")){
            //Exception 없이 진행시 수정성공메시지
            model.addAttribute("message", "이미 가입한 회원입니다.");
            return "egovframework/pdqm/front/main/MberCertification";
    	}else{
    		model.addAttribute("mberManageVO", mberManageVO);
    		
            return "egovframework/pdqm/front/main/MberAgreementView";   
        }    	
    }        
    /**
     * 회원등록화면으로 이동한다.
     * @param userSearchVO 검색조건정보
     * @param mberManageVO 일반회원초기화정보
     * @param model 화면모델
     * @return uss/umt/MberInsertView
     * @throws Exception
     */
    @RequestMapping("/uss/umt/MberInsertView.do")
    public String mberInsertView(
            @ModelAttribute("userSearchVO") UserDefaultVO userSearchVO,
            @ModelAttribute("mberManageVO") MberManageVO mberManageVO,
            Model model
            )throws Exception {

        ComDefaultCodeVO vo = new ComDefaultCodeVO();
        
        //회원구분코드를 코드정보로부터 조회
        vo.setCodeId("COM200");
        List mberType_result = cmmUseService.selectCmmCodeDetail(vo);        
        //회원그룹코드를 코드정보로부터 조회
        vo.setCodeId("COM201");
        List mberGrp_result = cmmUseService.selectCmmCodeDetail(vo);        

        model.addAttribute("mberManageVO", mberManageVO);        
        model.addAttribute("mberType_result",  mberType_result);  //회원구분코드목록        
        model.addAttribute("mberGrp_result",  mberGrp_result);  	//회원그룹코드목록    
        
        return "egovframework/pdqm/front/main/MberInsertView";
    } 

    /**
     * 회원등록 후 처리
     * @param mberManageVO 일반회원등록정보
     * @param bindingResult 입력값검증용 bindingResult 
     * @param model 화면모델
     * @return forward:/uss/umt/EgovMberManage.do
     * @throws Exception
     */
    @RequestMapping("/uss/umt/MberInsertResult.do")
    public String MberInsertResult(
            @ModelAttribute("mberManageVO") MberManageVO mberManageVO, 
            BindingResult bindingResult,
            Model model
            )throws Exception {
    	
        beanValidator.validate(mberManageVO, bindingResult);

    	if (bindingResult.hasErrors()){
    		return "forward:/uss/umt/MberInsertView.do";
		}else{
			if(mberManageVO.getGroupId().equals("")){
				mberManageVO.setGroupId(null);
			}
			mberManageService.insertMber(mberManageVO);
	        //Exception 없이 진행시 등록 성공메시지
	        model.addAttribute("resultMsg", egovMessageSource.getMessage("success.common.insert"));
		}
    	return "egovframework/pdqm/front/main/MberInsertResult";
    }
    
    /**
	 * 회원 발송메일 등록화면으로 들어간다
	 * @param sndngMailVO SndngMailVO
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping(value="/uss/umt/MberMailRegistView.do")
    public String insertSndngMailView(@ModelAttribute("sndngMailVO") SndngMailVO sndngMailVO,
			ModelMap model) throws Exception {
    	
//    	model.addAttribute("checkId", "");

    	model.addAttribute("resultInfo", sndngMailVO);
    	return "egovframework/com/uss/umt/MberMailRegistView";
    }
    
    /**
	 * 발송메일을 등록한다
	 * @param multiRequest MultipartHttpServletRequest
	 * @param sndngMailVO SndngMailVO
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping(value="/uss/umt/MberInsertSndngMail.do")
	public String insertSndngMail(final MultipartHttpServletRequest multiRequest,
			@ModelAttribute("sndngMailVO") SndngMailVO sndngMailVO,
			ModelMap model, HttpServletRequest request) throws Exception {
    	
    	String link = "N";
    	if (sndngMailVO != null && sndngMailVO.getLink() != null && !sndngMailVO.getLink().equals("")) {
    		link = sndngMailVO.getLink();
    	}
    	
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	
//    	List<FileVO> _result = null;
//    	String _atchFileId = "";
//    	final Map<String, MultipartFile> files = multiRequest.getFileMap();
//    	if(!files.isEmpty()){
//    	 _result = fileUtil.parseFileInf(files, "MSG_", 0, "", ""); 
//    	 _atchFileId = fileMngService.insertFileInfs(_result);  //파일이 생성되고나면 생성된 첨부파일 ID를 리턴한다.
//    	}
    	
    	//System.out.println("Controller ==>");

//    	sndngMailVO.setAtchFileId(_atchFileId);
    	sndngMailVO.setDsptchPerson(user.getId());
    	
    	// 발송메일을 등록한다.
//    	boolean result = sndngMailRegistService.insertSndngMail(sndngMailVO);
    	sndngMailRegistService.insertSndngMailByThread(sndngMailVO);
    	
    	
    	model.addAttribute("message", "메일 발송 하였습니다. 전송확인은 [메일발송내역조회]에서 할 수 있습니다.");
    	return "egovframework/com/uss/umt/MberMailRegistView";

/*    	if (result) {
    		if (link.equals("N")) {
    			return "redirect:/cop/ems/selectSndngMailList.do";
    		} else {
    			model.addAttribute("closeYn", "Y");
    	    	return "egovframework/com/cop/ems/EgovMailRegist";
    		}
    	} else {
    		return "egovframework/com/cmm/EgovError";
    	}*/
	}    
}