package egovframework.com.uat.uia.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.service.EgovCmmUseService;
import egovframework.com.cmm.service.Globals;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.com.sym.log.lgm.service.EgovSysLogService;
import egovframework.com.sym.log.lgm.service.SysLog;
import egovframework.com.uat.uia.service.EgovLoginService;
import egovframework.com.utl.sim.service.EgovClntInfo;


/**
 * 일반 로그인, 인증서 로그인을 처리하는 컨트롤러 클래스
 * @author 공통서비스 개발팀 박지욱
 * @since 2009.03.06
 * @version 1.0
 * @see
 *  
 * <pre>
 * << 개정이력(Modification Information) >>
 * 
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2011.11.28  psh          최초 생성 
 *  </pre>
 */

@Controller
public class EgovLoginController {

	 
	 
	
    /** EgovLoginService */
	@Resource(name = "loginService")
    private EgovLoginService loginService;

	@Resource(name="EgovSysLogService")
	private EgovSysLogService sysLogService;
	
	/** EgovCmmUseService */
	@Resource(name="EgovCmmUseService")
	private EgovCmmUseService cmmUseService;

    
	/** EgovMessageSource */
    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;

    
	/** log */
    protected static final Log LOG = LogFactory.getLog(EgovLoginController.class);
    
	/**
	 * 로그인 화면으로 들어간다
	 * @param vo - 로그인후 이동할 URL이 담긴 LoginVO
	 * @return 로그인 페이지
	 * @exception Exception
	 */
//    @IncludedInfo(name="로그인", listUrl="/uat/uia/egovLoginUsr.do", order = 10, gid = 10)
    @RequestMapping(value="/front/main/egovLoginUsr.do")
	public String loginUsrView(
			HttpServletRequest request,
			HttpServletResponse response,
			ModelMap model) 
			throws Exception {
//    	if(EgovComponentChecker.hasComponent("mberManageService")){
//    		model.addAttribute("useMemberManage", "true");
//    	}
    	
    	/*
		GPKIHttpServletResponse gpkiresponse = null;
	    GPKIHttpServletRequest gpkirequest = null;
	    
	    try{
	    
	    	gpkiresponse=new GPKIHttpServletResponse(response); 
		    gpkirequest= new GPKIHttpServletRequest(request);
	        gpkiresponse.setRequest(gpkirequest);
	        model.addAttribute("challenge", gpkiresponse.getChallenge());
	        return "egovframework/com/uat/uia/EgovLoginUsr";
	        
	    }catch(Exception e){
	        return "egovframework/com/cmm/egovError";
	    }
	    */

		// request.getSession().setAttribute("loginVO", null);

		return "egovframework/pdqm/front/main/MberLoginUsr";
	}
	
    /**
	 * 일반(세션) 로그인을 처리한다
	 * @param vo - 아이디, 비밀번호가 담긴 LoginVO
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
    @RequestMapping(value="/uat/uia/actionLogin.do")
    public String actionLogin(@ModelAttribute("loginVO") LoginVO loginVO, 
    		                   HttpServletRequest request,
    		                   ModelMap model)
            throws Exception {
    	

    	// 1. 일반 로그인 처리
        LoginVO resultVO = loginService.actionLogin(loginVO);
    
		
        if (resultVO != null && resultVO.getId() != null && !resultVO.getId().equals("")) {
        	
        	// 2-1. 로그인 정보를 세션에 저장
        	request.getSession().setAttribute("loginVO", resultVO);
        	
        	// 2-2 로그온 사용자를 시스템로그(COMTNSYSLOG)테이블에 저장한다. psh
        	SysLog sysLog = new SysLog();
        	String userIp = EgovClntInfo.getClntIP(request);
        	
        	
			sysLog.setMberType(resultVO.getMberType());
			sysLog.setRqesterId(resultVO.getUniqId()); // 요청자ID
			sysLog.setRqesterIp(userIp); // 요청자IP			
			
        	sysLogService.logInsertSysLog(sysLog);
        	
    		return "redirect:/uat/uia/actionMain.do";
      
        } else {
        	
        	model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
        	return "egovframework/pdqm/front/main/MberLoginUsr";
        }
    }   
    
  
   
    /**
	 * 인증서 로그인을 처리한다
	 * @param vo - 주민번호가 담긴 LoginVO
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
    @RequestMapping(value="/uat/uia/actionCrtfctLogin.do")
    public String actionCrtfctLogin(@ModelAttribute("loginVO") LoginVO loginVO, 
    		HttpServletRequest request,
    		HttpServletResponse response,
			ModelMap model)
            throws Exception {
    	
    	// 접속IP
    	String userIp = EgovClntInfo.getClntIP(request);
    	
    	/*
    	// 1. GPKI 인증
    	GPKIHttpServletResponse gpkiresponse = null;
	    GPKIHttpServletRequest gpkirequest = null;
	    String dn = "";
	    try{
	    	gpkiresponse = new GPKIHttpServletResponse(response);
		    gpkirequest = new GPKIHttpServletRequest(request);
	        gpkiresponse.setRequest(gpkirequest);
	        X509Certificate cert = null; 
	        
	        byte[] signData = null;
	        byte[] privatekey_random = null;
	        String signType = "";
	        String queryString = "";
	        
	        cert = gpkirequest.getSignerCert();
	        dn = cert.getSubjectDN();
	        
	        java.math.BigInteger b = cert.getSerialNumber();
	        b.toString();
	        int message_type =  gpkirequest.getRequestMessageType();
	        if( message_type == gpkirequest.ENCRYPTED_SIGNDATA || message_type == gpkirequest.LOGIN_ENVELOP_SIGN_DATA ||
	            message_type == gpkirequest.ENVELOP_SIGNDATA || message_type == gpkirequest.SIGNED_DATA){
	            signData = gpkirequest.getSignedData();
	            if(privatekey_random != null) {
	                privatekey_random   = gpkirequest.getSignerRValue();
	            }
	            signType = gpkirequest.getSignType();
	        }       
	        queryString = gpkirequest.getQueryString(); 
	    }catch(Exception e){
	    	return "cmm/egovError";
	    }
	    
	    // 2. 업무사용자 테이블에서 dn값으로 사용자의 ID, PW를 조회하여 이를 일반로그인 형태로 인증하도록 함
	    if (dn != null && !dn.equals("")) {
	    	
	    	loginVO.setDn(dn);
	    	LoginVO resultVO = loginService.actionCrtfctLogin(loginVO);
	        if (resultVO != null && resultVO.getId() != null && !resultVO.getId().equals("")) {
	        	
	        	//스프링 시큐리티패키지를 사용하는지 체크하는 로직
	        	if(EgovComponentChecker.hasComponent("egovAuthorManageService")){
	        		// 3-1. spring security 연동
		            return "redirect:/j_spring_security_check?j_username=" + resultVO.getUserSe() + resultVO.getId() + "&j_password=" + resultVO.getUniqId();
		            
	        	}else{
	        		// 3-2. 로그인 정보를 세션에 저장
		        	request.getSession().setAttribute("loginVO", resultVO);
		    		return "redirect:/uat/uia/actionMain.do";
	        	}
	        	   
	            
	        } else {
	        	model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
	        	return "egovframework/com/uat/uia/EgovLoginUsr";
	        }
	    } else {
	    	model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
        	return "egovframework/com/uat/uia/EgovLoginUsr";
	    }
	   	*/
    	return "egovframework/com/uat/uia/EgovLoginUsr";
    }
    
    /**
	 * 로그인 후 메인화면으로 들어간다
	 * @param 
	 * @return 로그인 페이지
	 * @exception Exception
	 */
    @RequestMapping(value="/uat/uia/actionMain.do")
	public String actionMain(ModelMap model) 
			throws Exception {
    	
    	// 1. Spring Security 사용자권한 처리
    	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
    	if(!isAuthenticated) {
    		model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
        	return "egovframework/com/uat/uia/EgovLoginUsr";
    	}
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	
    	/*
    	// 2. 메뉴조회
		MenuManageVO menuManageVO = new MenuManageVO();
    	menuManageVO.setTmp_Id(user.getId());
    	menuManageVO.setTmp_UserSe(user.getUserSe());
    	menuManageVO.setTmp_Name(user.getName());
    	menuManageVO.setTmp_Email(user.getEmail());
    	menuManageVO.setTmp_OrgnztId(user.getOrgnztId());
    	menuManageVO.setTmp_UniqId(user.getUniqId());
    	List list_headmenu = menuManageService.selectMainMenuHead(menuManageVO);
		model.addAttribute("list_headmenu", list_headmenu);
    	*/
    	
		// 3. 메인 페이지 이동
		String main_page = Globals.MAIN_PAGE;
		
		LOG.debug("Globals.MAIN_PAGE > " +  Globals.MAIN_PAGE);
		LOG.debug("main_page > " +  main_page);
		LOG.debug("main_page > " +  main_page);
		LOG.debug("main_page > " +  main_page);
		LOG.debug("main_page > " +  main_page);
		LOG.debug("main_page > " +  main_page);
		LOG.debug("main_page > " +  main_page);
		LOG.debug("main_page > " +  main_page);
		LOG.debug("main_page > " +  main_page);
		
		
		if (main_page.startsWith("/")) {
		    return "forward:" + main_page;
		} else {
		    return main_page;
		}
		
		/*
		if (main_page != null && !main_page.equals("")) {
			
			// 3-1. 설정된 메인화면이 있는 경우
			return main_page;
			
		} else {
			
			// 3-2. 설정된 메인화면이 없는 경우
			if (user.getUserSe().equals("USR")) {
	    		return "egovframework/com/EgovMainView";
	    	} else {
	    		return "egovframework/com/EgovMainViewG";
	    	}
		}
		*/
	}
    
    /**
	 * 로그아웃한다.
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping(value="/uat/uia/actionLogout.do")
	public String actionLogout(HttpServletRequest request, ModelMap model) 
			throws Exception {
    	
    	/*String userIp = EgovClntInfo.getClntIP(request);
    	
    	// 1. Security 연동
    	return "redirect:/j_spring_security_logout";*/
    	
    	request.getSession().setAttribute("loginVO", null);
    	
    	
    	return "redirect:/index.do";
    }
    
    /**
	 * 아이디/비밀번호 찾기 화면으로 들어간다
	 * @param 
	 * @return 아이디/비밀번호 찾기 페이지
	 * @exception Exception
	 */
	@RequestMapping(value="/uat/uia/egovIdSearch.do")
	public String idSearchView(ModelMap model) 
			throws Exception {
		
		// 1. 비밀번호 힌트 공통코드 조회
//		ComDefaultCodeVO vo = new ComDefaultCodeVO();
//		vo.setCodeId("COM022");
//		List code = cmmUseService.selectCmmCodeDetail(vo);
//		model.addAttribute("pwhtCdList", code);
		
		return "egovframework/com/uat/uia/EgovIdSearch";
	}

	@RequestMapping(value="/uat/uia/egovPasswordSearch.do")
	public String passwordSearchView(HttpServletRequest request, ModelMap model) 
			throws Exception {
		
		// 1. 비밀번호 힌트 공통코드 조회
		LoginVO loginVO = new LoginVO();
		
		loginVO.setId(request.getParameter("userId"));
		model.addAttribute("userId", loginVO);
		
		return "egovframework/com/uat/uia/EgovPasswordSearch";
	}	
	/**
	 * 인증서안내 화면으로 들어간다
	 * @return 인증서안내 페이지
	 * @exception Exception
	 */
	@RequestMapping(value="/uat/uia/egovGpkiIssu.do")
	public String gpkiIssuView(ModelMap model) 
			throws Exception {
		return "egovframework/com/uat/uia/EgovGpkiIssu";
	}
	
    /**
	 * 아이디를 찾는다.
	 * @param vo - 이름, 이메일주소, 사용자구분이 담긴 LoginVO
	 * @return result - 아이디
	 * @exception Exception
	 */
    @RequestMapping(value="/uat/uia/searchId.do")
    public String searchId(@ModelAttribute("loginVO") LoginVO loginVO, 
    		ModelMap model)
            throws Exception {

    	if (loginVO == null || loginVO.getName() == null || loginVO.getName().equals("")
    		&& loginVO.getEmail() == null || loginVO.getEmail().equals("")
    		&& loginVO.getUserSe() == null || loginVO.getUserSe().equals("")
    	) {
    		return "egovframework/com/cmm/egovError";
    	}
    	
    	// 1. 아이디 찾기
        LoginVO resultVO = loginService.searchId(loginVO);
        
        if (resultVO != null && resultVO.getId() != null && !resultVO.getId().equals("")) {
        	
        	model.addAttribute("resultInfo", resultVO.getId());
        	return "egovframework/com/uat/uia/EgovIdResult";
        } else {
        	model.addAttribute("resultInfo", egovMessageSource.getMessage("fail.common.idsearch"));
        	return "egovframework/com/uat/uia/EgovIdSearch";
        }
    }
    
    /**
	 * 비밀번호를 찾는다.
	 * @param vo - 아이디, 이름, 이메일주소, 비밀번호 힌트, 비밀번호 정답, 사용자구분이 담긴 LoginVO
	 * @return result - 임시비밀번호전송결과
	 * @exception Exception
	 */
    @RequestMapping(value="/uat/uia/searchPassword.do")
    public String searchPassword(@ModelAttribute("loginVO") LoginVO loginVO, 
    		ModelMap model)
            throws Exception {
    	
    	if (loginVO == null || loginVO.getId() == null || loginVO.getId().equals("")
//    		&& loginVO.getName() == null || loginVO.getName().equals("")
    		&& loginVO.getEmail() == null || loginVO.getEmail().equals("")
//    		&& loginVO.getPasswordHint() == null || loginVO.getPasswordHint().equals("")
//    		&& loginVO.getPasswordCnsr() == null || loginVO.getPasswordCnsr().equals("")
//    		&& loginVO.getUserSe() == null || loginVO.getUserSe().equals("")
    	) {
    		return "egovframework/com/cmm/egovError";
    	}
    	
    	// 1. 비밀번호 찾기
        boolean result = loginService.searchPassword(loginVO);
        
        // 2. 결과 리턴
        if (result) {
        	model.addAttribute("result", result);
        	model.addAttribute("resultInfo", loginVO.getEmail());
        	return "egovframework/com/uat/uia/EgovPasswordResult";
        } else {
//        	model.addAttribute("resultInfo", egovMessageSource.getMessage("fail.common.pwsearch"));
        	model.addAttribute("result", result);        	
        	model.addAttribute("resultInfo", loginVO.getEmail());
        	return "egovframework/com/uat/uia/EgovPasswordResult";
        }
    }
    
    /**
	 * 개발 시스템 구축 시 발급된 GPKI 서버용인증서에 대한 암호화데이터를 구한다.
	 * 최초 한번만 실행하여, 암호화데이터를 EgovGpkiVariables.js의 ServerCert에 넣는다.
	 * @return String
	 * @exception Exception
	 */
    @RequestMapping(value="/uat/uia/getEncodingData.do")
	public void getEncodingData() 
			throws Exception {
    	
    	/*
    	X509Certificate x509Cert = null;
		byte[] cert = null;
		String base64cert = null;
		try {
			x509Cert = Disk.readCert("/product/jeus/egovProps/gpkisecureweb/certs/SVR1311000011_env.cer");
			cert = x509Cert.getCert();
			Base64 base64 = new Base64();
			base64cert = base64.encode(cert); 
			log.info("+++ Base64로 변환된 인증서는 : " + base64cert);
			
		} catch (GpkiApiException e) {
			e.printStackTrace();
		}
		*/
    }
    
    /**
     * 인증서 DN추출 팝업을 호출한다.
     * @return 인증서 등록 페이지
     * @exception Exception
     */
    @RequestMapping(value = "/uat/uia/EgovGpkiRegist.do")
    public String gpkiRegistView(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
    	
    	/** GPKI 인증 부분 */
        // OS에 따라 (local NT(로컬) / server Unix(서버)) 구분
        String os = System.getProperty("os.arch");
        //String virusReturn = null;
        
        /*
        // 브라우저 이름을 받기위한 처리
    	String webKind = EgovClntInfo.getClntWebKind(request);
    	String[] ss = webKind.split(" ");
    	String browser = ss[1];
    	model.addAttribute("browser",browser);
    	// -- 여기까지
        if (os.equalsIgnoreCase("x86")) {
            //Local Host TEST 진행중
        } else {
            if (browser.equalsIgnoreCase("Explorer")) {
		GPKIHttpServletResponse gpkiresponse = null;
		GPKIHttpServletRequest gpkirequest = null;

		try {
		    gpkiresponse = new GPKIHttpServletResponse(response);
		    gpkirequest = new GPKIHttpServletRequest(request);
		    
		    gpkiresponse.setRequest(gpkirequest);
		    model.addAttribute("challenge", gpkiresponse.getChallenge());
		    
		    return "egovframework/com/uat/uia/EgovGpkiRegist";

		} catch (Exception e) {
		    return "egovframework/com/cmm/egovError";
		}
	    } 	
        }
        */
        return "egovframework/com/uat/uia/EgovGpkiRegist";
    }

    /**
     * 인증서 DN값을 추출한다
     * @return result - dn값
     * @exception Exception
     */
    @RequestMapping(value = "/uat/uia/actionGpkiRegist.do")
	public String actionGpkiRegist(HttpServletRequest request,
			HttpServletResponse response, ModelMap model) throws Exception {

		/** GPKI 인증 부분 */
		// OS에 따라 (local NT(로컬) / server Unix(서버)) 구분
		String os = System.getProperty("os.arch");
		// String virusReturn = null;
		String dn = "";

		// 브라우저 이름을 받기위한 처리
		String webKind = EgovClntInfo.getClntWebKind(request);
		String[] ss = webKind.split(" ");
		String browser = ss[1];
		model.addAttribute("browser", browser);
		/*
		// -- 여기까지
		if (os.equalsIgnoreCase("x86")) {
			// Local Host TEST 진행중
		} else {
			if (browser.equalsIgnoreCase("Explorer")) {
				GPKIHttpServletResponse gpkiresponse = null;
				GPKIHttpServletRequest gpkirequest = null;
				try {
					gpkiresponse = new GPKIHttpServletResponse(response);
					gpkirequest = new GPKIHttpServletRequest(request);
					gpkiresponse.setRequest(gpkirequest);
					X509Certificate cert = null;

					// byte[] signData = null;
					// byte[] privatekey_random = null;
					// String signType = "";
					// String queryString = "";

					cert = gpkirequest.getSignerCert();
					dn = cert.getSubjectDN();

					model.addAttribute("dn", dn);
					model
							.addAttribute("challenge", gpkiresponse
									.getChallenge());

					return "egovframework/com/uat/uia/EgovGpkiRegist";
				} catch (Exception e) {
					return "egovframework/com/cmm/egovError";
				}
			}
		}
		*/
		return "egovframework/com/uat/uia/EgovGpkiRegist";
	}
}